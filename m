Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04F342A8BCB
	for <lists+devicetree@lfdr.de>; Fri,  6 Nov 2020 02:06:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732843AbgKFBFx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 20:05:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730895AbgKFBFx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 20:05:53 -0500
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com [IPv6:2607:f8b0:4864:20::a41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D087C0613D3
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 17:05:53 -0800 (PST)
Received: by mail-vk1-xa41.google.com with SMTP id i62so750762vkb.7
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 17:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zl0JfwBdkHFjUOM+k4t02C3sqQeESdTnHmptr/WPqos=;
        b=T4FeGdGTIArV45DKyfH8ukSWDzaGccekIQtA898zsN78fWbPAdEA/QxSAVxvvZ7f4t
         i0orFlznbIXTjT4aOSeulZG+tmk+BkwyiTQ4sRBLM8itWu6LZ8bYWM8Xef3i3aP/D7Ch
         z7wYW71WH2BgyTIHFmZNCHZ4AbGqKoMe6Mlr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zl0JfwBdkHFjUOM+k4t02C3sqQeESdTnHmptr/WPqos=;
        b=TDs1yPyA0J2PtkaXWGSX6hDqkk/Uz/m1PnlHPHwhJ2mvFILSIdvzPZPJyMBYtU8+xG
         zoFz1FSuA6NKXcOE0qBXbK6nQGWrCK7yqeVU59S7viNogXzeqjXvNS1qUoU3nizTUSM2
         49mGwqan4JbslPLalQGeE0SS1enJZ8418d2FyJ3h+aFqS6WMP7PbXd1PsMVzBXLYSFqB
         Q8tQ+79S7UyZfL/CrbKU94kP9+x6BeTjlvQ+QAcAs+Yj/eauvL3tXM0lmjsUVa6L2Mpd
         /r9sWD7bHvg3TTFDdCLvak1xmnDkkBXOQGTgMaaI+QRdPbIUROyY8ZSvs4fYtml1dTMY
         eqEw==
X-Gm-Message-State: AOAM531pPqYPKn6807QAodUE/fyNC+VZUo85B/7zlT8g77dUcWAo8vGg
        ziOGOb5jwZ+uJaUMa6sVOIjomI1qqZZ3PA==
X-Google-Smtp-Source: ABdhPJzkmp7dmGH2KYSlScKUHNHtBqypYU4bYqVjaA8tXtrSQL9FpbcC11Ol9gh5SPR0Prp70nryfQ==
X-Received: by 2002:a1f:d205:: with SMTP id j5mr3142255vkg.9.1604624751404;
        Thu, 05 Nov 2020 17:05:51 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id v4sm518632vsa.16.2020.11.05.17.05.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 17:05:50 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id z123so1868533vsb.0
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 17:05:50 -0800 (PST)
X-Received: by 2002:a05:6102:309a:: with SMTP id l26mr3390127vsb.4.1604624750113;
 Thu, 05 Nov 2020 17:05:50 -0800 (PST)
MIME-Version: 1.0
References: <20201105163724.v2.1.I5a75056d573808f40fed22ab7d28ea6be5819f84@changeid>
 <20201105163724.v2.2.I0ed4abdd2b2916fbedf76be254bc3457fb8b9655@changeid>
In-Reply-To: <20201105163724.v2.2.I0ed4abdd2b2916fbedf76be254bc3457fb8b9655@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 5 Nov 2020 17:05:38 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Xi-Fiay983L4WWVA07WWZvL0DSK4cazBwb9B3brVgM-g@mail.gmail.com>
Message-ID: <CAD=FV=Xi-Fiay983L4WWVA07WWZvL0DSK4cazBwb9B3brVgM-g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sc7180-trogdor: Make pp3300_a
 the default supply for pp3300_hub
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Nov 5, 2020 at 4:37 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts
> index 0a281c24841c..6603f2102233 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-r1.dts
> @@ -58,10 +58,23 @@ ap_ts: touchscreen@10 {
>         };
>  };
>
> +&pp3300_hub {
> +       /* pp3300_l7c is used to power the USB hub */
> +       /delete-property/regulator-always-on;
> +};
> +
> +&pp3300_l7c {
> +       regulator-always-on;

Personally I always end up pairing "always-on" and "boot-on", but that
might just be superstition from many kernel versions ago when there
were weird quirks.  The way you have it now you will sometimes have
"boot-on" but not "always-on".  Probably what you have is fine,
though.


> +};
> +
>  &sdhc_2 {
>         status = "okay";
>  };
>
> +&usb_hub {
> +        vdd-supply = <&pp3300_l7c>;
> +};
> +
>  /* PINCTRL - board-specific pinctrl */
>
>  &tlmm {
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index bf875589d364..50e733412a7f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -174,6 +174,25 @@ pp3300_fp_tp: pp3300-fp-tp-regulator {
>                 vin-supply = <&pp3300_a>;
>         };
>
> +       pp3300_hub: pp3300-hub {
> +               compatible = "regulator-fixed";
> +               regulator-name = "pp3300_hub";
> +
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +
> +               gpio = <&tlmm 84 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&en_pp3300_hub>;
> +
> +               /* AP turns on with en_pp3300_hub; always on for AP */

Delete the above comment.  It's obvious based on the properties in
this node.  Other similar comments are useful because they describe
how the _EC_ turns on regulators and why a regulator that has an
enable still looks like an "always-on" regulator to the AP (because
it's always on whenever the AP is on).

If you want to add a comment, you could say:

/* Always on until we have a way to specify it can go off in suspend */


> @@ -469,7 +488,6 @@ ppvar_l6c: ldo6 {
>                         regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>                 };
>
> -               pp3300_hub:
>                 pp3300_l7c: ldo7 {
>                         regulator-min-microvolt = <3304000>;
>                         regulator-max-microvolt = <3304000>;

Shouldn't you delete the "regulator-always-on;" from ldo7 since you're
adding it for all the older revs?
