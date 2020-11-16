Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B1D562B3CE1
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 07:15:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726741AbgKPGOI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 01:14:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725379AbgKPGOI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 01:14:08 -0500
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com [IPv6:2607:f8b0:4864:20::741])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C741BC0613CF
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:14:07 -0800 (PST)
Received: by mail-qk1-x741.google.com with SMTP id r7so15944849qkf.3
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IDPJ0hDw+QMwCbfwtU5/cMb2P1q7+XVEepopxSFVZUs=;
        b=LIAjCCtES8iorpgDK8RHzG6KjduEl/e8zhzt4tgqBASno5xJZW0/djcO9cASFpH+mJ
         dgL05YZqem99cky+4AO2DPQM1zcCOAUxgCz9FrW+exIInR+ri8fY1jdfEM9vwu2zA7Kl
         rfsq/xeaeXJNUsxjjbXktvFxcH+asPevYgjm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IDPJ0hDw+QMwCbfwtU5/cMb2P1q7+XVEepopxSFVZUs=;
        b=Dh2vGTvica+mRECziAS0+94Xp9VDwXBGnf2qs9QzAkBk/BK1ng2qIAubX0lZgOvl8h
         F+ff/lR+VT6O06XJs3ojhVltSsSsXCcV9Cwf1xrKJEsa4tqoOoZN2shfNPwSc4G3fer8
         BspakH94PvF0p5nKUXJWgRW/7KKZ6pX7dRYxoTxRBeYqRGfidWflWFC8UwVv7FUB6eGR
         54yLtb2RAlCsYXn/EEyCKh63FPxMp4Rf6ps+cmIiGN2V5/lnitNGo+r6LxfakmkQ/JVE
         jmqKDsawIpUgkotPkcApgXb2e7Lt0QCnIlT7JhYxcWo0N1w7x6AEi/wvaXnb00TWSGl0
         SORw==
X-Gm-Message-State: AOAM531LYemVkAElmNuwV5MPhxOAoL5UQ0IMYDG2/2z07HAkhP2M+uzt
        QpuJ5giPsHR5DbG2be5LvZDoMrM9u2vXWkmP7BA=
X-Google-Smtp-Source: ABdhPJxw7qMo/XDHcMm/miSXAx0lXi/G21woSkTc5vH/0ZtFtSLckMuKiGz0zTyOqc9/RWNIykC/VLeyTLfqiqs7U9A=
X-Received: by 2002:a37:664d:: with SMTP id a74mr12974651qkc.487.1605507247059;
 Sun, 15 Nov 2020 22:14:07 -0800 (PST)
MIME-Version: 1.0
References: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com> <1605247168-1028-2-git-send-email-vishwa@linux.vnet.ibm.com>
In-Reply-To: <1605247168-1028-2-git-send-email-vishwa@linux.vnet.ibm.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 16 Nov 2020 06:13:54 +0000
Message-ID: <CACPK8XfRS7jMmqeDFvzjA-K2-zMr-hu8msdrXsZ0K4H8F670Mw@mail.gmail.com>
Subject: Re: [PATCH 2/6] ARM: dts: aspeed: rainier: Add directly controlled LEDs
To:     Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
Cc:     linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 13 Nov 2020 at 05:59, Vishwanatha Subbanna
<vishwa@linux.vnet.ibm.com> wrote:
>
> These LEDs are directly connected to the BMC's GPIO bank.
>
> Signed-off-by: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
> Reviewed-by: Eddie James <eajames@linux.ibm.com>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Reviewed-by: Joel Stanley <joel@jms.id.au>


> ---
>  arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 24 ++++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> index 64d8748..1da7389 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> @@ -126,6 +126,26 @@
>         leds {
>                 compatible = "gpio-leds";
>
> +               /* BMC Card fault LED at the back */
> +               bmc-ingraham0 {
> +                       gpios = <&gpio0 ASPEED_GPIO(H, 1) GPIO_ACTIVE_LOW>;
> +               };
> +
> +               /* Enclosure ID LED at the back */
> +               rear-enc-id0 {
> +                       gpios = <&gpio0 ASPEED_GPIO(H, 2) GPIO_ACTIVE_LOW>;
> +               };
> +
> +               /* Enclosure fault LED at the back */
> +               rear-enc-fault0 {
> +                       gpios = <&gpio0 ASPEED_GPIO(H, 3) GPIO_ACTIVE_LOW>;
> +               };
> +
> +               /* PCIE slot power LED */
> +               pcieslot-power {
> +                       gpios = <&gpio0 ASPEED_GPIO(P, 4) GPIO_ACTIVE_LOW>;
> +               };
> +
>                 /* System ID LED that is at front on Op Panel */
>                 front-sys-id0 {
>                         retain-state-shutdown;
> @@ -169,7 +189,7 @@
>         /*E0-E7*/       "","","","","","","","",
>         /*F0-F7*/       "","","","","","","","",
>         /*G0-G7*/       "","","","","","","","",
> -       /*H0-H7*/       "","","","","","","","",
> +       /*H0-H7*/       "","bmc-ingraham0","rear-enc-id0","rear-enc-fault0","","","","",
>         /*I0-I7*/       "","","","","","","","",
>         /*J0-J7*/       "","","","","","","","",
>         /*K0-K7*/       "","","","","","","","",
> @@ -177,7 +197,7 @@
>         /*M0-M7*/       "","","","","","","","",
>         /*N0-N7*/       "","","","","","","","",
>         /*O0-O7*/       "","","","usb-power","","","","",
> -       /*P0-P7*/       "","","","","","","","",
> +       /*P0-P7*/       "","","","","pcieslot-power","","","",
>         /*Q0-Q7*/       "cfam-reset","","","","","","","",
>         /*R0-R7*/       "","","","","","","","",
>         /*S0-S7*/       "presence-ps0","presence-ps1","presence-ps2","presence-ps3",
> --
> 1.8.3.1
>
