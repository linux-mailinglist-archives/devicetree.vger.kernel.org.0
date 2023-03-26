Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE38B6C935E
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 11:21:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229985AbjCZJVS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 05:21:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229621AbjCZJVR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 05:21:17 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8437F5BB1
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 02:21:16 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id i7so7073700ybt.0
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 02:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679822476;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xOnVbpgAPSDe169IIlms5nj4puE9UEWWgE32HX0VB9g=;
        b=gGf1Fwte13QDusOygp9PbopJLNGKIKNJ0nWg5UkauwignubnXFrNW4xUuQb/gzw1jY
         teyqJ99IvMbYWIXCSI/n57zh4PT76t1Qev7ON7KWd6V3aUSvGgs2QuHGLtI6xMfLhCCI
         +z4NdpdtcNdeEbuSAOs9C/WYzuinPxc/ssfHIIX0/eROQEm7Y5a2wMkABvM6ozyTYeTU
         I97dkSsbVv7P4uHCeoocI1SjfDIfhMuOa1G0mVB6lxyZOTSKtHrwd13A9MRBTFEXIOdJ
         owZ7740yxP82b5xSZDzT4Sggl/cgY79NoX+gQNDV/2YYiJPVN/5kkLsFSJwLSeJMiLuD
         I+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679822476;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xOnVbpgAPSDe169IIlms5nj4puE9UEWWgE32HX0VB9g=;
        b=DOlWz75vSjX8Oc9FTB5DTdCz35l/DvUgnNJVfGVSXXaWggoZx4wojl1sSYfBiwWqO8
         e5BajhJbWBTvyHeMBWkasYWTSozccBDPoafqLhvBfbIkczF20lchz9JqQwdeUeVkgnIB
         sc13/J7HujuCLQTRagIsKT4pAZJfZnfHmFgVlVvpowBo5j/Dia6OJ+teZHwSqMWBUPkE
         wWM2Q/tB2HyETzleBa0yaZQWcxKzCnCHbI12geXM8/IrqD9d17TgGry9/WN1z/WENe3e
         2fs/Dc45Xtm6icazpsnGsUzZ7kMF+xa+EVH5+nsJCmjdw21seUWUzPVHz2/sokbZW979
         NBfg==
X-Gm-Message-State: AAQBX9dijUco1EYyzgyfVNxAx0Kt9peFTgWbgaHqFwTVJU8vzcUY5hH5
        giGMIkF5GFRtnvuf+rjitqul/riLBjEO4iseus/N3w==
X-Google-Smtp-Source: AKy350bBDqR5rDMccCu1GiLm+5BccP/mDlcYWK8b/gPB4V0IWRo+4xd+DbgTFrmdpsHsvM8bQx7ZMoAS7Bb0JhkmlzU=
X-Received: by 2002:a05:6902:102b:b0:b46:4a5e:3651 with SMTP id
 x11-20020a056902102b00b00b464a5e3651mr4818141ybt.9.1679822475624; Sun, 26 Mar
 2023 02:21:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230326091605.18908-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326091605.18908-1-krzysztof.kozlowski@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sun, 26 Mar 2023 12:21:04 +0300
Message-ID: <CAA8EJpqR-QisyWEHE83oFbXt8wUcn2Ofd4W6UwFmkYzGD18N9Q@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm630: move DSI opp-table out of
 soc node
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 26 Mar 2023 at 12:16, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The soc node is supposed to have only device nodes with MMIO addresses,
> so move the DSI OPP out of it (it is used also by second DSI1 on
> SDM660):

This raises a question: would it make sense to add /opps to handle all
opp tables?

>
>   sda660-inforce-ifc6560.dtb: soc: opp-table-dsi: {'compatible': ['operating-points-v2'], ... should not be valid under {'type': 'object'}
>     From schema: dtschema/schemas/simple-bus.yaml
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Changes since v1:
> 1. Move the node out of soc. Don't add Konrad's review tag.
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 38 ++++++++++++++--------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> index 72d9a12b5e9c..b91e423a3cfc 100644
> --- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
> @@ -328,6 +328,25 @@ memory@80000000 {
>                 reg = <0x0 0x80000000 0x0 0x0>;
>         };
>
> +       dsi_opp_table: opp-table-dsi {
> +               compatible = "operating-points-v2";
> +
> +               opp-131250000 {
> +                       opp-hz = /bits/ 64 <131250000>;
> +                       required-opps = <&rpmpd_opp_svs>;
> +               };
> +
> +               opp-210000000 {
> +                       opp-hz = /bits/ 64 <210000000>;
> +                       required-opps = <&rpmpd_opp_svs_plus>;
> +               };
> +
> +               opp-262500000 {
> +                       opp-hz = /bits/ 64 <262500000>;
> +                       required-opps = <&rpmpd_opp_nom>;
> +               };
> +       };
> +
>         pmu {
>                 compatible = "arm,armv8-pmuv3";
>                 interrupts = <GIC_PPI 6 IRQ_TYPE_LEVEL_HIGH>;
> @@ -1450,25 +1469,6 @@ mmcc: clock-controller@c8c0000 {
>                                         <0>;
>                 };
>
> -               dsi_opp_table: opp-table-dsi {
> -                       compatible = "operating-points-v2";
> -
> -                       opp-131250000 {
> -                               opp-hz = /bits/ 64 <131250000>;
> -                               required-opps = <&rpmpd_opp_svs>;
> -                       };
> -
> -                       opp-210000000 {
> -                               opp-hz = /bits/ 64 <210000000>;
> -                               required-opps = <&rpmpd_opp_svs_plus>;
> -                       };
> -
> -                       opp-262500000 {
> -                               opp-hz = /bits/ 64 <262500000>;
> -                               required-opps = <&rpmpd_opp_nom>;
> -                       };
> -               };
> -
>                 mdss: display-subsystem@c900000 {
>                         compatible = "qcom,mdss";
>                         reg = <0x0c900000 0x1000>,
> --
> 2.34.1
>


-- 
With best wishes
Dmitry
