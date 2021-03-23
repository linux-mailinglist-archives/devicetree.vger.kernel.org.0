Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01168345AF3
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 10:36:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229665AbhCWJgG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 05:36:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230140AbhCWJfp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 05:35:45 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D51E9C061574
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 02:35:44 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id u5so25958230ejn.8
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 02:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Dq+A8bXkgLP4LCXqXNUDH5ZiTBBc0y9mfd6LMDIWfCU=;
        b=tKkIq3X7o/IL5dkQNju1wLTVOoPVV67taVtXTYskG4CouQe2JIk5wd6faYWU4DUmKT
         XYXtQ/K0nBSAxzd+qjL6+mYK7+dgV8DCP+YqRvVbwWvWj0C8WV8tlTVN8RlI63i0TLl1
         vMJRhzHYZo8dATdMEQgfartBQtwjWpebWJoNCGGH1NRYvCNt+UFcdlntZnH9BcsKNScd
         Hm5udRpBcg67SNmERm8UYchvCe0PfaPvKeaESw6FgnyME2Zoo5BxXU5wrZd0RssHibYr
         4/eRHuoZamqRIq6cOAPYUb/EhVCqYJgFI4aT+UgpkJ/7QLeH4I1ZGO+QyA+pQly1+NIP
         w8qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Dq+A8bXkgLP4LCXqXNUDH5ZiTBBc0y9mfd6LMDIWfCU=;
        b=ovsgAcNUV+OsJxrsiL8Y3mXWDu5mq0Xe92Ergc1vpd7Ijpw3zmZVCVlEt0EYOkqF94
         +FzyeG4KhMZ5DvwEkB6zIpz0uh5H08BglKKYfkIknXALaDbdMCnlAPJTVvZw3lT4tB5M
         ANV70axDetX3jG9+4Ce4rJky10ZpczNvl8tPLAh4PkSYAOZO5b/kit/uXj8LHdCg+qhq
         zbixtUZvl0gaBNvNH7wRegFYJRnq+z6LahoYx4FjC4Sn/mdYuff5y0Ql1sCBv4sGclLc
         NTAy0K/0Bub3Q2lAUGaX/epbzcIeo/d+ArJrDhs95cmafB9usdpl+fkOYJ8208BSDd4r
         8f1w==
X-Gm-Message-State: AOAM530rigzzF28SX5OxJmDUwNKXJ7pWyZtQm66wLEUXOgRqpE6wqqAT
        phMrEnrxM57IhLXb7rAC3d/RqQ==
X-Google-Smtp-Source: ABdhPJx8d9Fb6QSct22A22acIyeW/4/rhm0vpea+VKpy7EcNMH/eI0uEx/iYxPBOqdV61D4CiV5kkg==
X-Received: by 2002:a17:907:b06:: with SMTP id h6mr4046258ejl.144.1616492143515;
        Tue, 23 Mar 2021 02:35:43 -0700 (PDT)
Received: from dell ([91.110.221.180])
        by smtp.gmail.com with ESMTPSA id u24sm10811910ejr.34.2021.03.23.02.35.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 02:35:43 -0700 (PDT)
Date:   Tue, 23 Mar 2021 09:35:41 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Alistair Francis <alistair23@gmail.com>
Cc:     Alistair Francis <alistair@alistair23.me>,
        Rob Herring <robh+dt@kernel.org>, lgirdwood@gmail.com,
        Mark Brown <broonie@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/6] mfd: Initial commit of sy7636a
Message-ID: <20210323093541.GQ2916463@dell>
References: <20210117042539.1609-1-alistair@alistair23.me>
 <20210117042539.1609-2-alistair@alistair23.me>
 <20210204103126.GA2789116@dell>
 <CAKmqyKOJ251sRUaxUKJ_U=puYRkypPEHAVZOnAKbQtP2skMJBA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKmqyKOJ251sRUaxUKJ_U=puYRkypPEHAVZOnAKbQtP2skMJBA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 20 Mar 2021, Alistair Francis wrote:

> On Thu, Feb 4, 2021 at 5:31 AM Lee Jones <lee.jones@linaro.org> wrote:
> >
> > On Sat, 16 Jan 2021, Alistair Francis wrote:
> >
> > > Initial support for the Silergy SY7636A Power Management chip
> > > driver.
> >
> > Please remove "driver", as this is not support for the driver, it *is*
> > the driver which supports the chip.
> 
> Sorry for the long delay here.
> 
> I have addressed your comments.

[...]

> > > diff --git a/drivers/mfd/sy7636a.c b/drivers/mfd/sy7636a.c
> > > new file mode 100644
> > > index 000000000000..39aac965d854
> > > --- /dev/null
> > > +++ b/drivers/mfd/sy7636a.c
> > > @@ -0,0 +1,252 @@
> > > +// SPDX-License-Identifier: GPL-2.0+
> > > +/*
> > > + * MFD driver for SY7636A chip
> >
> > "Parent driver".
> >
> > > + * Copyright (C) 2019 reMarkable AS - http://www.remarkable.com/
> >
> > This is quite out of date.  Please update.
> 
> I don't own this copyright, so I would rather not change it.

I'm not comfortable taking a new driver with an old Copyright.

Maybe ask reMarkable if it's okay to bump it.

> > > + * Author: Lars Ivar Miljeteig <lars.ivar.miljeteig@remarkable.com>

Or ping this guy.

[...]

> > > +int set_vcom_voltage_mv(struct regmap *regmap, unsigned int vcom)
> > > +{
> > > +     int ret;
> > > +     unsigned int val;
> > > +
> > > +     if (vcom < 0 || vcom > 5000)
> >
> > Please define min/max values.
> >
> > > +             return -EINVAL;
> > > +
> > > +     val = (unsigned int)(vcom / 10) & 0x1ff;
> >
> > As above.
> 
> I have used defines for all of these.
> 
> >
> > > +     ret = regmap_write(regmap, SY7636A_REG_VCOM_ADJUST_CTRL_L, val);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     ret = regmap_write(regmap, SY7636A_REG_VCOM_ADJUST_CTRL_H, val >> 8);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     return 0;
> > > +}
> >
> > Who calls these?
> 
> They sysfs store and show functions.

They should be in a power/regulator driver really.

[...]

> > > +     if (val >= ARRAY_SIZE(states)) {
> > > +             dev_err(sy7636a->dev, "Unexpected value read from device: %u\n", val);
> > > +             return -EINVAL;
> > > +     }
> > > +
> > > +     return snprintf(buf, PAGE_SIZE, "%s\n", states[val]);
> > > +}
> > > +static DEVICE_ATTR(state, 0444, state_show, NULL);
> >
> > You need to document new sysfs entries.
> 
> I'm not sure how to document this. Do you mind pointing out an example
> I can use?

See the final paragraph in:

  Documentation/filesystems/sysfs.rst

[...]

> > > +static struct attribute *sy7636a_sysfs_attrs[] = {
> > > +     &dev_attr_state.attr,
> > > +     &dev_attr_power_good.attr,
> > > +     &dev_attr_vcom.attr,
> > > +     NULL,
> > > +};
> >
> > These all look like power options?  Do they really belong here?
> 
> From what I can tell I think they do. Let me know if you don't think so.

As above, I think they should be in power or regulator.

[...]

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
