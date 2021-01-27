Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABD7830593F
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 12:09:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236441AbhA0LIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 06:08:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236270AbhA0LHJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 06:07:09 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8417C0613ED
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 03:06:28 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id a1so1449082wrq.6
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 03:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=VeqjA/wicjimRdjKgW3gCPCLjpuPLB3M16o7vA4ERuM=;
        b=oMt7K9zf2itl851ZOGUZzulzwVl13zZrK+/kOtSkpAM2PVllIIufXsJly+t014S6JZ
         iFdXDmnJLyOeF5pnmuMj09nA/DqxuuxL5NM2xmee/nvzucRIzeUcjyAYcrWp487x9TMC
         vSvwxjis5JqI15fmZ7yGF5OELCtu6IRaFUH+O09BlvhQC8HvbeBkLhRrIoliLZNxF0hG
         RgCH6kPF4EnqOWMxJWsFZbS5+e7vp3XgBB0Ahx3wElsph7d8ruRC80SGofX1qQ2RMHDV
         ScSEHmNsor/mMHhL76BYFdy9oH8+/qx8ieIO0Os7mvhaOMnIMdTuKCgt0MC93xX2/PTU
         9Xwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=VeqjA/wicjimRdjKgW3gCPCLjpuPLB3M16o7vA4ERuM=;
        b=L3MqKTGdrmQ+s4x/X1zSJvClaNXMZAs1pCm8TJB//swY16iGwG1fm0UIVpVgrAvEt/
         RwkvSjJFwxV7MeFzFa9ZLPNr2rmV0DGNJ3L9y69PLg3Hkkxs4PDSdEwvs7Fgd5Ut4Klh
         mWYXHYQc0H/2hfHdGYTiGlzdBPHDo8jYb331cjutVlZc3y/4JGDoeeFAVgjSEk9NSxqv
         EzgXpvX4IMk0c5d5TfachETyhPxALUD9IvHzba/4pRto16c/p3sGyQP8Mtt5+HwxRgcO
         dSIaL6tc5izrePcKr5gEG7fjSPQDiSkp463dEcOMxPibUBb1Dmi2Hg+hWA2QI6BSJzja
         psFQ==
X-Gm-Message-State: AOAM533ECkFc/SpoB/ricY7djVOwkSgyqI11aajKFVPsV2eRf/nISq3/
        VgFw84PzqMY4nTGzUPtCEOqDLQ==
X-Google-Smtp-Source: ABdhPJwEm7EwrekmzyrqrvDmlkk06yBK6A47PQ1Kb8BOXn1oj/MishxBm8lbOfrL87DXPaGxZAtSag==
X-Received: by 2002:a5d:4386:: with SMTP id i6mr10282565wrq.411.1611745587466;
        Wed, 27 Jan 2021 03:06:27 -0800 (PST)
Received: from dell ([91.110.221.188])
        by smtp.gmail.com with ESMTPSA id s4sm2456879wrt.85.2021.01.27.03.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 03:06:26 -0800 (PST)
Date:   Wed, 27 Jan 2021 11:06:25 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mayulong <mayulong1@huawei.com>,
        Rob Herring <robh+dt@kernel.org>, devel@driverdev.osuosl.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 19/21] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210127110625.GJ4903@dell>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
 <97696bbe44202ae4af15c4f799de65dca7de6d37.1611212783.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <97696bbe44202ae4af15c4f799de65dca7de6d37.1611212783.git.mchehab+huawei@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Jan 2021, Mauro Carvalho Chehab wrote:

> This driver is ready for mainstream. So, move it out of staging.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../mfd}/hisilicon,hi6421-spmi-pmic.yaml         |  0
>  MAINTAINERS                                      |  7 +++++++
>  drivers/mfd/Kconfig                              | 15 +++++++++++++++
>  drivers/mfd/Makefile                             |  1 +
>  .../{staging/hikey9xx => mfd}/hi6421-spmi-pmic.c |  0
>  drivers/staging/hikey9xx/Kconfig                 | 16 ----------------
>  drivers/staging/hikey9xx/Makefile                |  1 -
>  7 files changed, 23 insertions(+), 17 deletions(-)
>  rename {drivers/staging/hikey9xx => Documentation/devicetree/bindings/mfd}/hisilicon,hi6421-spmi-pmic.yaml (100%)
>  rename drivers/{staging/hikey9xx => mfd}/hi6421-spmi-pmic.c (100%)

Replied to an earlier submission where I was able to reply in-line.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
