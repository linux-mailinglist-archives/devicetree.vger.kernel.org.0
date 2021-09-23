Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3A39415FF3
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 15:32:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241285AbhIWNdi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 09:33:38 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:44564
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232333AbhIWNdi (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 Sep 2021 09:33:38 -0400
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2B39E40293
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 13:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632403926;
        bh=biNupszeS11Ffqm/B+oAmn3pnoiB+8ke0AHaHHLBLkQ=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=d5f/NGLidvtffGQIvIb3PCjQobjb2RLnV5FyLztye7H1wBOQmoWMDpKd3gFQOYj4w
         b4N+J5tzXFFskfCRtY8oX2AsyXkNFOa2NyCsvzjp8xfd2dUlG1C1cWimYlta4GID9C
         k2RAQMvaoHsOG7a8yc+0sGdYJ5gYkwgOPdf5Zp2cAPoUC/ImV6jAK8JWSo/X+gVzvH
         r+89/+I85seoWR/0aZfBCS06ETl2zZCCS3y9JbcpUMygECWzKbaO4pS80+SkB6lts2
         jMwfWlUw8CiC1RNQ7Ok6y9jywYi7OI0t8+MZRsmKYL0VqZ0HmhIXeQk0xMoRXH4D1x
         Ysmx+gq3W9sjg==
Received: by mail-wr1-f69.google.com with SMTP id x2-20020a5d54c2000000b0015dfd2b4e34so5152952wrv.6
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 06:32:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=biNupszeS11Ffqm/B+oAmn3pnoiB+8ke0AHaHHLBLkQ=;
        b=lcvtNGOnpfLsZTzkBgioPbOPIs1OAgqnH7x5/94pzNqwnNe4M6/4+tUE16MIXUocd4
         fYOJQsQG0F3RyW9iYkzRHEo4NY21vRS7KxvzZrpI7kgRl3RG4ylUDQdbT/VrNCk6Y5Mw
         fDkSyaCTVNF8XyCzZ5cBWagH/jFttsLdPDzwpcQU2SopRqFFpEpU3/aY0fmTTRamTvxW
         TcfECPpdjMW0PFz01yqQc1S67w4DRcAOSFldednLWYGtdsnGOhaqLVEgRM6IgNkW9H4F
         +zq7XNepqQjjX4pJfZxFCQwpyOL4MT8hqkEJ40z4jTxOlqgFYh4tDDboub43DWdiuQSa
         6z+w==
X-Gm-Message-State: AOAM533pgo7wifkVID8qnptBYzV1963fpbB7SvKJYapwJwdvTQpCdvIw
        aqn7E0m3toPv3yF9SXzHWUwEteoY3kr9FUSypDArMVomeThxZWG9lWvGvSJFyeBLxgWvjONZqjs
        ovdopUb21c7Unp1t5BpG7uxUyl8ixE4Js8VgATrw=
X-Received: by 2002:a05:6000:2af:: with SMTP id l15mr5158642wry.129.1632403925640;
        Thu, 23 Sep 2021 06:32:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz5tlOMKjo3eto+NuBuyW5Olj/sQBjkgJBO9qLihHpCc1YBmYn+8lzfFTbdBPPGXM5Q8neptw==
X-Received: by 2002:a05:6000:2af:: with SMTP id l15mr5158617wry.129.1632403925481;
        Thu, 23 Sep 2021 06:32:05 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id i9sm9728035wmi.44.2021.09.23.06.32.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Sep 2021 06:32:04 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] powerpc/powermac: add missing
 g5_phy_disable_cpu1() declaration
To:     Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
        linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20210922160436.130931-1-krzysztof.kozlowski@canonical.com>
 <87v92rl95e.fsf@mpe.ellerman.id.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <008b61ee-ddc1-ad99-a660-2e0e6c3ae533@canonical.com>
Date:   Thu, 23 Sep 2021 15:32:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <87v92rl95e.fsf@mpe.ellerman.id.au>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2021 15:21, Michael Ellerman wrote:
> Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com> writes:
>> g5_phy_disable_cpu1() is used outside of platforms/powermac/feature.c,
>> so it should have a declaration to fix W=1 warning:
>>
>>   arch/powerpc/platforms/powermac/feature.c:1533:6:
>>     error: no previous prototype for ‘g5_phy_disable_cpu1’ [-Werror=missing-prototypes]
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>>
>> ---
>>
>> Changes since v1:
>> 1. Drop declaration in powermac/smp.c
> 
> Sorry I missed v1, so I'm going to ask for more changes :}
> 
>>  arch/powerpc/include/asm/pmac_feature.h | 4 ++++
> 
> Putting it here exposes it to the whole kernel, but it's only needed
> inside arch/powerpc/platforms/powermac.
> 
> The right place for the prototype is arch/powerpc/platforms/powermac/pmac.h,
> which is for platform internal prototypes.

I'll fix it up.

> 
>>  arch/powerpc/platforms/powermac/smp.c   | 2 --
>>  2 files changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/powerpc/include/asm/pmac_feature.h b/arch/powerpc/include/asm/pmac_feature.h
>> index e08e829261b6..7703e5bf1203 100644
>> --- a/arch/powerpc/include/asm/pmac_feature.h
>> +++ b/arch/powerpc/include/asm/pmac_feature.h
>> @@ -143,6 +143,10 @@
>>   */
>>  struct device_node;
>>  
>> +#ifdef CONFIG_PPC64
>> +void g5_phy_disable_cpu1(void);
>> +#endif /* CONFIG_PPC64 */
> 
> The ifdef around the prototype doesn't gain much, and is extra visual
> noise, so I'd rather without it.


Sure.


Best regards,
Krzysztof
