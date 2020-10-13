Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA3DA28D23E
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 18:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726885AbgJMQ25 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 12:28:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726120AbgJMQ24 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Oct 2020 12:28:56 -0400
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com [IPv6:2607:f8b0:4864:20::843])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1969C0613D2
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 09:28:54 -0700 (PDT)
Received: by mail-qt1-x843.google.com with SMTP id p88so285110qtd.12
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 09:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=o9Hoq7to5XCI/uJ6Zu640TqCyme9iokY/Q0eHTZtcfE=;
        b=eGijH9UjwpDPWbsso/7C8OhlURtyBQ/eyD4ifTt7mGs5AaQNDP6gh6royvq4unpYnY
         O1qziBe3AgEI9XkgiAaKqXTD4ZJ/4ZZpbw/tIkSb2vodppTwzLgeh1La+N1Zvq8f3kh5
         XcdpJinvL4q2EPnzN6s5HIxC1izEMDdI6aYVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=o9Hoq7to5XCI/uJ6Zu640TqCyme9iokY/Q0eHTZtcfE=;
        b=CA5i6cwas9kBG77QzxsWLyY9pKHVbRG29R4mnSadQYaUisTjiPKppQuWHDxYn36ET0
         VgtX32UdNds2uxJwmUAp4qMaO1FWQwCaf9KfGveDQ5lDHpF1PE1i57sGg1qMc95B7bfk
         08VpC6Z//T+HQw5v4CyGNO4uqIrKZ8MQsMSM/8Bdxg0K9S9l+QFyTY5h3yPdyeKIoyPE
         gN9SJXexOi7vOT4wz3DVaTJm50sC5kwV7QRZbxgT9IVXCOdBJ8xMqrDxEjYusoXxnNQ3
         /xngUfv3k7YxvXOKSqnuLNAzlXm+Z8YGwHiupgVENuiC7BZfgMULRZy3wOZKx4P+jPrI
         edJA==
X-Gm-Message-State: AOAM531/tBxvFoUi/NvBPjtfrG54KtlWpl0uu5G/KO9BJBcdQJ9T+sfw
        +XMXliIo72YQ3cxTtUIXx2j2GmvhkHfIpg==
X-Google-Smtp-Source: ABdhPJwBofz7PXW/cbPYqgFr+lLrIMKOUINtnjXr7Nh6W942cRi9KSVwR/hv9gzuI2uVcGaJP96tfw==
X-Received: by 2002:aed:243b:: with SMTP id r56mr441382qtc.249.1602606532748;
        Tue, 13 Oct 2020 09:28:52 -0700 (PDT)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id 68sm127616qkg.108.2020.10.13.09.28.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 09:28:50 -0700 (PDT)
Received: by mail-yb1-f179.google.com with SMTP id h6so136478ybi.11
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 09:28:50 -0700 (PDT)
X-Received: by 2002:a25:d412:: with SMTP id m18mr998932ybf.253.1602606529921;
 Tue, 13 Oct 2020 09:28:49 -0700 (PDT)
MIME-Version: 1.0
References: <20201013080103.410133-1-amstan@chromium.org> <20201013010056.v2.3.Ie4d84af5a85e8dcb8f575845518fa39f324a827d@changeid>
In-Reply-To: <20201013010056.v2.3.Ie4d84af5a85e8dcb8f575845518fa39f324a827d@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 13 Oct 2020 09:28:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W4fv_AdS7G2FFe2Kan3YYJ4D0MVJD90aJMrgCja5N4vg@mail.gmail.com>
Message-ID: <CAD=FV=W4fv_AdS7G2FFe2Kan3YYJ4D0MVJD90aJMrgCja5N4vg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: trogdor: Add brightness-levels
To:     Alexandru Stan <amstan@chromium.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Oct 13, 2020 at 1:01 AM Alexandru Stan <amstan@chromium.org> wrote:
>
> Now that we have better interpolation for the backlight
> ("backlight: pwm_bl: Fix interpolation"), we can now add the curve to
> the trogdor boards, being careful to crop the low end.

Just to make it clear, the patch this depends on hasn't landed yet.
Presumably it will land in the v5.10 timeframe?  That means that
without extra coordination this patch can target v5.11.


> Signed-off-by: Alexandru Stan <amstan@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index bf875589d364..ccdabc6c4994 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -179,6 +179,15 @@ pp3300_fp_tp: pp3300-fp-tp-regulator {
>         backlight: backlight {
>                 compatible = "pwm-backlight";
>
> +               /* The panels don't seem to like anything below ~ 5% */
> +               brightness-levels = <
> +                       196 256 324 400 484 576 676 784 900 1024 1156 1296
> +                       1444 1600 1764 1936 2116 2304 2500 2704 2916 3136
> +                       3364 3600 3844 4096
> +               >;
> +               num-interpolated-steps = <64>;
> +               default-brightness-level = <951>;

I haven't done lots of digging here, but this matches what Alexandru
and Matthias agreed upon for the downstream tree and seems sane.
Thus:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
