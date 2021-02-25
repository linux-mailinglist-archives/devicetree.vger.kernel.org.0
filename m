Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5B46325551
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 19:17:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232447AbhBYSQg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 13:16:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232372AbhBYSQ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 13:16:29 -0500
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67C2FC061756
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 10:15:48 -0800 (PST)
Received: by mail-qv1-xf2a.google.com with SMTP id dr7so3250784qvb.1
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 10:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h3fwbXygeyIRtetl3DiiCp4YUNibdxC6uA+4PbTm8ew=;
        b=iFa/j1SpISBk8SXub5LbKDZPN1y0LW0+uOxFmZ6XWwz/fGZFn//8rKYRpWk2HOdpw9
         CUGvDRRDG+IRLZNpCBqP2Lzn4dv3Mgzx+3EvFFodEb9qD8B64OOpQ2taYkxeSueXJ2BE
         aBHZkEiP6O471okysrdPd1mwM/fmzy2oGdons=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h3fwbXygeyIRtetl3DiiCp4YUNibdxC6uA+4PbTm8ew=;
        b=A9lPWj5A82uGM4TJogmJ7yNn7D0nurZ8CVH3VWoTO/1CdSl5+WteyppWxTz6Bw/4Y0
         fw7dVh1tTJRG6dMQy/VZbc5WIIFCP2BkMWAkS3Aa8CpWz4cVJISD2hZXdoo8h1gNbSfO
         I/otXeb/tAHh4j6YiRZbzxbypKFqMeiunSTNN7zcvMs1XyzRw8hbMcjsE5K/U3SnXob8
         MCSc5ypxBXxacK7fc6sGKoDglJ7rt1Ss+CHuJxgnPoHPA/t/2CmXQcXzPlOWtkP8p8X9
         3rqvrBhgLJYcQrc6kPaF6uDOwvuomZ/bhUNyVl0wXg3aa4ac4BKWOppqjKtgci/AX3Ku
         gN0w==
X-Gm-Message-State: AOAM531JIyb2hq4eSL6hwJsF7NS8iE9jnPJwc0YmcdfHJLuqOdBfAPM8
        16ngJhvgObw+FE3STafaTmZiuNMVP8nvnA==
X-Google-Smtp-Source: ABdhPJxCNqo0fIzuaHiVuYJSlSkz93vNhIiAkpukhAeMWcnuYEliNQDXfkdjK9qSKhk8kHzeu2TSdA==
X-Received: by 2002:ad4:59c7:: with SMTP id el7mr3808273qvb.16.1614276947532;
        Thu, 25 Feb 2021 10:15:47 -0800 (PST)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com. [209.85.219.180])
        by smtp.gmail.com with ESMTPSA id j20sm4646906qtl.36.2021.02.25.10.15.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 10:15:46 -0800 (PST)
Received: by mail-yb1-f180.google.com with SMTP id n195so6316456ybg.9
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 10:15:45 -0800 (PST)
X-Received: by 2002:a25:d3c5:: with SMTP id e188mr5897553ybf.345.1614276945234;
 Thu, 25 Feb 2021 10:15:45 -0800 (PST)
MIME-Version: 1.0
References: <1603831083-2025-1-git-send-email-sanm@codeaurora.org> <1603831083-2025-5-git-send-email-sanm@codeaurora.org>
In-Reply-To: <1603831083-2025-5-git-send-email-sanm@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 25 Feb 2021 10:15:33 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VFtWkfP30bPZB9SO5KLX_OLVNw0Fv3efZMHEzRg7PtVQ@mail.gmail.com>
Message-ID: <CAD=FV=VFtWkfP30bPZB9SO5KLX_OLVNw0Fv3efZMHEzRg7PtVQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: sc7180: Use pdc interrupts for
 USB instead of GIC interrupts
To:     Sandeep Maheswaram <sanm@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Felipe Balbi <balbi@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux USB List <linux-usb@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Oct 27, 2020 at 1:38 PM Sandeep Maheswaram <sanm@codeaurora.org> wrote:
>
> Using pdc interrupts for USB instead of GIC interrupts to
> support wake up in case of XO shutdown.
>
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index a02776c..a2c56528 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -2687,10 +2687,10 @@
>                                           <&gcc GCC_USB30_PRIM_MASTER_CLK>;
>                         assigned-clock-rates = <19200000>, <150000000>;
>
> -                       interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> -                                    <GIC_SPI 486 IRQ_TYPE_LEVEL_HIGH>,
> -                                    <GIC_SPI 488 IRQ_TYPE_LEVEL_HIGH>,
> -                                    <GIC_SPI 489 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupts-extended = <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +                                             <&pdc 6 IRQ_TYPE_LEVEL_HIGH>,
> +                                             <&pdc 8 IRQ_TYPE_LEVEL_HIGH>,
> +                                             <&pdc 9 IRQ_TYPE_LEVEL_HIGH>;

Is there any reason that this patch can't land?  I'm not sure what the
current status of everything is, but it should be fine to go through
the PDC anyway, right?

-Doug
