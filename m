Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D1233978E9
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 19:17:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232490AbhFARS4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 13:18:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233397AbhFARSz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 13:18:55 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76743C061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 10:17:13 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id x41-20020a05683040a9b02903b37841177eso5292150ott.9
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 10:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=6SAc4++qABizp6ptj0SCF0e03ok47gKm5Ef5EiX32Oo=;
        b=PpAvrlDOxyYXDMLesS+IfXJmAmPMagvcqcnIjsYohPPHPUmG6Ll2FyUgt0xxXzkSp9
         8PhSdcovoP/NXrjrKmWjH9vdBJ0msXTmhfaV7AZ4CE5cb3Ul+u1q9z2IJEHHUufeimYS
         Y5YV7LTnRra7xuJC1vUYNBZQ6L0EZH/P5kIUhEFuM20ihi8vp70CPlkUyF0CjflvrETO
         quVaRPtPXL2lRJujNHAXiR8whHTvuU5smKdoJqv0QwD559Oz05yX61f1H5qD77DzjAnR
         LpSJS9ShwlYFNvE1XmDo3Vxv9t2t2GGnRPYZ6kH9x4184vijuCAcjTLOzqGh1OLxXu8P
         H27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=6SAc4++qABizp6ptj0SCF0e03ok47gKm5Ef5EiX32Oo=;
        b=lVZ/2QywwBFjTqrLVEKhBwUnaqhLsgl+UtD64LrQmswWVOcFcvEFx5fxIsDLfWdjAf
         Wbfoz9fFF/txUujSgsuizVCvZqA2XtwD2vYHYJecX4nUM0kgq8cat8MVFl5uD3uY/ZSh
         X+CUZl6TPbFsMJRftBWCkYiBZYq0g1EI4V7nXXkygUQ86W/UV0CRA3LYTgyxUB2I7Wsd
         r0o45g2r6v9hhmlmI68gcq7BkwCMn19SLjVJQAoxTCOrVo0lyF5sh0SZvQHtjavLat8s
         O0h4apByRY3GNuKd7luxkTzQJaK6+KOR6Veql4MSNzWVpPGuE65fWSkc9o6QdYu5tK3L
         KV5g==
X-Gm-Message-State: AOAM533fTLPxArpMItd2uJvkOVUueu7QAFmGTsqXuqEIJM+m0Edq7LDz
        Ds232ga1txHoOQnpe+UYyzU=
X-Google-Smtp-Source: ABdhPJxtizSIYWeWnAtw7Z79wz0XdWb3imQFmVDNpImDOF0JRE38WXiBeG/YJoJmhwbhLy8u8P6KQQ==
X-Received: by 2002:a9d:7610:: with SMTP id k16mr22770791otl.32.1622567832894;
        Tue, 01 Jun 2021 10:17:12 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id s26sm1314325otd.61.2021.06.01.10.17.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 10:17:12 -0700 (PDT)
Date:   Tue, 1 Jun 2021 12:17:08 -0500
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
Message-ID: <20210601171708.GA3529@wintermute.localdomain>
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

I can't seem to reproduce the warning, are there more details as to
what is causing it?

Thank you.

> 
> -- 
> Lee Jones [李琼斯]
> Senior Technical Lead - Developer Services
> Linaro.org │ Open source software for Arm SoCs
> Follow Linaro: Facebook | Twitter | Blog
