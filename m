Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4541F32F2CB
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 19:37:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229875AbhCEShW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 13:37:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230244AbhCEShF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 13:37:05 -0500
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com [IPv6:2607:f8b0:4864:20::82a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB2F3C061756
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 10:37:04 -0800 (PST)
Received: by mail-qt1-x82a.google.com with SMTP id v3so2515608qtw.4
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 10:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tAzU/ER1YTxKVrtAuXzIX1YVd5lSI8a7UASsaMYtGqY=;
        b=F6v+gi5njFo02gEo0z1Nd6777zf+xCNjxdwa0X7VeLeXPMrOu1HTtE8AEdqXdq/MBZ
         v3VsLDdlwbKBVJPztcbzun5R+lehMx0t5bH9SrbuuXC2HAXbGKoeLlQXamfNJCHa13+P
         R509ASsFL8WM9LRpe9/eBWPPLKwj+LSpaWjv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tAzU/ER1YTxKVrtAuXzIX1YVd5lSI8a7UASsaMYtGqY=;
        b=krf5OqXAiG/GpZ7CgqDMlo/dYLDeZqPVTVY5JfrusUfzH+5If1z9+qDWwhHM6yOHr7
         WxxV0gGgnPnKWi5aKYJ9R10kPelKPZsRdBZBcsGWnUiuswhJV9hraAmJPsurFYmWAiKC
         biQzdQCDPBUFBPCzZF7DnpSmlRR69mesfKQEC3x3TUy1pTn7Ld28nHsuXQ0miOa+aS8Z
         Blh/bH/RSjbvcVwY5aqK63SoCjKoFNerSgzYRp8CMvTqHp4kQS1FFkEfkEFQnpS6LMRe
         dfuTWa/JUAyRrRKiDhUtPlKQDIOvY3ubmCQfKlCIpMK4c2pa9bqhRkmbwwo7g1+RwQso
         5VuQ==
X-Gm-Message-State: AOAM532aZLjkaK80BKud5M3xlrxPpEA3GPSGsZnycKpbfePbmJpEuna+
        CkFLoQ2pHnmqq7U4BY1JKLJgP15NlVEo5g==
X-Google-Smtp-Source: ABdhPJyrRXHu7nusmt63zs7x8orkqUalVE9GDu8oO3UFWkifhKhUaZDkTE9UpSNZ23vkr4GMsnho+g==
X-Received: by 2002:ac8:6bd8:: with SMTP id b24mr9979714qtt.372.1614969423516;
        Fri, 05 Mar 2021 10:37:03 -0800 (PST)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com. [209.85.219.174])
        by smtp.gmail.com with ESMTPSA id r190sm2388279qke.26.2021.03.05.10.37.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Mar 2021 10:37:02 -0800 (PST)
Received: by mail-yb1-f174.google.com with SMTP id c131so2946913ybf.7
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 10:37:02 -0800 (PST)
X-Received: by 2002:a25:ab54:: with SMTP id u78mr16373727ybi.276.1614969422178;
 Fri, 05 Mar 2021 10:37:02 -0800 (PST)
MIME-Version: 1.0
References: <20210304180415.1531430-1-mka@chromium.org> <20210304100341.1.I6d587e7ae72a5a47253bb95dfdc3158f8cc8a157@changeid>
In-Reply-To: <20210304100341.1.I6d587e7ae72a5a47253bb95dfdc3158f8cc8a157@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 5 Mar 2021 10:36:49 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XKpzSq2GqvoDieuZVZFrwmO0Q2prPaKeJRKXJmxPGWpg@mail.gmail.com>
Message-ID: <CAD=FV=XKpzSq2GqvoDieuZVZFrwmO0Q2prPaKeJRKXJmxPGWpg@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sc7180: lazor: Simplify disabling
 of charger thermal zone
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Mar 4, 2021 at 10:04 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Commit f73558cc83d1 ("arm64: dts: qcom: sc7180: Disable charger
> thermal zone for lazor") disables the charger thermal zone for
> specific lazor revisions due to an unsupported thermistor type.
> The initial idea was to disable the thermal zone for older
> revisions and leave it enabled for newer ones that use a
> supported thermistor. Finally the thermistor won't be changed
> on newer revisions, hence the thermal zone should be disabled
> for all lazor (and limozeen) revisions. Instead of disabling
> it per revision do it once in the shared .dtsi for lazor.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts | 9 ---------
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1.dts | 9 ---------
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts | 9 ---------
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi   | 9 +++++++++
>  4 files changed, 9 insertions(+), 27 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts
> index 5c997cd90069..30e3e769d2b4 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r0.dts
> @@ -14,15 +14,6 @@ / {
>         compatible = "google,lazor-rev0", "qcom,sc7180";
>  };
>
> -/*
> - * Lazor is stuffed with a 47k NTC as charger thermistor which currently is
> - * not supported by the PM6150 ADC driver. Disable the charger thermal zone
> - * to avoid using bogus temperature values.
> - */
> -&charger_thermal {
> -       status = "disabled";
> -};
> -
>  &pp3300_hub {
>         /* pp3300_l7c is used to power the USB hub */
>         /delete-property/regulator-always-on;
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1.dts
> index d9fbcc7bc5bd..c2ef06367baf 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r1.dts
> @@ -14,15 +14,6 @@ / {
>         compatible = "google,lazor-rev1", "google,lazor-rev2", "qcom,sc7180";
>  };
>
> -/*
> - * Lazor is stuffed with a 47k NTC as charger thermistor which currently is
> - * not supported by the PM6150 ADC driver. Disable the charger thermal zone
> - * to avoid using bogus temperature values.
> - */
> -&charger_thermal {
> -       status = "disabled";
> -};
> -
>  &pp3300_hub {
>         /* pp3300_l7c is used to power the USB hub */
>         /delete-property/regulator-always-on;
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts
> index 19e69adb9e04..1b9d2f46359e 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor-r3.dts
> @@ -13,12 +13,3 @@ / {
>         model = "Google Lazor (rev3+)";
>         compatible = "google,lazor", "qcom,sc7180";
>  };
> -
> -/*
> - * Lazor is stuffed with a 47k NTC as charger thermistor which currently is
> - * not supported by the PM6150 ADC driver. Disable the charger thermal zone
> - * to avoid using bogus temperature values.
> - */
> -&charger_thermal {
> -       status = "disabled";
> -};
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
> index 89e5cd29ec09..aa2c4a9098db 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-lazor.dtsi
> @@ -58,6 +58,15 @@ ap_ts: touchscreen@10 {
>         };
>  };
>
> +/*
> + * Lazor is stuffed with a 47k NTC as charger thermistor which currently is
> + * not supported by the PM6150 ADC driver. Disable the charger thermal zone
> + * to avoid using bogus temperature values.
> + */
> +&charger_thermal {
> +       status = "disabled";
> +};
> +
>  /* PINCTRL - modifications to sc7180-trogdor.dtsi */
>
>  &ts_reset_l {

The idea is right, but I'm having a hard time figuring out what tree
you posted your patch against. You said you did it atop my "v2" series
[1], right?  ...but the "sc7180-trogdor-lazor.dtsi" really doesn't
match. In my tree, for instance, right above the PINCTRL comment
should be:

&wifi {
  qcom,ath10k-calibration-variant = "GO_LAZOR";
};

...but that's definitely not what's there in whatever your patch was
written against... It seems like you're also missing the panel and
trackpad nodes...

[1] https://patchwork.kernel.org/project/linux-arm-msm/list/?series=440315


-Doug
