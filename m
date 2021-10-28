Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FB5243E9CC
	for <lists+devicetree@lfdr.de>; Thu, 28 Oct 2021 22:40:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231328AbhJ1Umf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 16:42:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231201AbhJ1Ume (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 16:42:34 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2760AC061570
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 13:40:07 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id x8so5784095oix.2
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 13:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Mc+8S5Whla1YbKgz+VUXYK04HxCH9I1XJ/0wdAasLUo=;
        b=SeMJsBuz91JQxCWVxOxcj47RIkNdZQspOPGWogS7UitHNbeBKzzOKtHe5ABqKE5TZ8
         t8FCq4S3avyparMULGdIhkTK3+pHzQ9ts6s5X9ajUmfggp//VD+6A2EgtXrOPk3NOCRo
         96dVFRmt29FVshSQlOrZnTiZwgChhnuW5CPuo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Mc+8S5Whla1YbKgz+VUXYK04HxCH9I1XJ/0wdAasLUo=;
        b=jvLr+2mUJmF4vOATUUN0nJBLQTLWfm5WIZscOR8mNPkWlzs7d/uJPaJJ3/rSvfj2FP
         Lg5mSUyUV5egPaPZ01mfRtyEW+F3NGFdjtI3KIWaSGA5Ijx7jOBU59B5n+Q+3x3Upw5b
         Aura8Ln9PXz9zcnaAVRujgJjIQKMMg0xrTnpSSVAnCS/d1QqVtbIagSObaZUlbcZ8alO
         /f57wUmwPF9kH5kGP7OfaYYg1NGtXDr5q8qk3o9/467gbMTXgZmDrbREYepp1MvYQLvL
         IhmAGuQEK/w6firUJELmjW8v7ZjLCnU+C3NUfhq8QdsTw9Pjdqom7SfnLjcwQod53VLU
         ImJA==
X-Gm-Message-State: AOAM533xC9/9Xzl20wfuZwT0VlFl6cPgXDqOpJ4Rls/8K9gKMT77j5FR
        u1AyHl2/qpJ1t4Mdhb8qi11tOSdAzS5g6h6w/1ArXw==
X-Google-Smtp-Source: ABdhPJzKfx4D6DyLSVlp6JdaKG2+N6M0VZf0eweuJucu6IzYYlgPHx2vZu79EuZ7EX3UgVgdT5UEGRq8by4cBVOMjYs=
X-Received: by 2002:a05:6808:23c2:: with SMTP id bq2mr10667904oib.32.1635453605046;
 Thu, 28 Oct 2021 13:40:05 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 28 Oct 2021 13:40:04 -0700
MIME-Version: 1.0
In-Reply-To: <1635434072-32055-5-git-send-email-quic_c_skakit@quicinc.com>
References: <1635434072-32055-1-git-send-email-quic_c_skakit@quicinc.com> <1635434072-32055-5-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 28 Oct 2021 13:40:04 -0700
Message-ID: <CAE-0n53kp5M6LG2iwaJeysQDrJD1AvcctEd6xjVdTXs5ddhu2w@mail.gmail.com>
Subject: Re: [PATCH V3 4/4] arm64: dts: qcom: sc7280: Add pm8008 regulators
 support for sc7280-idp
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, collinsd@codeurora.org,
        subbaram@codeaurora.org, Das Srinagesh <gurus@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2021-10-28 08:14:32)
> Add pm8008 regulators support for sc7280 idp.
>
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> ---
> Changes in V2:
>  - As per Stephen's comments, replaced '_' with '-' for node names.
>
> Changes in V3:
>  - Changed the regulator node names as l1, l2 etc
>  - Changed "pm8008-regulators" to "regulators"
>  - Changed "qcom,min-dropout-voltage" to "regulator-min-dropout-voltage-microvolt"
>
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 103 +++++++++++++++++++++++++++++++
>  1 file changed, 103 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index d623d71..493575b 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -309,6 +309,97 @@
>         };
>  };
>
> +&i2c1 {
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       status = "okay";
> +
> +       pm8008_chip: pm8008@8 {

If this is going to be copy/pasted wherever devices that use pm8008 live
then it's probably better to make a new file like we do for other pmics.
Maybe something like

&pm8008_i2c {
	<All the generic stuff in here like reg properties and
	address/size cells and compatible>
};

and then have each board set the min/max voltages and min dropout
properties. Then we can include the pm8008.dtsi file after defining
which i2c bus it lives on.

pm8008_i2c: i2c5 { };
#include "pm8008.dtsi"

...


&pm8008_l1 {
	regulator-min-microvolt = <...>;
	...
};

> +               compatible = "qcom,pm8008";
> +               reg = <0x8>;
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&pm8008_active>;
> +       };
> +
> +       pm8008_ldo: pm8008@9 {
> +               compatible = "qcom,pm8008";
> +               reg = <0x9>;
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               regulators {
> +                       compatible = "qcom,pm8008-regulator";
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       vdd_l1_l2-supply = <&vreg_s8b_1p2>;
> +                       vdd_l3_l4-supply = <&vreg_s1b_1p8>;
> +                       vdd_l5-supply = <&vreg_bob>;
> +                       vdd_l6-supply = <&vreg_bob>;
> +                       vdd_l7-supply = <&vreg_bob>;
> +
> +                       pm8008_l1: l1@4000 {
> +                               reg = <0x4000>;
> +                               regulator-name = "pm8008_l1";
> +                               regulator-min-microvolt = <950000>;
> +                               regulator-max-microvolt = <1300000>;
> +                               regulator-min-dropout-voltage-microvolt = <96000>;
> +                       };
> +
> +                       pm8008_l2: l2@4100 {
> +                               reg = <0x4100>;
> +                               regulator-name = "pm8008_l2";
> +                               regulator-min-microvolt = <950000>;
> +                               regulator-max-microvolt = <1250000>;
> +                               regulator-min-dropout-voltage-microvolt = <24000>;
> +                       };
> +
> +                       pm8008_l3: l3@4200 {
> +                               reg = <0x4200>;
> +                               regulator-name = "pm8008_l3";
> +                               regulator-min-microvolt = <1650000>;
> +                               regulator-max-microvolt = <3000000>;
> +                               regulator-min-dropout-voltage-microvolt = <224000>;
> +                       };
> +
> +                       pm8008_l4: l4@4300 {
> +                               reg = <0x4300>;
> +                               regulator-name = "pm8008_l4";
> +                               regulator-min-microvolt = <1504000>;
> +                               regulator-max-microvolt = <1600000>;
> +                               regulator-min-dropout-voltage-microvolt = <0>;
> +                       };
> +
> +                       pm8008_l5: l5@4400 {
> +                               reg = <0x4400>;
> +                               regulator-name = "pm8008_l5";
> +                               regulator-min-microvolt = <2600000>;
> +                               regulator-max-microvolt = <3000000>;
> +                               regulator-min-dropout-voltage-microvolt = <104000>;
> +                       };
> +
> +                       pm8008_l6: l6@4500 {
> +                               reg = <0x4500>;
> +                               regulator-name = "pm8008_l6";
> +                               regulator-min-microvolt = <2600000>;
> +                               regulator-max-microvolt = <3000000>;
> +                               regulator-min-dropout-voltage-microvolt = <112000>;
> +                       };
> +
> +                       pm8008_l7: l7@4600 {
> +                               reg = <0x4600>;
> +                               regulator-name = "pm8008_l7";
> +                               regulator-min-microvolt = <3000000>;
> +                               regulator-max-microvolt = <3544000>;
> +                               regulator-min-dropout-voltage-microvolt = <96000>;
> +                       };
> +               };
> +       };
> +};
> +
>  &qfprom {
>         vcc-supply = <&vreg_l1c_1p8>;
>  };
> @@ -437,6 +528,18 @@
>         };
>  };
>
> +&pm8350c_gpios {
> +       pm8008-reset {

Why is it a subnode of a subnode? Shouldn't it be pm8008-active
directly underneath pm8350c_gpios?

> +               pm8008_active: pm8008-active {
> +                       pins = "gpio4";
> +                       function = "normal";
> +                       bias-disable;
> +                       output-high;
> +                       power-source = <0>;
> +               };
> +       };
> +};
> +
>  &qspi_cs0 {
>         bias-disable;
>  };
