Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BAD778679E
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 08:42:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240159AbjHXGly (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 02:41:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240132AbjHXGlY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 02:41:24 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F24010FA
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 23:41:21 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5007c8308c3so6809198e87.0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 23:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692859280; x=1693464080;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9i9P/L8yrXEBknvUsgFXYcHwitiPfQ3Qj/oqiiME4Lo=;
        b=ZuwcSB5Hus8aOVLW2o1wnZ1BI4QqPj5ZQdLJvmCxifzTiZqutuagzuEA1DOLN2fqeB
         NzydH4s0b9CdTWryqzjY6Oyyej7z3Ypl/h0iWf3Zue4iaFXDfitpR8lcc7zq5GABmG3Q
         8EC2glB64JYIvSNByn3iTzZwLRP1WDLra7orTjgxVvOXuUQKtYkpANjnrBwhuWmqDlLQ
         w9Ix+F+oDFVULIdgL4Xj/BIY4zn89iJd6i4nut7yYQyzwLoWDZcDyKPxG0g4oc+/YRTY
         sOqznOYSYLDbcygVgsUS8whCrJlN0T0eov6qpN5A8HQB7Rf8JE062298n2Y9tF7Cv76g
         unzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692859280; x=1693464080;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9i9P/L8yrXEBknvUsgFXYcHwitiPfQ3Qj/oqiiME4Lo=;
        b=dBWYVzI9h09NRQxmERnxVfXvl6+lDXU0WXTvTavYNM/e9xuBWmMygOZAD1+V05yp+n
         uzThHtJiycIl6F0voxlE0sSlf3gnGL44favKIoo4VSSNMkqjhARbPT/JRVVqvuZstI4C
         rrKAHzmPALebwadNNUWYlX2iQPSHkofX2d1K9Fm7iNZh/2wZzNlBkr0fiz6YtB9mr+L3
         6I2cK/yuGVj+Ldcd0s5RBHLemP52ZvLiHgzbJf+CctCTNyvdpq28smIVWJBDpEZwR0mb
         i+4BRNwGJKtqXpegP2H5OItFAGD/sWMk0zM/SuNlkRcvcuOVph4VvBViYIrkrwPKol8M
         9U2Q==
X-Gm-Message-State: AOJu0YymE8vG7gLa4xIMrjW0fm4AD9Ja17YX/Wuo7H7Xys4h2GN6x47J
        fpSg+prdY9g2r5rcZPxk0JKmtA==
X-Google-Smtp-Source: AGHT+IG/WSER3YY2uiYGuTReO1vmCy0UJBRwseBs67v3EaFPUs/cxt5WDmhCRYsE/Jjdn53EClnBzg==
X-Received: by 2002:a19:2d17:0:b0:4fe:1b7b:3cc9 with SMTP id k23-20020a192d17000000b004fe1b7b3cc9mr9654809lfj.38.1692859279564;
        Wed, 23 Aug 2023 23:41:19 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id h3-20020aa7c603000000b005256ae8494asm10063848edq.17.2023.08.23.23.41.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 23:41:19 -0700 (PDT)
Message-ID: <41cabea8-f694-f860-b3c1-757e9b8119f8@linaro.org>
Date:   Thu, 24 Aug 2023 08:41:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] Title: Select GPIO command source.
Content-Language: en-US
To:     peteryin <peteryin.openbmc@gmail.com>, joel@jms.id.au,
        andrew@aj.id.au, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, eajames@linux.ibm.com,
        johnny_huang@aspeedtech.com, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     peteryin <peter.yin@quantatw.com>
References: <20230823160810.1067102-1-peteryin.openbmc@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230823160810.1067102-1-peteryin.openbmc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2023 18:08, peteryin wrote:
> From: peteryin <peter.yin@quantatw.com>
> 
> Description:
>   The capability to choose the GPIO command source
> between ARM LPC and Coprocessor CPU is supported.
> 
> Test Plan:
> Get Bank gpio command source
>   e.g.
>   cd /sys/bus/platform/drivers/aspeed-command-source/
>   cat 1e780000.gpio-command-source/bank_abcd
>   ARM ARM ARM ARM
> 
> Set Bank gpio command source.
>   e.g.
>   cd /sys/bus/platform/drivers/aspeed-command-source/
> 
>   echo "A ARM" > 1e780000.gpio-command-source/bank_abcd
>   or
>   echo "A LPC" > 1e780000.gpio-command-source/bank_abcd
>   or$
>   echo "A COP" > 1e780000.gpio-command-source/bank_abcd
> 
> Signed-off-by: peteryin <peteryin.openbmc@gmail.com>
> ---
>  .../sysfs-driver-aspeed-gpio-command-source   |  24 ++
>  .../soc/aspeed/gpio-command-source.yaml       |  58 ++++

Bindings are separate patches. And it would be pointed out by checkpatch.

Please run scripts/checkpatch.pl and fix reported warnings. Some
warnings can be ignored, but the code here looks like it needs a fix.
Feel free to get in touch if the warning is not clear.

Please use standard email subjects, so with the PATCH keyword in the
title. `git format-patch` helps here to create proper versioned patches.
Another useful tool is b4. Skipping the PATCH keyword makes filtering of
emails more difficult thus making the review process less convenient.

>  drivers/soc/aspeed/Kconfig                    |   9 +
>  drivers/soc/aspeed/Makefile                   |   1 +
>  drivers/soc/aspeed/aspeed-command-source.c    | 266 ++++++++++++++++++
>  5 files changed, 358 insertions(+)
>  create mode 100644 Documentation/ABI/testing/sysfs-driver-aspeed-gpio-command-source
>  create mode 100644 Documentation/devicetree/bindings/soc/aspeed/gpio-command-source.yaml
>  create mode 100644 drivers/soc/aspeed/aspeed-command-source.c
> 
> diff --git a/Documentation/ABI/testing/sysfs-driver-aspeed-gpio-command-source b/Documentation/ABI/testing/sysfs-driver-aspeed-gpio-command-source
> new file mode 100644
> index 000000000000..4698f47a1f75
> --- /dev/null
> +++ b/Documentation/ABI/testing/sysfs-driver-aspeed-gpio-command-source
> @@ -0,0 +1,24 @@
> +What:		/sys/bus/platform/drivers/aspeed-command-source/\*command\*/bank\*
> +Date:		August 2023
> +Contact:	Peter Yin <peter.yin@quantatw.com>
> +Description:	Get or set the gpio command source for ARM, LPC or Coprocessor CPU.
> +
> +		When read, each file shows the list of available options with bank
> +		that depends on the selected bank file.
> +
> +		e.g.
> +		get gpio command source
> +		cd /sys/bus/platform/drivers/aspeed-command-source/
> +		cat 1e780000.gpio-command-source/bank_abcd
> +		ARM ARM ARM ARM
> +		In this case, gets bank gpio command source.
> +
> +
> +		e.g.
> +		set gpio command source
> +		cd /sys/bus/platform/drivers/aspeed-command-source/
> +		echo "A ARM" > 1e780000.gpio-command-source/bank_abcd
> +		or
> +		echo "A LPC" > 1e780000.gpio-command-source/bank_abcd
> +		or
> +		echo "A COP" > 1e780000.gpio-command-source/bank_abcd
> diff --git a/Documentation/devicetree/bindings/soc/aspeed/gpio-command-source.yaml b/Documentation/devicetree/bindings/soc/aspeed/gpio-command-source.yaml
> new file mode 100644
> index 000000000000..034183667501
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/aspeed/gpio-command-source.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# # Copyright (c) 2023 Quanta Inc.
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/aspeed/gpio-command-source.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

Best regards,
Krzysztof

