Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8332B333B2B
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 12:13:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232693AbhCJLNC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 06:13:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232680AbhCJLMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 06:12:53 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82A00C06174A
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 03:12:53 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id e10so22827304wro.12
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 03:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=UGJeYMoiqsuqVVTeVoFglXOcNn/3QqsFMhjYUbI14nM=;
        b=vvdoFTieL1xSFVCJscNZyaslJr62TOvUt/gV0k/8roKq7Tj7IiTvrEK98UXi0VADke
         WYqY4ETLl5pqlXH8AkZuP4e8ZDg0kKZJ6obvSba9NWk6tvgmiuu5YdUXo0KqjAy3OkZo
         n3w72Ccqki+lT0WYlyanGzpX3ZcOvTFQKKf0+Znvi5ETGURY6Uf/JRT8XGIGvURcdhh8
         midXBVZv3MP9J2Viex66h4qlomOe36IfHT2Es0LFgw8eVbEw8NxlT6/VnWhNgdF1FW/m
         b9o14JxWNZ8sVDy3QCyY9U9xt6olB0OgV36ni8MSJs6wFq81H1LaLi5BpaLYc+uY0nPE
         b3sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=UGJeYMoiqsuqVVTeVoFglXOcNn/3QqsFMhjYUbI14nM=;
        b=o4yxScnvKWzxcrDEHTAN4Sv41e8/buXMOUIyFdI8x6ZzH4XjEYCb4Nz34hiMfbxTNP
         +FFhBxNwv7Akk64iU9hUIUCV89XJ67u/N0r1xQ8MX6ofyZogXBK0aGEUmKw1b/gh8Vvz
         j90gaDpC+a9M+NV6RAYtZcYbqAPBODeeSiuDy6E8Hbnxn+5I7OGYf0W9DK43ALxWAeuu
         UuCYtXfJ2a2EVRhTy8NhdOpzavgoqCtVWCgDGv5CKxg7hXuhwm8uj8MOsq/pM1qoEK7x
         E+QirRUAuOL8Hbg1jB6fUBDVXcH+M5helA1moA3+zKc7i71mTqqy1m+6RJTLJSVtZM0X
         uERw==
X-Gm-Message-State: AOAM533upFJOf7h0EaEVjtsPH5ume41mbaQdLk26t7jIHJBqb8ex4T8C
        k5Zv2GT/RjDd+9Ks//C+/gmDcw==
X-Google-Smtp-Source: ABdhPJyZZedLdiox6QwX0RPAqq4UkcbE+i7ALdKzi5RmxyINAwBjynOitvDYZFXAUrJ63Pinq0R9GA==
X-Received: by 2002:a5d:6b84:: with SMTP id n4mr2942743wrx.402.1615374772316;
        Wed, 10 Mar 2021 03:12:52 -0800 (PST)
Received: from dell ([91.110.221.204])
        by smtp.gmail.com with ESMTPSA id a131sm8736012wmc.48.2021.03.10.03.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 03:12:51 -0800 (PST)
Date:   Wed, 10 Mar 2021 11:12:50 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Sebastian Reichel <sre@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-actions@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: Re: [GIT PULL] Immutable branch between MFD and Input due for the
 v5.13 merge window
Message-ID: <20210310111250.GM701493@dell>
References: <cover.1611653995.git.cristian.ciocaltea@gmail.com>
 <20210309135302.GP4931@dell>
 <20210309200417.GZ4931@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210309200417.GZ4931@dell>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 09 Mar 2021, Lee Jones wrote:

> On Tue, 09 Mar 2021, Lee Jones wrote:
> 
> > Enjoy!
> > 
> > The following changes since commit fe07bfda2fb9cdef8a4d4008a409bb02f35f1bd8:
> > 
> >   Linux 5.12-rc1 (2021-02-28 16:05:19 -0800)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git ib-mfd-input-v5.13
> > 
> > for you to fetch changes up to b58c808ca46c163c1924ec5d3285e67e9217ec74:
> > 
> >   MAINTAINERS: Add entry for ATC260x PMIC (2021-03-09 13:50:39 +0000)
> > 
> > ----------------------------------------------------------------
> > Immutable branch between MFD and Input due for the v5.13 merge window
> > 
> > ----------------------------------------------------------------
> > Cristian Ciocaltea (4):
> >       dt-bindings: input: Add reset-time-sec common property
> >       dt-bindings: mfd: Add Actions Semi ATC260x PMIC binding
> >       mfd: Add MFD driver for ATC260x PMICs
> >       input: atc260x: Add onkey driver for ATC260x PMICs
> > 
> > Manivannan Sadhasivam (1):
> >       MAINTAINERS: Add entry for ATC260x PMIC
> > 
> >  Documentation/devicetree/bindings/input/input.yaml |   7 +
> >  .../devicetree/bindings/mfd/actions,atc260x.yaml   | 183 ++++++++++++
> >  MAINTAINERS                                        |  12 +
> >  drivers/input/misc/Kconfig                         |  11 +
> >  drivers/input/misc/Makefile                        |   2 +-
> >  drivers/input/misc/atc260x-onkey.c                 | 305 ++++++++++++++++++++
> >  drivers/mfd/Kconfig                                |  18 ++
> >  drivers/mfd/Makefile                               |   3 +
> >  drivers/mfd/atc260x-core.c                         | 310 +++++++++++++++++++++
> >  drivers/mfd/atc260x-i2c.c                          |  64 +++++
> >  include/linux/mfd/atc260x/atc2603c.h               | 281 +++++++++++++++++++
> >  include/linux/mfd/atc260x/atc2609a.h               | 308 ++++++++++++++++++++
> >  include/linux/mfd/atc260x/core.h                   |  58 ++++
> >  13 files changed, 1561 insertions(+), 1 deletion(-)
> >  create mode 100644 Documentation/devicetree/bindings/mfd/actions,atc260x.yaml
> >  create mode 100644 drivers/input/misc/atc260x-onkey.c
> >  create mode 100644 drivers/mfd/atc260x-core.c
> >  create mode 100644 drivers/mfd/atc260x-i2c.c
> >  create mode 100644 include/linux/mfd/atc260x/atc2603c.h
> >  create mode 100644 include/linux/mfd/atc260x/atc2609a.h
> >  create mode 100644 include/linux/mfd/atc260x/core.h
> 
> FYI, if anyone has pulled this, they should probably rebase it onto
> v5.12-rc2 and delete the v5.12-rc1 tag from their tree:
> 
>  https://lwn.net/Articles/848431/

In case you haven't pulled this yet, I created a new tag:

  ib-mfd-input-v5.13-1

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
