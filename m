Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85A382E22D0
	for <lists+devicetree@lfdr.de>; Thu, 24 Dec 2020 00:38:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727144AbgLWXiS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 18:38:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727029AbgLWXiS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 18:38:18 -0500
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FF66C061794
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 15:37:38 -0800 (PST)
Received: by mail-pg1-x535.google.com with SMTP id i5so540706pgo.1
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 15:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=N/12g1zGu+Yz6r0PP1NPtunqUzCRCfehscqLVDpimXc=;
        b=s8p0kC+VdqYL0XO4BYjdBFWtPvPKeDp9Z7v0/X8pJ1Bg1QdPZ3/OGeE7u8Inou/GKc
         kYSjsacWx9XfznAjY/yXdV0uM+gloyLMgUa5sZ1wA6KE2cCZIX94pLOuMBOj2VGlGXR1
         4t1mY+F80B4k64oI11e4xMLx/Kjs0HDzTqYds2yXYZGXAUjl1P2x9YAXmhipkNSKcVgM
         SphpxMvKlbvk3sUZiaH3lS3ZwFMtkgFoLu42P2mKeyejqGqW1CoH9zPt582USvx6nPcy
         uZJDLcWkCD2vsRX8rykVwgm+QhQc4SZT0byMdPi8PvXsS6t7NTmQ/etvpZgZY9o3rARC
         7WdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N/12g1zGu+Yz6r0PP1NPtunqUzCRCfehscqLVDpimXc=;
        b=PWIITf1MC9yC3nXext6KeifKO81o665hptkK3yvXz+AHOgREknK1ALcY38fqK5rVwf
         zkSVPA8VFBNQdZgeKSMmm69uuiiIfUo/v6A96NEjG3/gMPw837lGL04LAm6Z01D6fGKd
         BakVJ0ioZpSs1jGfx32ch7LAiJ3GAjOOg7lq7NsFsvDzGNmt0mhPB9Q0HGR3s85DEegN
         1ThyvT5urUIjrsBo68FdWKXCmr35Cl+Y4uYCCNnAHBDLDD2ocIgrcNfpAUvDFPbzRkYO
         yCBFhaoAtVGy+FqA/yZjW/VcWjSlGz1nFHszhR1CwUoJT0ZUqHmmpzdzuRgOJQ8lgtm0
         if9g==
X-Gm-Message-State: AOAM533dneBf7gbKrEMM4yqOqOYyVd063iuZb5A5sDAu9X/HEvIqG3fx
        w2Srf+nRRXmE6vc+sMn7Gf0=
X-Google-Smtp-Source: ABdhPJzrBCHWiKNJ6jth5A+p+OjTj4wfew7D7ikqXZaITr1kquCONYWwhV2gAIGUrl3mBoy92Uk2XQ==
X-Received: by 2002:aa7:8f35:0:b029:19b:1258:ec5d with SMTP id y21-20020aa78f350000b029019b1258ec5dmr25960483pfr.9.1608766657661;
        Wed, 23 Dec 2020 15:37:37 -0800 (PST)
Received: from [10.230.29.27] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id a19sm23592831pfi.130.2020.12.23.15.37.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Dec 2020 15:37:36 -0800 (PST)
Subject: Re: [PATCH 0/4] drm/v3d: Minor improvements
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Eric Anholt <eric@anholt.net>,
        Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <1608755245-18069-1-git-send-email-stefan.wahren@i2se.com>
 <2f9769da-f5b3-0c25-2f46-a0796da225ba@gmail.com>
Message-ID: <aa2781a4-b748-cb49-bf3d-52881ea66b37@gmail.com>
Date:   Wed, 23 Dec 2020 15:37:34 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <2f9769da-f5b3-0c25-2f46-a0796da225ba@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/23/2020 1:39 PM, Florian Fainelli wrote:
> 
> 
> On 12/23/2020 12:27 PM, Stefan Wahren wrote:
>> This small series of v3d patches is a preparation for the upcoming bcm2711
>> support. The bcm2711 support will be send separate, because it involves
>> bigger changes.
>>
>> I'm not sure that the schema conversion patch is sufficient.
>>
>> Patch 2,3 are directly taken from Raspberry Pi 4 vendor tree.
>>
>> Nicolas Saenz Julienne (1):
>>   drm/v3d: Use platform_get_irq_optional() to get optional IRQs
>>
>> Phil Elwell (2):
>>   drm/v3d: Set dma_mask as well as coherent_dma_mask
>>   drm/v3d: Don't clear MMU control bits on exception
> 
> You need to amend your Signed-off-by to all of those 3 patches that you
> did not author.

Looks like you fixed it in v2 about 10 minutes after, sorry for the noise.
-- 
Florian
