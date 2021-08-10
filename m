Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E35CC3E54A1
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 09:53:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237667AbhHJHxs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 03:53:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237666AbhHJHxr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 03:53:47 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25F4FC0613D3
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 00:53:26 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id l34-20020a05600c1d22b02902573c214807so1267701wms.2
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 00:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=q5Khjq0P5dUoi4+YoKsNSXqU9T/AqXo0eDbT+tyOlOw=;
        b=LafTDgc2DN3RcqO6tTAoD3+Cq7kpvrALwXF0K+WUYXqjOabk/n1f38wRxaBYOSWQZd
         sGuQesIt/6/r+zg7ex6u3bDbHOiQALbnxJbne6eSCGtuLWgNTQNk0N7XPoYpqcsn3paB
         Lc7+Kz3ud4kxkfmI1QVcHW94FZwJNi4n+2uaC/cTXjnfuyJW6f+8bD1bZe2HAeHM1gr4
         cEUVHFj7TsEiT3Fvg2SyIkkg6nAm9Siz31hy/nRtoIAXQPTybNYo77bh4hJr1bwxTHG2
         4NrI7PFgJDO4VdE5ops5VuvPf6iCJWeT1qYtN+gJua9K6jgjmB2pQnttEG6YiJ5aA3xt
         aujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=q5Khjq0P5dUoi4+YoKsNSXqU9T/AqXo0eDbT+tyOlOw=;
        b=OGvleNgvw/feKRUJBkIyXyelmaMe3Rclbl6sNzbHjhB/JKj2M4t+0ALjPnC7iohehU
         iwiHZDnbmo3/7p88gYgWPWThIqSm1nELQ1C8MVp0vGTM4AnF7pCOoomS7fiUW9KmZPtf
         SHdn/V9VM7TPIZLndsubiPS0jjHbT/JrgM32hvgckwp80yrAcmZ4sHLtSBsRQarfDcro
         rjPhMwXsda/lN/Sih1AedUBng8Litt9G3JhNykxuyvgE9Ko4+7Au1mWDY+urJQyrXbCQ
         SUGX4feSy3jL2ddEGMx2xbHBT9JY3CkbB+kAdhSyaZrd+n1a/jQbn+O0ILVcs0k/v/Qh
         hpqg==
X-Gm-Message-State: AOAM5313RNq6kxIL1JP4e6CHm/YQrDkzOz5Bu6Yfnu0tqJVbPYZcoKsq
        qj3722YhrvFhqeyf/TzKo6LikA==
X-Google-Smtp-Source: ABdhPJwlgmtCDjJTJh+p90vQ43ECslBWsc4t7nliVX+YUVzINdgdRAl9M4yUdcAej9aVeH6dFgBg4w==
X-Received: by 2002:a1c:43c1:: with SMTP id q184mr3074006wma.173.1628582004750;
        Tue, 10 Aug 2021 00:53:24 -0700 (PDT)
Received: from google.com ([95.146.142.85])
        by smtp.gmail.com with ESMTPSA id o24sm1826269wmm.37.2021.08.10.00.53.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Aug 2021 00:53:24 -0700 (PDT)
Date:   Tue, 10 Aug 2021 08:53:21 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Alistair Francis <alistair@alistair23.me>
Cc:     robh+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        linux-imx@nxp.com, kernel@pengutronix.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        alistair23@gmail.com
Subject: Re: [PATCH v10 02/11] mfd: simple-mfd-i2c: Add a Kconfig name
Message-ID: <YRIwcXggWWj1+DDf@google.com>
References: <20210807103940.152-1-alistair@alistair23.me>
 <20210807103940.152-3-alistair@alistair23.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210807103940.152-3-alistair@alistair23.me>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 07 Aug 2021, Alistair Francis wrote:

You need a better commit message.

What are you doing?
Why are you doing it?
What happens if you don't do it?

> Signed-off-by: Alistair Francis <alistair@alistair23.me>
> ---
>  drivers/mfd/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

I guess there's no harm in it.

That does mean you'll need a bespoke defconfig to run your build,
which is not advisable for generic maintenance and testing purposes.
What architecture does your H/W operate on?

> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 6a3fd2d75f96..09a939f8b7ff 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -1176,7 +1176,7 @@ config MFD_SI476X_CORE
>  	  module will be called si476x-core.
>  
>  config MFD_SIMPLE_MFD_I2C
> -	tristate
> +	tristate "Simple MFD device"

That's not right.  You're saying:

  "Simple Multi-Functional Device device"

It should be something more like:

  "Simple Multi-Functional Device support (I2C)"

>  	depends on I2C
>  	select REGMAP_I2C
>  	help

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
