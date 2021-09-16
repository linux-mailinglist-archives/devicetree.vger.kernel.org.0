Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CC0440D83A
	for <lists+devicetree@lfdr.de>; Thu, 16 Sep 2021 13:16:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237268AbhIPLSH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 07:18:07 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:37094
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236985AbhIPLSG (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Sep 2021 07:18:06 -0400
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0B6AE3F4BE
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 11:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1631791005;
        bh=UXq/IEFZVtb+dXj3jPcLu567vbwU2ZCcPRqhUQdx3Wk=;
        h=Subject:To:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=WTD5jdTjfDXsDAnhuypNh/WzAQBqMsdm0xJWGlpDyyQbF9x2ORj45uW1Z+FLAgEDU
         nOhXJrrFtcwRgNhMx9Ms6wD+EfE+aRG//eB5OFvQe8gM9Po0EYBln8mIu3ilfaG1/0
         PwLVlcYZvUYOZANMIibE+va695fIIVe5vbr8ZZmu8IEDwcFqX0iUs/2ZoJw1qU1KxP
         D2g5b3CcUafigMqgLOFJPXrtO5uBIa1S2l8Jkz2owOnmA3ZTjlPuWCzjeGvDbrllyN
         GLBmFQw9CnXcXE4vyw6BEYnUDO92TYOy5pdde0oevtAOftLKpr0f1YUxSg9W6PVhXa
         CGR8UwrtRDByA==
Received: by mail-wm1-f70.google.com with SMTP id k5-20020a7bc3050000b02901e081f69d80so2978672wmj.8
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 04:16:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UXq/IEFZVtb+dXj3jPcLu567vbwU2ZCcPRqhUQdx3Wk=;
        b=GrY/UrpIoiP/wt8CiBqMASwnVXXoa6rTAHsMDOqtTsXcBzEhRZq0L+wDUOqvD4MllH
         rMo5Wjd6lTZSFIGZbxbnzofl4Smm+5BrRcNj9sSbTcwzhyspG7vi5HNkXECuNC9tGp4W
         t7LH3xyoSAvdLkeqp+ZiZIDeG/tfCXfxALrC2b3x5AzqJ677y4m4P7tsIj9HGqHcGjmX
         a5mougat6oPuTq2Kik3XjzG7rNeelhZDuSBrWoLz52G0uoNsnpvxD3WkQS6PRfcaQxxG
         tNU68GOcY8FQSHed9EWMDnzb6Ilnes8bNV5RCq67oLeiXCO/RfqR1qSO962tTGAe+1ub
         EB3A==
X-Gm-Message-State: AOAM532qkdyTD/pgL3l/3qbe+U/T4iZfBPwDwD4YUMr3jqHdSGB9wyBs
        6ZlvCr41QUGySR5goRJNQxQIrhZ19SS6/nbULkMovB6wYEszO667RU4kkJ6rBkOZfRRgvCjT17T
        iHJfJAkNUH/7q4Jj5xjJH9/c3/3UsPO9gqx0S6ms=
X-Received: by 2002:adf:b319:: with SMTP id j25mr5491426wrd.256.1631791004636;
        Thu, 16 Sep 2021 04:16:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPUYPtugKgY5biMl0OjTAOdNuK5egkmHMFoaDuBJ2DWRk5mx3hS8X+eQzKUYhNjcOhIbqIbg==
X-Received: by 2002:adf:b319:: with SMTP id j25mr5491411wrd.256.1631791004497;
        Thu, 16 Sep 2021 04:16:44 -0700 (PDT)
Received: from [192.168.3.211] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id c30sm3021368wrb.74.2021.09.16.04.16.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 04:16:44 -0700 (PDT)
Subject: Re: (subset) [PATCH v2 4/4] ARM: dts: exynos: align PPMU event node
 names with dtschema
To:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        linux-samsung-soc@vger.kernel.org,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        linux-kernel@vger.kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
        linux-pm@vger.kernel.org, Lukasz Luba <lukasz.luba@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>
References: <20210820150353.161161-1-krzysztof.kozlowski@canonical.com>
 <20210820150353.161161-4-krzysztof.kozlowski@canonical.com>
 <CGME20210915075117eucas1p11e3c07d77f1f0dc43c9e4685665eb494@eucas1p1.samsung.com>
 <163169222223.16372.15525688455985156121.b4-ty@canonical.com>
 <9ed20f4b-ca45-54d3-2577-976a9e55eb9d@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <0212a402-1490-0f8f-005e-32bb6f636a13@canonical.com>
Date:   Thu, 16 Sep 2021 13:16:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <9ed20f4b-ca45-54d3-2577-976a9e55eb9d@samsung.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/09/2021 13:15, Marek Szyprowski wrote:
> Hi Krzysztof,
> 
> On 15.09.2021 09:50, Krzysztof Kozlowski wrote:
>> On Fri, 20 Aug 2021 17:03:53 +0200, Krzysztof Kozlowski wrote:
>>> Use hyphen instead of underscore and align the PPMU event node name with
>>> dtschema.
>>>
>>>
>> Applied, thanks!
>>
>> [4/4] ARM: dts: exynos: align PPMU event node names with dtschema
>>        commit: fb9b199e562d66af90f61d70eb737fa5e4deac2c
>>
> This breaks probing of Exynos event counters, which are needed by the 
> Exynos DMC driver on Odroid XU3/XU4/HC1 boards. Just check the today's 
> linux-next. I had no time to analyze which part of the code depends on 
> the node names though...

Thanks for the report. I'll drop the patch from my queue and check later
the driver.


Best regards,
Krzysztof
