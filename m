Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F75F39ABCD
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 22:29:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229727AbhFCUbS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Jun 2021 16:31:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229620AbhFCUbS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Jun 2021 16:31:18 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3CC2C06174A
        for <devicetree@vger.kernel.org>; Thu,  3 Jun 2021 13:29:16 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 36-20020a9d0ba70000b02902e0a0a8fe36so7006784oth.8
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 13:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=xX3VYyjxzdpIjPz97c6PlVOdKP115o6p3Ui5EeqQcH8=;
        b=ih5nYpGzowbPdJfl92eNjSiXeyjEU8mqtDMi6euxHBeilZo65ZqleTe1Pm4RddVC4c
         B6r57+8YHVolT9AF5qMAGOdIsftI5Q9ik+rlE9alUQvw0PzTC6OwyETotdcYfF0LmBAX
         Mt53RFDUjlIO50L5YY2Ogw6GD8v/kIWSbrUGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=xX3VYyjxzdpIjPz97c6PlVOdKP115o6p3Ui5EeqQcH8=;
        b=N6fBQ1nHQTHnoMwxDL5zERR8YC4H7orNlKRbWOUz0OcxaMiy/DIOAR3M0axoTnxlWR
         kNrJUWs2rmQKvqIM9ypnQhX5zNbtYQ+0tNkvNx/6tHIQOalmu7qU2C/QsyiXk3vwiXdt
         +Q557uHmZk3icyE1Y8/b+ls8F5O1TkmjjkjsEn8GDavLe6T5RwqdPda8RRAuh2JXfPPA
         oqjNtXVmaq+aknNMDsW5ihWV1JqMvDZFegf4Fpnjkw4UnY5Xef4PBy1pgD2YHu+wywu3
         McDCB9uh9zryeEASzZT25HxFzKpHaypKOuqDXSsnVhH3x/ZuEFvFLP9Mx10BmYo2vCd4
         scSQ==
X-Gm-Message-State: AOAM533EUSN6ZQssocQcy+Mnc7KG+zmgqUKd54d9hbOgSEJOkK7tjeS6
        IGpgTWiF9A41Ojy+I7JENtcYoMm5DECz+MGqbjX1Cw==
X-Google-Smtp-Source: ABdhPJzEi43bs9A+1vKefCz1MnfpsKOuD1JXyyzfdyZKIKc9+GkL0Ty/1xFukAjWe+ur6BBOKH+NbAOBWyYfWF7fh9I=
X-Received: by 2002:a9d:18e:: with SMTP id e14mr933504ote.34.1622752156132;
 Thu, 03 Jun 2021 13:29:16 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Jun 2021 20:29:15 +0000
MIME-Version: 1.0
In-Reply-To: <1622738250-1469-1-git-send-email-khsieh@codeaurora.org>
References: <1622738250-1469-1-git-send-email-khsieh@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 3 Jun 2021 20:29:15 +0000
Message-ID: <CAE-0n53t0fjZYTrsV3fwbPajswLXpgcm6crTAD6sYzTn7xNe8g@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: sc7180: Add DisplayPort node
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

Quoting Kuogee Hsieh (2021-06-03 09:37:30)
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index 24d293e..40367a2 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -786,6 +786,15 @@ hp_i2c: &i2c9 {
>         status = "okay";
>  };
>
> +&dp {

This is in the wrong place now. Bjorn's suggestion for mdss_dp sounds
good to me, and then putting the node in alphabetical order.

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
> index 6228ba2..05a4133 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -3148,6 +3155,77 @@
>
>                                 status = "disabled";
>                         };
> +
> +                       dp: displayport-controller@ae90000 {
> +                               compatible = "qcom,sc7180-dp";
> +                               status = "disabled";
> +
> +                               reg = <0 0x0ae90000 0 0x1400>;
> +
> +                               interrupt-parent = <&mdss>;
> +                               interrupts = <12>;
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
> +                               operating-points-v2 = <&opp_table>;
> +                               power-domains = <&rpmhpd SC7180_CX>;

I'm also curious about the power domain for DP. My guess is that both
DSI and DP nodes should be a child of mdss if they're in the display
subsystem and powered down/inaccessible when the mdss_gdsc is disabled.

> +
> +                               #sound-dai-cells = <0>;
> +
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
> +                               opp_table: dp-opp-table {

I meant

	dp_opp_table: opp-table {
		...
	};

> +                                       compatible = "operating-points-v2";
> +
> +                                       opp-160000000 {
> +                                               opp-hz = /bits/ 64 <160000000>;
> +                                               required-opps = <&rpmhpd_opp_low_svs>;
> +                                       };
> +
> +                                       opp-270000000 {
> +                                               opp-hz = /bits/ 64 <270000000>;
> +                                               required-opps = <&rpmhpd_opp_svs>;
