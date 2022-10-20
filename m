Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A529D60601D
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 14:26:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiJTM02 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 08:26:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229657AbiJTM01 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 08:26:27 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B026D1CC775
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 05:26:24 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id 8so12630295qka.1
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 05:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z35CHfIo/k+5SK0avyjXmSH7QphOLsx6M4JfxDdxdx8=;
        b=kfGCAuEc50/vYbYmv6hupzxGYg5ZP3qZYgRby99LJERMtUEXdDajVOxUzPstIcgTK9
         8JYOH3al2tB/15OQvofm/6zNUdF4VphgWrkepVdmWLAFH+BbmAffFif529CENA3KhXAA
         WCXIJubAsBv5donkfXg/y5s9faCx9LHWhErD6aeveh7VcSWXm/Wh46V2TCSYGdlZ0nD5
         FdHp/VpExaZ2/0c46vyOGUyPmGAH7SmfjbbPusfUE5juzZiIq9n0dOz1upg9KfefO8RW
         mgcOpAIt6mJ79wNbJpnlkyYLmuVwAIWEPjSdxdBZB4eajDy8qc/5iNjz9ndQ7a4fBUZZ
         Zsvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z35CHfIo/k+5SK0avyjXmSH7QphOLsx6M4JfxDdxdx8=;
        b=xbQkswrT1+GMp8bu5ansE/5hv//AFj/0ipfhOXQvQ5fXw1wPv1P8H9VeyU59DYwbUQ
         Fj4JhG0m0fxKfeBUt2lQW/1z5S1d8SlKKUpLNc0UHFyxXml0h6YdzQKRVksyABmezKms
         8MEmXo8A0SE9WyG4VKu1FSWCS6rM1Txr2ML9FcHSe6cEc/+Ky1JLyCsMKpUXHA6oqVn3
         FB/47kiZW9UPhELUDT5d4iJZN+0SAwGiK5Rnuwz+uSHB1vtiRdZdNqf15FPXZ816ghTo
         PYTJVtNVY9TgdWn+PqTtduyJUaBleCGt7LTidbsgZpc9SIJrKKOBcyEwGhTVxSBndA4b
         X5aQ==
X-Gm-Message-State: ACrzQf0pCg5EvzvISObiyeeJCkGdAahFel8zIFH9B8Nkxc7/UhIvVi6V
        KC7x3ZsC0suAXKAyNw+rDCdBNw==
X-Google-Smtp-Source: AMsMyM6j2n7+v4i6tnbwbNhOcoDTPvRI3fl15/3CNAOXX3ScmHm7T/WpjGRGNNlw0Y3f2dz/turXjg==
X-Received: by 2002:ae9:f50a:0:b0:6e3:3b4f:2ab1 with SMTP id o10-20020ae9f50a000000b006e33b4f2ab1mr8970873qkg.314.1666268783784;
        Thu, 20 Oct 2022 05:26:23 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id ca27-20020a05622a1f1b00b003436103df40sm5971645qtb.8.2022.10.20.05.26.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 05:26:23 -0700 (PDT)
Message-ID: <bf9fc4f9-c3fd-a056-aed3-34b0e17f845b@linaro.org>
Date:   Thu, 20 Oct 2022 08:26:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 1/2] dt-bindings: Add the binding doc for xilinx APM
Content-Language: en-US
To:     "Datta, Shubhrajyoti" <shubhrajyoti.datta@amd.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Cc:     "git (AMD-Xilinx)" <git@amd.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "will@kernel.org" <will@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "michal.simek@xilinx.com" <michal.simek@xilinx.com>
References: <20221019091713.9285-1-shubhrajyoti.datta@amd.com>
 <20221019091713.9285-2-shubhrajyoti.datta@amd.com>
 <f103812b-5eb5-8c19-e379-16b347ea80ce@linaro.org>
 <BY5PR12MB4902C7CB6F85513BCD1BF7B0812A9@BY5PR12MB4902.namprd12.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <BY5PR12MB4902C7CB6F85513BCD1BF7B0812A9@BY5PR12MB4902.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/10/2022 05:37, Datta, Shubhrajyoti wrote:
> [AMD Official Use Only - General]
> 
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Wednesday, October 19, 2022 5:53 PM
>> To: Datta, Shubhrajyoti <shubhrajyoti.datta@amd.com>; linux-arm-
>> kernel@lists.infradead.org
>> Cc: git (AMD-Xilinx) <git@amd.com>; devicetree@vger.kernel.org;
>> will@kernel.org; mark.rutland@arm.com; robh+dt@kernel.org;
>> krzysztof.kozlowski+dt@linaro.org; michal.simek@xilinx.com
>> Subject: Re: [PATCH v1 1/2] dt-bindings: Add the binding doc for xilinx APM
>>
>> Caution: This message originated from an External Source. Use proper
>> caution when opening attachments, clicking links, or responding.
>>
>>
>> On 19/10/2022 05:17, Shubhrajyoti Datta wrote:
>>> The LogiCORE IP AXI Performance Monitor core enables AXI system
>>> performance measurement for multiple slots (AXI4/AXI3/
>>> AXI4-Stream/AXI4-Lite) activity. Add the devicetree binding for xilinx
>>> APM.
>>
>> Subject:
>> Drop redundant "bindings" and add missing prefix, so:
>>
>> dt-bindings: perf: Add Xilinx APM
> Will update.
>>
>>>
>>> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
>>> ---
>>>
>>> Changes in v1:
>>
>> This should be then a v2.
> Earlier one was an RFC so I had made it v1.

RFC is also a version. v1 is the first submission we see, so if it was a
RFC, it was a v1.

> 
>>
>>>  - Use boolean for the values xlnx,enable-profile , xlnx,enable-trace
>>> and xlnx,enable-event-count
>>> - Update the file name
>>> - use generic node name pmu
>>>
>>>  .../bindings/perf/xlnx,axi-perf-monitor.yaml  | 133
>>> ++++++++++++++++++
>>>  1 file changed, 133 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
>>> b/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
>>> new file mode 100644
>>> index 000000000000..bd3a9dbc1184
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yam
>>> +++ l
>>> @@ -0,0 +1,133 @@
>>> +# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause %YAML 1.2
>>> +---
>>> +$id:
>>>
>> +https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
>>> +cetree.org%2Fschemas%2Fperf%2Fxlnx%2Caxi-perf-
>> monitor.yaml%23&amp;dat
>>>
>> +a=05%7C01%7Cshubhrajyoti.datta%40amd.com%7C15905dd06b164f7de3d
>> 508dab1
>>>
>> +ccb630%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C638017790
>> 04335677
>>>
>> +2%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMz
>> IiLCJBTiI
>>>
>> +6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=zOrK%2FG
>> dlP87S%2FTp
>>> +XqdnrNSk0PyJgWRJYU4EZHgJtqMA%3D&amp;reserved=0
>>> +$schema:
>>>
>> +https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
>>> +cetree.org%2Fmeta-
>> schemas%2Fcore.yaml%23&amp;data=05%7C01%7Cshubhrajy
>>>
>> +oti.datta%40amd.com%7C15905dd06b164f7de3d508dab1ccb630%7C3dd89
>> 61fe488
>>>
>> +4e608e11a82d994e183d%7C0%7C0%7C638017790043356772%7CUnknown
>> %7CTWFpbGZ
>>>
>> +sb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6
>> Mn0%
>>>
>> +3D%7C3000%7C%7C%7C&amp;sdata=Vl1TpXVHyuS6YmnSP%2BKPOO8D5ap
>> 0y9jtV52Q9s
>>> +%2F1pvQ%3D&amp;reserved=0
>>> +
>>> +title: Xilinx Axi Performance Monitor
>>> +
>>> +maintainers:
>>> +  - Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: xlnx,axi-perf-monitor
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  clocks:
>>> +    maxItems: 1
>>> +
>>> +  interrupts:
>>> +    maxItems: 1
>>> +
>>> +  xlnx,enable-profile:
>>> +    description:
>>> +      Enables the profile mode. Event counting in profile mode consists of a
>>> +      fixed number of accumulators for each AXI4/AXI3/AXI4-Lite slot. All the
>>> +      events that can be counted are detected and given to the accumulator
>>> +      which calculates the aggregate value. There is no selection of events,
>>> +      and in this mode, event counting is done only on AXI4/AXI3/AXI4-Lite
>>> +      monitor slots.
>>> +    type: boolean
>>> +
>>> +  xlnx,enable-trace:
>>> +    description:
>>> +      Enables trace mode. In trace mode, the APM provides event logging in
>> a
>>> +      reduced dynamic configuration. It captures the specified AXI events,
>>> +      external events and the time stamp difference between two successive
>>> +      events into the streaming FIFO. The selection of events to be captured
>>> +      is set through parameter configuration. Streaming agents are not
>>> +      supported in trace mode.
>>> +    type: boolean
>>
>> Both enable profile and enable trace do not look like hardware properties,
>> but rather runtime features. In what use case this enabling trace or profile
>> should be a property of a hardware?
>>
> The hardware being on FPGA is configurable what capabilities it will have.
> Once chosen to have say the trace it will have tracing capabilities else it will not have.

Sorry, still do not understand. What does it mean "hardware on FPGA is
configurable" in context of property meaning - "enables XXXX"? So you
here configure hardware attached to FPGA to have some piece or not? You
need to answer more.

Have in mind that I read your description how it is written, so
including language grammar. You specifically said "Enables trace mode"
which means for the same device/hardware we can enable or disable trace
mode.

If the meaning is different, please use correct grammar for it.


> 
>>> +
>>> +  xlnx,num-monitor-slots:
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    description:
>>> +      Number of monitor slots.
>>> +    minimum: 1
>>> +    maximum: 8
>>> +
>>> +  xlnx,enable-event-count:
>>> +    description:
>>> +      Enable event count.
>>
>> The same
>>
>>> +    type: boolean
>>> +
>>> +  xlnx,enable-event-log:
>>> +    type: boolean
>>> +    description:
>>> +      Enable event log.
>>
>> The same
> Similarly whether event logging capabilities will be there in the hardware is configurable.
> If enabled then it have event logging capabilities.
> 
>>
>>> +
>>> +  xlnx,have-sampled-metric-cnt:
>>> +    type: boolean
>>> +    description:
>>> +      Sampled metric counters enabled in APM.
>>> +
>>> +  xlnx,metric-count-width:
>>> +    allOf:
>>> +      - $ref: /schemas/types.yaml#/definitions/uint32
>>> +      - enum: [32, 64]
>>
>> This is a friendly reminder during the review process.
>>
>> It seems my previous comments were not fully addressed. Maybe my
>> feedback got lost between the quotes, maybe you just forgot to apply it.
>> Please go back to the previous discussion and either implement all requested
>> changes or keep discussing them.
>>
> I tried to address the comments in 
> https://lore.kernel.org/linux-arm-kernel/BY5PR12MB4902474D74155E57BF5D7B9C814F9@BY5PR12MB4902.namprd12.prod.outlook.com/
> 
> I thought I have implemented all the comments.  Let me know if I missed something.

Yes, you miss several of them. I commented here under first change with
ignored comment.

Best regards,
Krzysztof

