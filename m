Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CA52640174
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 09:01:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231705AbiLBIBZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 03:01:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231661AbiLBIBY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 03:01:24 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59EBB6B3A1
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 00:01:23 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id j4so6290843lfk.0
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 00:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=myxyATfyN+1auJfJuG3H5dbd93oQNnjh+ve1JpPtApU=;
        b=jY7HCGbEyRP9FdG8tKLmzbtJXZI8Axu41H2Vys9oMDnirag9oo7VWLM4TwWa9iI9dM
         lVb+H7GoEdDbnTqp/nILHCyel8iTyJ88R0P5t8KkFda0CFrc4knMHL7/4hTe6OZ85OCE
         8MERBbP3ttRPfE3YXR48lY8XR/E21hCyyHRJJuCEUjo/Lwglp7Jc95d8sJc60fWqEDra
         dJnnmoYYkBGxGGbbM5OPL+gcLn0o1X6d6GhfHtxlXDnMJwo5SACyWEkcejWhihkb3fUr
         FpbS97VBffF5cZR5YK6sa0xrZetZbPAfkeAvNpRhWxWg5gGD2gSQyz51HM0Uv0gDrL03
         /ULw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=myxyATfyN+1auJfJuG3H5dbd93oQNnjh+ve1JpPtApU=;
        b=s/eTkRjJoxEhTvOnFP9hR28xPCmC+dCQsW5vGGr9bkh1u3aPf8bYacc1+e+hjyG/1x
         btNF3Pp+XVjcnt9EIWiC15SZ60mAjM+xRkHGIAYPvFGAX5xJoQ14ofub0tHmigH6eMch
         B5tGD4nWVVBCGzN7jS+VnXQwsnjrFrxgIpieE1kvfWQMP3DjiLRTK44mWIyCVxja/LzE
         bx+qIoDnX0OD9SUM96pGmOwCQtTpapjtroMVR+MMoFZ+gl9Dv7gilhNw2pApCZ/y8VzB
         6wgQLwTHOn6CDg31wolvV6ZcFgZR0Robc+bS3niaWZqDoa7s8roQPeAnvaW1jDOA9H0C
         nk9w==
X-Gm-Message-State: ANoB5pkkAYLtNEwyXWw66lrdikkd+Kn3NpQv8f9qsG3gL14zp3kfiOIB
        7Mq4z+7/0bvPmpY61uH+AeOEKcaFf+tn7Bcw8vE=
X-Google-Smtp-Source: AA0mqf6kG9n38g0CPH5KhVFXIHW7Ha126mJzbmxKhe6FZ82LqLmbRbd47TptGcuSA0OZG9yXslUBSQ==
X-Received: by 2002:a05:6512:3e0c:b0:4a9:bdb3:9db8 with SMTP id i12-20020a0565123e0c00b004a9bdb39db8mr27055157lfv.643.1669968081531;
        Fri, 02 Dec 2022 00:01:21 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b13-20020a0565120b8d00b004b373f61a60sm940253lfv.96.2022.12.02.00.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Dec 2022 00:01:19 -0800 (PST)
Message-ID: <3a9ef360-73c3-cf26-3eca-4903b9a04ea3@linaro.org>
Date:   Fri, 2 Dec 2022 09:01:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v1 1/7] dt-bindings: net: snps,dwmac: Add compatible
 string for dwmac-5.20 version.
To:     yanhong wang <yanhong.wang@starfivetech.com>,
        linux-riscv@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Richard Cochran <richardcochran@gmail.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>
References: <20221201090242.2381-1-yanhong.wang@starfivetech.com>
 <20221201090242.2381-2-yanhong.wang@starfivetech.com>
 <277f9665-e691-b0ad-e6ef-e11acddc2006@linaro.org>
 <22123903-ee95-a82e-d792-01417ceb63b1@starfivetech.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <22123903-ee95-a82e-d792-01417ceb63b1@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/12/2022 03:53, yanhong wang wrote:
> 
> 
> On 2022/12/2 0:18, Krzysztof Kozlowski wrote:
>> On 01/12/2022 10:02, Yanhong Wang wrote:
>>> Add dwmac-5.20 version to snps.dwmac.yaml
>>
>> Drop full stop from subject and add it here instead.
>>
> 
> Will update in the next version.
> 
>>>
>>> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
>>> Signed-off-by: Yanhong Wang <yanhong.wang@starfivetech.com>
>>
>> Two people contributed this one single line?
>>
> 
> Emil made this patch and I submitted it.

If Emil made this patch, then your From field is incorrect.

Best regards,
Krzysztof

