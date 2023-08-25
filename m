Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 260347885C2
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 13:30:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238347AbjHYL3e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 07:29:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242122AbjHYL3C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 07:29:02 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFC7226B2
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 04:28:39 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-58fc4d319d2so9393607b3.1
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 04:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692962914; x=1693567714;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DeMuSlxUtzQfWCufq9OumalQo8UgVgjecOg8zY7pRu0=;
        b=VENurXBZvcjbdL1mQlZRrpfxE/b/BPdhZCOflTBLiaOVdOgIb/88bM58+C27fiWcIE
         wsh9ykLWOSRadrMWNF1O3+qzEOlMYlZjJDp4Ce7zhZd3utIu7cCofviHZgaHsqSU4T5j
         zDYVofLRGrRlYwiVZZNXHNgCXJ1XYdEyGFpobY29+GS8ENvo6Ep9laE0gvYG1klwCat+
         egPuOaftHKc8zbx8zBtJt4zT+Et4gUXAofcwFTuqDXWt+ce9uWo1sof2dGFiHK4hyjnz
         MpkRKx0mscgPe2BjXZyos0n6X0HvTkmuL7OIeP+DviO2WCq0JbXYIrPmyxGVhRtmxW3m
         qkUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692962914; x=1693567714;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DeMuSlxUtzQfWCufq9OumalQo8UgVgjecOg8zY7pRu0=;
        b=ZmVs0cMMPX7TNgB3a3InSiTlTRNo47k7JqAaMo4M8iwiwO9/gIq0AoAF/ZRvKo57sL
         onH9vz+U5Ng/9cmGaHp98QXTDuts7hRtSQUFZB6FmXTkVy1Qrv4YptkrIwpmKwvSOKtU
         897tcmoamHHGyKvnfy0IOya639u39V1cTo7j9zWi1LZJaWF3ejncdERLAyjlsN5ji6v4
         lbacEwqEiEGzhN4wzio0i/xHtt1FuhVxpPSIL4ubTcrIT4XUNhnLM5Vs8i5ZJ/veazL9
         DgF1BWKF2qWwHaw32LIX8+BwYtZnjF6h2GJAyi/C4ndmVbVOrAY/OootTfaibvI2st3Z
         HQqw==
X-Gm-Message-State: AOJu0YyPwDFARgKCFmAlDKL049fqeWhvsBKyngV6qelXTy9MQHVWTebl
        anYbrKAohnyhMCARdonjqJVng2n7s6kw8WnOHWqoaA==
X-Google-Smtp-Source: AGHT+IHUgfu2tsexI+VJcgqvjEyLuKSLHFMu/xUlz+Q8AtTZDI1mZZPzp34WcqG0IR77T8xrrkPiuCDV4ZulMmomQ94=
X-Received: by 2002:a25:d257:0:b0:d12:77c7:b362 with SMTP id
 j84-20020a25d257000000b00d1277c7b362mr18460990ybg.26.1692962913802; Fri, 25
 Aug 2023 04:28:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230825091234.32713-1-quic_devipriy@quicinc.com> <20230825091234.32713-7-quic_devipriy@quicinc.com>
In-Reply-To: <20230825091234.32713-7-quic_devipriy@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 25 Aug 2023 14:28:22 +0300
Message-ID: <CAA8EJpo75zWLXuF-HC-Xz+6mvu_S1ET-9gzW=mOq+FjKspDwhw@mail.gmail.com>
Subject: Re: [PATCH V2 6/7] arm64: dts: qcom: ipq9574: Add support for nsscc node
To:     Devi Priya <quic_devipriy@quicinc.com>
Cc:     andersson@kernel.org, agross@kernel.org, konrad.dybcio@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        richardcochran@gmail.com, arnd@arndb.de, geert+renesas@glider.be,
        nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
        quic_saahtoma@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 25 Aug 2023 at 12:15, Devi Priya <quic_devipriy@quicinc.com> wrote:
>
> Add a node for the nss clock controller found on ipq9574 based devices.
>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V2:
>         - Dropped the fixed clock node gcc_gpll0_out_aux and added
>           support for the same in gcc driver
>         - Updated the node name to clock-controller@39b00000
>         - Added clock-names to retrieve the nssnoc clocks and add them
>           to the list of pm clocks in nss driver
>
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 48 +++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 51aba071c1eb..903311547e96 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -10,6 +10,8 @@
>  #include <dt-bindings/clock/qcom,ipq9574-gcc.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/reset/qcom,ipq9574-gcc.h>
> +#include <dt-bindings/clock/qcom,ipq9574-nsscc.h>
> +#include <dt-bindings/reset/qcom,ipq9574-nsscc.h>
>  #include <dt-bindings/thermal/thermal.h>
>
>  / {
> @@ -18,6 +20,24 @@ / {
>         #size-cells = <2>;
>
>         clocks {
> +               bias_pll_cc_clk: bias-pll-cc-clk {
> +                       compatible = "fixed-clock";
> +                       clock-frequency = <1200000000>;
> +                       #clock-cells = <0>;
> +               };
> +
> +               bias_pll_nss_noc_clk: bias-pll-nss-noc-clk {
> +                       compatible = "fixed-clock";
> +                       clock-frequency = <461500000>;
> +                       #clock-cells = <0>;
> +               };
> +
> +               bias_pll_ubi_nc_clk: bias-pll-ubi-nc-clk {
> +                       compatible = "fixed-clock";
> +                       clock-frequency = <353000000>;
> +                       #clock-cells = <0>;
> +               };

Which part provides these clocks?

> +
>                 sleep_clk: sleep-clk {
>                         compatible = "fixed-clock";
>                         #clock-cells = <0>;
> @@ -722,6 +742,34 @@ frame@b128000 {
>                                 status = "disabled";
>                         };
>                 };
> +
> +               nsscc: clock-controller@39b00000 {
> +                       compatible = "qcom,ipq9574-nsscc";
> +                       reg = <0x39b00000 0x80000>;
> +                       clocks = <&gcc GCC_NSSNOC_NSSCC_CLK>,
> +                                <&gcc GCC_NSSNOC_SNOC_CLK>,
> +                                <&gcc GCC_NSSNOC_SNOC_1_CLK>,
> +                                <&bias_pll_cc_clk>,
> +                                <&bias_pll_nss_noc_clk>,
> +                                <&bias_pll_ubi_nc_clk>,
> +                                <&gcc GPLL0_OUT_AUX>,
> +                                <0>,
> +                                <0>,
> +                                <0>,
> +                                <0>,
> +                                <0>,
> +                                <0>,
> +                                <&xo_board_clk>;

If you move xo_board closer to the start of the list, it will be
slightly easier to review.

> +                       clock-names = "nssnoc_nsscc", "nssnoc_snoc", "nssnoc_snoc_1",
> +                                     "bias_pll_cc_clk", "bias_pll_nss_noc_clk",
> +                                     "bias_pll_ubi_nc_clk", "gpll0_out_aux", "uniphy0_nss_rx_clk",
> +                                     "uniphy0_nss_tx_clk", "uniphy1_nss_rx_clk",
> +                                     "uniphy1_nss_tx_clk", "uniphy2_nss_rx_clk",
> +                                     "uniphy2_nss_tx_clk", "xo_board_clk";

You are using clock indices. Please drop clock-names.

> +                       #clock-cells = <1>;
> +                       #reset-cells = <1>;
> +                       #power-domain-cells = <1>;
> +               };
>         };
>
>         thermal-zones {
> --
> 2.34.1
>


-- 
With best wishes
Dmitry
