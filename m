Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56D0A3891F8
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348702AbhESOwg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:52:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354848AbhESOwf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 10:52:35 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21A67C061763
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:51:16 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id z137-20020a1c7e8f0000b02901774f2a7dc4so3476142wmc.0
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 07:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=nvJsZjtlKlLIH6fdR/8rxsvo7mslRnhXMBMDcMwpR/k=;
        b=Gf+NBbClaX3c/oHpNH/owQaNKi5li/Aj7dV8g56asHuHG8FuUYgXdJJ0WQkYs7Zuab
         8YBTtfKAXsyXbD1S74Ly5jUECBkhRLs/GEStkBFfgTriUGMItv82pNpCfb695A+PDuwC
         FTCJgQFfa0o4psLOe/ShI0f3WMxXEH+AZnXF2+dR+iDDzhHyTY1lokDpxTmBLZ1G6qYx
         jPiCaW0C9Fua7d3QJ+81N8s2E0ey6cUSj8q84G9YvZgVpcmQ7jUnKPTeCplK2kAYUDhY
         JOhGRDNerL0KmPZzd18OpFLAr9gHJ3y9zgi7DbpTWxmbGbHIdaHtbTD+aRNlOzK/BefW
         VVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=nvJsZjtlKlLIH6fdR/8rxsvo7mslRnhXMBMDcMwpR/k=;
        b=Ug+POYJ8WUdr9c7OLgu3ocVaQof4ZLzEkMsnTzQ4f8uSMGs9qxZ9ZR881p45j3FsK8
         KdOEv74ZuT6JNlk/NN0qEVIV382Y1DJoZGm5d/zrvajLqEGKdHNoCmZ92MgFpk3BKtK+
         sBO11apqqgK1M4/ZEOKqiqs2dAfENeZ6LMlog9EMKV09/nWpodTkNda73pEucwN6FaDe
         D1fWslSnAE9C5DmXzTUY1gvYdDWU8zIgIBPUGoHM1eea77hor6Ag+vkbTSHKvuoSoegH
         As0BJn7jxov1FUBnDKVsHiuCh7Hl4l6I5j8SyiPo9+a4fugUd+k5FO49rUvKc4+m8K4F
         EREA==
X-Gm-Message-State: AOAM530ys70s6Ke8WY4c86kwF21fUuzEPh60C2ZnN89w8NsPgFqC0Y9z
        kiCFpIC6xIMU62J/Jg2BquTRcw==
X-Google-Smtp-Source: ABdhPJzw2ZX1L7rkBrbwUJlJD+6pDoXl8RrmUaoL4wF6IzOTk9tjI5t1y2Exc8dabwsaE4wIB0Qnmw==
X-Received: by 2002:a05:600c:21c3:: with SMTP id x3mr3775449wmj.131.1621435874758;
        Wed, 19 May 2021 07:51:14 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id t16sm17810288wrb.66.2021.05.19.07.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 07:51:14 -0700 (PDT)
Date:   Wed, 19 May 2021 15:51:12 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     cy_huang <u0084500@gmail.com>
Cc:     lgirdwood@gmail.com, broonie@kernel.org,
        daniel.thompson@linaro.org, jingoohan1@gmail.com,
        b.zolnierkie@samsung.com, pavel@ucw.cz, robh+dt@kernel.org,
        dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, cy_huang@richtek.com
Subject: Re: [PATCH v7 4/4] backlight: rt4831: Adds support for Richtek
 RT4831 backlight
Message-ID: <20210519145112.GG2549456@dell>
References: <1621262161-9972-1-git-send-email-u0084500@gmail.com>
 <1621262161-9972-4-git-send-email-u0084500@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1621262161-9972-4-git-send-email-u0084500@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 17 May 2021, cy_huang wrote:

> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Adds support for Richtek RT4831 backlight.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
> ---
> since v7
> - Fix typo 'common' to 'commonly' in Kconfig description.
> ---
>  drivers/video/backlight/Kconfig            |   8 ++
>  drivers/video/backlight/Makefile           |   1 +
>  drivers/video/backlight/rt4831-backlight.c | 203 +++++++++++++++++++++++++++++
>  3 files changed, 212 insertions(+)
>  create mode 100644 drivers/video/backlight/rt4831-backlight.c

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
