Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A06B78DA04
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:35:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236379AbjH3SfK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:35:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343768AbjH3QuN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 12:50:13 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B5C2A19A
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 09:50:09 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E34FD2F4;
        Wed, 30 Aug 2023 09:50:48 -0700 (PDT)
Received: from [10.57.4.99] (unknown [10.57.4.99])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 46F773F64C;
        Wed, 30 Aug 2023 09:50:08 -0700 (PDT)
Message-ID: <b6ca79f6-cefc-938f-c960-ba08e328f5c0@arm.com>
Date:   Wed, 30 Aug 2023 17:50:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH] dt-bindings: arm: realview: Spelling s/Cortex
 A-/Cortex-A/
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <af8722c60c35d869732a638e3d8eef9d4f8cd0bf.1693407125.git.geert+renesas@glider.be>
 <240d4c8f-1938-f812-1bd5-81620f3e42fc@linaro.org>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <240d4c8f-1938-f812-1bd5-81620f3e42fc@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2023-08-30 15:59, Krzysztof Kozlowski wrote:
> On 30/08/2023 16:53, Geert Uytterhoeven wrote:
>> Fix misspellings of "Cortex-A8" and "Cortex-A9".
>>
>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> ---
>>   Documentation/devicetree/bindings/arm/arm,realview.yaml | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/arm,realview.yaml b/Documentation/devicetree/bindings/arm/arm,realview.yaml
>> index 8d3ed2e4ed315ca5..c4e9b500e02f122f 100644
>> --- a/Documentation/devicetree/bindings/arm/arm,realview.yaml
>> +++ b/Documentation/devicetree/bindings/arm/arm,realview.yaml
>> @@ -11,7 +11,7 @@ maintainers:
>>   
>>   description: |+
>>     The ARM RealView series of reference designs were built to explore the ARM
>> -  11, Cortex A-8 and Cortex A-9 CPUs. This included new features compared to
>> +  11, Cortex-A8 and Cortex-A9 CPUs. This included new features compared to
> 
> Probably "ARM" should be moved here to have "ARM 11" in one line,

Indeed, if we're getting product names right then it's "ARM11" (or 
"Arm11" these days...)

Cheers,
Robin.

> but
> anyway:
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
