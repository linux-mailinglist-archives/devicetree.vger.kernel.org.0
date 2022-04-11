Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 968C74FB940
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 12:18:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345215AbiDKKUY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 06:20:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241685AbiDKKUY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 06:20:24 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E1C32628
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 03:18:10 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id p189so9570116wmp.3
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 03:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BphwVBJjBpMqmQLv0M0byMqAM4KgSCASp8z4utuZbwA=;
        b=prJsemH7plzs4ZQ+OhsYhu3hT7608gElhw5ZhxOppzBLIPiUA/FHeCJ9bMNPT828kA
         HO2w1JR08WeCaWzfqHGhUwDdHfm6oVVNy53yh81nwhWALEgljzC6TBFyBpRePN4IOoNT
         CKFIRKZyBP+Y7RzqTLEZrsBH+UxwB7ISprZJjbNjTnCZdu1KPOw07grHfREEM41U5M6R
         aKm7rUxlUyuFkG1dSXHr98G0caTRvffUNR2w2eREwzqKMzGt0Lr9LW8oeAvL0FInGvz2
         wTJEBzjSFw7Dfex71IJ1c7D9m5hgY/Y80YPwVLoaoch5EAbDoM9yDM8ZutnTVg5eQt/V
         n7rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BphwVBJjBpMqmQLv0M0byMqAM4KgSCASp8z4utuZbwA=;
        b=e7sNsjHy6zpnFp/7YJpYZkwJtuLagf2xuBsgq9M/JUOjxSeLGRxuJYwzpGYpOP7+KP
         ovj/ZNOjObNuMCy1vdIpThTR6lgpnzUSlmAx5t8EosAfRnEkIrQAiB2tf2Y7WpohQoNu
         3LysOhB1xsOslmzAboAiLEsxCy2AcTFhGLqH0jtSqUCBmAL9xkckAXJ/TyvHrcXk3c5j
         Fbv1454BYf/hEh7/HyFXZ78+o2o/ySc9YaWE+L/plFxqgcnmRQI9DVk2cGORY1TILgSm
         KLrOhS9o1ASwY1NYYWvJ/cP3LqTWIvqZIHnqH4Mfz5tL/9UqJq96Dgque6EtwsOvFyDd
         4uTA==
X-Gm-Message-State: AOAM531QNrrMh3cNH7uirulbU50v7xUpStH9jZJn+PoVustl9nGSLWyC
        my5VfmFkq+hmikpTO638Sgz5Mw==
X-Google-Smtp-Source: ABdhPJzLlIIfsP2MNbFjOiMDPDX20Kmp7YVg8hJTZYwtZDw7RHhIvSOtAcSltl2it9wRa9TqtX2bAA==
X-Received: by 2002:a05:600c:2258:b0:38e:bbdc:426 with SMTP id a24-20020a05600c225800b0038ebbdc0426mr3669276wmm.184.1649672288935;
        Mon, 11 Apr 2022 03:18:08 -0700 (PDT)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id l3-20020a05600002a300b00207902922cesm9662617wry.15.2022.04.11.03.18.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Apr 2022 03:18:08 -0700 (PDT)
Message-ID: <5c423482-03ee-ab05-b7fa-abac9b37ebb2@linaro.org>
Date:   Mon, 11 Apr 2022 11:18:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/2] nvmem: add driver handling U-Boot environment
 variables
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Tom Rini <trini@konsulko.com>, linux-mtd@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        u-boot@lists.denx.de, devicetree@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20220406143225.28107-1-zajec5@gmail.com>
 <20220406143225.28107-2-zajec5@gmail.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20220406143225.28107-2-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 06/04/2022 15:32, Rafał Miłecki wrote:
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index 555aa77a574d..17a78b1ba077 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -324,4 +324,16 @@ config NVMEM_SUNPLUS_OCOTP
>   	  This driver can also be built as a module. If so, the module
>   	  will be called nvmem-sunplus-ocotp.
>   
> +config NVMEM_U_BOOT_ENV
> +	tristate "U-Boot environment variables support"
> +	depends on ARCH_BCM4908 || COMPILE_TEST

This nvmem provider seems more generic, so why ARCH_BCM4908 dependency here?


--srini
> +	depends on OF && MTD
> +	select CRC32
> +	help
> +	  U-Boot stores its setup as environment variables. This driver adds
> +	  support for verifying & exporting such data. It also exposes variables
> +	  as NVMEM cells so they can be referenced by other drivers.
> +
> +	  If compiled as module it will be called nvmem_u-boot-env.
> +
>   endif
