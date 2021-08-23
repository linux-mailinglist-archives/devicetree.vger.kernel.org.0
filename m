Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 276D63F42C9
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 03:07:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234407AbhHWBHp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Aug 2021 21:07:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231452AbhHWBHo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Aug 2021 21:07:44 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13E91C061575
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 18:07:03 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id d6so23673395edt.7
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 18:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pjckf6bfV/IeJNN9n6MQVl/LTL3lu1yq7lS4IYzu/QM=;
        b=YXvUInxkTo+QS04+RTXnvdY5Tut9xBKcT9moQ79TGp2GjLkU/lF29770JsA6UY+UOn
         yjlARSI3QSab1F39xGyUm9LqcHKPE++VUejnLyKwbHAVdhKJnDNssxuQqlmSJhbAj2OT
         YxqGNv5II7hqHyRemXMsdL1BA/qgC6MEvPlCNcoHEhp6bZw3rOvoOzKVrjATtwfU9zue
         R0esUcu67bVhSd0ErcQC/7zaqVKqAAK4SPfsJQ+wsgTJKwMXBkS1CDhRG2++ClbJLMg2
         f77F2jBXBEzMMA7p3ZzlFd9ahFPEAgnqx1ZNVe670GdAp6aOQ7bP8biCveNS+9nuRpn+
         Dhfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pjckf6bfV/IeJNN9n6MQVl/LTL3lu1yq7lS4IYzu/QM=;
        b=Xcu+6Y/e0AcboTb23yV+IN3L6LPJsVvEqf+Ml74pbV0krKU/YeLiCDBMY+Dc2v1vf2
         t9a8exFnp8NaWoSSQKZpJ0rzYZHwvJis1PCRm9OvoBZ1AFhuhvIAT6TE6PySWpX/JihL
         +H/q0sV5FUcqd8U4tZ4Iza3dOGQYy34Dpg2YUKv4ssTO+rUlR3tYSJJ5kH1jfpCjvZuL
         OiDcSjpR5BoQMzURdM+rVtndTI/G/3VLYruR2m1YvVO7yT2VlXUckItXqWrM+Ma4vbaK
         oqUD47xp60VFbxavhHWKGbx7Nu0gdi1/gFGOEALi3x20SWZOBXQqurn3o252gN37S3sU
         5u8A==
X-Gm-Message-State: AOAM532/c8NbwXydDF9ng46EPK51l6bxAhfSXxvA53NnSKNPZa5X3pbg
        MsJJePEz7U/Ty2touveNu/FwoP+spxyFNxconzW6LA==
X-Google-Smtp-Source: ABdhPJxLjyDYm7QVxm1dvdfIEw9t3Et/mk1X0dx98a7+Jgg205IWLNBlgQOSRuBoYLny9Mb7LfeCW8J2s/qhMUfMTOY=
X-Received: by 2002:a05:6402:5208:: with SMTP id s8mr35097217edd.222.1629680821623;
 Sun, 22 Aug 2021 18:07:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210304034141.7062-1-brad@pensando.io> <20210304034141.7062-2-brad@pensando.io>
 <TU4PR8401MB1055D51E8D1B48DC7D7294E3AB979@TU4PR8401MB1055.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: <TU4PR8401MB1055D51E8D1B48DC7D7294E3AB979@TU4PR8401MB1055.NAMPRD84.PROD.OUTLOOK.COM>
From:   Brad Larson <brad@pensando.io>
Date:   Sun, 22 Aug 2021 18:06:51 -0700
Message-ID: <CAK9rFnz+PksEFjUh5ZpRLyvk21ZpVTxtwDYn_OhOEBJWjEYe7w@mail.gmail.com>
Subject: Re: [PATCH 1/8] gpio: Add Elba SoC gpio driver for spi cs control
To:     "Elliott, Robert (Servers)" <elliott@hpe.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "arnd@arndb.de" <arnd@arndb.de>,
        "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
        "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "fancer.lancer@gmail.com" <fancer.lancer@gmail.com>,
        "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
        "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
        "olof@lixom.net" <olof@lixom.net>,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
        "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Elliott,

On Thu, Mar 4, 2021 at 12:44 PM Elliott, Robert (Servers)
<elliott@hpe.com> wrote:
[...]
> > +config GPIO_ELBA_SPICS
> > +     bool "Pensando Elba SPI chip-select"
> > +     depends on ARCH_PENSANDO_ELBA_SOC
> > +     help
> > +       Say yes here to support the Pensndo Elba SoC SPI chip-select
> > driver
>
> Pensndo should be Pensando

Fixed the typo, thanks.

> > diff --git a/drivers/gpio/gpio-elba-spics.c b/drivers/gpio/gpio-elba-spics.c
> > + * Pensando Elba ASIC SPI chip select driver
> ...
> > +MODULE_LICENSE("GPL v2");
> > +MODULE_DESCRIPTION("Elba SPI chip-select driver");
>
> I think it's conventional to include the company name there, so
> start that with "Pensando Elba"

Ok, thanks.  BTW I deleted these lines as I should have used
builtin_platform_driver() and not a loadable module.

> Also, "SoC" and "ASIC" are sometimes included after Elba, but sometimes
> are not. Consistency might be helpful.
>
> > +static const struct of_device_id ebla_spics_of_match[] = {
> ...
> > +             .of_match_table = ebla_spics_of_match,
>
> ebla should be elba

Fixed the typo and using SoC which is more accurate.

Regards,
Brad
