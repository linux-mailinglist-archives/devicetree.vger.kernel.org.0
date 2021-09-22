Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EC6A414A0F
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 15:03:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229885AbhIVNFE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 09:05:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229786AbhIVNFE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 09:05:04 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB42BC061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 06:03:33 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id eg28so9731688edb.1
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 06:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=joz8xDkWoRh9VhyBdD6YM9MvFcfRdRyEjLr1PaXKoM0=;
        b=SVquRaHPbYJikqGzCE4XhgL0V3uSC8kHfh+74wltT7Bc1FZ/DfyeMIm0B3qCMhHkX+
         HuJbbnCsQQRsfqXKzvO/R8ULnmDyts3qhkK5ZQoIeCQe/jccImkyxLlaRGcNr9L0C4s4
         ZQ6h2+FCfFPkbWKPVgAPS2i+uEDjd/BVwkVyEvI66dnv1B/vw8cudIE9nWM/nwQPnrym
         GbMoXBrBoC1aODqJ9lBBaUDwPE+xEMQ6j189LmhDFEDK+U3DT1ItjHARWAM5yz0HKB0c
         8ZwfasRWf+TUEPPJwt8uxNspG+yp0E9WIi8Nm4+MWbS4Ored7SWRFusbQPpAJgPUpG5b
         cMTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=joz8xDkWoRh9VhyBdD6YM9MvFcfRdRyEjLr1PaXKoM0=;
        b=MIr+QWQaxYw/kJCzq39vpsSRTORbqHEeBnrZoPJ7uDbYkkFTP1p6iXEXEMK+/uFvO2
         hd9a8S3xwJh6WLpt+LzKC03LlaYZVY1PEWKakXmBWDi569pPVPTCfERfiNP8pUuzwymQ
         HiWoasdypGWc78s49JNrRp5zEIfRLRNuvH1Pk9ukYNglj/tcpZbbrQUoPx4HnGBJNgm4
         4SPtlH7fwnrKVD67QsToVoymLxpeRBI9oGfss/+X6Cgzg0LOG+1mmCb0GyCfTCM5Ucw3
         1hOuiS2GmJLZt3hxrdRoXWhgnFEIyAeutiZi6c3m/i20f3RfaQHN90wILjdHXYDcyXRl
         LHyw==
X-Gm-Message-State: AOAM5311Nq6i2zvr7WJIcSPFowJpu0tnRjVUGD9TPoflAdTqy8a2OW1t
        bCt50Ua57/dtuFgRhCFuJ5YWkA==
X-Google-Smtp-Source: ABdhPJyhYud18CJB2AmEIPTblPIXjVyI+yorXGBl9PJfAwRkaFFlrdr+hHG3BSrqDT5rHIgm/snD8A==
X-Received: by 2002:a17:906:5855:: with SMTP id h21mr40085762ejs.230.1632315812147;
        Wed, 22 Sep 2021 06:03:32 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id m14sm1036887ejl.74.2021.09.22.06.03.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 06:03:31 -0700 (PDT)
Subject: Re: [PATCH 1/6] dt-bindings: nvmem: add cell-type to nvmem cells
To:     Ahmad Fatoum <a.fatoum@pengutronix.de>,
        Joakim Zhang <qiangqing.zhang@nxp.com>, robh+dt@kernel.org,
        shawnguo@kernel.org,
        =?UTF-8?Q?Jan_L=c3=bcbbe?= <jlu@pengutronix.de>
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com,
        kernel@pengutronix.de, linux-kernel@vger.kernel.org
References: <20210908100257.17833-1-qiangqing.zhang@nxp.com>
 <20210908100257.17833-2-qiangqing.zhang@nxp.com>
 <6d91d833-08cc-7ce2-4fe5-3d843a8b31ae@pengutronix.de>
 <181c4037-3c34-0f71-6bb7-a9c11b173064@linaro.org>
 <dbd1c20c-e3be-6c92-52a8-2ad76d0092d0@pengutronix.de>
 <8fc0a5e2-18c0-fa81-3eed-a6d596361633@linaro.org>
 <d580dd06-8bc8-91c9-262b-f6f276b033c2@pengutronix.de>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <53fd9335-baca-fb52-42f1-2af3b08b5f1f@linaro.org>
Date:   Wed, 22 Sep 2021 14:03:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <d580dd06-8bc8-91c9-262b-f6f276b033c2@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 22/09/2021 13:58, Ahmad Fatoum wrote:
> Hi Srini,
> 
> On 22.09.21 14:49, Srinivas Kandagatla wrote:
>>
>>
>> On 22/09/2021 13:31, Ahmad Fatoum wrote:
>>>>>
>>>>> On 08.09.21 12:02, Joakim Zhang wrote:
>>>>>> From: Srinivas Kandagatla<srinivas.kandagatla@linaro.org>
>>>>>>
>>>>>> Some of the nvmem providers encode data for certain type of nvmem cell,
>>>>>> example mac-address is stored in ascii or with delimiter or in reverse order.
>>>>>>
>>>>>> This is much specific to vendor, so having a cell-type would allow nvmem
>>>>>> provider drivers to post-process this before using it.
>>>>> I don't agree with this assessment. Users of the OCOTP so far
>>>>> used this specific encoding. Bootloaders decode the OCOTP this way, but this
>>>>> encoding isn't really an inherent attribute of the OCOTP. A new NXP SoC
>>>>> with a different OTP IP will likely use the same format. Users may even
>>>>> use the same format on an EEPROM to populate a second off-SoC interface, .. etc.
>>>>>
>>>> That is okay.
>>> How would you go about using this same format on an EEPROM?
>>
>> Am guessing that by the time there are more users for such formats, those post-processing functions should be converted into some library functions.
> 
> User A wants to reverse bytes in MAC address. User B stores it in ASCII.
> Both use the exact same EEPROM. How could this ever work when the
> encoding decision is left to the EEPROM driver?

User A and B should mention about this encoding information in there 
NVMEM provider bindings.

Based on that specific post-processing should be selected.

--srini
> 

>>
>> --srini
>>
>>>
>>>>> I'd thus prefer to not make this specific to the OCOTP as all:
>>>>>
>>>>>      * #define NVMEM_CELL_ENCODING_MAC_ADDRESS_IMX    /* ... */
>>
> 
> 
