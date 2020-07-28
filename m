Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D389B230409
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 09:25:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727087AbgG1HZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 03:25:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727863AbgG1HZJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 03:25:09 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09C83C0619D2
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 00:25:08 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id z18so13656285wrm.12
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 00:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=CVyOqzD82VIbTbSOwbuQWHWMh9I7YtQWOzBVoRyLodQ=;
        b=fFzP6XcpfIKbOqzLN633RcbKQaEYrqDx9NZIAyxMRbtlvCHmfNFzaoyDqDAftrQzkq
         7zm75Ps4/6uVSjbVFQ80njWz+F/t/LLUoLR0b8RTj8V6q4VQDsHQBM5QxnN3ixSinjov
         XwB5Rm2vIQNVv+7KI7v6z5cdRmBPkwtVqRvYJGR0iIJu4rS0v84NtrU4CAo/wHJgiIyQ
         ijRUbBfxZ9y79NR6JT9OJHgT2j+ZdyBt92llChHlXmpBlmgDj0hm2zK2zOwWYvK/pjik
         D3ZbDDUJE5x1ODeYJqipPGA5Zfzu1pQhsTSPDUfe+UV5a5lMt+IiisIdMqOgQx+49ThV
         1pIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=CVyOqzD82VIbTbSOwbuQWHWMh9I7YtQWOzBVoRyLodQ=;
        b=ixruUFtXAa5e/KdgBWKcKapOn0kjLT39mK7kDk32ynjRP/kab2K//Vraf6Z8Eok2d3
         NfV85CNC8tYIibTLIrKD6UQLuGfiRpz9+nteSSlv+oVvYLb/6PuhMhsPaVcxcRXJs7AN
         gt3LnAh3P1zQw/OioJ4L+BZOVTJlVowVkzUj+92IjLGnrGPKDParU1TfkYhnOLMyqhcl
         qDuYhOKfhJXWgLf+mEkMiSqmd1eESF2vaHgeHTQXOIFzzreIX1XHxEQgDcaf+K9tyGT1
         E/B0+sOMsWjY5oiPm8AXeT8UexDpV/avteuY5CXUf7eX5FWjqZqCUJQb4MhFvsCwF2hN
         3oEA==
X-Gm-Message-State: AOAM531VmATKql39L7G88lONurtytX0/++DOlZBOnxQZsYhL6KYlM77V
        tnmesptHRaAwIB/MTSYuOHX+uA==
X-Google-Smtp-Source: ABdhPJz1YpTqlbDUFXDsWyUGZXPtHayhFsSxxtFIDbZ7aMjyWiFvHpMffWGAyH6vvBmAU2ji9WSF0w==
X-Received: by 2002:a5d:6990:: with SMTP id g16mr23041965wru.131.1595921106735;
        Tue, 28 Jul 2020 00:25:06 -0700 (PDT)
Received: from dell ([2.27.167.73])
        by smtp.gmail.com with ESMTPSA id k126sm2849116wme.17.2020.07.28.00.25.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 00:25:06 -0700 (PDT)
Date:   Tue, 28 Jul 2020 08:25:04 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Michael Walle <michael@walle.cc>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Thierry Reding <thierry.reding@gmail.com>,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Marc Zyngier <maz@kernel.org>, Mark Brown <broonie@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH v6 03/13] mfd: simple-mfd-i2c: add sl28cpld support
Message-ID: <20200728072504.GG1850026@dell>
References: <20200725231834.25642-1-michael@walle.cc>
 <20200725231834.25642-4-michael@walle.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200725231834.25642-4-michael@walle.cc>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 26 Jul 2020, Michael Walle wrote:

> Add the core support for the board management controller found on the
> SMARC-sAL28 board.
> 
> At the moment, this controller is used on the Kontron SMARC-sAL28 board.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
> Changes since v5:
>  - none
> 
> Changes since v4:
>  - new patch
> 
>  drivers/mfd/simple-mfd-i2c.c | 1 +
>  1 file changed, 1 insertion(+)

For my own reference (apply this as-is to your sign-off block):

  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
