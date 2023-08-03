Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5E8C76E682
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 13:14:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234007AbjHCLOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 07:14:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232400AbjHCLOM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 07:14:12 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A15B128
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 04:14:11 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-99bc512526cso121384966b.1
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 04:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691061249; x=1691666049;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bz7M4w89N1Qj4qzojD7WPQXmewiYpLB/S7kPSHWDd6Y=;
        b=OA3p6QPR3AVsmyV3GzKFNQbrJfTeEWbfYPiQnF2rPd6ol0Y0hHhyO/YSjTaIVFMLOC
         yBpNefN9xyzCCt3FAHOBJoDgtWfO8xWwoDo4TR2gsFddEcT5u78clDNHUwBsTP/dgYML
         4lFsd2EiEkhsr0GfVq5C2h9zWIxVC/oQ9n4Obx4DrMJIxs1z5DdyrcOHhpWtJ8l5S3k5
         DC11fhpkp116wnx63BYuFn4YLxQ8t51XwLOIe+ygHJyg8VsL7emoP2uMD2WrB7oeDjy4
         eQxvHPELEtspGoqPSKmErDZYGr01Wm1Jv2QB9DLynJZw57nhpaHw9Yp0zBrcYAdTEySt
         1RVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691061249; x=1691666049;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bz7M4w89N1Qj4qzojD7WPQXmewiYpLB/S7kPSHWDd6Y=;
        b=R1V+swMPDbtVIVOM4md/CKhAGdK4biFsjnJKtRqNEOdg+ILjUBGoKwrn5W1YATfO/I
         o051Xa4Hg2Erdz31/xINKNVEE+TBo1koCXuTCLRrWcn5y/q5Kq92UgX+y+C4nsshHynX
         MU+065Ltu32aVffB3FMd8hwp/AeFfWOA7jtMspmSyhvH/7vgzqPVZKomu0nZGg2epfRI
         fq1i3Vts8LzXfMrsc8hCICQ7/nJSKSImWTv/3tRPuzEhWCeBn9DqJp2DOR0aIzP1f4bZ
         2i+vO1mdyeomrvh4lMZnB1ODujzR0xrjOYZOxTeVt5nD4k/5pwlRQaP+4XilUa8LUrLe
         LaoA==
X-Gm-Message-State: ABy/qLa2Qm6aFqKzdkdFL2meLfhwHnJTYlAD/IPVWgVaPk/PKgThk0Ym
        AxTLSmu0bBWOdPEBAUCywXVzYA==
X-Google-Smtp-Source: APBJJlFyawsd/4ViwQElZD43o2SEQ8gXoVUXKCPY0H5qJIEYPnp0tfDY4O+6BXoX4TRJKeyNxGW7Pg==
X-Received: by 2002:a17:906:105e:b0:99b:d977:c00c with SMTP id j30-20020a170906105e00b0099bd977c00cmr6377108ejj.45.1691061249590;
        Thu, 03 Aug 2023 04:14:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.245])
        by smtp.gmail.com with ESMTPSA id v8-20020a17090690c800b00997e99a662bsm10256142ejw.20.2023.08.03.04.14.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Aug 2023 04:14:09 -0700 (PDT)
Message-ID: <9654ac64-11c6-9fae-0e8d-feb6440dd45c@linaro.org>
Date:   Thu, 3 Aug 2023 13:14:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: add Facebook Yosemite V4
 board
Content-Language: en-US
To:     Delphine_CC_Chiu/WYHQ/Wiwynn <Delphine_CC_Chiu@wiwynn.com>,
        "patrick@stwcx.xyz" <patrick@stwcx.xyz>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20230727033926.1904529-1-Delphine_CC_Chiu@wiwynn.com>
 <c9062d5c-b536-f89c-b380-8a0c9b858526@linaro.org>
 <PS2PR04MB35928B386F03C987061433D2B70BA@PS2PR04MB3592.apcprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <PS2PR04MB35928B386F03C987061433D2B70BA@PS2PR04MB3592.apcprd04.prod.outlook.com>
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

On 02/08/2023 04:34, Delphine_CC_Chiu/WYHQ/Wiwynn wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Thursday, July 27, 2023 2:49 PM
>> To: Delphine_CC_Chiu/WYHQ/Wiwynn <Delphine_CC_Chiu@wiwynn.com>;
>> patrick@stwcx.xyz; Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
>> <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>;
>> Joel Stanley <joel@jms.id.au>; Andrew Jeffery <andrew@aj.id.au>
>> Cc: devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
>> linux-aspeed@lists.ozlabs.org; linux-kernel@vger.kernel.org
>> Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: add Facebook Yosemite V4
>> board
>>
>>   Security Reminder: Please be aware that this email is sent by an external
>> sender.
>>
>> On 27/07/2023 05:39, Delphine CC Chiu wrote:
>>> Document the new compatibles used on Facebook Yosemite V4.
>>>
>>> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
>>> ---
>>>  Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
>>>  1 file changed, 1 insertion(+)
>>
>> I got the same patch four times...
> It was my oversight to send the same patch multiple times.
> Would you please to tell that should I resend a new version, or these patches has been already under reviewed.
> Thank you.

I don't see versioning, no changelog. Thus if you send the same patches
all the time, then answer is - please version your patches, implement
the feedback and explain in changelog what changed.

Otherwise it will not get reviewed, so I assume this was not reviewed
and it is waiting for proper submission.

Best regards,
Krzysztof

