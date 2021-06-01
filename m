Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 163ED39794B
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 19:39:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234740AbhFARlh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 13:41:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234707AbhFARla (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 13:41:30 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD4D2C061756
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 10:39:47 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id s5-20020a7bc0c50000b0290147d0c21c51so102351wmh.4
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 10:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ckX1hE1X5h3eT0h/m87roO0T13qKCf4f5KvdLUNsq4o=;
        b=hCdIvaZ3ggx8MJWwoI0wdAuLtfW3Tu9VYnkPDYEyLybyzS91y4mMITNwwa3QL/4Mht
         oqjHcCf6UcjMyDqtkLezt7g4DiJvUGzl1UOXKkNC5NNxDoU5b/GKM6bC4Uix0LLXRGuf
         kkA5TROosspb4tYpPJKYmIDMAGXmGls5jkGPEoCPOvPZRAIVpgGuQn9WM0T5kBApiJY4
         UP7wcZ3qL1dlssEPeUuhP42iAUlffeFRSEj6I8T+qUd7Wds2iIpTTG5XwxueqIO52AQ9
         0vIkWml2TMbGzeVvKYxoEqFPe/vS1dEP/4n2GuCBA9g8mW1yN4hnbCs+R29cj4ciBhm8
         Opww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ckX1hE1X5h3eT0h/m87roO0T13qKCf4f5KvdLUNsq4o=;
        b=M7HJ/262W7wzF+LXSGV+8t3+EDMaKfmuwR/s8TMBXKzpB1NRaY5DwIt26wQOGTpY1a
         rpknjTe1wh2yKJl+ZLOtOjWgenzJV3fN6TVbzpB/T/2x3pKLzLuCrikXtfkFAIrThCVW
         miB018uBskYi1p3zURHLCVhsLye65BmbZepRyi7+qM8QPNVaKa9hfFr7rzFdvyo+Xroq
         zPV6spYnH/FKjookYixr2HzbOhFd60hiyDSDSFq3mQ8m8toPVwM25N5pTYyRTUo2NdJR
         9SWlxy+eHKQmwUMiEiCa2kY+mZZTIPU5QKilW73BhTthNPMqZ0lODkOrw6S4lbaG8WxG
         wIqg==
X-Gm-Message-State: AOAM53317GXzU7bsmPV/9y1mq4rtblRIJNYbLmMAaep8CKU9NNjQuQK8
        MXmm6T82JuQ7edRZ0AUgsR6ECw==
X-Google-Smtp-Source: ABdhPJxdYv0jyO7O9FAIymUSdidBrGWPRyusB38lpaRJIWB099ppNWFyLEdGstcGhIf1QxHTUYR1vQ==
X-Received: by 2002:a1c:4d09:: with SMTP id o9mr6206006wmh.149.1622569186491;
        Tue, 01 Jun 2021 10:39:46 -0700 (PDT)
Received: from dell ([91.110.221.249])
        by smtp.gmail.com with ESMTPSA id h46sm4352686wrh.44.2021.06.01.10.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 10:39:45 -0700 (PDT)
Date:   Tue, 1 Jun 2021 18:39:44 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        lgirdwood@gmail.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, heiko@sntech.de, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [GIT PULL] Immutable branch between MFD and ASoC due for the
 v5.14 merge window
Message-ID: <20210601173944.GA2173308@dell>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
 <20210601140145.GH543307@dell>
 <20210601155832.GC2165650@dell>
 <20210601171708.GA3529@wintermute.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210601171708.GA3529@wintermute.localdomain>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Jun 2021, Chris Morgan wrote:

> On Tue, Jun 01, 2021 at 04:58:32PM +0100, Lee Jones wrote:
> > On Tue, 01 Jun 2021, Lee Jones wrote:
> > 
> > > I've applied the non-Arm patches.
> > > 
> > > The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> > > 
> > >   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> > > 
> > > are available in the Git repository at:
> > > 
> > >   git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git tb-mfd-asoc-v5.14
> > > 
> > > for you to fetch changes up to 437faaa6cebadf8ff4c2c28d7cb26ed4e34aeb14:
> > > 
> > >   dt-bindings: Add Rockchip rk817 audio CODEC support (2021-06-01 13:40:41 +0100)
> > > 
> > > ----------------------------------------------------------------
> > > Immutable branch between MFD and ASoC due for the v5.14 merge window
> > > 
> > > ----------------------------------------------------------------
> > > Chris Morgan (3):
> > >       mfd: Add Rockchip rk817 audio CODEC support
> > >       ASoC: Add Rockchip rk817 audio CODEC support
> > >       dt-bindings: Add Rockchip rk817 audio CODEC support
> > > 
> > >  Documentation/devicetree/bindings/mfd/rk808.txt | 188 +++++++++
> > >  drivers/mfd/rk808.c                             |  81 ++++
> > >  include/linux/mfd/rk808.h                       |  81 ++++
> > >  sound/soc/codecs/Kconfig                        |   6 +
> > >  sound/soc/codecs/Makefile                       |   2 +
> > >  sound/soc/codecs/rk817_codec.c                  | 539 ++++++++++++++++++++++++
> > >  6 files changed, 897 insertions(+)
> > >  create mode 100644 sound/soc/codecs/rk817_codec.c
> > 
> > Looks like the builders reported a W=1 warning introduced by the set.
> > 
> > Would you like me to fix it and submit a patch?
> 
> I can't seem to reproduce the warning, are there more details as to
> what is causing it?

Yes, it's a W=1 warning.  Put that on your command line.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
