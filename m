Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39FCE2B0096
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 08:53:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725941AbgKLHxn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 02:53:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725860AbgKLHxm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Nov 2020 02:53:42 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FC51C0613D1
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 23:53:41 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id l2so6967244lfk.0
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 23:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NZqGtH5DPrZOvltlAKsPmoVZYNK7niC/NzGSxKqEzH8=;
        b=Icx5BpPatl5Ac2y0n8Xs+R5S+KyH9Zdmuzq/jR40gTiq7L7lKMGRArlxiaRxOTa74N
         uOEw+DuF1rMYdjT2pQKTR/Cih+ttLbxqVCC/FiYytNpBCEaT3S1m7u7DefHWJJiijrYa
         SihWzfFLQDiW55rESosEuIH7CDrg9ZbMdT4VhqBnQeDrhuxr/IKiuYHIjS8kucIuRBG8
         wlm7OuLlSkmuOj7ojPhju4XqBA9ykA8hyX0Xs3acRIx8wMSzM0M61Lliy0qI67E8texN
         RxwD1xuPDMDVo6Muehd6rMNKgQMnmucTGWkTrJQTQlYT9Q8hsjHcWrJX0rDLWWgK3yCE
         Barw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NZqGtH5DPrZOvltlAKsPmoVZYNK7niC/NzGSxKqEzH8=;
        b=LwPShX/VRYNCGQSKkHVJhk7MoYl99txsDPR8hIRnZMsv8SMlO6+uKg8HePGAwpKxgE
         LTLTv9Jkl+leRXa6FpsjsRHVZim+zCacD8IOC/2y73KwIbFS1myOiuVrm46K1JpgeraD
         IQJkkZYZEFgl8Vvfn7kiDL6M9I3Uu6T7mZK2542xLL8l+DJ+qbbG7j9dIiy6T2tFrGIf
         Dv47sVP32Q+StsjGVHTHpVr9pGZyE0OSbYkQ8/Z6t2P0kUt0+REDpZjKrxUAlYhhM9xp
         kSRWG05IQiHc5lOWhJqjP392XyVxFpC2f9boLFGx5vE3Zn6GmjcvazoIIqEFUQzHR1JD
         IDUQ==
X-Gm-Message-State: AOAM5334x46nOJzImPSDXVlVcBGq0Dx+aUQxG2euLs1RlU7rIP8X4kbc
        jNPqUNszoiGOOasCe/ggeo4HefTjpIE=
X-Google-Smtp-Source: ABdhPJzujRugDMnh/4Nwqi0QGNZ5t+d3oyVT3t6gFrL+GI0J/3DNbX1eKFYWq83s2JsO1GwIuM2zWQ==
X-Received: by 2002:a05:6512:3485:: with SMTP id v5mr12155861lfr.181.1605167619627;
        Wed, 11 Nov 2020 23:53:39 -0800 (PST)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id v28sm470640lfo.43.2020.11.11.23.53.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 23:53:39 -0800 (PST)
Subject: Re: [PATCH V3 1/3] arm64: add config for Broadcom BCM4908 SoCs
To:     Baruch Siach <baruch@tkos.co.il>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Will Deacon <will@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20201112072133.17039-1-zajec5@gmail.com>
 <87r1ozav04.fsf@tarshish>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <6ce8a873-6815-5796-8d62-c6847d1799d9@gmail.com>
Date:   Thu, 12 Nov 2020 08:53:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87r1ozav04.fsf@tarshish>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12.11.2020 08:34, Baruch Siach wrote:
> On Thu, Nov 12 2020, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> Add ARCH_BCM4908 config that can be used for compiling DTS files.
>>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>> ---
>>   arch/arm64/Kconfig.platforms | 8 ++++++++
>>   arch/arm64/configs/defconfig | 1 +
>>   2 files changed, 9 insertions(+)
>>
>> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
>> index 6f2494dd6d60..d1c02a4a93c8 100644
>> --- a/arch/arm64/Kconfig.platforms
>> +++ b/arch/arm64/Kconfig.platforms
>> @@ -43,6 +43,14 @@ config ARCH_BCM2835
>>   	  This enables support for the Broadcom BCM2837 and BCM2711 SoC.
>>   	  These SoCs are used in the Raspberry Pi 3 and 4 devices.
>>   
>> +config ARCH_BCM4908
>> +	bool "Broadcom BCM4908 family"
>> +	select GPIOLIB
>> +	help
>> +	  This enables support for the Broadcom BCM4906, BCM4908 and
>> +	  BCM49408 SoCs. These SoCs use Cortex-B53 cores and can be
> 
> Is Cortex-B53 an official name? I see reference to Brahma-B53 in other
> places like Documentation/arm64/silicon-errata.rst.

That should be Brahma-B53. Good catch.

Initially I didn't know "Brahma" name and thought (Brahma-) B53 is just
minor variation of Cortex-B53. I even used:
compatible = "brcm,cortex-b53", "arm,cortex-a53";

It's clarified now but I forgot to update config help.
