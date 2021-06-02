Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68EAD39958C
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 23:43:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229721AbhFBVpg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 17:45:36 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:42523 "EHLO
        mail-ot1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229467AbhFBVpg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 17:45:36 -0400
Received: by mail-ot1-f48.google.com with SMTP id x41-20020a05683040a9b02903b37841177eso3808369ott.9
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 14:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Y9EqrbVUvdRXQm6S1vGkiBBzxsokfCTZDqeffR9IjWU=;
        b=ez7XacjFJ5Tf16GMFkB8cnre+KJX4IIZyOcbMP9amxCwW7BGHdS4CdFpKfrV98HluV
         rHRRqztGo1W5XeJovPvLEtHU3txxZNGswW5UianDRAciHrtQUt8wUv8oe3OSJB7UiKkR
         1Q0WlyFL8DK0KXG3J4EP5irTdjSolimxwcbAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Y9EqrbVUvdRXQm6S1vGkiBBzxsokfCTZDqeffR9IjWU=;
        b=Mgu/x1RSNwOJpwkY+jfftix5P9NzGUl8xKCAKtqnPHy/xXsGFxG94wRAgbQ2yjkSlV
         ysm/K+f0hg2Z4sgDmGC4VPNvcXmE5TuBl2g6dNysmkQcOp81zwNw4YT2qOr0LBcT2Mu4
         B/38LOnbi2cngbEG6wK9KlsaTqM1r9v4JjmsxAra+/Lcm50MXFM9gvVAc3g9CtEYy6Yf
         9v5n/iI2EfMGuL3elYMGHrnFmuKnxRfovKxrlV9AmOBy3XAwwDxe2PTXQL77Vr8UQLym
         NFt7ayUH0G/L9lN9g2fF7C3Wn/oaMaLQS4iHLehDUY3EQRLJTc5kDRFcCAxskVkHESzA
         JeAg==
X-Gm-Message-State: AOAM531AmE6lVkNlKZ3+QsTbtX0P6wB+I7uh8Wec04TJzCeioClf4ZDs
        fW8R9Pc8glvjeHoRuFEIRXZUoj0jmRfiz1dUB4AAwg==
X-Google-Smtp-Source: ABdhPJwcQMiZ5bocnmxz6pkL58nlbAYlzkz5dN6hF3rzJ7ZRu+8AJhKGsZHlUBM5T4MznnMb51qeRSjoiSeN4OdKAbk=
X-Received: by 2002:a05:6830:3154:: with SMTP id c20mr28424918ots.233.1622670164299;
 Wed, 02 Jun 2021 14:42:44 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 2 Jun 2021 14:42:43 -0700
MIME-Version: 1.0
In-Reply-To: <1622668118-2237-1-git-send-email-khsieh@codeaurora.org>
References: <1622668118-2237-1-git-send-email-khsieh@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 2 Jun 2021 14:42:43 -0700
Message-ID: <CAE-0n52_GFYdvuugm0xZ4EsXTVe9V+-8N=RxWNuV=YJkjWAzQg@mail.gmail.com>
Subject: Re: [PATCH] arm64/dts/qcom/sc7180: Add Display Port dt node
To:     Kuogee Hsieh <khsieh@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
        robdclark@gmail.com, robh+dt@kernel.org, sean@poorly.run,
        vkoul@kernel.org
Cc:     abhinavk@codeaurora.org, aravindh@codeaurora.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Subject should be

	"arm64: dts: qcom: sc7180: Add DisplayPort node"

Quoting Kuogee Hsieh (2021-06-02 14:08:38)
> Add DP device node on sc7180.
>
> Signed-off-by: Kuogee Hsieh <khsieh@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi |  9 ++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi         | 77 ++++++++++++++++++++++++++++
>  2 files changed, 86 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index 24d293e..53ef3961 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -786,6 +786,15 @@ hp_i2c: &i2c9 {
>         status = "okay";
>  };
>
> +&msm_dp {

Maybe the lable should just be 'dp' as msm_ prefix is redundant.

> +        status = "okay";
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&dp_hot_plug_det>;
> +        data-lanes = <0 1>;
> +        vdda-1p2-supply = <&vdda_usb_ss_dp_1p2>;
> +        vdda-0p9-supply = <&vdda_usb_ss_dp_core>;
> +};
> +
>  &pm6150_adc {
>         charger-thermistor@4f {
>                 reg = <ADC5_AMUX_THM3_100K_PU>;
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 6228ba2..2e45098 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -3148,6 +3155,76 @@
>
>                                 status = "disabled";
>                         };
> +
> +                       msm_dp: displayport-controller@ae90000 {
> +                               status = "disabled";

Can this come after compatible?

> +                               compatible = "qcom,sc7180-dp";
> +
> +                               reg = <0 0x0ae90000 0 0x1400>;
> +
> +                               interrupt-parent = <&mdss>;
> +                               interrupts = <12 IRQ_TYPE_NONE>;

Should be

	interrupts = <12>;

> +
> +                               clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +                                        <&dispcc DISP_CC_MDSS_DP_AUX_CLK>,
> +                                        <&dispcc DISP_CC_MDSS_DP_LINK_CLK>,
> +                                        <&dispcc DISP_CC_MDSS_DP_LINK_INTF_CLK>,
> +                                        <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
> +                               clock-names = "core_iface", "core_aux", "ctrl_link",
> +                                             "ctrl_link_iface", "stream_pixel";
> +                               #clock-cells = <1>;
> +                               assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
> +                                                 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
> +                               assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
> +                               phys = <&dp_phy>;
> +                               phy-names = "dp";
> +
> +                               operating-points-v2 = <&dp_opp_table>;
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +
> +                               #sound-dai-cells = <0>;

Move this next to phy? Or at least a newline here to split from ports.

> +                               ports {
> +                                       #address-cells = <1>;
> +                                       #size-cells = <0>;
> +                                       port@0 {
> +                                               reg = <0>;
> +                                               dp_in: endpoint {
> +                                                       remote-endpoint = <&dpu_intf0_out>;
> +                                               };
> +                                       };
> +
> +                                       port@1 {
> +                                               reg = <1>;
> +                                               dp_out: endpoint { };
> +                                       };
> +                               };
> +
> +                               dp_opp_table: dp-opp-table {

Maybe node name should be opp-table?

				dp_opp_table: opp-table {

				};

> +                                       compatible = "operating-points-v2";
> +
> +                                       opp-160000000 {
> +                                               opp-hz = /bits/ 64 <160000000>;
> +                                               required-opps = <&rpmhpd_opp_low_svs>;
