Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DADE368C59E
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 19:20:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230057AbjBFSU2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 13:20:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbjBFSU1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 13:20:27 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4033C2D4F
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 10:20:26 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id k13so3832845wrh.8
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 10:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tzb3gwQxz/fgvsBeNpBzMaOHtFHYGPk7rSSX2C3nMh8=;
        b=ElLtnRLucnPBPWXq8EjitFsaCaMUfuQ4JdownoU7YTUKIqYDRa7u76UImUynUtThl3
         BGAm2az5ddwtmA38wmDXIpognGcKjpdL72owg4Sa1P2Vz69XTgNZrRPuP3DYE6urhhLM
         gcu/0PzaoxrImjQnKJ8Bx82+kkOC8ZW61DSaSq8NqR/1+WkQ/csOisAItGutHtVLnYzQ
         3kciZFceKzqriGYMOVDpotMFMP/8t10KTsq7tyuWbqrgaSvK2/j7H3Ubd5XgnpBIqRId
         X6h3wa+YDJYlaavyT1StvZK1URTXwKzNx6GkLhDrfujig0Rv+eFxsnXeoA5V1OfRPGfD
         BS1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tzb3gwQxz/fgvsBeNpBzMaOHtFHYGPk7rSSX2C3nMh8=;
        b=pw7WuTOFY19iSBfeJNzxp37t2ipgcbGSNpIvXMd5+FMOzF3sXzikyQTFvlxE4ZGo0j
         fMXX/i8jaw6ioBgIoR4VLSfP7POmC2a8vKaWAKdIoYjZVj88Ynyyb0MJNnt9jQkKqNTv
         jsYHHQUscqHqXLA4V8wEcBlrE+/3FFqBTVQT2QAYqf7BhypwfVhq7yiX6IMsphu8pLD3
         H389V1BO9ukb5xR+y0rmukMRJg/NbRBI+YAnYAcaluQ2H++BzgH9HHj3G6bCLACN76NM
         V3INvWHxH0wsIqgS6W8zllUpnG+dDQBfocG/wVRDK5/4x2Tw6xMvEB/FRrdblP0tot0I
         oLhQ==
X-Gm-Message-State: AO0yUKXs4RMe9CXi5IIJ49w+7IxqOI2NzFTPCFZ+sqtKK7ajbhAvL67G
        TOlq/ap8WepymYcYa030ba/U0Q==
X-Google-Smtp-Source: AK7set98mRSvCQ6eRcOnxAOGXIwXl9LzdTvuBSVVN0EQIMbijMbeXOXu6bJkxOhLCWLqicB00XiOLg==
X-Received: by 2002:a5d:5e81:0:b0:2bf:f022:246c with SMTP id ck1-20020a5d5e81000000b002bff022246cmr17637435wrb.42.1675707624790;
        Mon, 06 Feb 2023 10:20:24 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x18-20020adfffd2000000b002c3f1223059sm377275wrs.36.2023.02.06.10.20.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 10:20:24 -0800 (PST)
Message-ID: <45b9574d-a146-fec0-02cc-714ff8ddc469@linaro.org>
Date:   Mon, 6 Feb 2023 19:20:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 5/6] media: dt-bindings: media: i2c: Add mlx7502x
 camera sensor binding
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Volodymyr Kharuk <vkh@melexis.com>, linux-media@vger.kernel.org,
        Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        devicetree@vger.kernel.org
References: <cover.1657786765.git.vkh@melexis.com>
 <712c1acff963238e685cbd5c4a1b91f0ec7f9061.1657786765.git.vkh@melexis.com>
 <Ys/qq4hIQ25KXB2/@pendragon.ideasonboard.com>
 <c87132c4-5801-2f1f-8ef9-3997474cf7a5@linaro.org>
 <Ys/zvH3ICr4zpTLH@pendragon.ideasonboard.com>
 <7e362d83-36c2-00ed-6525-37197ee8e5d7@linaro.org>
 <Ys/6O2H/eDEWYHei@pendragon.ideasonboard.com>
 <20a88191-0c4e-710f-e6ab-4087e5980533@linaro.org>
 <Ys/+KaNltkZZmRE4@pendragon.ideasonboard.com>
 <85cb8f2d-5d8b-ffa9-9f53-0e8bc1233e69@linaro.org>
 <Y+DaUaGqxXQLQq3i@pendragon.ideasonboard.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y+DaUaGqxXQLQq3i@pendragon.ideasonboard.com>
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

On 06/02/2023 11:45, Laurent Pinchart wrote:
> Hi Krzysztof,
> 
> Very late reply, this had fallen through the cracks.
> 
> On Thu, Jul 14, 2022 at 01:56:13PM +0200, Krzysztof Kozlowski wrote:
>> On 14/07/2022 13:29, Laurent Pinchart wrote:
>>> On Thu, Jul 14, 2022 at 01:23:41PM +0200, Krzysztof Kozlowski wrote:
>>>> On 14/07/2022 13:12, Laurent Pinchart wrote:
>>>>>>>>> One option would be to support the following three compatible values:
>>>>>>>>>
>>>>>>>>> 	compatible = "melexis,mlx75026", "melexis,mlx7502x";
>>>>>>>>> 	compatible = "melexis,mlx75027", "melexis,mlx7502x";
>>>>>>>>> 	compatible = "melexis,mlx7502x";
>>>>>>>>>
>>>>>>>>> The last one only would trigger autodetection. I'm still not sure how to
>>>>>>>>> document that properly in bindings though.
>>>>>>>>
>>>>>>>> I missed that part of binding.
>>>>>>>>
>>>>>>>> Wildcards are not allowed in compatible, so mlx7502x has to go.
>>>>>>>
>>>>>>> Really ? We've had fallback generic compatible strings since the
>>>>>>> beginning.
>>>>>>
>>>>>> Fallback generic compatibles are allowed. Wildcards not. Wildcards were
>>>>>> actually never explicitly allowed, they just slipped in to many
>>>>>> bindings... We have several discussions on this on mailing list, so no
>>>>>> real point to repeat the arguments.
>>>>>>
>>>>>> There is a difference between generic fallback. If the device follows
>>>>>> clear specification and version, e.g. "foo-bar-v4", you can use it for
>>>>>> generic compatible. This is more common in SoC components. Requirement -
>>>>>> there is a clear mapping between versions and SoCs.
>>>>>
>>>>> I'm not sure to see a clear difference between the two concepts.
>>>>
>>>> The clear difference is that you have a versioned and re-usable hardware
>>>> block plus clear mapping which version goes to which SoC. Version
>>>> numbers usually start with 1, not with 75025. 75025 is a model name.
>>>
>>> How about Documentation/devicetree/bindings/serial/renesas,scif.yaml for
>>> instance, where the version number isn't known and the SoC name is used
>>> instead ? Is that acceptable ?
>>
>> This is the second case I mentioned - family of devices where the family
>> fallback is not allowed to be alone. You cannot use just "renesas,scif"
>> in DTS.
> 
> OK. Does this mean you are fine with
> 
> 	compatible = "melexis,mlx75026", "melexis,mlx7502x";
> 	compatible = "melexis,mlx75027", "melexis,mlx7502x";
> 
> where "melexis,mlx7502x" is considered to be the family fallback, but
> not
> 
> 	compatible = "melexis,mlx7502x";
> 
> alone ?

Correct.

(...)

>>>
>>> In a laptop or tablet with a camera sensor, you likely don't want
>>> autodetection. In an industrial device, you don't care, and having the
>>> ability to auto-detect the exact sensor model when booting saves cost in
>>> the production chain as a single image can work across different models.
>>
>> We talk about the case here, not generic. Do you want to have
>> autodetection possible here or not?
> 
> I'd like to support auto-detection, but not make it mandatory. Assuming
> a family of chips supported by one driver with hardware that makes
> auto-detection possible, I have use cases where I specifically don't
> want auto-detection as it would have undesirable side effects at probe
> time, and other use cases where I want auto-detection as it lowers the
> costs in the production chain. I thus need to be able to specify, in DT,
> whether to use auto-detection or not, and when not using auto-detection,
> specify the exact chip model.

OK, I understand. This however stretches the Devicetree approach - you
are putting OS policy of device probing into the DT binding. What's
more, it serves only Linux' purpose. If other OS/software is fine with
auto-detection on first use (thus no privacy concerns), then all this
discussion is not relevant. The binding is independent of OS, thus we
should not align it to our specific OS behavior.

Maybe Linux needs some generic runtime knob to turn on/off autodetection
for all devices. It does not look like a job for DT.

Best regards,
Krzysztof

