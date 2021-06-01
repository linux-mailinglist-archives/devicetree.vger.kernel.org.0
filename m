Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B39C6397A21
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 20:33:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233853AbhFASfk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 14:35:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233397AbhFASfk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 14:35:40 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66597C061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 11:33:57 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id i12-20020a05683033ecb02903346fa0f74dso184282otu.10
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 11:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=RzTOE/XOCVSzmLG98WEkmn6LNXza+BETZY5BVIMEZe0=;
        b=Q+/PPq9LSmL6xAIqiLbVwzxMGmJatzyUPqQWgztcCyifzWeWBetsFgfvnN98wO8Yg+
         MBu2uN+BJISOWSAaDsrPL0UpoVhf61o2Zjg3Ub2txRN+Z23rzGZyzxvHZNNwRI6GgPF8
         xPVsX14QMUC1iZi1vI3z+6mcMB9GW59esPReJGczcwYTkdhkmJirjjeb5M//oOC8A140
         I8ay9ZuLd9izlUotMqGaMxz3jPYqpQDA+VkagD9rXXuQPvGZOcmkt2b9oz9R4UoHwlq3
         EKFabv7GDKJvCGxvc51QM9nFDTYFLtUcas1pS8gLhT+mt2nU+1FRMpR+IRVNES0rVUCB
         +26w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=RzTOE/XOCVSzmLG98WEkmn6LNXza+BETZY5BVIMEZe0=;
        b=gklVYkOrHoJ6QyVUM1NnV5PpzXRsKsGsO0jDZXy28oMXHl/hzoeSgspxUp5CDHyqt2
         /jW+kxqfYFcjONZywjJSwrcOsYStxsk4uegZtB2/VzVUkDil7voEneyus0H3D2q361Q+
         +tpeA0YhZPuirg7wDCio//pIqMo7Egoc+kC3q6mLTSodB8HwN7nLZK9Hm8dWStcqo2fT
         RXht+o7wTdHCJD+avk4G12zfvpgXcvKhL0/fgq0oqANCbCGjQvwvwoy5Z6zgurljFqID
         R2f6MzYDkUqo36wGQVzpkvKXTfO0MJMuD1v2T9G2SMv02hUpBN+q02BT26/hQYhyZBVf
         +iQA==
X-Gm-Message-State: AOAM533R4ea8wFGQGaBxItazaDTQlGVxCpr3i1JQ1iCD6vYYeP8iu45D
        irBCDdhG2liETJsXHlDeyuo=
X-Google-Smtp-Source: ABdhPJxjBHoMhAl05mvgUMRUJ3hwUTLp13vifa+CyU+JOZkkyhO0RTyrual33v6kA5md3LS4ftGd/w==
X-Received: by 2002:a05:6830:1e21:: with SMTP id t1mr22465735otr.100.1622572436498;
        Tue, 01 Jun 2021 11:33:56 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id r19sm1095965otn.37.2021.06.01.11.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 11:33:55 -0700 (PDT)
Date:   Tue, 1 Jun 2021 13:33:51 -0500
From:   Chris Morgan <macroalpha82@gmail.com>
To:     Lee Jones <lee.jones@linaro.org>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        lgirdwood@gmail.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, heiko@sntech.de, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [GIT PULL] Immutable branch between MFD and ASoC due for the
 v5.14 merge window
Message-ID: <20210601183351.GA31227@wintermute.localdomain>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
 <20210601140145.GH543307@dell>
 <20210601155832.GC2165650@dell>
 <20210601171708.GA3529@wintermute.localdomain>
 <20210601173944.GA2173308@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210601173944.GA2173308@dell>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 01, 2021 at 06:39:44PM +0100, Lee Jones wrote:
> On Tue, 01 Jun 2021, Chris Morgan wrote:
> 
> > On Tue, Jun 01, 2021 at 04:58:32PM +0100, Lee Jones wrote:
> > > On Tue, 01 Jun 2021, Lee Jones wrote:
> > > 
> > > > I've applied the non-Arm patches.
> > > > 
> > > > The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> > > > 
> > > >   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> > > > 
> > > > are available in the Git repository at:
> > > > 
> > > >   git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git tb-mfd-asoc-v5.14
> > > > 
> > > > for you to fetch changes up to 437faaa6cebadf8ff4c2c28d7cb26ed4e34aeb14:
> > > > 
> > > >   dt-bindings: Add Rockchip rk817 audio CODEC support (2021-06-01 13:40:41 +0100)
> > > > 
> > > > ----------------------------------------------------------------
> > > > Immutable branch between MFD and ASoC due for the v5.14 merge window
> > > > 
> > > > ----------------------------------------------------------------
> > > > Chris Morgan (3):
> > > >       mfd: Add Rockchip rk817 audio CODEC support
> > > >       ASoC: Add Rockchip rk817 audio CODEC support
> > > >       dt-bindings: Add Rockchip rk817 audio CODEC support
> > > > 
> > > >  Documentation/devicetree/bindings/mfd/rk808.txt | 188 +++++++++
> > > >  drivers/mfd/rk808.c                             |  81 ++++
> > > >  include/linux/mfd/rk808.h                       |  81 ++++
> > > >  sound/soc/codecs/Kconfig                        |   6 +
> > > >  sound/soc/codecs/Makefile                       |   2 +
> > > >  sound/soc/codecs/rk817_codec.c                  | 539 ++++++++++++++++++++++++
> > > >  6 files changed, 897 insertions(+)
> > > >  create mode 100644 sound/soc/codecs/rk817_codec.c
> > > 
> > > Looks like the builders reported a W=1 warning introduced by the set.
> > > 
> > > Would you like me to fix it and submit a patch?
> > 
> > I can't seem to reproduce the warning, are there more details as to
> > what is causing it?
> 
> Yes, it's a W=1 warning.  Put that on your command line.

Got it. Want me to resubmit the patch? Looks like I was requesting a
return value from a function and not doing anything with it.

Thank you


> 
> -- 
> Lee Jones [李琼斯]
> Senior Technical Lead - Developer Services
> Linaro.org │ Open source software for Arm SoCs
> Follow Linaro: Facebook | Twitter | Blog
