Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B5252F631E
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 15:29:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728919AbhANO3K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 09:29:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725878AbhANO3J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 09:29:09 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56DB4C061575
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 06:28:29 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 190so4712983wmz.0
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 06:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=MPTk+HmqdCjdjidJtOd0WIYIXVB1tbYmSpL5fOenu7I=;
        b=U4OkCt2msRgYdPGx2VgRmbl4PmL6wgg4w68xLUYwLKxSnkNAk9cpI68qtYgN1RhPEQ
         YSFAIw4sIz9sWUDhNl2VC8ZVg5TiWgmtv3ynMMDJDgcMvnB37SS1SbrtMOmm1W3iDbT6
         36a1uFlgSWrXqbDvmwXjmRxUwoWozCfhZDSLbBWP/vNiDZqsrBTF1dcf+Ww+ytZ6dTed
         Tho5d/6VxHg/KDbIvb8MK6WEY3UmLrAc+MdUtGhwqP41N0UE1rJpZWl0mAFImNQVZ+ir
         PTi+8Kk9ZnzzY1XKJ9NPxBHLLzfdfwEWPtVhD4mHh6qg96xSuu5dRHWTY3CGCoBOw1WP
         BA3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=MPTk+HmqdCjdjidJtOd0WIYIXVB1tbYmSpL5fOenu7I=;
        b=fc6d3uU3NjBBCKUGDxFuaUDzQXkXB9QOC2VgpuCq9denog6mUbW8eRO75cG9/7QhaJ
         YBPTo1Dn8ztmI4GQfuGDK3biqmoZJ9AHdseXQVTleAJT70XMMFRAHt9zyXhqS6YGZk8A
         SjlBfVYA0KGZJlBX/79TbnO/haqB5md8uO2yxtu00hrrY3qFLY/O10UZDjgpvBabrQuN
         zrt2VDodSAqSEXaEYmVl9nUyb9vAkYLYieHyzrpZxyc2/YxZhtFPKSJAA836gGdHzUB1
         qfnGyef71SEQ++VryXVdTo4gKSS16ML7EFsIrF5/5wnxIymWuWMqmcrrElcUhb57pjBW
         jHuA==
X-Gm-Message-State: AOAM531PDqGX7UcoPArwM22gQf3pLYpsWAcGNBiYahhluHfMaU1Tx9Gj
        4vr/riakSH07oLLuhfIa5P+tIA==
X-Google-Smtp-Source: ABdhPJyYklvkpRTs6jXoawkcBdR4XMRZtdbAWn4oVTs/qxrQ/dB/X+L8fSSl9mbEg3qnrsoyckjcww==
X-Received: by 2002:a7b:cd91:: with SMTP id y17mr4250808wmj.5.1610634508112;
        Thu, 14 Jan 2021 06:28:28 -0800 (PST)
Received: from dell ([91.110.221.178])
        by smtp.gmail.com with ESMTPSA id i16sm9557842wrx.89.2021.01.14.06.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 06:28:27 -0800 (PST)
Date:   Thu, 14 Jan 2021 14:28:25 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Dan Murphy <dmurphy@ti.com>,
        Sebastian Reichel <sre@kernel.org>, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 2/3] mfd: Add driver for Embedded Controller found on
 Acer Iconia Tab A500
Message-ID: <20210114142825.GA3975472@dell>
References: <20201228160547.30562-1-digetx@gmail.com>
 <20201228160547.30562-3-digetx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201228160547.30562-3-digetx@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 28 Dec 2020, Dmitry Osipenko wrote:

> Acer Iconia Tab A500 is an Android tablet device, it has ENE KB930
> Embedded Controller which provides battery-gauge, LED, GPIO and some
> other functions. The EC uses firmware that is specifically customized
> for Acer A500. This patch adds MFD driver for the Embedded Controller
> which allows to power-off / reboot the A500 device, it also provides
> a common register read/write API that will be used by the sub-devices.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/mfd/Kconfig        |  11 ++
>  drivers/mfd/Makefile       |   1 +
>  drivers/mfd/acer-ec-a500.c | 202 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 214 insertions(+)
>  create mode 100644 drivers/mfd/acer-ec-a500.c

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
