Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5783397752
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 17:58:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234443AbhFAQAT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 12:00:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234438AbhFAQAS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 12:00:18 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47574C061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 08:58:37 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id o127so8515549wmo.4
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 08:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=DfdeHTGjcCYPTchbky8FXiwy44uVWCQdaNoLYkK3gGA=;
        b=bZ9MxfqPj25Sllazfq16qEXmkBVdfRBnrSCMmS/fJaDhTbPtW1VB2MzqzmNJhzv5xw
         MmhdUesnw7wu+B6P6xJd67gFVV638kzdxwAEv5/YF0bcWYJNpWU53+ZIzz4MDEf+BErp
         8wVKwB11ob2HGzwNsdAk2Y/p4t1aF4jftNHIpcAU0vmDB/IZxvnLTu8VP0+vPW9T47gQ
         NKJ3ag4Ega/Y3Im7My7v6rnJobGbT7hdQjZUcvfusme1CUNgEiPbH7dMda1V6sbelQ6A
         3hThdSAP29YJDsgr1HtKyMYB4q3b7EBvc0oDzI/UVtZdG5Qv0Or3oSkzx6g8s1IMoNn6
         PLPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=DfdeHTGjcCYPTchbky8FXiwy44uVWCQdaNoLYkK3gGA=;
        b=OzQ4LwVdRLrXX+ss2l9rIDPU4dVdhk4ZBKPOqQuLRWS85djYiPrW6V96FyBK2KxNhs
         QLuqBmTMKmVQkp9idRt4tcnlE6la7Hc2iIvleuJS/pKRVXLlCxPsdNLIq0TwSebNcXjx
         y79zUCn4JWc0rt92H/82Hv6nawTS1YGCDbnrJeVzQPJVEIOF43l8YiMAzSrIzK21dK63
         YnzBLlWia9emcWWLtf0lWy7sKL3w5u9z59Kz/T9Of/b+5JBuA5VsydEMFXKXCDIMe+VN
         9OpCzx41bzD8bsOwwtMSQqwMkumlxt+i1au7L7vQVF9EbgvmoEmMg7HOX7mH4QOh0b7d
         RRgQ==
X-Gm-Message-State: AOAM532u3DN7UDvR7NqRKpI+nhuqfg6Y6RjTAnI489NR2/C+h6WEy1bb
        Dd9CrQOhnjvE4ea8rIalgE9TdA==
X-Google-Smtp-Source: ABdhPJxS4orObivxiUr7tCfWqSfkjoAv1xblsQUGN0WKI7maOGwBGJsigyuynzIzzbcA96eMcNrvJQ==
X-Received: by 2002:a7b:c94a:: with SMTP id i10mr12465034wml.29.1622563115864;
        Tue, 01 Jun 2021 08:58:35 -0700 (PDT)
Received: from dell ([91.110.221.249])
        by smtp.gmail.com with ESMTPSA id e27sm4300744wra.50.2021.06.01.08.58.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 08:58:35 -0700 (PDT)
Date:   Tue, 1 Jun 2021 16:58:32 +0100
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
Message-ID: <20210601155832.GC2165650@dell>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
 <20210601140145.GH543307@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210601140145.GH543307@dell>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Jun 2021, Lee Jones wrote:

> I've applied the non-Arm patches.
> 
> The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:
> 
>   Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git tb-mfd-asoc-v5.14
> 
> for you to fetch changes up to 437faaa6cebadf8ff4c2c28d7cb26ed4e34aeb14:
> 
>   dt-bindings: Add Rockchip rk817 audio CODEC support (2021-06-01 13:40:41 +0100)
> 
> ----------------------------------------------------------------
> Immutable branch between MFD and ASoC due for the v5.14 merge window
> 
> ----------------------------------------------------------------
> Chris Morgan (3):
>       mfd: Add Rockchip rk817 audio CODEC support
>       ASoC: Add Rockchip rk817 audio CODEC support
>       dt-bindings: Add Rockchip rk817 audio CODEC support
> 
>  Documentation/devicetree/bindings/mfd/rk808.txt | 188 +++++++++
>  drivers/mfd/rk808.c                             |  81 ++++
>  include/linux/mfd/rk808.h                       |  81 ++++
>  sound/soc/codecs/Kconfig                        |   6 +
>  sound/soc/codecs/Makefile                       |   2 +
>  sound/soc/codecs/rk817_codec.c                  | 539 ++++++++++++++++++++++++
>  6 files changed, 897 insertions(+)
>  create mode 100644 sound/soc/codecs/rk817_codec.c

Looks like the builders reported a W=1 warning introduced by the set.

Would you like me to fix it and submit a patch?

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
