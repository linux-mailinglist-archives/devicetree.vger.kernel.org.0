Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C79263974D4
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 16:01:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234192AbhFAODc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 10:03:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234087AbhFAODb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 10:03:31 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DB1AC061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 07:01:49 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso1655679wmh.4
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 07:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=TxNXvaRSwH5cMN0IqObrUzZItiw85EBExLxK7B6JTbk=;
        b=O0Uf4/PF1Gz23LfW061xvE9TmKzIOovinXsF1shgt6sEFzYmczcX5cGsOAzYL2dU0b
         ep4PCe/1ynAGtQ4M1ZxIqeCyQsiAi3Jfc89Tr5K+KgEZOLWv5T02prBgnnyCltGsY2Yp
         SMnKJheYzgB7h65PCoFUrJfERC5ALLkSs0icfwGMY33QyF7DqhorwXwgIL9/tSGWemGP
         rWx94nxNErLiSDM5K0lu63FNMtWR66RKPISboNDblnqDVG5vXbX6I3CRk1sOlEOYME+B
         tLLGN3fP29MNz8MjWto2sEzQ5QBTU8Y0WrJh5MFj6p0pgccZ5D/qSMBO56lW8VUVTXTQ
         rwiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=TxNXvaRSwH5cMN0IqObrUzZItiw85EBExLxK7B6JTbk=;
        b=XcpJJCJu8rcrMzHJ4b5oshirVlIL4q/EgOCt2fcmeN8s9fCMXVzn1CdlQZd7cDwgB4
         qdWh4RtetyGHYj/rxBg0IL3EoUA2LL9cssEHJ79J1XrmNuk6bbfI8JMTZYT/kwS8d1/U
         y79oWrWraf97Nv8DeR1f+//toO6gbe5X8KG53e1nPDGcJTnnU3zHMYmm5c7r+aj2jBP3
         4bR83pWA/oLBrWdOWRXPIRF4jglXisHoz/dLWy0O503KoUe+7A6xKH/jWLRWrvAzN84i
         lnpTBBsbP+nmsJ2qwng79HYfKkBseZH6nJTwyJIkHQvVTd6hxXI7LC5+y6H9JU3m7Lp/
         Wkwg==
X-Gm-Message-State: AOAM533Tr2hiAvOZaqINHrHNsDWWKDwdd8fuohPC3VNq5Fyt+zDUg4mN
        u+pd7osXpFC4i3HnTGheFCLO9Q==
X-Google-Smtp-Source: ABdhPJyewGO++Mbi4rCpqZMGb6Wna6RRJEtPmWVLMLH2dCmEgIA8t9BE9H/fZURvSn2iFdiocUGxkA==
X-Received: by 2002:a1c:b384:: with SMTP id c126mr26885740wmf.110.1622556108028;
        Tue, 01 Jun 2021 07:01:48 -0700 (PDT)
Received: from dell ([91.110.221.249])
        by smtp.gmail.com with ESMTPSA id v8sm3790884wrc.29.2021.06.01.07.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 07:01:47 -0700 (PDT)
Date:   Tue, 1 Jun 2021 15:01:45 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        lgirdwood@gmail.com, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.com, heiko@sntech.de, robh+dt@kernel.org,
        perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [GIT PULL] Immutable branch between MFD and ASoC due for the v5.14
 merge window
Message-ID: <20210601140145.GH543307@dell>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210519203754.27184-1-macroalpha82@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I've applied the non-Arm patches.

The following changes since commit 6efb943b8616ec53a5e444193dccf1af9ad627b5:

  Linux 5.13-rc1 (2021-05-09 14:17:44 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git tb-mfd-asoc-v5.14

for you to fetch changes up to 437faaa6cebadf8ff4c2c28d7cb26ed4e34aeb14:

  dt-bindings: Add Rockchip rk817 audio CODEC support (2021-06-01 13:40:41 +0100)

----------------------------------------------------------------
Immutable branch between MFD and ASoC due for the v5.14 merge window

----------------------------------------------------------------
Chris Morgan (3):
      mfd: Add Rockchip rk817 audio CODEC support
      ASoC: Add Rockchip rk817 audio CODEC support
      dt-bindings: Add Rockchip rk817 audio CODEC support

 Documentation/devicetree/bindings/mfd/rk808.txt | 188 +++++++++
 drivers/mfd/rk808.c                             |  81 ++++
 include/linux/mfd/rk808.h                       |  81 ++++
 sound/soc/codecs/Kconfig                        |   6 +
 sound/soc/codecs/Makefile                       |   2 +
 sound/soc/codecs/rk817_codec.c                  | 539 ++++++++++++++++++++++++
 6 files changed, 897 insertions(+)
 create mode 100644 sound/soc/codecs/rk817_codec.c

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
