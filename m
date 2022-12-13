Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79D3464C04B
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 00:11:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236531AbiLMXL5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 18:11:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236962AbiLMXLx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 18:11:53 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99A3E17A8D
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 15:11:51 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id y4so4968261ljc.9
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 15:11:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MAM1zWKmLoLybnlVx2DB+oXg2+2O2pnw6L+In6EaViM=;
        b=jwUPqxBmQ7VtGQpi3Ku0db2HJCatByDjpndoUTTI1N7sNE3QQhWdr3aSxNhCL89LEa
         hFQXlBk/K0aE6oex5CH7USSb/WOpSeJhd0GWh4Q8bHdWF5M/j+appfx9A65lXJ0fPHbo
         yRkvbiKVN4JdC9L1kcxwbIE42pbhbLF8LU6cQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MAM1zWKmLoLybnlVx2DB+oXg2+2O2pnw6L+In6EaViM=;
        b=FzTgJJV1qUJTwZooSxZOdD07tASqRdIF0xcpZZHptkp5aOKHma3NzKw+cZm4lpnxDe
         jJ0L8T5XjLFOndk6sNAkj/Va/m5RUUEW0ZOLhfCvIp65GSUU2NxHh8z/DIJwp07nR3ya
         AKAqQzUhD1DbpDdmZL7wotETqgbTpeRaMPH3nZJ0SXIn+l7YXA70VLQuGqv2zrN0iatC
         0Pl6sWNGhCLT/9eA9GdKF11YNdvtTeHb3mHDUVw6gQAlhMQOUr2KJz4vxbP8Ul6zrDQz
         lALGsHbbVPFUHa+7dV2GfaE2Qc6k7joOw4izvX1vO5M/mitR3zyCMV12F0hVMVxoUgBI
         B5qA==
X-Gm-Message-State: ANoB5pk69nHYIuCteHq85abfrtxAlVQAVZCRwlxZSXJEA91krWh5ioUk
        Pdj7Drtsr8sQWKyT4b8FE2G1kL3wgyjWeuYKYIaKDw==
X-Google-Smtp-Source: AA0mqf7fjRyv34QEVPUbrU3bGl2ESm6HVEMAzysO3m1pE1HnHZcF4ijJ1lDGhU9kCoEZmQATAKQjthDymQAcNAWyH0k=
X-Received: by 2002:a2e:a367:0:b0:27a:2a6d:73a with SMTP id
 i7-20020a2ea367000000b0027a2a6d073amr1335395ljn.27.1670973109877; Tue, 13 Dec
 2022 15:11:49 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 13 Dec 2022 15:11:49 -0800
MIME-Version: 1.0
In-Reply-To: <1670967848-31475-4-git-send-email-quic_khsieh@quicinc.com>
References: <1670967848-31475-1-git-send-email-quic_khsieh@quicinc.com> <1670967848-31475-4-git-send-email-quic_khsieh@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 13 Dec 2022 15:11:49 -0800
Message-ID: <CAE-0n52uRPS0nWHsdpozQBDdb2O8t1WqNVuf6JOrwdworbpJzg@mail.gmail.com>
Subject: Re: [PATCH v12 3/5] drm/msm/dp: parser data-lanes as property of
 dp_out endpoint
To:     Kuogee Hsieh <quic_khsieh@quicinc.com>, agross@kernel.org,
        airlied@gmail.com, andersson@kernel.org, daniel@ffwll.ch,
        devicetree@vger.kernel.org, dianders@chromium.org,
        dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org,
        konrad.dybcio@somainline.org, krzysztof.kozlowski+dt@linaro.org,
        robdclark@gmail.com, robh+dt@kernel.org, sean@poorly.run,
        vkoul@kernel.org
Cc:     quic_abhinavk@quicinc.com, quic_sbillaka@quicinc.com,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Kuogee Hsieh (2022-12-13 13:44:06)
> Add capability to parser data-lanes as property of dp_out endpoint.
> Also retain the original capability to parser data-lanes as property
> of mdss_dp node to handle legacy case.
>
> Changes in v6:
> -- first patch after split parser patch into two
>
> Changes in v7:
> -- check "data-lanes" from endpoint first
>
> Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Subject says "parser" when it probably should say "parse"?

> ---
>  drivers/gpu/drm/msm/dp/dp_parser.c | 25 +++++++++++++++++--------
>  1 file changed, 17 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/msm/dp/dp_parser.c b/drivers/gpu/drm/msm/dp/dp_parser.c
> index dd73221..b5f7e70 100644
> --- a/drivers/gpu/drm/msm/dp/dp_parser.c
> +++ b/drivers/gpu/drm/msm/dp/dp_parser.c
> @@ -94,16 +94,25 @@ static int dp_parser_ctrl_res(struct dp_parser *parser)
>  static int dp_parser_misc(struct dp_parser *parser)
>  {
>         struct device_node *of_node = parser->pdev->dev.of_node;
> -       int len;
> -
> -       len = drm_of_get_data_lanes_count(of_node, 1, DP_MAX_NUM_DP_LANES);
> -       if (len < 0) {
> -               DRM_WARN("Invalid property \"data-lanes\", default max DP lanes = %d\n",
> -                        DP_MAX_NUM_DP_LANES);
> -               len = DP_MAX_NUM_DP_LANES;
> +       int cnt;
> +
> +       /*
> +        * data-lanes is the property of dp_out endpoint
> +        */
> +       cnt = drm_of_get_data_lanes_count_ep(of_node, 1, 0, 1, DP_MAX_NUM_DP_LANES);
> +       if (cnt > 0)
> +               parser->max_dp_lanes = cnt;
> +       else {

Please add brackets to the above if to match the else.

> +               /*
> +                * legacy code, data-lanes is the property of mdss_dp node
> +                */
> +               cnt = drm_of_get_data_lanes_count(of_node, 1, DP_MAX_NUM_DP_LANES);
> +               if (cnt > 0)
> +                       parser->max_dp_lanes = cnt;
> +               else
> +                       parser->max_dp_lanes = DP_MAX_NUM_DP_LANES; /* 4 lanes */
>         }
>
