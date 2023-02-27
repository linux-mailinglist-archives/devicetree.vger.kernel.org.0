Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA7736A4729
	for <lists+devicetree@lfdr.de>; Mon, 27 Feb 2023 17:38:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbjB0Qi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Feb 2023 11:38:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230078AbjB0Qi4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Feb 2023 11:38:56 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FC7CA5C8
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 08:38:53 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id r7so6887401wrz.6
        for <devicetree@vger.kernel.org>; Mon, 27 Feb 2023 08:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=uD+EVkesVVVN/pvsUFcEHGAqIsHef4wQ6GACIqmb4ZM=;
        b=NVNN6qlXc+YgTK+z5Mnw6Yn54DtLfWOrdeVVO5RKW8X77jsHwVfiZnFgfeOQlyyp9v
         6hjmAa7S8GOyS1XRjreKpsIEFI/xGesT6iaVxTwN6Ort+D+EXXmtOHpbnMJOGZKWxJZq
         eZiQi7PqS1MR3uNHLSe6sacGNsIhNAJW/a4AN4s2EG3Xo1rPDt07U1WzPUFs/pMjGGHn
         TlfP4lmfRpZRabrMoBNDeL5qMGtMJFqonHe685PJklR5AfNwmGdLkCTHTXRTYWaxt1X6
         r0Dkz//I/XLYyIGpnZ53vVicp4dBzLaVWxaG+TVknkBoJm44sAzxftv/2v6FZUW0NSVL
         Ucmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :references:cc:to:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uD+EVkesVVVN/pvsUFcEHGAqIsHef4wQ6GACIqmb4ZM=;
        b=POwcCnJmf7qdEv4cc2HVPXkh8bpRHimFumr/5qWTJGsUioCMQNGA+nyoK/9ooST3Mk
         oFxraB6Yurjvq17KY/S93aIOw9LgmLeZ6z/U00j67ZloosuE407h0erB6ZVtb4h/EYWn
         TlepJ9rhbP2Y7joF1K1IkmDlh6LRRQ7voNaY+nXX+QF8E51ea1Jmqt9xIjLRhb2TanQh
         x8J0c+BIWiU9o5kutRvtCUtjE2ixrrlHg7rDPwadbCYsl9C/zh9eX1JRAJKVZF4Znmyt
         n3+QpbPzv91Yc9r5X5cjpcQheXnuAHQgXTJ/wL0RBRY+IZRAzDGxGSYP6OQXR4kkRAW6
         0iPw==
X-Gm-Message-State: AO0yUKURrgzm+ayUyfFJDg42dral3XM3Eg4ALW0cqBpylsa+he9e6Kqi
        xWapnjcs3aUrMr2W71yYGEU+TA==
X-Google-Smtp-Source: AK7set8XTUCW4q+OH9DNHxx8x1vJLWfp3/yPovpuchhX38xMzhKKCnkqecloNAwpJv/urlKt0Px2bA==
X-Received: by 2002:a5d:408e:0:b0:2c7:deb:c61 with SMTP id o14-20020a5d408e000000b002c70deb0c61mr14227353wrp.39.1677515931493;
        Mon, 27 Feb 2023 08:38:51 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:fbee:23cf:fdf3:bad4? ([2a01:e0a:982:cbb0:fbee:23cf:fdf3:bad4])
        by smtp.gmail.com with ESMTPSA id n16-20020a5d4850000000b002c6e8cb612fsm7354785wrs.92.2023.02.27.08.38.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 08:38:50 -0800 (PST)
Message-ID: <33b58877-5167-c453-e686-1d10cdca66c0@linaro.org>
Date:   Mon, 27 Feb 2023 17:38:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v1 0/3] Meson A1 32-bit support
To:     Arnd Bergmann <arnd@arndb.de>,
        Dmitry Rokosov <ddrokosov@sberdevices.ru>
Cc:     Alexey Romanov <avromanov@sberdevices.ru>,
        Rob Herring <robh+dt@kernel.org>,
        krzysztof.kozlowski+dt@linaro.org,
        Kevin Hilman <khilman@baylibre.com>, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@sberdevices.ru
References: <20230222115020.55867-1-avromanov@sberdevices.ru>
 <8e5f9bfa-d612-cd43-d722-d04c40938c62@linaro.org>
 <20230227142809.kujmrraf3pcdhqyn@CAB-WSD-L081021>
 <f3e42012-609c-4085-b4f4-bd32bfc34aff@app.fastmail.com>
 <20230227155100.hhl4yvkyfqfyoa6h@CAB-WSD-L081021>
 <a5fa8b23-4ec8-475f-be5e-538b53d6f82d@app.fastmail.com>
Content-Language: en-US
Organization: Linaro Developer Services
In-Reply-To: <a5fa8b23-4ec8-475f-be5e-538b53d6f82d@app.fastmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/02/2023 17:15, Arnd Bergmann wrote:
> On Mon, Feb 27, 2023, at 16:51, Dmitry Rokosov wrote:
>> On Mon, Feb 27, 2023 at 03:58:50PM +0100, Arnd Bergmann wrote:
>>>
>>> I would argue that is a problem with buildroot, and using a 32-bit
>>> kernel is not something we should encourage over fixing buildroot
>>> to do it right, or building the kernel separately from the rootfs.
>>>
>>> We do allow building support for a couple of ARMv8 SoCs in 32-bit
>>> mode, but that is usually because they ship with a 32-bit bootrom
>>> and cannot actually run a 64-bit kernel.
>>
>> To be honest, I didn't know about this principle. It looks like a very
>> rational approach "start from max supported bitness".
>> Based on overall maintainers opinion, we have to prepare a patch for
>> buildroot to support compat mode :)
> 
> That would be great, thanks a lot!
> 
> For what it's worth, the main arguments in favor of running a 64-bit
> kernel with compat user space over a 32-bit kernel are support for:
> 
> - larger RAM sizes without highmem (most 32-bit kernels only
>    support 768MB of lowmem, and highmem sucks)
> - larger virtual address space (4GB vs 3GB or less)
> - CPU specific errata workarounds (arch/arm/ only has those for 32-bit cpus)
> - mitigations for common attacks such as spectre
> - security hardening that depends on larger address space
>    (KASLR, BTI, ptrauth, PAN, ...)
> - emulating instructions that were removed in Armv8 (setend, swp, ...)
> 
> Most of these don't apply in userspace, so the incentive to
> run smaller 32-bit userland on systems with less than 1GB of
> RAM usually outweighs the benefits of 64-bit userspace.

Thanks for the details!

Neil

> 
>        Arnd

