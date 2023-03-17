Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21B9B6BEB76
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 15:35:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230147AbjCQOfi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 10:35:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229886AbjCQOfX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 10:35:23 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 228EEE5012
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 07:34:52 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id eg48so21051064edb.13
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 07:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679063686;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K4FKk1Fwhr1fzG6SpZjspB0mX89kWkmddwIe7IQAMes=;
        b=UENArZTj3eYJid1mlv2le+ufGlum1Zp0eLeeq/UMk2jR1tIsCq8g4fnTOWOjeXS05X
         9wmwkepGz2SvRU8GWyOwtI5NvaWBNAOo5mZ5ZibAWbNg1lVNyW8Eb2lkBpbbc5bvOMCn
         S3hUKHL4JUvzWowv2pFzSFUz/38OYNVQyUTsSWfNO1uRQ/Fib22/BpfqF27k9zhFqol1
         pP2RWAq50SxYGZliECPrKyQccTxB3qRGLAnpzqizhY8lhvfMb2UCdEA7/lM3qwonljmz
         atsj1ZlbsCwcif2lrkfKAedNAr3o4vZKAGGbRDVSpB1amb1pNrz3LhvcUJxeQEs1AHw1
         FZtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679063686;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K4FKk1Fwhr1fzG6SpZjspB0mX89kWkmddwIe7IQAMes=;
        b=lTp1zQT4TpSGXNaSLVawPot3KUq7bhcBpLbQo0PmrreIhP/qbrJGQHCofLWppldG7/
         MH304zkgln5EXieEKVNZrCKbIqZj4XI0VYN+eLrnKWSl3QeG66FCTXTf5Ckkxnk90jLQ
         /50hNx9ai9ZtaF7og+KMG6H/kVNwCcyYDO3P9LmzekJIoN0A2RXOyR1xa9433VTSI2mk
         I3cNdCYoRDtV7gGaJUfZrRxH56qhQc0gtsR1i8AbDZxR82Q183PoNGFkEyKPmctc4gC1
         qA3x4uYZwmtS6Tk8sVDTgVyBD+6wLqGomWx3vgRzKXTXVzZw+rX05LmkVzCNH/JErvDB
         NC0g==
X-Gm-Message-State: AO0yUKWyLzUOe5VhLjB7B4dSXiX0y6508XBh/ogTGwy7fLg2JLxzWSLd
        5nXmI+2NNR1DiyaQ85RriOedFA==
X-Google-Smtp-Source: AK7set/5VawiO0rvgEB3jmpUoHQievfUgoXM5XEaTxW/KdVKozL8AZkY8bPCPx6Dl2eH5jQEGkKctQ==
X-Received: by 2002:a17:906:9413:b0:930:9197:24d1 with SMTP id q19-20020a170906941300b00930919724d1mr3059411ejx.6.1679063686618;
        Fri, 17 Mar 2023 07:34:46 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d013:3eeb:7658:cec? ([2a02:810d:15c0:828:d013:3eeb:7658:cec])
        by smtp.gmail.com with ESMTPSA id e8-20020a170906c00800b008e1509dde19sm1029098ejz.205.2023.03.17.07.34.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 07:34:46 -0700 (PDT)
Message-ID: <3a6a756c-3393-abf7-3ddf-7dd44c8ea160@linaro.org>
Date:   Fri, 17 Mar 2023 15:34:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: Probing devices by their less-specific "compatible" bindings
 (here: brcmnand)
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Brian Norris <briannorris@chromium.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        MTD Maling List <linux-mtd@lists.infradead.org>
References: <399d2f43-5cad-6c51-fe3a-623950e2151a@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <399d2f43-5cad-6c51-fe3a-623950e2151a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 11:02, Rafał Miłecki wrote:
> Hi, I just spent few hours debugging hidden hw lockup and I need to
> consult driver core code behaviour.
> 
> I have a BCM4908 SoC based board with a NAND controller on it.
> 
> 
> ### Hardware binding
> 
> Hardware details:
> arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
> 
> Relevant part:
> nand-controller@1800 {
> 	compatible = "brcm,nand-bcm63138", "brcm,brcmnand-v7.1", "brcm,brcmnand";

(...)

> ### Problem
> 
> As first Linux probes my hardware using the "brcm,nand-bcm63138"
> compatibility string driver bcm63138_nand.c. That's good.
> 
> It that fails however (.probe() returns an error) then Linux core starts
> probing using drivers for less specific bindings.
> 
> In my case probing with the "brcm,brcmnand" string driver brcmstb_nand.c
> results in ignoring SoC specific bits and causes a hardware lockup. Hw
> isn't initialized properly and writel_relaxed(0x00000009, base + 0x04)
> just make it hang.
> 
> That obviously isn't an acceptable behavior for me. So I'm wondering
> what's going on wrong here.
> 
> Should Linux avoid probing with less-specific compatible strings?

Why? If less-specific compatible is there, it means device is compatible
with it and it should work.

> Or should I not claim hw to be "brcm,brcmnand" compatible if it REQUIRES
> SoC-specific handling?

As you pointed this compatible does not work for your device, so they
are not compatible.


Best regards,
Krzysztof

