Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C9B539856C
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 11:42:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232075AbhFBJoJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 05:44:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230178AbhFBJoJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 05:44:09 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 155EDC061574
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 02:42:26 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id f2so1573947wri.11
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 02:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=1bwvnBt46b5Md91UtcUGWL/AlFfTVV7qxAksQIq9DBA=;
        b=h9/S1lbEio3I0k1sJsuUnAl5NZ+gKun1O9ELFxpqHub3f3exMh1Uj2Q4mTJJ2VMmE3
         0+LpXNLdH7wDf47ouPCSBVNePxbIOqrEFiOL4EtsSt2ogKUZVT6oS2ECqgSA6YvOu0s3
         p5C9SI6LpxXCzPHSVwvO0eEMeu/fwiHDTFwXhfHB5jBfsclLy0zsOMo/bz8WbvqWlmSg
         +r8OOi+4QLTLZ9O4Rq6+8YAU4NIDxRIbHFfgaDxll3M9TtNsqdXid2GJnYI+Nkoz6Brx
         aOb4rdL1voEE2aveKYeo0jezHEYS7ORAK8pzaAiLskQ0UjAStuNICXYhy9/2hxCnsuzK
         bBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=1bwvnBt46b5Md91UtcUGWL/AlFfTVV7qxAksQIq9DBA=;
        b=p0ujzmeU4+w1+kbz7HSiP1CoUAaqS2MJyQox2BaKFhGFHsnwLtMfU7RlmIMTqS0HKP
         8f+pINwjOzRjJEloHqvZg3BvOWOGuQJsamCWy4qTfkfoFXQz5kjly81xt/u+Eb5vmEJc
         JJDdroK6ZKNiFeMADj0PFh4CyhC80+ocEps9eX2YkrNKdYX6eSfCkvdPr6zPsqFHIeuN
         87+BWeFnYrR//grdSp4YmU8anjGD7W+pEWmnC+WRIVHnIfuIA4ZT6L2nKzz1Lut/yf+O
         hccGLm1dobNYTeB8wIApsc7FV7OjJoOCY8tmJy8qUy3MRWaG3MPecsRzXiiyhdyYePsS
         hr8Q==
X-Gm-Message-State: AOAM532voX3mrqLEs1KONQsmcbjzysMrj3au4PPPquWV8CwH/el4rASd
        x8GuO7xjEmQ5heRtIf6SnuYV6w==
X-Google-Smtp-Source: ABdhPJx10PafmAQ/VY0pzK8DIrLGFxB4haVNs3NLBwzgdx69yethsNuxYQSzr9BSWt4jSReAeofErw==
X-Received: by 2002:adf:a401:: with SMTP id d1mr20952564wra.55.1622626944677;
        Wed, 02 Jun 2021 02:42:24 -0700 (PDT)
Received: from dell ([91.110.221.214])
        by smtp.gmail.com with ESMTPSA id z12sm2515907wmc.5.2021.06.02.02.42.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 02:42:24 -0700 (PDT)
Date:   Wed, 2 Jun 2021 10:42:22 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        lgirdwood@gmail.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, heiko@sntech.de, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [GIT PULL v2] Immutable branch between MFD and ASoC due for the
 v5.14 merge window
Message-ID: <20210602094222.GF2173308@dell>
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

Enjoy!

The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:

  Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git tags/tb-mfd-asoc-v5.14-1

for you to fetch changes up to ef7570b67541d8b938df1e45f56e54be70bf1360:

  ASoC: rk817: fix a warning in rk817_probe() (2021-06-02 08:05:23 +0100)

----------------------------------------------------------------
Immutable branch between MFD and ASoC due for the v5.14 merge window

----------------------------------------------------------------
Chris Morgan (4):
      mfd: Add Rockchip rk817 audio CODEC support
      ASoC: Add Rockchip rk817 audio CODEC support
      dt-bindings: Add Rockchip rk817 audio CODEC support
      ASoC: rk817: fix a warning in rk817_probe()

 Documentation/devicetree/bindings/mfd/rk808.txt | 188 +++++++++
 drivers/mfd/rk808.c                             |  81 ++++
 include/linux/mfd/rk808.h                       |  81 ++++
 sound/soc/codecs/Kconfig                        |   6 +
 sound/soc/codecs/Makefile                       |   2 +
 sound/soc/codecs/rk817_codec.c                  | 538 ++++++++++++++++++++++++
 6 files changed, 896 insertions(+)
 create mode 100644 sound/soc/codecs/rk817_codec.c

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
