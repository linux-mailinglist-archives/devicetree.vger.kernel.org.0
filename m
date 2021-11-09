Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7A6C44ABFC
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 11:56:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245461AbhKIK6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 05:58:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245463AbhKIK6x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 05:58:53 -0500
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3359C061767
        for <devicetree@vger.kernel.org>; Tue,  9 Nov 2021 02:56:07 -0800 (PST)
Received: by mail-io1-xd34.google.com with SMTP id z26so5277381iod.10
        for <devicetree@vger.kernel.org>; Tue, 09 Nov 2021 02:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3qdL/XmsUVAAlHMJ0Zd3E3Ybfz08d5Nq2yLOYIdP7rI=;
        b=dW14x6gC18uB8Slwru7irseFZ7MfMIl7/RXwSLMm/Y5Xbx1YoakR268IgW9meZK+y4
         dzrVEwZXDLvs4YJgsb2MwR+TxgGvLOBSvOtSmYsKE+6sdVZ/LfoiELOCXpHKHHp3o81u
         s//Dgxe5bqV420XvRk/KpMLrn5lr/aKXEtjO+F1j4kMvgnixkiFV2yOkqMDsSxuHIvtc
         FkpF2xPzFNnYSMK413wfjsbRSOB9ODmU6l0/DHGxgaBkR3e0m+K/EI4nvn0bb6A3N6vW
         Cbf3PFwqhrmoM9yKM/iW5Ky7VQ3nkGohBtBZOXuL7nxJnQRXDIRPfRrfHTKF1KpAfmey
         vj5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3qdL/XmsUVAAlHMJ0Zd3E3Ybfz08d5Nq2yLOYIdP7rI=;
        b=PaKVPai1NTJaxBMez7iJsAWuf5DwQ0a/BxexyStOUHPfh2kqYd1k/hJY2w4uj+0w4z
         E+Vi8kiGpJUnaVWmRUc84tNtVjZwwXEr4mcww9JWT8p9HYFXxaduvK6qa853D5KNsgAl
         R1DBPFazQXCfV4cmIa3tvlyCRsQhduj7MM+YIsbeDMPalnpNdDkLXpeb8RaJ+WW4Wpdj
         cSVdq3O7BVFuVvW9k5bnoxnxcpoYZwuig3E+3GFq/XOoE2YllGMAXZ/GevSlcX+7Ag90
         HQNHRiotLr09noub49NLhUHLPbcvw8eier4uyrfr6scPLEeCPCcM1psiRM/KasCR4smY
         qxcA==
X-Gm-Message-State: AOAM533LCXPSUfd6vu1MvvnTeZAiN4QPxnh6E5EbklyqRTrxVaNaO6e1
        c3Vhrfm9udi5eS24WgPVncgCzvSObrDnbnXO/D5foOOtdUN5Lg==
X-Google-Smtp-Source: ABdhPJwCzFnRZAVHL6YyLttgzkOcAHpA5HKhip99R1UpgrYbHC5QMQoQBuWVOXZrzgI7mQUl71BNAa+QJZxP+MxuDD4=
X-Received: by 2002:a05:6602:26c8:: with SMTP id g8mr4347017ioo.74.1636455367231;
 Tue, 09 Nov 2021 02:56:07 -0800 (PST)
MIME-Version: 1.0
References: <20211105113859.101868-1-robert.marko@sartura.hr> <ab3a9cea425449af6a7752e40b9aa4c8@walle.cc>
In-Reply-To: <ab3a9cea425449af6a7752e40b9aa4c8@walle.cc>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Tue, 9 Nov 2021 11:55:56 +0100
Message-ID: <CA+HBbNGqyv2Nn0pRA=Rb586VQAQKCXZqd93D6X=18N+gvDvFfQ@mail.gmail.com>
Subject: Re: [PATCH v8 1/6] mfd: simple-mfd-i2c: Add Delta TN48M CPLD support
To:     Michael Walle <michael@walle.cc>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 6, 2021 at 12:23 AM Michael Walle <michael@walle.cc> wrote:
>
> Am 2021-11-05 12:38, schrieb Robert Marko:
> > Delta TN48M switches have a Lattice CPLD that serves
> > multiple purposes including being a GPIO expander.
> >
> > So, lets use the simple I2C MFD driver to provide the MFD core.
> >
> > Also add a virtual symbol which pulls in the simple-mfd-i2c driver and
> > provide a common symbol on which the subdevice drivers can depend on.
> >
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
> > ---
> > Changes in v2:
> > * Drop the custom MFD driver and header
> > * Use simple I2C MFD driver
> > ---
> >  drivers/mfd/Kconfig          | 10 ++++++++++
> >  drivers/mfd/simple-mfd-i2c.c |  1 +
> >  2 files changed, 11 insertions(+)
> >
> > diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> > index ad15be6b86bc..3701657e831d 100644
> > --- a/drivers/mfd/Kconfig
> > +++ b/drivers/mfd/Kconfig
> > @@ -297,6 +297,16 @@ config MFD_ASIC3
> >         This driver supports the ASIC3 multifunction chip found on many
> >         PDAs (mainly iPAQ and HTC based ones)
> >
> > +config MFD_TN48M_CPLD
> > +     tristate "Delta Networks TN48M switch CPLD driver"
> > +     depends on I2C
> > +     select MFD_SIMPLE_MFD_I2C
>
> Is this device used on multiple architectures? See commit
> de1292817cf73 (mfd: MFD_SL28CPLD should depend on ARCH_LAYERSCAPE).

No, so far it's only under ARCH_MVEBU.
Will add the dependency to ARCH_MVEBU or COMPILE_TEST

Regards,
Robert
>
> -michael



-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
