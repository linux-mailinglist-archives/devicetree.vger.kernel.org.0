Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A400461616
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 14:19:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377467AbhK2NWP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 08:22:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232443AbhK2NUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 08:20:13 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B700C07E5EC
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 04:01:55 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id j140-20020a1c2392000000b003399ae48f58so16598974wmj.5
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 04:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=uweCsg8C2SBajHvm8AKg9aw0vkXPXn6fvcrsFtDM/+w=;
        b=YDOYhJjX7Iyna0jxiHtNazzA4BmzwsZsC7W7ng3gatT/L2TEbmtLfbCTJhYuovBKg2
         fAUpKRfKUazhiJHtlhU4s1wHkfGi5f8vFJQvo7eDKRFSKm6IpbmiQqHAKt+TbRH7ct9k
         exngdcFibxw+jMswHcayjjDpy9Rb28kyS0IuwgZOFKieBg3mtkApPXc/1ydq3a3nZZmz
         1MiF6mEAh5/GMwCXdOilE5FvtqpLqy8REDLkelXXJxkv3IbuxmxWgThtv7b8pUBxCCts
         4ukaGcV7eC2ls6IR2N7Ub5d9SIZ0oDTwUBf0McON4me8azRzH6kZXWPohGFv0cxzchUM
         jckg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=uweCsg8C2SBajHvm8AKg9aw0vkXPXn6fvcrsFtDM/+w=;
        b=BleRmxMwDgzDfxn93PdCWnDPZhOwsfJVzzej+V/mRmnf/ubU+H0kEDWEzh3gWR6SgK
         AU5jFBDXDII4cg+86BY0pc6/1OeUJLp8/pYi5gfdWULb2VnT6BcIAthkc9Sw3xowms3m
         6j89GfpZgJDWUfv9ziANq+fl2JFDf/CObij1+GZ/kjjPak+Ccc1i1FcqVsE8Z0KHhuWn
         eEDNJQrIWDfGE5SYc/pVXraGtK1k4d7XXUqDSoOfARSoC25vWPLaXK6xZwMYzW6lXtvn
         Gdzo1zqQH91Lc270WkY2gE2fOXRoN+UUXydt6XL2hGbAJfom6IfhCwx0SONRN7Y8jHIr
         thSQ==
X-Gm-Message-State: AOAM5312xLzqLYXAgVfsYH6ENvU0H0caD6sp2Zi83bkvZr66taCxTIyZ
        uvaiEjptLNNY3s7VRLbihaa9Qw==
X-Google-Smtp-Source: ABdhPJxXeOaBN84ZRyNW+2b2TC2uaI9IKgTsh1VIFHIDU0HmrPmSRUwo7d3GSAEeroFnvTIiojTdqw==
X-Received: by 2002:a1c:a905:: with SMTP id s5mr36902877wme.150.1638187313932;
        Mon, 29 Nov 2021 04:01:53 -0800 (PST)
Received: from google.com ([2.31.167.18])
        by smtp.gmail.com with ESMTPSA id 10sm17624629wrb.75.2021.11.29.04.01.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 04:01:53 -0800 (PST)
Date:   Mon, 29 Nov 2021 12:01:51 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        lukas.bulwahn@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-power@fi.rohmeurope.com
Subject: Re: [PATCH RESEND 3/4] mfd: bd70528: Drop BD70528 support
Message-ID: <YaTBL6Vtaxrnjhgb@google.com>
References: <cover.1637066805.git.matti.vaittinen@fi.rohmeurope.com>
 <cf7dfd98b3403ad363b2b48b57bdbfd57a6416cb.1637066805.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cf7dfd98b3403ad363b2b48b57bdbfd57a6416cb.1637066805.git.matti.vaittinen@fi.rohmeurope.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Nov 2021, Matti Vaittinen wrote:

> The only known BD70528 use-cases are such that the PMIC is controlled
> from separate MCU which is not running Linux. I am not aware of
> any Linux driver users. Furthermore, it seems there is no demand for
> this IC. Let's ease the maintenance burden and drop the driver. We can
> always add it back if there is sudden need for it.
> 
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> Acked-by: Lee Jones <lee.jones@linaro.org>
> ---
>  drivers/mfd/Kconfig              |  17 --
>  drivers/mfd/Makefile             |   1 -
>  drivers/mfd/rohm-bd70528.c       | 314 -------------------------
>  include/linux/mfd/rohm-bd70528.h | 389 -------------------------------
>  include/linux/mfd/rohm-generic.h |   1 -
>  5 files changed, 722 deletions(-)
>  delete mode 100644 drivers/mfd/rohm-bd70528.c
>  delete mode 100644 include/linux/mfd/rohm-bd70528.h

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
