Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A03B1339600
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 19:17:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231557AbhCLSRX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 13:17:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232602AbhCLSRB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 13:17:01 -0500
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 973C0C061762
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 10:17:01 -0800 (PST)
Received: by mail-qk1-x734.google.com with SMTP id d20so25285201qkc.2
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 10:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I8+SU4e34v0WKNNpDsOi6zN4VnSSZLxw9g2HQ8m1f48=;
        b=UOrZhXD8ut6rcskJ+ygzG7tJl/4Y7ULuSR5QIUP4W3m3EoAx/dSZ+ovQQmxBrng7JB
         oxzS9DU84JxTdTQtAGTaloKuA54jJEmS1ElqCte+Up6KgtNd2ZA64Kdg9xVbkTMKD0XV
         +EQa8GTJoo6/ta1zmhrF29VLYtMK0hqHu0pwslrY3cr6/6vrQbQZNekZJcA1av8FfaQZ
         KP/Fiilqk9eSplS5lfC3GPR4+rruAfzPaunF1cjjHjt1KOgb3UJSthDFumt95l0OyxF2
         M9DuY27JuL/NKQxtYRDZFBr6kC7ODBXvhrbkg51mfVt0Qxma8bZSyKtYk4Yg/HJmUaSJ
         Zyzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I8+SU4e34v0WKNNpDsOi6zN4VnSSZLxw9g2HQ8m1f48=;
        b=EZ3BnD8Sxo8KOJFP8qQR+NFN0M/uR/KiQLopLOWUHsztPIZP7kM1y+A48YlDaKKr0I
         drfa9PDpfu3jYI2pmkE3h7eSeKXJzTCuXWcNsZ/M6VV3ho41KGuTEF42RBqxSh9Djbm4
         m9P8sM5ukEX+kJDYj4NGsIpiLefy7PhALtXhwXY/QGsCSOhoHhzgygvJxRT53Hmqlg9S
         MbQhYDfF2yGlFZ+ZCq+aAJuXpyfnN6XGexwyesde06pZ+n/lbfv04+zTJxFuL4Rf2Uc7
         LjR3W/vfB5Wq2NtdUZQ8Ug8UJoRZVsQIoLlMBmZEtgU4DVTBGyLFG18xTJHadopaW2NY
         WW3Q==
X-Gm-Message-State: AOAM531N7bGS8Do5R+7Lx1SR96f1E0VAMCdTc/qOd+BXBK0Ygz3YUJSP
        jCBO4buUyp69SMUmOJ7tYhBHUBXik9smLKVZaC6qLQ==
X-Google-Smtp-Source: ABdhPJxG7asGZMx5owa1JLvEvc2zXcsFvMxhEvdneVdKr1SIV75Z+40bR3jOcVjcOB1mXTQ0ph30ZMwEa63n3xd28ZY=
X-Received: by 2002:a37:8cd:: with SMTP id 196mr13348732qki.434.1615573020716;
 Fri, 12 Mar 2021 10:17:00 -0800 (PST)
MIME-Version: 1.0
References: <20210106001004.4081508-1-bjorn.andersson@linaro.org>
In-Reply-To: <20210106001004.4081508-1-bjorn.andersson@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 12 Mar 2021 21:16:48 +0300
Message-ID: <CAA8EJpq4FW_k0NzVrA9qpmNc_8tfVrSh2kNNLc1VdniHb2A-Hg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: pm8150: Enable RTC
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 6 Jan 2021 at 03:09, Bjorn Andersson <bjorn.andersson@linaro.org> wrote:
>
> The PM8150 comes with everything the RTC needs, so let's just leave it
> enabled instead of having to explicitly enable it for all boards.
> In effect this patch enables the RTC on the SM8150 MTP and the SM8250
> HDK.

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/pm8150.dtsi     | 4 +---
>  arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 4 ----
>  arch/arm64/boot/dts/qcom/sm8250-mtp.dts  | 4 ----
>  3 files changed, 1 insertion(+), 11 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/pm8150.dtsi b/arch/arm64/boot/dts/qcom/pm8150.dtsi
> index a53eccf2b695..027f55d53584 100644
> --- a/arch/arm64/boot/dts/qcom/pm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8150.dtsi
> @@ -97,13 +97,11 @@ die-temp@6 {
>                         };
>                 };
>
> -               pm8150_rtc: rtc@6000 {
> +               rtc@6000 {
>                         compatible = "qcom,pm8941-rtc";
>                         reg = <0x6000>;
>                         reg-names = "rtc", "alarm";
>                         interrupts = <0x0 0x61 0x1 IRQ_TYPE_NONE>;
> -
> -                       status = "disabled";
>                 };
>
>                 pm8150_gpios: gpio@c000 {
> diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> index d7799a6fb489..546b7fb9cf55 100644
> --- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> @@ -609,10 +609,6 @@ lt9611_rst_pin: lt9611-rst-pin {
>         };
>  };
>
> -&pm8150_rtc {
> -       status = "okay";
> -};
> -
>  &qupv3_id_0 {
>         status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
> index 767a2e446248..c291422fa096 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
> @@ -392,10 +392,6 @@ &i2c15 {
>         /* rtc6226 @ 64 */
>  };
>
> -&pm8150_rtc {
> -       status = "okay";
> -};
> -
>  &qupv3_id_0 {
>         status = "okay";
>  };
> --
> 2.29.2
>


-- 
With best wishes
Dmitry
