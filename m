Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9959E3E1193
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:43:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239462AbhHEJn5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:43:57 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:60082
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239295AbhHEJn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 05:43:56 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id C348D3F22F
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 09:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628156621;
        bh=PlH+VlKUMlcX80piFT0gda5UUaZVZ2zU1R5Uqd41yvE=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=LmZehnVippZhk2SPYUljupAbaYK/eUjcu+Mkriyce/ICUlSqsZdgUv6Z+azPiQFeM
         z9Z/EtUQeAyDG/HnXiupfETEIBCpcwGNgYtoroHQbXmsqIitN4YfMSdoq+fStS4FEJ
         npbNUYPhT3vshj5D0b4WqG83wnkTKh/nG5NKtu1eGD3cHcdB6CvwoQH8cqlrytpQkv
         ZmxIFEnBAVe9fYlu0ID23oXU1Qbi90nQRHA76F0pLxwt5G2dsZGG7m42tFg4Tm3smj
         JhheomOdkogmMU/Tx8d9a7owPE1rKx+IUgOnC68wIESEcfL6ZlxGj7x8mgdSQN7GmT
         CtBCS0xOsPFXg==
Received: by mail-ed1-f72.google.com with SMTP id s10-20020a05640217cab02903bddc3e8fb3so2715680edy.0
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 02:43:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PlH+VlKUMlcX80piFT0gda5UUaZVZ2zU1R5Uqd41yvE=;
        b=MWJpkSczpRteNKVmgyzxkegTG7qdreExNQcB728wnTeA54QaX1lUgy6eUvyfvwZ1AF
         RjvJVqS/OSmQ+eM3fImgf4smS5PJ5Y1lr2OE8s1fiVc2DsuG8irj/E4PKzXNjftNnsS6
         OKvRK4i2KGpvwFpFhx1Dhlx6t6/qeA+jvpf+21YaN9t1Uf2fX5vZzldRu7iCfD/7e6Ua
         Od211kG7IQ58Dn4mmQ9IkImbdsgZTeuEPM9MJwM0XdYdUuBbOhUNb+61HIQK18UfYjep
         HrrBp1Os8lyVF2xU33htJSnw8b4xjxN1Q001nTj1/OCp0DqmGf2madUMULWL5U1FKutf
         hd8g==
X-Gm-Message-State: AOAM531K8yI8fu5RDnZUAYHiXWyqvzNZhl/hRwWRWlS/Md2M1p2tOAXV
        EYGDutUhgWJeDtInwqXvRp/aY58F4YlPQWeu0FH2RdTHUkY/Kg6WLXf4+RI7x1fOFNtIGEaRGpp
        2OLF2Vd5rGL1BO2SFTMWtCE3QvCxR9U1kITwRsYU=
X-Received: by 2002:a17:906:c7c2:: with SMTP id dc2mr3972973ejb.472.1628156621382;
        Thu, 05 Aug 2021 02:43:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwGoPDPK+MWVCmOjwAsROGmWLcIrk5p+yD4K34PJk7bXHMYE41l71FAk8Cu0oD/JmROctGTdA==
X-Received: by 2002:a17:906:c7c2:: with SMTP id dc2mr3972967ejb.472.1628156621254;
        Thu, 05 Aug 2021 02:43:41 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id o5sm1998626edc.16.2021.08.05.02.43.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 02:43:40 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: exynos: correct GIC CPU interfaces address
 range on Exynos7
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        'Rob Herring' <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     'Chanwoo Choi' <cw00.choi@samsung.com>,
        'Pankaj Dubey' <pankaj.dubey@samsung.com>,
        'Sam Protsenko' <semen.protsenko@linaro.org>,
        'Marc Zyngier' <maz@kernel.org>
References: <20210805072110.4730-1-krzysztof.kozlowski@canonical.com>
 <CGME20210805073653epcas5p21b4c2358b7de2b3c21dbc357af957137@epcas5p2.samsung.com>
 <b0d6ff2a-24af-96c1-62a1-8b920c63e05a@canonical.com>
 <03d701d789db$f275d290$d76177b0$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <7c019443-6153-f059-418b-3b268750f7a8@canonical.com>
Date:   Thu, 5 Aug 2021 11:43:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <03d701d789db$f275d290$d76177b0$@samsung.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/08/2021 11:26, Alim Akhtar wrote:
> Hi Krzysztof,
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> Sent: 05 August 2021 13:07
>> To: Rob Herring <robh+dt@kernel.org>; devicetree@vger.kernel.org; linux-
>> arm-kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org; linux-
>> kernel@vger.kernel.org
>> Cc: Alim Akhtar <alim.akhtar@samsung.com>; Chanwoo Choi
>> <cw00.choi@samsung.com>; Pankaj Dubey <pankaj.dubey@samsung.com>;
>> Sam Protsenko <semen.protsenko@linaro.org>; Marc Zyngier
>> <maz@kernel.org>
>> Subject: Re: [PATCH] arm64: dts: exynos: correct GIC CPU interfaces address
>> range on Exynos7
>>
>> On 05/08/2021 09:21, Krzysztof Kozlowski wrote:
>>> The GIC-400 CPU interfaces address range is defined as 0x2000-0x3FFF
>>> (by ARM).
>>>
>>
> Looking at DDI0471B_gic400_r0p1_trm.pdf, CPU interface range is 0x0000 ~ 0x10000
> 
>> I underestimated the issue - this is actually bug as there is a GICC_DIR
>> register at offset 0x1000. Therefore:
>>
> Looking at the exynos7 and exynos5433 UMs looks like GICC_DIR is at offset 0x2100 (from 0x1100_0000 GIC base)
> It is possible for you to cross check once?
> 

That's a mistake in Exynos manual. GICC_DIR is at 0x1000:
https://developer.arm.com/documentation/ddi0471/b/programmers-model/cpu-interface-register-summary

We have discussion here:
https://lore.kernel.org/linux-samsung-soc/0277c701-cc25-cdc5-d3b9-cf2cc2ba4de5@canonical.com/T/#m1ced9a28bed27f5cf74e281fb68efe1b57d5609e

Range of 0x10000 is definitely wrong as it overlaps with two other
ranges.


Best regards,
Krzysztof
