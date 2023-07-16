Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB38375501F
	for <lists+devicetree@lfdr.de>; Sun, 16 Jul 2023 19:38:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbjGPRiy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jul 2023 13:38:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbjGPRiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jul 2023 13:38:54 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF27FE5D
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 10:38:52 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51e2a6a3768so5331008a12.0
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 10:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689529131; x=1692121131;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dnj2dm4vAkRY2ym0OVHyApOFbv82RoBY1nhPV64txIc=;
        b=ca2vSsFEY38zKN0EbYp6domY97w81vz0hIi07dVBT5hifthGJze3JUOsxydAMxe/hA
         C1la7xfOBPKT1xW/R3iK/TBh08wi1ABM7XnCU1B2b9WwuqojVljCidbsz6JDVMr0fqD2
         UdqEbS3rKKCuBoev+pjjB61sb43U0J/+71OuK7GUb3iZdJ/mZ0wMGZ3yd+VM9Ic+/NTZ
         88PlyGo9190saQM4NW3HtsnTNPamtSWJGnRHA0SiLfRGdhx2gUXHwtYM7MduxZrKWRTU
         qLVZ2kUWC5Tvi3Y1ymPafOEJeCPyowC+lW9Zgkgh3JxI1FZhvD1ZF8nV3NBE2Qj7QVVO
         mrqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689529131; x=1692121131;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dnj2dm4vAkRY2ym0OVHyApOFbv82RoBY1nhPV64txIc=;
        b=FsDQ1MGp/Pkf7Um3xZZdSHR7DkxfIdrzSxGXHjaeEAyM8s7Vk2xcwm+OLVtKR8hR82
         6EkkyRcN6uAKMRAM/F7SDRj+aEC8Y6xQW/En2GyyNTSWxtjf2hdWK1805KR4Txe2D9dH
         RLGByigyHGv6CvegqWbSUtajscKX7W19vSOjm+Ci0PKo2/b9+snwCCTUriSAxf0bcTqv
         tHrj9xOeAujSczblaDW7tRjpyVgQjDcryJgGLZm4S68enz1cyE+m0iF+7z/00a4AjmIg
         Yqqlj2B2ofOH5vx86aufNH/s4vedaYPuTz6UOMGfmV/LWKwQqSV5cgmZrKce0mh9+Kpy
         1CaA==
X-Gm-Message-State: ABy/qLaRiAcEa+46DKpJMYNZ44mE+Ffwwuf5/3jhOJgbKgCQ6f0xRXNn
        IKZp6YVz8WJXztbZCpnvjm7gLQ==
X-Google-Smtp-Source: APBJJlESRlu42cRoBqDewXcLEuNc4SOEf32yD7ybhMHPRpitvwU2E7d+YPl8NrMEY+pgx94+m5nxuA==
X-Received: by 2002:a50:ff13:0:b0:521:7577:d34 with SMTP id a19-20020a50ff13000000b0052175770d34mr4690734edu.0.1689529131025;
        Sun, 16 Jul 2023 10:38:51 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id p3-20020a056402074300b0051bec856cb4sm8721685edy.50.2023.07.16.10.38.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Jul 2023 10:38:50 -0700 (PDT)
Message-ID: <4a627f7f-05c8-cbb1-1c21-e121729de1bc@linaro.org>
Date:   Sun, 16 Jul 2023 19:38:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] ARM: dts: samsung: s3c6410-mini6410: correct ethernet
 reg addresses (split)
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        'Rob Herring' <robh+dt@kernel.org>,
        'Conor Dooley' <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <CGME20230713152937epcas5p483e95ece242b0dc2c9a1ada1ba328117@epcas5p4.samsung.com>
 <20230713152926.82884-1-krzysztof.kozlowski@linaro.org>
 <020501d9b63d$b8e29e60$2aa7db20$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <020501d9b63d$b8e29e60$2aa7db20$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2023 12:26, Alim Akhtar wrote:
> Hello Krzysztof
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Thursday, July 13, 2023 8:59 PM
>> To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>; Alim Akhtar
>> <alim.akhtar@samsung.com>; Rob Herring <robh+dt@kernel.org>; Conor
>> Dooley <conor+dt@kernel.org>; linux-arm-kernel@lists.infradead.org; linux-
>> samsung-soc@vger.kernel.org; devicetree@vger.kernel.org; linux-
>> kernel@vger.kernel.org
>> Subject: [PATCH 1/2] ARM: dts: samsung: s3c6410-mini6410: correct ethernet
>> reg addresses (split)
>>
>> The davicom,dm9000 Ethernet Controller accepts two reg addresses.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
> Do you need to add fixes: to send to previous stable releases?
> In any case:


The format was actually working, but indeed it makes sense to backport
it. I'll add it when applying.

Best regards,
Krzysztof

