Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAEB04BC4AE
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 03:06:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240998AbiBSCCQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 21:02:16 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:56266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231952AbiBSCCP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 21:02:15 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D90E35842
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 18:01:57 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id a7-20020a9d5c87000000b005ad1467cb59so3171842oti.5
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 18:01:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=H1HxUEpXoVQpsG8b03LMRl3OP81XuF90MDBUIM1swkQ=;
        b=eQ5IdMRZJ/DaSRP8WbiioyS35zcy5eh0OoymuYg4k1pbLMXwFPhx6Bp9+3DKPVO1vR
         6shMg4ag19yItVLaQJzXoh57cB9YPbPrdKYsDJDRiQOgmnMfVtRJhOPnKkcYQrJ5Ye29
         wS9+CiZlwWxqD1AOSZqhXXkKmmYf858gzM+C8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=H1HxUEpXoVQpsG8b03LMRl3OP81XuF90MDBUIM1swkQ=;
        b=OH193yEe+XrMFvzF5XJhIZ9NBdnIyQBp07BKBYS0RJIHN/gqAUUsbsnxlZ8VdNsZIv
         NpGd2X2sh+zULM03aXxT7YpSxprb3mMMpULixjN9nZxe+9FqsZTYE7Lkr3ZXx2fNrNFR
         yTCzWuGf8w4YYfs7x/wvRHiMAPRV2Iaavg7xM0p6+myJsbafz04beL2dKU5JCfIiBAjJ
         9ohGboYJTtCbQ/2MO4W539/ey2plq4vci/ICEi34N8KXzF2xrT/8LPfjyma/aFEkg3iL
         c28uKeI29IOlriUs4wTzox4CYV3MGUXWxRj2BZKSJobYqDaGT3Rum3zH1ezWWcJ4segR
         P0RA==
X-Gm-Message-State: AOAM530xYH4zlRQfR5jyXXxUjK5YFiBSc4t2OGhmBLBfKJ+koLWUU5yf
        JIky7PjMlPIRDXbUMUvfv4ZV3G95xSBplTiQuAqigQ==
X-Google-Smtp-Source: ABdhPJxbSl0kE3DczPu6BGX+BY6C0anissA0/n4yKPe0SQQa9W0I7aVBe/cfhUhFKWw4vHqaAMQV+sHfQkhzqIZeMyg=
X-Received: by 2002:a9d:22e9:0:b0:5ac:1754:342c with SMTP id
 y96-20020a9d22e9000000b005ac1754342cmr3333680ota.159.1645236116595; Fri, 18
 Feb 2022 18:01:56 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 18 Feb 2022 18:01:55 -0800
MIME-Version: 1.0
In-Reply-To: <1645182064-15843-6-git-send-email-quic_c_skakit@quicinc.com>
References: <1645182064-15843-1-git-send-email-quic_c_skakit@quicinc.com> <1645182064-15843-6-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 18 Feb 2022 18:01:55 -0800
Message-ID: <CAE-0n509bg6RzieOtYuUvicU14D7bmgH-u02F1TB+hBZ+xH4CA@mail.gmail.com>
Subject: Re: [PATCH V7 5/5] arm64: dts: qcom: sc7280: Add pm8008 support for sc7280-idp
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Das Srinagesh <gurus@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_collinsd@quicinc.com,
        quic_subbaram@quicinc.com, quic_jprakash@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2022-02-18 03:01:03)
> Add pm8008_infra and pm8008_regulators support for sc7280 idp.
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
> Changes in V4:
>  - Moved all common stuff to pm8008.dtsi and added board specific configurations here.
>
> Changes in V5:
>  - Changed the node names as per pm8008.dtsi
>  - Moved supply nodes to chip level (mfd node).
>  - Removed the regulator-mindropout property.
>
> Changes in V6:
>  - No changes.
>
> Changes in V7:
>  - No Changes.
>
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 66 ++++++++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index ecbf2b8..371ad19 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -263,6 +263,62 @@
>         };
>  };
>
> +&i2c1 {

Can we add another phandle?

&pm8008_bus: &i2c1 {

> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       status = "okay";
> +
> +       #include "pm8008.dtsi"
> +};

And then

#include "pm8008.dtsi"

and have the pm8008.dtsi file add itself as a child of &pm8008_bus? Then
we can easily see that pm8008 is a child of pm8008_bus without having to
figure out where the file is included. It also helps avoid polluting the
i2c node with things that shouldn't be there in case we want to include
configuration bits in the pm8008.dtsi file that aren't directly related
to the bus node.

> +
> +&pm8008_infra {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pm8008_active>;
> +};
> +
> +&pm8008_regulators {
> +       vdd_l1_l2-supply = <&vreg_s8b_1p2>;
> +       vdd_l3_l4-supply = <&vreg_s1b_1p8>;
> +       vdd_l5-supply = <&vreg_bob>;
> +       vdd_l6-supply = <&vreg_bob>;
> +       vdd_l7-supply = <&vreg_bob>;
> +};
> +
> +&pm8008_l1 {
> +       regulator-min-microvolt = <950000>;
> +       regulator-max-microvolt = <1300000>;
> +};
> +
> +&pm8008_l2 {
> +       regulator-min-microvolt = <950000>;
> +       regulator-max-microvolt = <1250000>;
> +};
> +
> +&pm8008_l3 {
> +       regulator-min-microvolt = <1650000>;
> +       regulator-max-microvolt = <3000000>;
> +};
> +
> +&pm8008_l4 {
> +       regulator-min-microvolt = <1504000>;
> +       regulator-max-microvolt = <1600000>;
> +};
> +
> +&pm8008_l5 {
> +       regulator-min-microvolt = <2600000>;
> +       regulator-max-microvolt = <3000000>;
> +};
> +
> +&pm8008_l6 {
> +       regulator-min-microvolt = <2600000>;
> +       regulator-max-microvolt = <3000000>;
> +};
> +
> +&pm8008_l7 {
> +       regulator-min-microvolt = <3000000>;
> +       regulator-max-microvolt = <3544000>;
> +};
> +
>  &qfprom {
>         vcc-supply = <&vreg_l1c_1p8>;
>  };
> @@ -375,6 +431,16 @@
>         drive-strength = <2>;
>  };
>
> +&pm8350c_gpios {
> +       pm8008_active: pm8008_active {

No underscore in node names. pm8008_active: pm8008-active {

> +               pins = "gpio4";
> +               function = "normal";
> +               bias-disable;
> +               output-high;

Is this a reset signal? Should the driver be deasserting the reset when
it is ready? That could be the same time the gpio is acquired.

> +               power-source = <0>;
> +       };
> +};
