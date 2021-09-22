Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CFBE414B77
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 16:12:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234515AbhIVONq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 10:13:46 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:37970
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233513AbhIVONq (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Sep 2021 10:13:46 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A9F67402D8
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 14:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632319935;
        bh=1MyjqmNhxVLX0Wufgh2lr5w4a4DBCWtXfhO1i67wwOg=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=jUhpqXju3JHeqe4Y9dt0a8peP4HN7GpGRiu+6P17q5H8P0kgvXpbIa1XwffWx8Hx6
         Antd8WGqpkGXL3U4KK/CFzp6+qKAiCSOH0OVz3DeMkoEc00iR14roWcwIZM2cX1xQw
         MgqK+Oy15JHGffh76SttAVGJjf9UC1kuFZK7bRP4mn1q01hs+rXhAIxG/JCMuzlyoi
         QqsFssKr1urYuIqOpVB/bBYzb+t1IVdai0AvlfUW8S3kTBvlaOfkVQUUhSscXnFKeh
         ND3+zfEyDqxa0HfxjS5ap2th9MQ1g0xNG010ngHxi5Dk3+n4FrXgUxGlF78zFkHHRl
         YrJgHsmxARMOw==
Received: by mail-ed1-f72.google.com with SMTP id c7-20020a05640227c700b003d27f41f1d4so3185795ede.16
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 07:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1MyjqmNhxVLX0Wufgh2lr5w4a4DBCWtXfhO1i67wwOg=;
        b=cRcqMCDT/5qp0Hmrk77U3eK+3YnZeycQgXLg33Q5Z7LJ7hSD5vnErQyKBV4V7qYeUH
         fmYHwJ8OyvSmU3zUCyg8QdC7f/zm0b4mGGUDRX0Mlksn5PNWEtHTntccJUlOx2DqwigV
         yEpkCearMeNDNii9hIPIoTkVVYCPDRrRT7jgdAOtl+bYe/TYY1fvoDScJkVrZWp6M2vx
         nWZ7XA22iuomZo70geoPZLwsf9pzB0iHBGBHfNyxSaC8ElxqOC633W2i4sYp8NTYk9cZ
         7kB+nNGVSkKaxcQ4PwekG7iSuzRW5MOHNbdYVxusjxn5HLjhGBTLbbL8vkS17FMgTtK+
         Vdzw==
X-Gm-Message-State: AOAM533uEUBfNqYYOW9npeKwdibw71CmsigCEGLSdvItKFg1430EAUo/
        XTf+vX2b+b+bjvwOL9jSV9kxEUPgAacMedKa09qP/j3/DreWhozrzJzy0wk3dUqmTfC8PzNY6Kd
        a8dRqozDPfIy8sQ4V0EnedcXFJDy9XbAyeRRV8NQ=
X-Received: by 2002:a17:906:9452:: with SMTP id z18mr41241575ejx.25.1632319935045;
        Wed, 22 Sep 2021 07:12:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxLJOGVcmp4cOqCkF2TmMYwWKyogj1WUZOHnXr8vCsNJVqDjhbsu8od+4HSV9f8jRwxTRDePA==
X-Received: by 2002:a17:906:9452:: with SMTP id z18mr41241545ejx.25.1632319934825;
        Wed, 22 Sep 2021 07:12:14 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id bw25sm1150757ejb.20.2021.09.22.07.12.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 07:12:14 -0700 (PDT)
Subject: Re: [RESEND PATCH 2/2] powerpc/powermac: constify device_node in
 of_irq_parse_oldworld()
To:     Christophe Leroy <christophe.leroy@csgroup.eu>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20210922084415.18269-1-krzysztof.kozlowski@canonical.com>
 <20210922084415.18269-2-krzysztof.kozlowski@canonical.com>
 <a33f0978-b617-6a07-7240-ec011f894680@csgroup.eu>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <2ccf5861-257f-42cc-395f-4d1f053f6035@canonical.com>
Date:   Wed, 22 Sep 2021 16:12:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <a33f0978-b617-6a07-7240-ec011f894680@csgroup.eu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2021 15:55, Christophe Leroy wrote:
> 
> 
> Le 22/09/2021 à 10:44, Krzysztof Kozlowski a écrit :
>> The of_irq_parse_oldworld() does not modify passed device_node so make
>> it a pointer to const for safety.
> 
> AFAIKS this patch is unrelated to previous one so you should send them 
> out separately instead of sending as a series.

The relation it's a series of bugfixes. Although they can be applied
independently, having a series is actually very useful - you run "b4 am"
on one message ID and get everything. The same with patchwork, if you
use that one.

> 
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>   arch/powerpc/platforms/powermac/pic.c | 2 +-
>>   include/linux/of_irq.h                | 4 ++--
>>   2 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/powerpc/platforms/powermac/pic.c b/arch/powerpc/platforms/powermac/pic.c
>> index 4921bccf0376..af5ca1f41bb1 100644
>> --- a/arch/powerpc/platforms/powermac/pic.c
>> +++ b/arch/powerpc/platforms/powermac/pic.c
>> @@ -384,7 +384,7 @@ static void __init pmac_pic_probe_oldstyle(void)
>>   #endif
>>   }
>>   
>> -int of_irq_parse_oldworld(struct device_node *device, int index,
>> +int of_irq_parse_oldworld(const struct device_node *device, int index,
>>   			struct of_phandle_args *out_irq)
>>   {
>>   	const u32 *ints = NULL;
>> diff --git a/include/linux/of_irq.h b/include/linux/of_irq.h
>> index aaf219bd0354..6074fdf51f0c 100644
>> --- a/include/linux/of_irq.h
>> +++ b/include/linux/of_irq.h
>> @@ -20,12 +20,12 @@ typedef int (*of_irq_init_cb_t)(struct device_node *, struct device_node *);
>>   #if defined(CONFIG_PPC32) && defined(CONFIG_PPC_PMAC)
>>   extern unsigned int of_irq_workarounds;
>>   extern struct device_node *of_irq_dflt_pic;
>> -extern int of_irq_parse_oldworld(struct device_node *device, int index,
>> +extern int of_irq_parse_oldworld(const struct device_node *device, int index,
>>   			       struct of_phandle_args *out_irq);
> 
> Please remove 'extern' which is useless for prototypes.

OK


Best regards,
Krzysztof
