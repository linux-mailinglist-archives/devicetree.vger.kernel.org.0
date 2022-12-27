Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B37B3656881
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 09:40:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229751AbiL0IkT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 03:40:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbiL0IkR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 03:40:17 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE21E302
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 00:40:16 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id bp15so18698745lfb.13
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 00:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=47nwdIXtE+pZeK1IVHBGQLTDsUtFKSm0kYWToZXgE0I=;
        b=P9RmgE+EFdbU6I+2vyVZAMpmfwIvpcp8I9EXwmWTJaQ7iBkd8fE3LZd8CANRtRrmH6
         ji+1lV2yh2WdYAnPEr3dmjNEa+n4PfFoRIK6b5qSF79XR9izLThi4Oh1COyynOKhIWYi
         e/R1RmNET/fNmOGccbruHORWPLuWidMBu5Ekw3pqNS8/2v6xUKchY11MC+F9ynNOhUt3
         bbUaLaoBnvILcJnseEIHMs41T/aRtp9naXiV8qKyhvPEdX4efV4XRLn+W99FcUN81WMI
         Hyw/N3+zJ4nwscnNiM9c1fawUAC+c7ZkE/pR2rKwuku38k1eErmBzGG5VyvvBZXNcu9x
         2IaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=47nwdIXtE+pZeK1IVHBGQLTDsUtFKSm0kYWToZXgE0I=;
        b=Ba1PPdsMKwPUnQwj0APEijBiwLQrtk0rreP3T+gV+3Apu0mKjk8a8QL2exwOhGFZX7
         xOzpZtA58Jl6Uk1mC4ChMuM/RZRU7It/ZrgeVDpnvqHgIdE2ERXIDLV7hlOvCBX8oFF5
         YCO6Z3G/LnVGkFD5MN6fhWa0z8jSP64oetwmA6mPM07Z5sPm3jisRwXLWiggHF0dmOch
         uZFvCKC1XHk5s26vPmryMfjrJvrqhHbLckCeIOW7Mh6cW8kXxhJyICgAYPr3NyOLzts+
         Y4sYejuUHqUZFTeR4kVjCjzEZrTs4T9VN//kcIZSE85dPclXl0IdKfr3D+I2GOJq4zn2
         xQWQ==
X-Gm-Message-State: AFqh2krVk55NcifM2WnS6lS/l7aKJFtGceCJubsDyeidovNY2NaUjHbP
        B6NWo7gMK/+yk8AMrZ12X4vXMw==
X-Google-Smtp-Source: AMrXdXvpUN24LcvZKJxQ+JEkQcIgc3Pz/oxJvnk/MAAr2O2TEO4ytiNn76+Gji3JZM4PYTYakhMQdw==
X-Received: by 2002:a05:6512:3f16:b0:4ca:f97f:4a21 with SMTP id y22-20020a0565123f1600b004caf97f4a21mr3654194lfa.37.1672130414995;
        Tue, 27 Dec 2022 00:40:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p11-20020a19f00b000000b004b6e157d326sm2154107lfc.168.2022.12.27.00.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 00:40:14 -0800 (PST)
Message-ID: <144609b6-8da2-1a2b-941c-4163d38adab1@linaro.org>
Date:   Tue, 27 Dec 2022 09:40:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 2/4] dt-bindings: iio: ti,tmp117: add binding for the
 TMP116
Content-Language: en-US
To:     Marco Felsch <m.felsch@pengutronix.de>,
        Jonathan Cameron <jic23@kernel.org>
Cc:     puranjay12@gmail.com, lars@metafoo.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, kernel@pengutronix.de
References: <20221221092801.1977499-1-m.felsch@pengutronix.de>
 <20221221092801.1977499-3-m.felsch@pengutronix.de>
 <20221223150803.37e2939d@jic23-huawei>
 <20221223150338.iqpnp6z3m35eb5hz@pengutronix.de>
 <20221223153729.3353a315@jic23-huawei>
 <20221223161051.3c6lvmly7tsjh4eu@pengutronix.de>
 <20221223171458.7bc18893@jic23-huawei>
 <20221223171323.qhuhq42tivcdllvq@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221223171323.qhuhq42tivcdllvq@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/12/2022 18:13, Marco Felsch wrote:
> Hi Jonathan,
> 
> On 22-12-23, Jonathan Cameron wrote:
>> On Fri, 23 Dec 2022 17:10:51 +0100
>> Marco Felsch <m.felsch@pengutronix.de> wrote:
>>
>>> On 22-12-23, Jonathan Cameron wrote:
>>>> On Fri, 23 Dec 2022 16:03:38 +0100
>>>> Marco Felsch <m.felsch@pengutronix.de> wrote:
>>>>   
>>>>> On 22-12-23, Jonathan Cameron wrote:  
>>>>>> On Wed, 21 Dec 2022 10:27:59 +0100
>>>>>> Marco Felsch <m.felsch@pengutronix.de> wrote:
>>>>>>     
>>>>>>> The TMP116 is the predecessor of the TMP117.
>>>>>>>
>>>>>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>    
>>>>>> I'm not sure this is introducing a valid fallback. The driver changes
>>>>>> imply some things the tmp117 driver supports, that this device
>>>>>> does not. A fallback compatible would mean that a new DT
>>>>>> with an old kernel would load the tmp117 against a tmp116 and
>>>>>> expect it to fully work.    
>>>>>
>>>>> Since driver does all the detection an update of the bindings isn't
>>>>> really necessary. It is just to have a compatible already in place in
>>>>> case there a things we can't detected during runtime. This flow is
>>>>> common for a lot of SoC drivers. The fallback will be used as long as
>>>>> possible and once a specific feature can't be detected only via the
>>>>> binding, the driver adds the new binding to it of_compatible.  
>>>>
>>>> That's true going forwards and for drivers that introduce a shared
>>>> generic compatible alongside the initial binding. It can't be easily
>>>> retrofit.
>>>>
>>>> Fallback compatible is also to allow this to work with old kernels  

Yes, if the devices are compatible, e.g. there is no need to change in
the driver to support new device.

If the devices need auto-detection and are compatible in an auto-detect
way, then I don't think we have such goal.

>>>
>>> What this small series does is adding the support for the chip. So the
>>> support starts with the kernel version which includes these patches. Why
>>> do you assume that one expect to have a proper support with an older
>>> kernel? I fully get the point that driver needs to deal with older
>>> device-tree's but having using a newer device-tree's (fw) on older
>>> kernels and expecting that older kernels does support the chip is a bit
>>> odd to me.
>>
>> Probably need the DT maintainers to offer the opinion on this as we
>> disagree on how fallback compatibles are supposed to work.
>> I'll accept whatever they say on this point (I've been persuaded
>> into a more relaxed stance in the past on this).

DTS can be used outside of kernel - other projects or new DTS with old
kernel - and the way of working is bound by bindings. Therefore it is
really good if you use new DTS with older kernel and it works.

As I said above, for devices that are fully compatible, this should be
the goal. Many SoC components are like this and we describe them that
way. However they do not have mostly auto-detection.

Now for devices which are both:
 - compatible according to the binding (so the interface is the same,
stable and handled by Linux),
 - AND actually significantly different, where the difference is
recognized by auto-detection,
the Linux should be reasonable and it might freely choose not to support
unknown devices.

You can compare it to the world without DT where everything is
auto-detectable. The Linux kernel performs auto-detection and based on
this either works or does not work with the device. But the kernel has
full discretion to decide about it.

Users would be happy if kernel would work with unknown, new devices. But
also users would be unhappy if this damages their system because of e.g.
wrong voltage.

Best regards,
Krzysztof

