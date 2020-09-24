Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87312277206
	for <lists+devicetree@lfdr.de>; Thu, 24 Sep 2020 15:17:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727860AbgIXNRk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Sep 2020 09:17:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727800AbgIXNRk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Sep 2020 09:17:40 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 458BDC0613D3
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 06:17:40 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id g4so3367014edk.0
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 06:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EqAInrZnqhnwjNUNLFXz1YoHbY4JJ3or1Iv+L0rkS/Q=;
        b=snyRk+7jxjEy5mShCyAa6DstNAnU7XvZTPp9k9s3m4avLlzD6cVlDxg4N2QONRPUL4
         iqWAV4/X2cagjq6Hc3K+LvIJN1VA61kNSSutlRDRhbgphosAwTpHr2z0uuoHC5keFGuN
         Byp3a5fPQL/sykDTH5C+81ylNFg+AcFQZ7P3KOR+aktjViqD3ajqJO/pLokVkid6TDnp
         h3TAMyHsdeXrEA1CsR6ULoZG0hoaywFnhbENtNdHNlFbaF2aNGRYuzurCY93TbebrKP/
         5isNZiOdsp8jGaC8NZByIo1IJihAym57vqK8xVjyrCOaXH0FK3jHfX9BTYqK6S/PThaY
         +8tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EqAInrZnqhnwjNUNLFXz1YoHbY4JJ3or1Iv+L0rkS/Q=;
        b=VqZ6b60HwAP7j+79Wjyt4wJFnCtiv9xIDw52ewYV4BEceB0K1ivLxkFx7OTqfL6G/o
         3BF1zMvXMdECx11f1QDSj7hoB/dG2GUmxAYdenWIkpn4enkq+/M2l18nP+zOWiQPlSmN
         Iq54G3js/WCgopALNYkAcI62AoY2TpszMhjFkVX4ZTu0m24FACzsbCQh8OX5v50175SV
         R3pWC6JFPchaZ5jEKWMwjLC+/v8hxvBteRSHURYDNI8OAgrOo5S3m7/64OLDiHNUIcGy
         8qB+952PVmKp+5ruR8QRSDPustPgc4LPUhAVXPW3qZ8THiT7nTfVFQUjLRx7I13H4q+x
         1xXQ==
X-Gm-Message-State: AOAM531VvjwCcIPkNUMYgDo1GYyp4rZEzZB8gjhlavdeVRT7gZoqmS/0
        fjRtv9x28Xwmy9Lc7tF6fxy84VBSG0vlgB/DOzQnbQ==
X-Google-Smtp-Source: ABdhPJwi23DqJ2xt7yj14NDqCFivL5Jl7a1ii8mYOiWJvu2ZRT4Wt7/kQRar5zPPUzEWALw/TBE1PxLpLgbjN24IYrc=
X-Received: by 2002:a05:6402:17ec:: with SMTP id t12mr983133edy.328.1600953458779;
 Thu, 24 Sep 2020 06:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200916094952.458003-1-jonathanh@nvidia.com> <20200916094952.458003-2-jonathanh@nvidia.com>
 <CAMpxmJVqEHBZRTxwK1Dviz2MH=MUpNbUdtkVLjn0E2BM_HiCbQ@mail.gmail.com>
In-Reply-To: <CAMpxmJVqEHBZRTxwK1Dviz2MH=MUpNbUdtkVLjn0E2BM_HiCbQ@mail.gmail.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Thu, 24 Sep 2020 15:17:28 +0200
Message-ID: <CAMpxmJUEsN1yTEY7JeQrsjfLfBEba66kFa2TbcgNyd3Xbwp=aA@mail.gmail.com>
Subject: Re: [PATCH V2 1/5] misc: eeprom: at24: Initialise AT24 NVMEM ID field
To:     Jon Hunter <jonathanh@nvidia.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        linux-i2c <linux-i2c@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 24, 2020 at 3:14 PM Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:
>
> On Wed, Sep 16, 2020 at 11:50 AM Jon Hunter <jonathanh@nvidia.com> wrote:
> >
> > The AT24 EEPROM driver does not initialise the 'id' field of the
> > nvmem_config structure and because the entire structure is not
> > initialised, it ends up with a random value. This causes the NVMEM
> > driver to append the device 'devid' value to name of the NVMEM
> > device. Ideally for I2C devices such as the AT24 that already have a
> > unique name, we would not bother to append the 'devid'. However, given
> > that this has always been done for AT24 devices, we cannot remove the
> > 'devid' as this will change the name of the userspace sysfs node for
> > the NVMEM device. Nonetheless we should ensure that the 'id' field of
> > the nvmem_config structure is initialised so that there is no chance of
> > a random value causes problems in the future. Therefore, set the NVMEM
> > config.id to NVMEM_DEVID_AUTO for AT24 EEPROMs so that the 'devid' is
> > always appended.
> >
> > Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> > ---
> >  drivers/misc/eeprom/at24.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/misc/eeprom/at24.c b/drivers/misc/eeprom/at24.c
> > index e9df1ca251df..f76624b5c033 100644
> > --- a/drivers/misc/eeprom/at24.c
> > +++ b/drivers/misc/eeprom/at24.c
> > @@ -715,6 +715,7 @@ static int at24_probe(struct i2c_client *client)
> >
> >         nvmem_config.name = dev_name(dev);
> >         nvmem_config.dev = dev;
> > +       nvmem_config.id = NVMEM_DEVID_AUTO;
> >         nvmem_config.read_only = !writable;
> >         nvmem_config.root_only = !(flags & AT24_FLAG_IRUGO);
> >         nvmem_config.owner = THIS_MODULE;
> > --
> > 2.25.1
> >
>
> Ha! I only now noticed I already have a patch for this in my tree from
> Vadym Kochan for this cycle. I'll drop this one.
>
> Bartosz

-ETOOEARLY, nevermind my comment, it's for a different issue. I queued
this for v5.10.

Thanks!
Bartosz
