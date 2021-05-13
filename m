Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D350837FA9B
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 17:23:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234834AbhEMPYa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 May 2021 11:24:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234875AbhEMPYK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 May 2021 11:24:10 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBBF3C061574
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 08:22:57 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id y12so19979270qtx.11
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 08:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=JPchFjYUjZOX2g5buK/IDjU5s612n8asJo964y6YtRY=;
        b=iMVPwUOW8ZSt6me+fLPuRlKburXABhJjZ3HwjZvIsSJISRv2OLUTbrRwujwexoBs0I
         Kpg/x2hcScwGtoEuNhKKZ34UlSEPfhWgUcQCOVeSGHzAtVvS4uLkwQJi5cpW+lXT0KZb
         0ghMTnRmCijH1jM/E7B9TWnzhecHKa3B5YAHsQDd9MzWuWJbsC7S40PbELmL0Vat+HAt
         VF1CxzLFt9m3CFL1CKAAo3iui15gqObrDm11wUagXQ62/yzT3TV9IWYtFuX/aVeJlwnT
         AhQeLR6zhNAtUQeaTlU0WAuVj3/xWzrAUkyLJhhCYCiY0smh/w3rlKzfAGqlb1Grt5iS
         2hNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=JPchFjYUjZOX2g5buK/IDjU5s612n8asJo964y6YtRY=;
        b=RC+nwgql8hFbe+9nFiwujEygN38324Z0AHu2fBPHxQGTe98s2yVgUqq6WyUDLRx0q6
         XtK7zKHKw/2iWF5GdHiOQN7lMl4nAtWLr1xx+L2XWLnTb5a24jM9s5kd+lYzmV8FuXws
         LtPuoJEOQFI7W6NPADr1rzYKsSmcueCIGWVNCdS2ZO/noWop14tleZxTSkSzkdX9Wf/T
         NuOLUj8yLv1w/X6HjZhffKnsGcil3RgwXXB3G0PH463gMa8TjZdNtHBL08d832T6OVwB
         yVqKHe1sPXUox1xZRC2b1+rkxpSmznoImOwQDvVNhwBeWl/Rd5FHW54TkUYFpYvkUHGB
         x1LQ==
X-Gm-Message-State: AOAM532HPpgfVqIyYOOu0ds2utrSvr7u2J1RO7SnlprFp/REdY6bKdv0
        QSAWn2mtLWwrkQwVBSq5B+E=
X-Google-Smtp-Source: ABdhPJylOUlSsA5visDiw/NRnf6SzCPTxIHwktzXIKL5dJB0sRutvEgxOQoD5W4PBp21FUvI4A4dew==
X-Received: by 2002:a05:622a:2c1:: with SMTP id a1mr15287322qtx.361.1620919377116;
        Thu, 13 May 2021 08:22:57 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id x194sm2665414qkb.79.2021.05.13.08.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 08:22:56 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date:   Thu, 13 May 2021 08:22:55 -0700
From:   Guenter Roeck <linux@roeck-us.net>
To:     Boris Lysov <arzamas-16@mail.ee>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v3 2/3] dt-bindings: watchdog: mediatek: add support for
 mt6577 SoC
Message-ID: <20210513152255.GB3452915@roeck-us.net>
References: <20210513013515.31329-1-arzamas-16@mail.ee>
 <20210513013515.31329-3-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210513013515.31329-3-arzamas-16@mail.ee>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 13, 2021 at 04:35:14AM +0300, Boris Lysov wrote:
> Add support for Mediatek mt6577 SoC to device tree binding
> documentation.
> 
> Signed-off-by: Boris Lysov <arzamas-16@mail.ee>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>  Documentation/devicetree/bindings/watchdog/mtk-wdt.txt | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> index e36ba60de829..f5a5404523a3 100644
> --- a/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/mtk-wdt.txt
> @@ -5,6 +5,7 @@ Required properties:
>  - compatible should contain:
>  	"mediatek,mt2701-wdt", "mediatek,mt6589-wdt": for MT2701
>  	"mediatek,mt2712-wdt": for MT2712
> +	"mediatek,mt6577-wdt": for MT6577
>  	"mediatek,mt6589-wdt": for MT6589
>  	"mediatek,mt6797-wdt", "mediatek,mt6589-wdt": for MT6797
>  	"mediatek,mt7622-wdt", "mediatek,mt6589-wdt": for MT7622
> -- 
> 2.20.1
> 
