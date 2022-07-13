Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5660B573B06
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 18:20:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236426AbiGMQUK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 12:20:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236087AbiGMQUJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 12:20:09 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1543525F
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 09:20:08 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id d16so16187603wrv.10
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 09:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=O3+Y7xcE56ph/bvUjELsiX/t1x6avdlbiSjzSBYYUlE=;
        b=aSUHr0nuX4xfoUZDKsuhmdVDCaLbqOoeKmHWM4teWn4+t2CDpIjvsny21pSIbMWgpd
         GZxeidyUizUQPGBEqinM4bNO05NJpRDTZ6D1ua5cUrfKHAXJLlBII5SM7S0r1ohxrHHB
         EbECwQtw0ByEA1f6HOEIA964/yBOZyilvpneKDkL11pbscTCPyATKIS5T3T1fkHuAXF9
         J5q9vEOKPZGPrt58qfJsPysNqGzFZchy6yx+fChKra/FQ0UtxuhPUEyhfUa/T0+ILeJe
         7i6+gLK7jFjOoxWkm6Iil/N30e1HefVX1LQ6XGzkw1/GKGOj+ZN7Jgo/GWm7cZSIksEE
         vJrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=O3+Y7xcE56ph/bvUjELsiX/t1x6avdlbiSjzSBYYUlE=;
        b=pl0mSUIDHhb4t/qj5LGAjJPspudujkEE3chgFR4UzV21A4/Kk/+cesceiMsBBrNfnQ
         5Ys3AyoLmgelBbHhAPMJE4+SEpj1EZKgdbGyFsA0TlzxfWR36MRBS8o7uDNu7pNN6WYL
         iwwL5TuQLAK8tHS3trVoeA69QS6VEr3wvO4s17EI8Z9MHjaGbndksfnDEaQCENASTNbM
         5rFd3a5CRY/koBQYLPsInlhjqEjK0AE54h/26Abed8y4i4mefXkciXcpbdIOYRDexXpx
         S4kRQ7U3Kx3bLj+hJrLR+7iLj4w6i3P+ddGTk+9MeTF7rxO7v6tfHmTY/92HKDubwlCf
         c0mg==
X-Gm-Message-State: AJIora9iJbDmWGINQ+LDjULVdo8sXWVVLHVF1qCvAP6EBSvVKneX9jJY
        tN9I11t4lg75BDcFjD1Wz/EnfQ==
X-Google-Smtp-Source: AGRyM1utO9qcCtGSq+NZKZMNSEDCuaTjWDFpSNSpcDbotF2tXMRHIpZ7Q/OQt5gzO40+J1VuZR0wEQ==
X-Received: by 2002:adf:9d92:0:b0:21d:66c4:e311 with SMTP id p18-20020adf9d92000000b0021d66c4e311mr4282466wre.575.1657729206626;
        Wed, 13 Jul 2022 09:20:06 -0700 (PDT)
Received: from [192.168.0.17] (cpc152649-stkp13-2-0-cust121.10-2.cable.virginm.net. [86.15.83.122])
        by smtp.gmail.com with ESMTPSA id w13-20020adff9cd000000b0021d20461bbbsm11405894wrr.88.2022.07.13.09.20.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jul 2022 09:20:06 -0700 (PDT)
Message-ID: <83b53b26-6621-d580-c704-b7c82bd96a12@sifive.com>
Date:   Wed, 13 Jul 2022 17:20:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 3/7] pwm: dwc: add of/platform support
Content-Language: en-GB
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc:     Rob Herring <robh@kernel.org>, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>,
        Sudip Mukherjee <sudip.mukherjee@sifive.com>,
        William Salmon <william.salmon@sifive.com>,
        Adnan Chowdhury <adnan.chowdhury@sifive.com>
References: <20220712100113.569042-1-ben.dooks@sifive.com>
 <20220712100113.569042-4-ben.dooks@sifive.com>
 <20220712221715.GT1823936-robh@kernel.org>
 <feaacf44-f9a8-b892-d8ba-8a396b49d56b@sifive.com>
 <20220713135230.gjbd3v6iih2uicpu@pengutronix.de>
 <7999fec2-847a-86ce-ed78-d2a9008bf654@sifive.com>
 <20220713150755.bimcq2yiuvxn6n6v@pengutronix.de>
From:   Ben Dooks <ben.dooks@sifive.com>
In-Reply-To: <20220713150755.bimcq2yiuvxn6n6v@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2022 16:07, Uwe Kleine-König wrote:
> On Wed, Jul 13, 2022 at 03:30:07PM +0100, Ben Dooks wrote:
>> On 13/07/2022 14:52, Uwe Kleine-König wrote:
>>> On Wed, Jul 13, 2022 at 12:56:55PM +0100, Ben Dooks wrote:
>>>> On 12/07/2022 23:17, Rob Herring wrote:
>>>>> On Tue, Jul 12, 2022 at 11:01:09AM +0100, Ben Dooks wrote:
>>>>>> The dwc pwm controller can be used in non-PCI systems, so allow
>>>>>> either platform or OF based probing.
>>>>>>
>>>>>> Signed-off-by: Ben Dooks <ben.dooks@sifive.com>
>>
>> [snip]
>>
>>>>>> +properties:
>>>>>> +  "#pwm-cells":
>>>>>> +    description: |
>>>>>> +      See pwm.yaml in this directory for a description of the cells format.
>>>>>
>>>>> pwm.yaml doesn't define how many cells. You need to. And you don't need
>>>>> generic descriptions.
>>>>
>>>>    "#pwm-cells":
>>>>       const: 1
>>>>
>>>> should be sufficient then?
>>>
>>> I would expect a value of (at least) 2 or (better) 3.
>>
>> OOPS, forgot the phandle.
>>
>> I will have to check if we have any support yet for dealing
>> with any of the pwm flags yet.
> 
> I didn't double check, but given that the driver only supports inversed
> polarity it might not even work without passing the flag for inversed
> polarity. Having said that, I expect you have to only add "#pwm-cells =
> <3>;" to your dts and then everything should work just fine.

I hadn't noticed, but we've been testing with the sysfs interface
as we're using qemu.

