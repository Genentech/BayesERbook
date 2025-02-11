
<!-- README.md is generated from README.Rmd. Please edit that file -->

This book provides examples of exposure-response analysis with Bayesian
methods.

## Install necessary packages <a href="https://genentech.github.io/BayesERtools/"><img src="resources/BayesERtool-logo.png" align="right" height="138" alt="BayesERtools website" /></a>

The examples utilizes
[`BayesERtools`](https://genentech.github.io/BayesERtools/) package.

- Tutorial (`BayesERbook`): <https://genentech.github.io/BayesERbook/>
- Package documentation: <https://genentech.github.io/BayesERtools/>
- GitHub repo of the package:
  <https://github.com/genentech/BayesERtools/>

You can install the package as follows:

``` r
install.packages('BayesERtools')
# devtools::install_github("genentech/BayesERtools") # development version
```

## Model types supported by `BayesERtools`

<div id="pzveloiefp" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  &#10;  <table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings gt_spanner_row">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="2" colspan="1" style="text-align: center; vertical-align: top;" scope="col" id="feature_name"></th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" scope="colgroup" id="Binary endpoint">
        <div class="gt_column_spanner">Binary endpoint</div>
      </th>
      <th class="gt_center gt_columns_top_border gt_column_spanner_outer" rowspan="1" colspan="2" scope="colgroup" id="Continuous endpoint">
        <div class="gt_column_spanner">Continuous endpoint</div>
      </th>
    </tr>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="text-align: center; vertical-align: top;" scope="col" id="lin_logit">Linear (logit)</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="text-align: center; vertical-align: top;" scope="col" id="emax_logit"><span class='gt_from_md'>E<sub/>max</sub> (logit)</span></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="text-align: center; vertical-align: top;" scope="col" id="linear">Linear</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="text-align: center; vertical-align: top;" scope="col" id="emax"><span class='gt_from_md'>E<sub/>max</sub></span></th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="feature_name" class="gt_row gt_left" style="text-align: right; vertical-align: middle;"><span class='gt_from_md'>backend</span></td>
<td headers="lin_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'><code>rstanarm</code></span></td>
<td headers="emax_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'><code>rstanemax</code></span></td>
<td headers="linear" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'><code>rstanarm</code></span></td>
<td headers="emax" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'><code>rstanemax</code></span></td></tr>
    <tr><td headers="feature_name" class="gt_row gt_left" style="text-align: right; vertical-align: middle;"><span class='gt_from_md'>reference</span></td>
<td headers="lin_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span style="white-space: pre;"><a href="https://mc-stan.org/rstanarm/reference/stan_glm.html" target="_blank" style="color:#008B8B;text-decoration:none;display: inline-block;">🔗</a></span></td>
<td headers="emax_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span style="white-space: pre;"><a href="https://yoshidk6.github.io/rstanemax/reference/stan_emax.html" target="_blank" style="color:#008B8B;text-decoration:none;display: inline-block;">🔗</a></span></td>
<td headers="linear" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span style="white-space: pre;"><a href="https://mc-stan.org/rstanarm/reference/stan_glm.html" target="_blank" style="color:#008B8B;text-decoration:none;display: inline-block;">🔗</a></span></td>
<td headers="emax" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span style="white-space: pre;"><a href="https://yoshidk6.github.io/rstanemax/reference/stan_emax_binary.html" target="_blank" style="color:#008B8B;text-decoration:none;display: inline-block;">🔗</a></span></td></tr>
    <tr><td headers="feature_name" class="gt_row gt_left" style="text-align: right; vertical-align: middle;"><span class='gt_from_md'>develop model</span></td>
<td headers="lin_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="emax_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="linear" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="emax" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td></tr>
    <tr><td headers="feature_name" class="gt_row gt_left" style="text-align: right; vertical-align: middle;"><span class='gt_from_md'>simulate &amp; plot ER</span></td>
<td headers="lin_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="emax_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="linear" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="emax" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td></tr>
    <tr><td headers="feature_name" class="gt_row gt_left" style="text-align: right; vertical-align: middle;"><span class='gt_from_md'>exposure metrics selection</span></td>
<td headers="lin_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="emax_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="linear" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="emax" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td></tr>
    <tr><td headers="feature_name" class="gt_row gt_left" style="text-align: right; vertical-align: middle;"><span class='gt_from_md'>covariate selection</span></td>
<td headers="lin_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="emax_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>❌</span></td>
<td headers="linear" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="emax" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>❌</span></td></tr>
    <tr><td headers="feature_name" class="gt_row gt_left" style="text-align: right; vertical-align: middle;"><span class='gt_from_md'>covariate forest plot</span></td>
<td headers="lin_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>✅</span></td>
<td headers="emax_logit" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>❌</span></td>
<td headers="linear" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>🟡</span></td>
<td headers="emax" class="gt_row gt_left" style="text-align: center; vertical-align: middle;"><span class='gt_from_md'>❌</span></td></tr>
  </tbody>
  &#10;  <tfoot class="gt_footnotes">
    <tr>
      <td class="gt_footnote" colspan="5"> ✅ Available, 🟡 In plan/under development, ❌ Not in a current plan</td>
    </tr>
  </tfoot>
</table>
</div>

## Note for developer

Run `usethis::use_tidy_style(strict = FALSE)` before committing to
ensure that the code is formatted appropriately.
