Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98A205AF7B5
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 00:11:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbiIFWLc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 18:11:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbiIFWLb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 18:11:31 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B1BAA1D2D
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 15:11:28 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id cu2so26473991ejb.0
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 15:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=KBxZTl3QLBPzQvK7Avwrhh94NGQfx9l6fJMpQ6cilkA=;
        b=BkGdOuXQ1cLS+b0NYKo/64meSchT279vzK9adoSJ6jORvCkmT2tG50Zgpod7ru3pnz
         BgZHQ1+ZQE1VagOuTagUckuZOlIeQv1bWly/8d/MBrPpFZB8OukOFS1ilcqVr13a6T3h
         9RmWXfO5zfGDqT2ll9Z9chRz1o/hwNG8SPmbE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=KBxZTl3QLBPzQvK7Avwrhh94NGQfx9l6fJMpQ6cilkA=;
        b=ph2fEbXXLVxexANFO0X8vFfN2xDGyJjSxG+6rdhsIvgHpJFm9NRTa8iYwR2KCk4FJP
         29tpItg2i5DpvhJMXyQlv3cWfbpENAwogOZ6NCWDBEo3HSD+7tcFkvjG50OvfHzuFqkg
         4Z4w6QhzvhGJs3AKiIgIGhHKqo91Rws8txGQ1ZHktmM3JfFI8mhoGPWc/aOIs6NR115D
         arVM5Lqsz0U6Bmgxu2yM350Qz6dZ3c5zUgCoIlWwc0K0mFA8ZCuFjY9z2RB4/NN8HuXu
         xzKeRsLKPzS9sn3jH71ds3YaYRj+6CCftKTaZ4nFItpjYuXuvnqh8mghj5w8ZMgvRMxO
         N06A==
X-Gm-Message-State: ACgBeo1WwD9YXghsZClvVO3IQqSUzRM+QRqb3CYq5XLVB60d6L2puCvI
        KnUX0FhsuRlpuEUwa656/kqI7w==
X-Google-Smtp-Source: AA6agR4sr7CY6ohDCUgo1cuFeiMGJDrY8VIlBJdET91T+NWk5F0EUKnaU4lX2OEjAoB2NiRsPDczdg==
X-Received: by 2002:a17:906:eec7:b0:733:189f:b07a with SMTP id wu7-20020a170906eec700b00733189fb07amr385666ejb.230.1662502287053;
        Tue, 06 Sep 2022 15:11:27 -0700 (PDT)
Received: from [192.168.1.149] ([80.208.71.65])
        by smtp.gmail.com with ESMTPSA id 12-20020a170906318c00b0073923a68974sm7083488ejy.206.2022.09.06.15.11.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 15:11:26 -0700 (PDT)
Message-ID: <db3b8d51-3350-7823-a462-6f81c4cdc5f1@rasmusvillemoes.dk>
Date:   Wed, 7 Sep 2022 00:11:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 4/7] lib/vsprintf: Add support for generic FOURCCs by
 extending %p4cc
Content-Language: en-US
To:     "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        asahi@lists.linux.dev, Bartosz Golaszewski <brgl@bgdev.pl>,
        devicetree@vger.kernel.org, Hector Martin <marcan@marcan.st>,
        Jonathan Corbet <corbet@lwn.net>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
        linux-gpio@vger.kernel.org, Petr Mladek <pmladek@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sergey Senozhatsky <senozhatsky@chromium.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        Sven Peter <sven@svenpeter.dev>
References: <YxdInl2qzQWM+3bs@shell.armlinux.org.uk>
 <E1oVYUS-005CmS-IA@rmk-PC.armlinux.org.uk>
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
In-Reply-To: <E1oVYUS-005CmS-IA@rmk-PC.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 15.19, Russell King (Oracle) wrote:
> From: Hector Martin <marcan@marcan.st>
> 
> %p4cc is designed for DRM/V4L2 FOURCCs with their specific quirks, but
> it's useful to be able to print generic 4-character codes formatted as
> an integer. Extend it to add format specifiers for printing generic
> 32-bit FOURCCs with various endian semantics:
> 

>  Documentation/core-api/printk-formats.rst | 32 +++++++++++++++++++++
>  lib/vsprintf.c                            | 35 +++++++++++++++++++----
>  2 files changed, 61 insertions(+), 6 deletions(-)

Please also update lib/test_printf.c with a few test cases when
modifying/extending vsnprintf().

> diff --git a/Documentation/core-api/printk-formats.rst b/Documentation/core-api/printk-formats.rst
> index 5e89497ba314..22c33398ec02 100644
> --- a/Documentation/core-api/printk-formats.rst
> +++ b/Documentation/core-api/printk-formats.rst
> @@ -625,6 +625,38 @@ Passed by reference.
>  	%p4cc	Y10  little-endian (0x20303159)
>  	%p4cc	NV12 big-endian (0xb231564e)
>  
> +Generic FourCC code
> +-------------------
> +
> +::
> +	%p4c[hnbl]	gP00 (0x67503030)
> +

Typo, I think. hrbl ?

Rasmus
