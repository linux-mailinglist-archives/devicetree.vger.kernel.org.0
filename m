Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 197DB398273
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 09:03:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231235AbhFBHEo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 03:04:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231488AbhFBHEH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 03:04:07 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84361C061574
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 00:02:24 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id m18so559035wmq.0
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 00:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=I2YDeFUanCg/pgan1aYlo4dp/IlnP/elTacPpIAPqQM=;
        b=TyBmDWxYKFC3qvRZJgxpGRuxNoysigaH/RAM3D4jQP4qy5Yinnsyf9O+voLa7FfE4S
         aX7dy8rHDITQf+/rGlqoQ8jpVuuIpAPPTV73619jOkWAAjDDK4SSob4HYiVHNl0k1wly
         if7UXApaH1EmzSAgw6srLLFeenzO9i2BHPKHxblfNAbRiBX/dSf2yEqpcAiThbmEtnme
         EN27zSQKC/PGa0TVAk2GlmZPhMmGbc30kOWDNd/QSPOegvb8T9PBxZODH4/GjVtFwet2
         oUdP5NVcmU2GfS46gPmEMJh/yZhiHJ4BJD3U473r037WwQhkNKPfrwo8wD31eLg2aFv4
         pE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=I2YDeFUanCg/pgan1aYlo4dp/IlnP/elTacPpIAPqQM=;
        b=A7meGgIHLvYkE22NzIUFzOlasCahzJlJrwXC5vnABC7bOqO6X0bh7HSD5+p1n/NhNQ
         NuwFZgCsGiKTyEdSQEXVhiNDKZQ84uEEO0z1+RBtIZ9FkUQfjBXTl9zzSNJ+8aEcMVct
         imTer+e48QWufdrwDz3KolSgnQkzS2ioRJy1nFAB/TOKUuAKZ/qj9ayyNxY4xeRfeeEO
         NNa2JnZFCfw7aMSPR83HtSUKZk5nRc8Ce7b0ZOojlPyhF4eaDWYr1REQTWU4u0LP1sLr
         qjpvhzzpQJk3KO6tHRvUH/ns/1/xLrXyBEtE8YZlAMFB43EYeXLjMZ5PNiAk/s/GpZQ0
         sUsg==
X-Gm-Message-State: AOAM533/bqW12hmcX1gAbobLUKU+mmdxZ5+hHBmBgHw3NtJfoGLEjo/k
        d3SZaBQ+oLV1bcEVxMDEuPXjIA==
X-Google-Smtp-Source: ABdhPJxkpzuIkxq/UzbNEPcxikIiBU1LLWTK7nwRLytD5ezE17H6HD6nRf1jPUKLxu53q8oo8x9BsA==
X-Received: by 2002:a05:600c:1913:: with SMTP id j19mr3537325wmq.167.1622617343177;
        Wed, 02 Jun 2021 00:02:23 -0700 (PDT)
Received: from dell ([91.110.221.214])
        by smtp.gmail.com with ESMTPSA id z11sm5482193wrs.7.2021.06.02.00.02.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 00:02:22 -0700 (PDT)
Date:   Wed, 2 Jun 2021 08:02:20 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        lgirdwood@gmail.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, heiko@sntech.de, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] ASoC: rk817: fix a warning in rk817_probe()
Message-ID: <20210602070220.GC2173308@dell>
References: <20210601214424.23432-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210601214424.23432-1-macroalpha82@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Jun 2021, Chris Morgan wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The return value of snd_soc_component_write() is stored but not
> evaluated and this results in a warning when W=1 is set. Stop storing
> the return value to be consistent with all other calls of
> snd_soc_component_write() and to remove the warning.
> 
> Fixes: 0d6a04da9b25 ("ASoC: Add Rockchip rk817 audio CODEC support")
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  sound/soc/codecs/rk817_codec.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Applied, thanks.

Mark, I'll send out another PR shortly.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
