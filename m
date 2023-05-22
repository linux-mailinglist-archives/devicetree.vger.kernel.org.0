Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D085370CAFC
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 22:30:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232524AbjEVUaF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 16:30:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234179AbjEVU3s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 16:29:48 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CF6918C
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:29:43 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f00c33c3d6so7654403e87.2
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684787381; x=1687379381;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Nn+GvRyU8YKQJBbOkfeSECWtc2jbXtXcU8DhQ0uTno=;
        b=IgkIgIqxpIEX0rM63pyl779+Ip2B419sOFQ0AnAJ7rJbzjuIKS3dO9IK963ixQ+U9U
         Xzg1iK9WUaYotOOg9aZ/D3XgxaZFJFp0W/t7QSJrUAceX+jk8Ly25kFFKx+OrNPs0HQQ
         3sbFTCEjdzzlgaFbvpyE4dGg0OcpqdEz28I+oY7SAmbtW4CFIsngDDuZ1cW5nNgm1vZs
         QwB89M/RtZwARImVWqcIMBCFKZv4jFr6kOOx51u8ywJ3nYmVVSgV+i6cyvmuB4dx2dHt
         a0VvHiDqgh3EBwebahmyX+GGMFV/aATlcK+a8O5rYmGpumf3jVJUZ8qHek9JEuLsKFis
         NGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684787381; x=1687379381;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Nn+GvRyU8YKQJBbOkfeSECWtc2jbXtXcU8DhQ0uTno=;
        b=OirYQ3iK3RB6ygMeLuTnfHFzaXhYUoI14u4XC7x++tDrJRUaVTbT5ufX4DqVoPamUz
         BoeSB1m8wuXeZnWQihR4GBgZqn0Ye1QPxYq/nAmWJsUEQFQUitvY0tMKNyUwVVZUygVn
         J78Nsu+R/9WKwtcgYD0iEfrkvix6QiLOOSU6jMZBEOCoXySNoP5kkdpT6dP2Rr0XZg1y
         s3AT/EirNokJHDx9DjRe9jh1qevb3owGaJ7AptFfKOI8zEbpyEYeG+lr8f1tcA1ijyFd
         IuP+T2xtMRf7/InQg0+e9CMSJUUCKph8XZ3dUs40R/CGRVzjmHqTgb4PZtvZ0E7bYqA5
         SgCg==
X-Gm-Message-State: AC+VfDwSG2BqAXj7TuWSj4dsm4xKePXEgSDAHD1mSTlcob7pAMeNGrap
        5KeYR+7njHHrJtwcJDnB0w9KQ4rsg7o=
X-Google-Smtp-Source: ACHHUZ4cxyD6Jj04l47o7/XJfugm5p9xzWsHXxFN7CzD0e62ugqkw+3xonGp9JaUwoBLful/VzvmPw==
X-Received: by 2002:a2e:9d02:0:b0:2a0:3f9f:fec6 with SMTP id t2-20020a2e9d02000000b002a03f9ffec6mr4526956lji.37.1684787380620;
        Mon, 22 May 2023 13:29:40 -0700 (PDT)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id z6-20020a2e3506000000b002adb6dd5a97sm1283773ljz.27.2023.05.22.13.29.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 13:29:40 -0700 (PDT)
Message-ID: <c69fb09a-40aa-6c7a-09b0-d32a2b39e18f@gmail.com>
Date:   Mon, 22 May 2023 22:29:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: bcm: unify version notation of
 Northstar devices
To:     Conor Dooley <conor@kernel.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        bcm-kernel-feedback-list@broadcom.com,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Sebastian Reichel <sre@kernel.org>,
        Christian Lamparter <chunkeey@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230520112601.11821-1-zajec5@gmail.com>
 <20230522-bacterium-quality-b51ee7dc124c@spud>
Content-Language: en-US
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <20230522-bacterium-quality-b51ee7dc124c@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22.05.2023 19:08, Conor Dooley wrote:
> On Sat, May 20, 2023 at 01:26:00PM +0200, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> Always use a minus/hyphen char to separate model from version. This
>> unifies binding's "compatible" strings.
> 
> Am I just being paranoid in thinking that software may have relied on
> the former naming scheme?
> On the other hand, my OCD really likes the change.

That's a very reasonable concern.


TLDR: The risk of any breakage is extremely low due to Northstar CFE
bootloader & projects with Northstar support.


There are very few Northstar devices with bootloader other than CFE.
All devices affected by this PATCH use CFE actually.
CFE on Northstar has no support for DTS (DTB).
DTB files are always appended to kernel on all affected devices.

So problem of some DTB stored in bootloader getting out of sync with
kernel / user-space is non-existent in this case.

We still should consider a risk of some out-of-tree driver or just
user-space checking for those compatible strings. I'm not aware of any
project other than OpenWrt providing system images for those devices.
There is some basic support in buildroot but it's quite dead. Even in
OpenWrt case the only possibly affected device is Netgear R6300 V2.
OpenWrt doesn't provide images for any of affected Luxul devices.

So there isn't any known project this change can actually break. If
there is one (very unlikely) it can still update its user-space or
out of kernel driver while updating DTB.

So while this change may be not the best approach (in general terms)
in this case it's very unlikely to break anything.


>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>>   .../devicetree/bindings/arm/bcm/brcm,bcm4708.yaml    | 12 ++++++------
>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
>> index 454b0e93245d..cc34025fdc78 100644
>> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
>> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
>> @@ -28,10 +28,10 @@ properties:
>>                 - buffalo,wzr-1750dhp
>>                 - linksys,ea6300-v1
>>                 - linksys,ea6500-v2
>> -              - luxul,xap-1510v1
>> +              - luxul,xap-1510-v1
>>                 - luxul,xwc-1000
>> -              - netgear,r6250v1
>> -              - netgear,r6300v2
>> +              - netgear,r6250-v1
>> +              - netgear,r6300-v2
>>                 - smartrg,sr400ac
>>                 - brcm,bcm94708
>>             - const: brcm,bcm4708
>> @@ -42,8 +42,8 @@ properties:
>>                 - asus,rt-n18u
>>                 - buffalo,wzr-600dhp2
>>                 - buffalo,wzr-900dhp
>> -              - luxul,xap-1410v1
>> -              - luxul,xwr-1200v1
>> +              - luxul,xap-1410-v1
>> +              - luxul,xwr-1200-v1
>>                 - tplink,archer-c5-v2
>>             - const: brcm,bcm47081
>>             - const: brcm,bcm4708
>> @@ -72,7 +72,7 @@ properties:
>>                 - luxul,xap-1610-v1
>>                 - luxul,xbr-4500-v1
>>                 - luxul,xwc-2000-v1
>> -              - luxul,xwr-3100v1
>> +              - luxul,xwr-3100-v1
>>                 - luxul,xwr-3150-v1
>>                 - netgear,r8500
>>                 - phicomm,k3
>> -- 
>> 2.35.3
>>

