Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DF303E1197
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:45:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239835AbhHEJpn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:45:43 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:60214
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239339AbhHEJpm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 05:45:42 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id F0B533F234
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 09:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1628156698;
        bh=eq4sHLyLRo38xlokxNFSRX3L+vSvOngMzJAr9ypms3s=;
        h=Subject:From:To:Cc:References:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=UB7DyAAp87dLJSrhSrxvV1IOcspBHPeVPuI2hPq2Bbzi1W3SOtYfvd4PqAAMTCSYl
         hGaieSzBPiOoBr93x2fJuiLZ4L3zCPOjpYHxo4HTN9fuHVKHGxtDdqk9jzAoc0C9pO
         vHEVgyYBBNaXm2MVZq0NfhFSOTdHNWyDxT1eb1tuyJHiSUu/SQzwER5wILTCmi5E0t
         3S26r125c3ecZEmX3Q/eQzNBhDOrcJ2JZv5pymxgLtQBXwiFQZQOxYYtWwdzXCdvQl
         JKmQYF/UkTYih/7jr3Oda3ApqHW81PkbyCcaVJdVsKo4ykC0DyNyXBAQYybt7MhAvi
         8xu/UjGBngksg==
Received: by mail-ed1-f71.google.com with SMTP id u4-20020a50eac40000b02903bddc52675eso2708963edp.4
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 02:44:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eq4sHLyLRo38xlokxNFSRX3L+vSvOngMzJAr9ypms3s=;
        b=fFqOuR2sQWK84S0n9bhN8m0OjHmWCxsvUMfXShxj0ZIyUoT2aBMCzDMxzMQ5jug46j
         1h+vR/JYGymkGxMt1x9AbIeotLrV58Wwo5Bc3gXW8tCTG2DDv3EANXm+xASVTbgf1dXk
         PiRVIoHsML8Q6oAVN7Wo/VkgLznTIES40Pl9UyTiEnPNTsX6V+a2tQEIgMf1+xNIXQkR
         YADt7RSJem/ZVODFueFTCgjQZMtbtQMT/TyGndMhxcY9CDkVUtOx+rnIG7/xk6qu7X5F
         SZv97if2jI77kyl0eMXiUpGE7aCSiv9n3irX+6iP7Pztebjm5qsCbsuDMA2Str597pSR
         WTDw==
X-Gm-Message-State: AOAM530bsX6ebCU5f6Hu+H6y9k1Tzs3+hjkWXiAbeH7zpzPYau04u6pl
        FZL/o+7Hlb8hDIobtrK07VHi5pWB4/U0SCsuch0Rchd7pZ06TFsEhykF1q/Op8kqYROrDETIcFJ
        A9tA/Lv7R/sEuDafZ+NLYQzY6J8cKnqAp3Kh1WMY=
X-Received: by 2002:a17:906:70a:: with SMTP id y10mr3852260ejb.381.1628156698745;
        Thu, 05 Aug 2021 02:44:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwEo7uFha2cwn65X0bkEZr/Cg0CxuSlgPy6k3dOYxyK2z2ZGphK8vaAGNcJrVjcpVnwxnmwtA==
X-Received: by 2002:a17:906:70a:: with SMTP id y10mr3852248ejb.381.1628156698548;
        Thu, 05 Aug 2021 02:44:58 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id h15sm1506392ejg.31.2021.08.05.02.44.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 02:44:57 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: exynos: correct GIC CPU interfaces address
 range on Exynos7
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
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
 <7c019443-6153-f059-418b-3b268750f7a8@canonical.com>
Message-ID: <4fc60199-44cd-41ea-9178-92b131d21b73@canonical.com>
Date:   Thu, 5 Aug 2021 11:44:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <7c019443-6153-f059-418b-3b268750f7a8@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/08/2021 11:43, Krzysztof Kozlowski wrote:
> On 05/08/2021 11:26, Alim Akhtar wrote:
>> Hi Krzysztof,
>>
>>> -----Original Message-----
>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>>> Sent: 05 August 2021 13:07
>>> To: Rob Herring <robh+dt@kernel.org>; devicetree@vger.kernel.org; linux-
>>> arm-kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org; linux-
>>> kernel@vger.kernel.org
>>> Cc: Alim Akhtar <alim.akhtar@samsung.com>; Chanwoo Choi
>>> <cw00.choi@samsung.com>; Pankaj Dubey <pankaj.dubey@samsung.com>;
>>> Sam Protsenko <semen.protsenko@linaro.org>; Marc Zyngier
>>> <maz@kernel.org>
>>> Subject: Re: [PATCH] arm64: dts: exynos: correct GIC CPU interfaces address
>>> range on Exynos7
>>>
>>> On 05/08/2021 09:21, Krzysztof Kozlowski wrote:
>>>> The GIC-400 CPU interfaces address range is defined as 0x2000-0x3FFF
>>>> (by ARM).
>>>>
>>>
>> Looking at DDI0471B_gic400_r0p1_trm.pdf, CPU interface range is 0x0000 ~ 0x10000
>>
>>> I underestimated the issue - this is actually bug as there is a GICC_DIR
>>> register at offset 0x1000. Therefore:
>>>
>> Looking at the exynos7 and exynos5433 UMs looks like GICC_DIR is at offset 0x2100 (from 0x1100_0000 GIC base)
>> It is possible for you to cross check once?
>>
> 
> That's a mistake in Exynos manual. GICC_DIR is at 0x1000:

0x1000 from CPU base offset, so 0x3000 from GIC base.

> https://developer.arm.com/documentation/ddi0471/b/programmers-model/cpu-interface-register-summary
> 
> We have discussion here:
> https://lore.kernel.org/linux-samsung-soc/0277c701-cc25-cdc5-d3b9-cf2cc2ba4de5@canonical.com/T/#m1ced9a28bed27f5cf74e281fb68efe1b57d5609e
> 
> Range of 0x10000 is definitely wrong as it overlaps with two other
> ranges.


Best regards,
Krzysztof
