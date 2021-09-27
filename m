Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5839041920A
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 12:12:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233748AbhI0KOH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 06:14:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233747AbhI0KOH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 06:14:07 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45A21C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 03:12:29 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id u18so50943124wrg.5
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 03:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WrQLwjSch18lyVi0+gganouTra7rKaKWPrUevdakVAU=;
        b=bqUQ9cWWpBvY5u54TFTpPA9xdrbgECZcH4dlo1ehoEshf+kGGspTgtm5sqZ2Z/dyZT
         YFEqJQJKXwD4bE9PIPhcEuLwZcZyFIPbxNBSsliKCHdkJM66BI775o5ygutoPLwcqb0H
         jQ2lYFEbX0QFsAwK4Xp453yCQCr2r990Mfl3zbvhBGM/BjveYyZduu3DVBqvFhQeb9Au
         es09AFL6OZoUWofvDEmJ2NN3moxdb/45/ctmSqoA8Z3hbFju2ywWy+5RmwEf31aitvoh
         ZezRnixTqZUWhOTa4yhwSCOCspfyLlGYngEO9L/ua+GN/5nv+lagrvuPMa/6CinMPs9m
         Tmkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WrQLwjSch18lyVi0+gganouTra7rKaKWPrUevdakVAU=;
        b=NntBLyfbpsqtsuifeApqHWIT5CptU8v4cuzzub6Ny9pVxUPMSzh0PtmHvYWojYUvlY
         APeE2iLjl+DTxzqu0ogvc6TnMXNcQaYEgbcyiRhimvkEFYOdCdntlGXmFOlRb0lqAp5h
         SExWKUmLPBivqluEWKmFaS581IaUgMwQtweHA4gJtHhuDLpXfzjn93RipH5H//tT5Uwo
         bYwm2lM3DawuB3hInTJ1RPVwdwg04Kh/yx9GwaZ7SeRe0fXVR1nwu+nBLVvcU7sbOAs5
         j7MQ0HlubOrrpjuLO8KqqdY53OkV8YQlkGP5orXgktVXVrUBGuffxrc0eeSoZxTRwRKm
         hn1A==
X-Gm-Message-State: AOAM530c/WDNgSmkAk3CzY5azTZOgZT9RyefmvkDTdthXpIJHENPjglx
        GWFgE8D8MGRPYOqbuyUU5NFjvw==
X-Google-Smtp-Source: ABdhPJxnwdpTLrT1M5iS4diugqPA0eyFoJQlufc+9a735tw85EBrWsmg8NXn+kD/6jz64EwSErTPmQ==
X-Received: by 2002:a1c:7fd0:: with SMTP id a199mr15725110wmd.20.1632737547865;
        Mon, 27 Sep 2021 03:12:27 -0700 (PDT)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id d24sm15857504wmb.35.2021.09.27.03.12.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Sep 2021 03:12:27 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] nvmem: core: introduce cells parser
To:     Vadym Kochan <vadym.kochan@plvision.eu>,
        John Thomson <john@johnthomson.fastmail.com.au>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Robert Marko <robert.marko@sartura.hr>
References: <20210608190327.22071-1-vadym.kochan@plvision.eu>
 <20210608190327.22071-2-vadym.kochan@plvision.eu>
 <43023500-dd6a-5180-057e-cecc1f1b6500@linaro.org>
 <20210616123356.GA9951@plvision.eu>
 <fea907ed-06ce-5c82-667d-d11f3e902616@linaro.org>
 <vrcxh2zgsnl841.fsf@plvision.eu>
 <7e6d75ed-cebc-597f-7062-34261d184968@linaro.org>
 <vrcxh2pmt3bl4h.fsf@plvision.eu>
 <0e471789-fe29-b747-5153-75c9b4616c7f@linaro.org>
 <vrcxh2o88nbias.fsf@plvision.eu>
 <1da03714-8f23-1004-e89a-891e4599e04a@linaro.org>
 <vrcxh2mto7bfcb.fsf@plvision.eu>
 <1e146349-9fef-972b-9084-577f02d5168b@linaro.org>
 <vrcxh2lf3rbcjc.fsf@plvision.eu>
 <169d3f36-4297-32a3-3d23-824989625b26@linaro.org>
 <77b11bf7-3003-483f-b91e-bd93576eaae1@www.fastmail.com>
 <vrcxh2y27ia23n.fsf@plvision.eu>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <56fb5c64-4142-03ef-2ea8-fc586fd239e1@linaro.org>
Date:   Mon, 27 Sep 2021 11:12:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <vrcxh2y27ia23n.fsf@plvision.eu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 27/09/2021 08:50, Vadym Kochan wrote:
>>>> Currently I can test only on at24 devices. From the:
>>>>
>>>> https://opencomputeproject.github.io/onie/design-spec/hw_requirements.html
>>>>
>>>> "
>>>> Each ONIE system must include non-volatile storage which contains vital
>>>> product data assigned by the manufacturer. The non-volatile storage
>>>> could take the form of an EEPROM, a NOR-flash sector, a NAND-flash
>>>> sector or any other non-volatile storage medium.
>>>> "
>>>>
>>>> I am not aware about other nvmem devices which are used for existing
>>>> ONIE supported boards.
>>>>
>>>>> As long as you represent this parsing function as some library function,
>>>>> I do not see any issue.
>>>>> If any exported symbol is available for this then any nvmem provider
>>>>> could use it.
>>>>>
>>>>> --srini
>>>>>
>> Hi Srinivas,
>>
>> Can I note here that I would like to parse
>> TLV data from an SPI-NOR device to NVMEM cells.
>> The same general use case (getting mac-address from OEM data).
>>
>> Was planning to base my work on this series, as well as
>> https://lore.kernel.org/all/20210908100257.17833-1-qiangqing.zhang@nxp.com/
>> (thanks for pointing that out Srinivas)
>>
>> Cheers,
> What about at least to have just one call in core.c to make it a bit
> de-coupled, like:

Why do you want to decouple this? the provider driver should be very 
well aware of the format the data layout.

Its fine to an extent to adding parse_cells() callback in nvmem_config.

> 
> core.c
> 
> struct nvmem_device *nvmem_register(const struct nvmem_config *config)
> {
> ...
>           rval = nvmem_add_cells_from_table(nvmem);
>           if (rval)
>                   goto err_remove_cells;
> 
> +        rval = nvmem_parse_cells(nvmem, of);
> +        if (rval) {
> +        /* err handling */
> +        }
> +
>           rval = nvmem_add_cells_from_of(nvmem);
>           if (rval)
>                   goto err_remove_cells;
> 
>           blocking_notifier_call_chain(&nvmem_notifier, NVMEM_ADD, nvmem);
> 
>           return nvmem;
> 
> ...
> 
> }
> 

> somewhere in nvmem-parser.c:

However this is totally over kill.

> 
> /* retreive parser name from of_node and call appropriate function to parse
>     non-fixed cells and update via of_update */

This is completely provider drivers job, nothing nvmem core should worry 
about.

If you have concern of having code duplicated then we could make some of 
the common functions as library functions, But it still is within the 
scope of provider drivers.

--srini

> int nvmem_parse_cells(struct nvmem_device *nvmem, struct device_node *of_node)
> {
>      ...
> }
> 
> ?


> 
> Regards,
