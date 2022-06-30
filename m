Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F28E56174B
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 12:08:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234049AbiF3KHo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 06:07:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234811AbiF3KHW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 06:07:22 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD6A2443CB
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 03:07:05 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id cf14so25841670edb.8
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 03:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=QiZFE3NY4GpzbWqcVyfbAnOQf74waO1WZQ6maNc0JPw=;
        b=eo3tpQhml3zuLS6EMetDbiMihtcGUCI0LuemTL7CehN2ehr/usuoPH5bwJZgtW6Dbj
         hHhi8hchNa20ttbPTb4C/agoXHVRFnA7C2mNoYAhVgG21xklwR39m3HaNLIAfVgp+O2B
         HUhU73gt3m0oEw2UlAcQeRZWyEQyKhjMuEsQRoQzO8V+AZHuVzw5jZZs2JKTzFyPfBWe
         KDqG9UiR+DK+rd7+9BY2eLJNLh/WFrS4F92IWbcyQM5DW5rklklTVjMfjkPo+ldsKte2
         XNsnceeVIgLLnGybmTqhOP+2XwLkQmQCYsgTvB68lwEppERccpmnsZ/6zfeUWteWzbCG
         5Hxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QiZFE3NY4GpzbWqcVyfbAnOQf74waO1WZQ6maNc0JPw=;
        b=ljWXZFDFIQDaEIpvbw3jFtfV41VOlNtQQ+KTH2oCyitC7LKwo0/erJgC3CtJW9HM/X
         mnppt1pXEYhf+U1sloU+RLE8feTgrnDz49/mltNZv55k3/A+LLP0Y+p+IFyoA3iuHRKi
         rTN6CNZzKw6DOeNyIWTI6WWlb0Ff5+RZwkO72uS9C2XuQOBbUrOvpDwP71x2El9L3vpz
         Z7oMlzl1V6eDZ9R2X6IASKABk/0uyRqnTBD9avYN+nbkldTEgjztCQuTpfu2fvcBhMY+
         2CX+F2r9YxqG0fS00PtWep34cWGlg/weSCVOmfWwOT2Q+kct8wZy5s1pkqf0Mry1xmRT
         j1vw==
X-Gm-Message-State: AJIora8UI4CJOwh8UuM87RoRdDDSKykczPNQeogKg/SsXoFV4ROeW6zk
        4wRQTacORRfdCTYU7kPCQh542g==
X-Google-Smtp-Source: AGRyM1sRuht+AaZtKiV7wXncnzcPYsM4VrO1Sxs8tTbqxYOin4IohCnFH9E62zxQFeOe/1NdCdXk4w==
X-Received: by 2002:aa7:d5c9:0:b0:435:8099:30e6 with SMTP id d9-20020aa7d5c9000000b00435809930e6mr10509066eds.384.1656583624201;
        Thu, 30 Jun 2022 03:07:04 -0700 (PDT)
Received: from [192.168.0.189] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jz18-20020a17090775f200b0070fd7da3e47sm8859460ejc.127.2022.06.30.03.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 03:07:03 -0700 (PDT)
Message-ID: <6fafbed8-9c6d-ae1b-c613-44982b681276@linaro.org>
Date:   Thu, 30 Jun 2022 12:07:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/4] dt-bindings: misc: tmr-manager: Add device-tree
 binding for TMR Manager
Content-Language: en-US
To:     "Rao, Appana Durga Kedareswara" 
        <appana.durga.kedareswara.rao@amd.com>,
        "Simek, Michal" <michal.simek@amd.com>,
        Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
        "derek.kiernan@xilinx.com" <derek.kiernan@xilinx.com>,
        "dragan.cvetic@xilinx.com" <dragan.cvetic@xilinx.com>,
        "arnd@arndb.de" <arnd@arndb.de>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Cc:     "git (AMD-Xilinx)" <git@amd.com>, "git@xilinx.com" <git@xilinx.com>
References: <20220628054338.1631516-1-appana.durga.rao@xilinx.com>
 <20220628054338.1631516-2-appana.durga.rao@xilinx.com>
 <fc685f00-41e5-e64c-09b8-662b01a46f6c@linaro.org>
 <6f5a1b1e-b484-3a15-00be-2c1ddc09468e@amd.com>
 <e43bede7-2a0a-5114-e9ec-9e1449bf4e47@linaro.org>
 <a653cb16-4aa9-693a-ac32-cc7b1b999b92@amd.com>
 <dd709b5a-1cd8-0343-028a-5d134a9de81a@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <dd709b5a-1cd8-0343-028a-5d134a9de81a@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/06/2022 14:37, Rao, Appana Durga Kedareswara wrote:
> Hi,
> 
> 
> On 29/06/22 5:29 pm, Michal Simek wrote:
>>
>>
>> On 6/29/22 13:45, Krzysztof Kozlowski wrote:
>>> On 29/06/2022 13:23, Michal Simek wrote:
>>>>
>>>>
>>>> On 6/29/22 12:07, Krzysztof Kozlowski wrote:
>>>>> On 28/06/2022 07:43, Appana Durga Kedareswara rao wrote:
>>>>>> This commit adds documentation for Triple Modular Redundancy(TMR) 
>>>>>> Manager
>>>>>> IP. The Triple Modular Redundancy(TMR) Manager is responsible for 
>>>>>> handling
>>>>>> the TMR subsystem state, including fault detection and error recovery
>>>>>> provides soft error detection, correction and recovery features.
>>>>>>
>>>>>> Signed-off-by: Appana Durga Kedareswara rao 
>>>>>> <appana.durga.rao@xilinx.com>
>>>>>> ---
>>>>>>    .../bindings/misc/xlnx,tmr-manager.yaml       | 48 
>>>>>> +++++++++++++++++++
>>>>>
>>>>> This is not a misc device. Find appropriate subsystem for it. It's not
>>>>> EDAC, right?
>>>>
>>>> We were thinking where to put it but it is not EDAC driver.
>>>> If you have better suggestion for subsystem please let us know.
>>>
>>> I don't know what's the device about. The description does not help:
>>>
>>> "TMR Manager is responsible for TMR subsystem state..."
>>
>> ok. let's improve commit message in v2.
> 
> Sure will improve the commit message in v2.
>>
>> TMR - triple module redundancy.
>>
>> You design the system with one CPU which is default microblaze 
>> configuration with interrupt controller, timer and other IPs.
>>
>> And then say I want to do it triple redundant with all that voting, etc.
>> If you want to get all details you can take a look at this guide
>>
>> https://www.xilinx.com/content/dam/xilinx/support/documents/ip_documentation/tmr/v1_0/pg268-tmr.pdf 
>>
>>
>> In short TMR manager is servicing all that 3 cores and making sure that 
>> they are all running in sync. If not it has capability recover the 
>> system. It means cpu gets to break handler (it is the part of microblaze 
>> series) and it restarts all cpus.
>>
>> And TMR inject driver is module which is capable to inject error to 
>> internal memory to cause the exception to exercise that recovery code.
>>
>> Kedar: Feel free to correct me or add more details.
> 
> Thanks Michal for the detailed explanation.
> 
> The Triple Modular Redundancy(TMR) subsystem has three Microblaze 
> processor instances, If any one of the Microblaze processors goes to an 
> unknown state due to fault injection break handler will get called, 
> which in turn calls the tmr manager driver API to perform recovery.
> like Michal said TMR inject driver is capable of inject error to
> internal memory to cause fault in one the Microblaze processor
> 
> @Krzysztof : please let me know if more information required about
> this TMR subsystem will provide.

Some features sound like watchdog. If it was ARM, I would suggest to put
it under "soc". Is a term System-on-Chip applicable to Microblaze? Other
option is to store it under microblaze (although for ARM and RISC-V this
is actually discouraged in favor of soc).

Best regards,
Krzysztof
