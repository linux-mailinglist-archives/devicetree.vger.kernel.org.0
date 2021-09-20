Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D572A412A64
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 03:39:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233094AbhIUBky (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 21:40:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232357AbhIUBj3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 21:39:29 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82FCFC0430C9
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 12:52:00 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id c6-20020a9d2786000000b005471981d559so3684544otb.5
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 12:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=QR+41d2CWnF6y8POX2yCYnotLJD1rZ1O8icCQ6F8e+Y=;
        b=XuHIYliUFLKnsbgeeINNatgMmsCdIboPP8+sAg9LU+cvRVtTq7lOTS7H4haZNHxvM9
         p1N88SB3352wydMgXNSFCzuDo1DZcDyV0oK/h/kEhNHzNJY4QOT/B0F4P7Or8YCoOR13
         O91X05MpZ4Ws801ghrVoeaLbpMLQaIZh4DV4Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=QR+41d2CWnF6y8POX2yCYnotLJD1rZ1O8icCQ6F8e+Y=;
        b=Cf/kAS2AANTICjyF3Sz4a4AsYe0S/oWgjgAkuD+XbxH3yUQ0WWQGUMcSGiLpiPYc4Q
         F3j7bYVz0kLNiZW7bsdrYUqmPNttj3zfnuYWTXhKQtt7IkEn2kKYiB08FmVii2REVzbO
         x+m9GMk5EaXJuZPaj0cGQAucnk7oA3oBJoAHjKnOTkUaW3iDrjMFRa4lBi9uodUK+5nZ
         WlrEgUXp9CO06JC0ohqZPmL275tILT/kMvGlSZm7DFu97pd027H40YkV+Mdb4Demkx/F
         3evl+kAOlrnd4T8J+acdFfTPbKgWPrj7me/YxaejdUVNPjrrUcxA88B0J03HdCpGRrMw
         uLXQ==
X-Gm-Message-State: AOAM532qVQl1GWz83udTrc0gFhIbVcVIx2ukmwkUz76lwu4xkA+fS3eV
        MEUcD4oUNAnM5N0Q5uRocQ0fyePqmjSKQ6n80y1ufA==
X-Google-Smtp-Source: ABdhPJwtIzCWSMh71giNnyYDptJRLaxEGCqlnvwoau2/hKz6p8Jc9WJ7gdkc0BAR/4i0a9R3CQlqSIDvb9uYW+loKUw=
X-Received: by 2002:a05:6830:1212:: with SMTP id r18mr21399600otp.159.1632167519891;
 Mon, 20 Sep 2021 12:51:59 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 20 Sep 2021 12:51:59 -0700
MIME-Version: 1.0
In-Reply-To: <1631898947-27433-4-git-send-email-pmaliset@codeaurora.org>
References: <1631898947-27433-1-git-send-email-pmaliset@codeaurora.org> <1631898947-27433-4-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 20 Sep 2021 12:51:59 -0700
Message-ID: <CAE-0n53N-7wGgGmqep6ZTAt14dYObq43cTak_BWAjy6XS0Gnig@mail.gmail.com>
Subject: Re: [PATCH v8 3/4] arm64: dts: qcom: sc7280: Add PCIe nodes for IDP board
To:     Prasad Malisetty <pmaliset@codeaurora.org>, agross@kernel.org,
        bhelgaas@google.com, bjorn.andersson@linaro.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, svarbanov@mm-sol.com
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, mka@chromium.org, vbadigan@codeaurora.org,
        sallenki@codeaurora.org, manivannan.sadhasivam@linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-09-17 10:15:46)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 99f9ee5..ee00df0 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -199,6 +199,39 @@
>         modem-init;
>  };
>
> +&pcie1 {
> +       status = "okay";
> +
> +       perst-gpio = <&tlmm 2 GPIO_ACTIVE_LOW>;
> +       pinctrl-0 = <&pcie1_default_state &nvme_ldo_enable_pin>;
> +};
> +
> +&pcie1_phy {
> +       status = "okay";
> +
> +       vdda-phy-supply = <&vreg_l10c_0p8>;
> +       vdda-pll-supply = <&vreg_l6b_1p2>;
> +};
> +
> +&pcie1_default_state {
> +       reset-n {
> +               pins = "gpio2";
> +               function = "gpio";
> +
> +               drive-strength = <16>;
> +               output-low;
> +               bias-disable;
> +       };
> +
> +       wake-n {
> +               pins = "gpio3";
> +               function = "gpio";
> +
> +               drive-strength = <2>;
> +               bias-pull-up;
> +       };

I think the previous round of this series Bjorn was saying that these
should be different nodes and tacked onto the pinctrl-0 list for the
pcie1 device instead of adding them as subnodes of the "default state".

> +};
> +
>  &pmk8350_vadc {
>         pmk8350_die_temp {
>                 reg = <PMK8350_ADC7_DIE_TEMP>;
> @@ -343,3 +376,10 @@
>                 bias-pull-up;
>         };
>  };
> +
> +&tlmm {
> +       nvme_ldo_enable_pin: nvme_ldo_enable_pin {

Please use dashes where you use underscores in node names

       nvme_ldo_enable_pin: nvme-ldo-enable-pin {

> +               function = "gpio";
> +               bias-pull-up;

Of course with that said, the name of this node makes it sound like this
is a gpio controlled regulator. Why not use that binding then and enable
the regulator either by default with regulator properties like
regulator-always-on and regulator-boot-enable and/or reference it from
the pcie device somehow so that it can be turned off during suspend?

> +       };
> +};
