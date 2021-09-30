Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BCB841DED8
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 18:22:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349701AbhI3QYG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 12:24:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349691AbhI3QYG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 12:24:06 -0400
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FBDCC06176A
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 09:22:23 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id n71so8408510iod.0
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 09:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mkiQmIwLuFMRcDD9Yeq1X9DcESJBsP3wYBYEi8uC+4k=;
        b=Ca6rOa24h1INBKG+hc0h+ZaX4+6n7C/dHIFg3nINR2DPSIJyTbY58t5FBd0hgg38S8
         i2uLx6NUeVvyf2txdx92dJ3p4CLxfLMD051AhXEoQnx+fbW+mTMSK+Hdy6Pb9CRdmO6c
         70IUn49vHNygI3jyehX64U/Je/IqwZ5q1CB0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mkiQmIwLuFMRcDD9Yeq1X9DcESJBsP3wYBYEi8uC+4k=;
        b=tGbaub8eo20mhwigscIWOFBc6kniAVzUroxc7yh+pjjhgw/DyI/tTrxiNKrps5gyRy
         M6MSzcYoxR5fHgCLXupyhfbj8Ke/KRtHSZja4zfxeOlZmP0mEoLYmPlHtoPyHEdojaZf
         m0BQxs0vfr7UAkKNJgNywNr7KwjnZfbPIOsxE5CL0KCtnMl7mhQB1T/MTklg2RRKWEIL
         t28EzBhylyk2VruWKA97+ChYry6T1Xcx7PRGn9CrXA+XpCT+33XVMfcXBeGkGFJoVimD
         n0b9UVy/YjfBMxfR83o46rh+F5O8r2vcCF7RUjIs4M0i2o1eRBoIpcI3V0Rf+Rmvs9JE
         tI5A==
X-Gm-Message-State: AOAM532KK81V9c4V16dnqzCHjTUq419NDpdgdbH/r/qyjd5GrtFLRY2E
        ryvG14PZ/E+bjtpZL3xAhVgrW6tOm/O+9A==
X-Google-Smtp-Source: ABdhPJy4kGEBfliVaQjXBkAF4VBHskvaRZVh4VEAozdgz+derS/XuqZ64kpMQ7LUxWu5KydkM3IDLQ==
X-Received: by 2002:a05:6602:204d:: with SMTP id z13mr4523567iod.162.1633018942742;
        Thu, 30 Sep 2021 09:22:22 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com. [209.85.166.43])
        by smtp.gmail.com with ESMTPSA id r13sm2092212ilb.39.2021.09.30.09.22.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 09:22:21 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id y197so8297232iof.11
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 09:22:21 -0700 (PDT)
X-Received: by 2002:a6b:f915:: with SMTP id j21mr4613178iog.98.1633018940941;
 Thu, 30 Sep 2021 09:22:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210929173343.v2.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
In-Reply-To: <20210929173343.v2.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 30 Sep 2021 09:22:09 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XP+mJCEG+=meCXDb06bmfPwze2SP9FaMuKZkSh25JCSg@mail.gmail.com>
Message-ID: <CAD=FV=XP+mJCEG+=meCXDb06bmfPwze2SP9FaMuKZkSh25JCSg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: sc7180: Factor out ti-sn65dsi86 support
To:     Philip Chen <philipchen@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Sep 29, 2021 at 5:35 PM Philip Chen <philipchen@chromium.org> wrote:
>
> Factor out ti-sn65dsi86 edp bridge as a separate dts fragment.
> This helps us introduce the second source edp bridge later.
>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---
>
> Changes in v2:
> - Move edp_brij_i2c completely out of sc7180-trogdor.dtsi to the
>   bridge dts fragment, so that we can cleanly assign different
>   edp bridge in every board rev.
>
>  .../boot/dts/qcom/sc7180-trogdor-coachz.dtsi  |  1 +
>  .../boot/dts/qcom/sc7180-trogdor-lazor.dtsi   |  1 +
>  .../boot/dts/qcom/sc7180-trogdor-pompom.dtsi  |  1 +
>  .../arm64/boot/dts/qcom/sc7180-trogdor-r1.dts |  1 +
>  .../dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi | 90 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi  | 86 ------------------
>  6 files changed, 94 insertions(+), 86 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> index a758e4d22612..1d13fba3bd2f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-coachz.dtsi
> @@ -11,6 +11,7 @@
>  ap_h1_spi: &spi0 {};
>
>  #include "sc7180-trogdor.dtsi"
> +#include "sc7180-trogdor-ti-sn65dsi86.dtsi"

It looks like you're missing homestar, aren't you? I'd expect that
after applying your change that:

git grep -A1 include.*sc7180-trogdor.dtsi

...should show your new include right after all includes of
sc7180-trogdor.dtsi, but I don't see it for homestar.

Other than that this looks good to me. Feel free to add my Reviewed-by.
