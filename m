Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D35A414A79
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 15:23:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231919AbhIVNZH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 09:25:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231940AbhIVNZH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 09:25:07 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 010C0C061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 06:23:36 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id ee50so9690537edb.13
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 06:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=veAVIUcvulmbyocALxu8MRu16Y5GNwlWCCE/HdmaHbU=;
        b=PynfDNoli9R8CTKMVkBUYx5Dt5NcK8/cA2XdifmDetZMm0+d5C+vIkNU29t+v37iai
         CKVACdsoI77zcTWFlNPBomiIfcgJe3IguBKuCZdH3eZKyme8yCQzaH6/4y0JvVYRCeCk
         FduaEKb/wrjQTi2SoogK1FuKeXlx1cDWDiYgbAHHQku0atNlwVHgCWinMN7kT3uAW3tz
         sSYVWvot/DOj9i0gn2Y0wZI4ML4rdOCb9KM3Maq6Yb04o+eJZiuqB59VWtv0DC1DlD6+
         zSH7Le699edaZ97EFMTZAJz5LzoEp1VQCCieKNCJJASEsV8G2OOGogtJXpAhCjg++EiZ
         7YqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=veAVIUcvulmbyocALxu8MRu16Y5GNwlWCCE/HdmaHbU=;
        b=qgLRzQI+90cVMQTupSPQ7Ad+wMnKTM2sukfVsLgjs+SNylS6+k6ph9ORbSW20dk0B+
         7X2ku4wI7H4Eq591WXv+KVhkl56GV7t9BcNtv8qshcAHfUv5cMXqfom91GhyUb2QgCru
         D2gv7HlKcSUmzp6uSwSdF18k0ZGxKcWcen8k1E7BmAW84W/1Vbq5s9zrXGnnaokNJtkc
         32jlws0QLD6ulr8ckQ3+LW1w4xMmH3576ylePgnityAEdgwhgwauopFBWDf/4wRn42L5
         4ifvLYsiW1DT3UjSFIu/pMouc5nhfqW824lF2uVYrDWSqXWS2X2lrHjPxTg6H8MTsNfh
         aJBw==
X-Gm-Message-State: AOAM532zVGEu0O9BUw06CV6EqRjr2k4Fy31Xaq03n+9scWJRFis9yM3z
        JeG2r7fWIsaRA3z+TSCGYW4HM1XzzXUeEg==
X-Google-Smtp-Source: ABdhPJyhw+s2ZvrfpcJ9lUMVHtmkcu4aLySx5j4Q1qO7Zc4vt7M/q3frPKqUgEJxtCCjZ3mCvYI4Jg==
X-Received: by 2002:aa7:c150:: with SMTP id r16mr41507353edp.388.1632317015571;
        Wed, 22 Sep 2021 06:23:35 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id k4sm1201038edq.92.2021.09.22.06.23.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 06:23:35 -0700 (PDT)
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
 <53fd9335-baca-fb52-42f1-2af3b08b5f1f@linaro.org>
 <89b4a2d6-1966-7fcb-d476-f69e88293ea0@pengutronix.de>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <18c0d9c0-bee8-41fa-8fe8-26a0ceda1ecd@linaro.org>
Date:   Wed, 22 Sep 2021 14:23:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <89b4a2d6-1966-7fcb-d476-f69e88293ea0@pengutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 22/09/2021 14:08, Ahmad Fatoum wrote:
> Hi,
> 
> On 22.09.21 15:03, Srinivas Kandagatla wrote:
>>
>>
>> On 22/09/2021 13:58, Ahmad Fatoum wrote:
>>> Hi Srini,
>>>
>>> On 22.09.21 14:49, Srinivas Kandagatla wrote:
>>>>
>>>>
>>>> On 22/09/2021 13:31, Ahmad Fatoum wrote:
>>>>>>>
>>>>>>> On 08.09.21 12:02, Joakim Zhang wrote:
>>>>>>>> From: Srinivas Kandagatla<srinivas.kandagatla@linaro.org>
>>>>>>>>
>>>>>>>> Some of the nvmem providers encode data for certain type of nvmem cell,
>>>>>>>> example mac-address is stored in ascii or with delimiter or in reverse order.
>>>>>>>>
>>>>>>>> This is much specific to vendor, so having a cell-type would allow nvmem
>>>>>>>> provider drivers to post-process this before using it.
>>>>>>> I don't agree with this assessment. Users of the OCOTP so far
>>>>>>> used this specific encoding. Bootloaders decode the OCOTP this way, but this
>>>>>>> encoding isn't really an inherent attribute of the OCOTP. A new NXP SoC
>>>>>>> with a different OTP IP will likely use the same format. Users may even
>>>>>>> use the same format on an EEPROM to populate a second off-SoC interface, .. etc.
>>>>>>>
>>>>>> That is okay.
>>>>> How would you go about using this same format on an EEPROM?
>>>>
>>>> Am guessing that by the time there are more users for such formats, those post-processing functions should be converted into some library functions.
>>>
>>> User A wants to reverse bytes in MAC address. User B stores it in ASCII.
>>> Both use the exact same EEPROM. How could this ever work when the
>>> encoding decision is left to the EEPROM driver?
>>
>> User A and B should mention about this encoding information in there NVMEM provider bindings.
>>
>> Based on that specific post-processing should be selected.
> 
> So instead of just compatible = "atmel,at24c16"; there will be
> 
>    compatible = "user-A,my-eeprom", "atmel,at24c16";
> 
> and
> 
>    compatible = "user-B,my-eeprom", "atmel,at24c16";

It will depend how you specify encoding information.

The issue with making this encoding information generic is that the 
combinations are endless and nvmem core bindings is definitely not the 
right place for this.

ex:
If I remember correctly we have mac-address stored in various formats:
from old thread I can see

Type 1: Octets in ASCII without delimiters. (Swapped/non-Swapped)

Type 2: Octets in ASCII with delimiters like (":", ",", ".", "-"... so 
on) (Swapped/non-Swapped)

Type 3: Is the one which stores mac address in Type1/2 but this has to
be incremented to be used on other instances of eth.

Type 4: Octets as bytes/u8, swapped/non-swapped

This list can be endless and its not just the cell-type property you 
have to deal with, new properties keep popping up.


--srini



> 
> and they each need to patch the at24 driver to call one of the
> common library functions?
> 
>>
>> --srini
>>>
>>
>>>>
>>>> --srini
>>>>
>>>>>
>>>>>>> I'd thus prefer to not make this specific to the OCOTP as all:
>>>>>>>
>>>>>>>       * #define NVMEM_CELL_ENCODING_MAC_ADDRESS_IMX    /* ... */
>>>>
>>>
>>>
>>
> 
> 
