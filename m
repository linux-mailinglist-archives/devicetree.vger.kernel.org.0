Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EDB2397860
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 18:48:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232490AbhFAQtv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 12:49:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231918AbhFAQtv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 12:49:51 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6181C061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 09:48:08 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 66-20020a9d02c80000b02903615edf7c1aso14667408otl.13
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 09:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ZJrNStiRC3o/Jtcih0sDE1Ju7mSUxWw1odN8y2E3Q40=;
        b=QJEPUhBNGPtTSsGaEhDTpuleVPtslvjLb5WXb4NVTRTl7zgNtcCGycm790VduwHBxX
         p8oPK30Bl24/GJl6AHBVXZqFZjijatf/ObSXEyPiitOcn7LJWh1psE0pvNDgdvBNGJUt
         cH7tKKKo0REZVtW0CCfJ4c10ba3wA97YO5yJecHRXf1ehKFVlmFRLhk49i7/DaqFprtj
         Cdr+9W+ZuDZ/YD8shXCna4tYf7A2/dtwG9JBE4zmniTR8iYUK0uOuyhf21mionKBjkWt
         kQzAPXNxtIx3TWi3n2FGbtLMsNNDGNEzfYbbLwEQa/mS5T6njag8NvWjSwDE+9vdpq3g
         4j8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ZJrNStiRC3o/Jtcih0sDE1Ju7mSUxWw1odN8y2E3Q40=;
        b=m1zrFE4rbCnhOnBGG1L1mSYcufnBOXl6gxpBiYZrQA+2b7n1u2hQ0TLswNZI8OUu43
         qjzBAuRXEjATWE4QmyGltG2VfdGEzoY/zvQXW/W2TCPBxjr5V4KApvSgRz79dyWPbql8
         J3J217F7pWWEQvEuF2BbG+/hVjW5bCV2LoTyvHpmOJc1QOA74fZMigMGaAD0lzUIeKo6
         70XmHxyYyqK4qCgUbA80776wrIUwEyD4z82V/q5euPfsy9/nh4pGTxk3awWG7GtNAVFg
         eaW+d1H0XxypwBXjGltBob57ctP3I6ZZzaWwcHq7blPfiKNHxqZe+VfvtBanfwErU+XO
         bbvg==
X-Gm-Message-State: AOAM530J92EnpbDmGk/mxJMkEZNPJfo1Xu19BtXier9pJ/aQDFDtvc8J
        lKQYi/j71UgvvEbVUqD4FiE=
X-Google-Smtp-Source: ABdhPJyQKrTDt9O97QsIXptl5eP/nuQUWjQWrP2J81xosFCU/bVV6p5Sed91mztsQtzaBhgihCdFQA==
X-Received: by 2002:a05:6830:2141:: with SMTP id r1mr22039795otd.13.1622566088279;
        Tue, 01 Jun 2021 09:48:08 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id z25sm1732590oto.72.2021.06.01.09.48.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 09:48:07 -0700 (PDT)
Date:   Tue, 1 Jun 2021 11:48:03 -0500
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
Message-ID: <20210601164803.GA40@wintermute.localdomain>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
 <20210601140145.GH543307@dell>
 <20210601155832.GC2165650@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210601155832.GC2165650@dell>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 01, 2021 at 04:58:32PM +0100, Lee Jones wrote:
> On Tue, 01 Jun 2021, Lee Jones wrote:
> 
> > I've applied the non-Arm patches.
> > 
> > The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> > 
> >   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git tb-mfd-asoc-v5.14
> > 
> > for you to fetch changes up to 437faaa6cebadf8ff4c2c28d7cb26ed4e34aeb14:
> > 
> >   dt-bindings: Add Rockchip rk817 audio CODEC support (2021-06-01 13:40:41 +0100)
> > 
> > ----------------------------------------------------------------
> > Immutable branch between MFD and ASoC due for the v5.14 merge window
> > 
> > ----------------------------------------------------------------
> > Chris Morgan (3):
> >       mfd: Add Rockchip rk817 audio CODEC support
> >       ASoC: Add Rockchip rk817 audio CODEC support
> >       dt-bindings: Add Rockchip rk817 audio CODEC support
> > 
> >  Documentation/devicetree/bindings/mfd/rk808.txt | 188 +++++++++
> >  drivers/mfd/rk808.c                             |  81 ++++
> >  include/linux/mfd/rk808.h                       |  81 ++++
> >  sound/soc/codecs/Kconfig                        |   6 +
> >  sound/soc/codecs/Makefile                       |   2 +
> >  sound/soc/codecs/rk817_codec.c                  | 539 ++++++++++++++++++++++++
> >  6 files changed, 897 insertions(+)
> >  create mode 100644 sound/soc/codecs/rk817_codec.c
> 
> Looks like the builders reported a W=1 warning introduced by the set.
> 
> Would you like me to fix it and submit a patch?

If it's a simple fix sure. I'm pulling the branch now and will confirm
the warning otherwise.

Thank you.

> 
> -- 
> Lee Jones [李琼斯]
> Senior Technical Lead - Developer Services
> Linaro.org │ Open source software for Arm SoCs
> Follow Linaro: Facebook | Twitter | Blog
