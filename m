Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B8F6711265
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 19:29:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241160AbjEYR34 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 13:29:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240264AbjEYR3q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 13:29:46 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 103D49B
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 10:29:45 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ADD591042;
        Thu, 25 May 2023 10:30:29 -0700 (PDT)
Received: from [10.1.196.40] (e121345-lin.cambridge.arm.com [10.1.196.40])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A93E43F6C4;
        Thu, 25 May 2023 10:29:43 -0700 (PDT)
Message-ID: <1c2b2819-e464-1884-fd73-7e3580bb4fc1@arm.com>
Date:   Thu, 25 May 2023 18:29:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: dt_binding_check report false alarm?
Content-Language: en-GB
To:     William Zhang <william.zhang@broadcom.com>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        f.fainelli@gmail.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
References: <20230525050241.3700-1-william.zhang@broadcom.com>
 <20230525-wrench-lushness-f9a1ad022798@wendy>
 <00604ffd-ccb3-e640-5457-1fa1ed663d26@broadcom.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <00604ffd-ccb3-e640-5457-1fa1ed663d26@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/05/2023 4:23 pm, William Zhang wrote:
> Sorry for the multiple emails. Our mail relay server was not working 
> properly.
> 
> Hi Conor,
> 
> On 05/25/2023 06:23 AM, Conor Dooley wrote:
>> Hey William,
>>
>> On Wed, May 24, 2023 at 10:02:41PM -0700, William Zhang wrote:
>>> Hi,
>>>
>>> It seems dt_binding_check reports a false error when run on this
>>> modified yaml. I picked this simple file just to demostrate this issue.
>>> Basically I made the interrupts and interrupt-names as optional
>>> properties. But when there are two interrupts present, then
>>> interrupt-names are required.  However in the example, I don't define
>>> interrupts and interrupt-name at all, the dt binding check reports error
>>> that interrupt-names are required:
>>
>> Rob and Krzysztof would know more than me, but since they're not
>> around...
>>
>>> diff --git 
>>> a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml 
>>> b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>>> index 563a31605d2b..c37a3a64a78c 100644
>>> --- a/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>>> +++ b/Documentation/devicetree/bindings/crypto/fsl-imx-scc.yaml
>>> @@ -32,11 +32,18 @@ properties:
>>>     clock-names:
>>>       const: ipg
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        interrupts:
>>> +          minItems: 2
>>
>> ...I don't think you can actually do this and "minItems: 2" will always
>> evaluate to true because it is an assignment. Don't hold me to that
>> though! The standard pattern here is to do:
>> allOf:
>>    - if:
>>        properties:
>>          compatible:
>>            contains:
>>              const: foo
>>      then:
>>        required:
>>          - interrupt-names
>>
>> Cheers,
>> Conor.
>>
> Our device can use one or two interrupt, or choose to not use interrupt 
> at all(polling mode). Interrupt names is only required when there are 
> two interrupts(so the driver code can tell which is which).  So I will 
> need to check if it contains two interrupts. My check does work if I 
> have two interrupt but don't have interrupt name, the check catches the 
> error.  If I have one interrupt without interrupt name, the check pass. 
> Only when I does not have interrupt and interrupt name,  it falsely 
> report error.  Looks to me that it does not treat minItem = 0 case 
> properly.

Note that minItems = 0 is *not* the same as the property being absent 
(that would represent an empty property, i.e. just "interrupts;")

The conditional schema fragment only says that an "interrupts" property 
must have at least two entries in order to match. However it doesn't say 
that the property is required, and thus the example DT (without the 
property) does not fail to match the constraints of the given schema, 
and thus the condition ends up true.

It certainly took me several goes to get my head round how conditionals 
work, and the notion that what goes under the "if:" is a schema 
definition in its own right :)

Robin.

> 
> 
>>> +    then:
>>> +      required:
>>> +        - interrupt-names
>>> +
>>>   required:
>>>     - compatible
>>>     - reg
>>> -  - interrupts
>>> -  - interrupt-names
>>>     - clocks
>>>     - clock-names
>>> @@ -49,6 +56,4 @@ examples:
>>>           reg = <0x53fac000 0x4000>;
>>>           clocks = <&clks 111>;
>>>           clock-names = "ipg";
>>> -        interrupts = <49>, <50>;
>>> -        interrupt-names = "scm", "smn";
>>>       };
>>> -- 
>>> 2.34.1
>>>
>>
>>
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
