Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 518F34DE833
	for <lists+devicetree@lfdr.de>; Sat, 19 Mar 2022 14:47:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243077AbiCSNse (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Mar 2022 09:48:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243064AbiCSNsc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Mar 2022 09:48:32 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D73BD2B5198
        for <devicetree@vger.kernel.org>; Sat, 19 Mar 2022 06:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1647697630;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=jBwV8487aijMDvdLUhUEYyVD6eH/6/2t2Risidn4eGs=;
        b=gRvygVMblCqrC0NiNTJBx5+9UMEkovBfG3n9v51qHQbtuZjE3PN+WrgiGgdFaGaOukIwnH
        NJbHJfYxcyXVdXXKq2PHEKFwrxBq2TRRBQtlG3hWX/YshxetDAr+Qk8U0tom+MM3rQX27+
        9Pugl4D63+DJnveLrxAiZ9RMSCBY1G4=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-482-e_hfITP9O8y4wZX_2pas8g-1; Sat, 19 Mar 2022 09:47:09 -0400
X-MC-Unique: e_hfITP9O8y4wZX_2pas8g-1
Received: by mail-ej1-f70.google.com with SMTP id r18-20020a17090609d200b006a6e943d09eso5363043eje.20
        for <devicetree@vger.kernel.org>; Sat, 19 Mar 2022 06:47:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jBwV8487aijMDvdLUhUEYyVD6eH/6/2t2Risidn4eGs=;
        b=ZLJWz+sgWBbm2OXSmPuidv4UjucL/YttAUlg9keISVhN7+23IIJT+oW/ndjFPvLz16
         xo95zdRaaU3py5Yqn/Yv1gnRs4XFwEyFGITT/u4ddPct4AIsmNQJhRJH7h/Aw8N4ODVN
         4at6e+2AnXa03jjxbcP8tEphpATwQyGfynIVM8WVGhMGa70oYqFJiBM9dc586pbcA/TF
         EW967Y2o4JZb2BXhT+eV27zeg1EDW6r+fFgkc6q1vN61/pdtVYSrQk1hUMg3A996t1x5
         VSsQplzvyJEu0xKQ1AObCHdlIWBOd1WxWPXxc1/gWlXuZ1Ti/1UP1aREWN5kyVtZAgcd
         P3Pg==
X-Gm-Message-State: AOAM531IzVKAsFjJdvKGwtx0Nh/atD6DLlGepb02R3kkyfbNfeySjZL2
        ++yqMa6GskC3mKgOwmWogvWwY6DGEo8ukXq8ZdWwCN8+qpI7iycxhHh7lU5Fsi7j0KkDIXFE9Ah
        tKEkLEf6V3mqCd53YM98mjw==
X-Received: by 2002:a05:6402:2553:b0:418:ff6a:ca66 with SMTP id l19-20020a056402255300b00418ff6aca66mr11787039edb.273.1647697628207;
        Sat, 19 Mar 2022 06:47:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxJJQBa+UAEtmPH1GA+MP+BejKrImA30X08mLoRc0VdNGxSKAw+N/lc+TdtmM9284oDr0MYuQ==
X-Received: by 2002:a05:6402:2553:b0:418:ff6a:ca66 with SMTP id l19-20020a056402255300b00418ff6aca66mr11787014edb.273.1647697627936;
        Sat, 19 Mar 2022 06:47:07 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:cdb2:2781:c55:5db0? (2001-1c00-0c1e-bf00-cdb2-2781-0c55-5db0.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:cdb2:2781:c55:5db0])
        by smtp.gmail.com with ESMTPSA id do8-20020a170906c10800b006dfe4d1edc6sm506995ejc.61.2022.03.19.06.47.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Mar 2022 06:47:07 -0700 (PDT)
Message-ID: <fa8ed8cb-9def-dc1f-b8be-d238569510be@redhat.com>
Date:   Sat, 19 Mar 2022 14:47:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH 1/4] power: supply: max17042_battery: Add unit conversion
 macros
Content-Language: en-US
To:     Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sebastian Reichel <sre@kernel.org>, linux-pm@vger.kernel.org
Cc:     Purism Kernel Team <kernel@puri.sm>, Rob Herring <robh@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220318001048.20922-1-sebastian.krzyszkowiak@puri.sm>
 <f15c415a-ad08-ae4f-c79c-574964ab9cb0@kernel.org>
 <1c4a7088-bcef-ca5c-ff3e-efd1049dc402@redhat.com>
 <7342538.iIbC2pHGDl@pliszka>
From:   Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <7342538.iIbC2pHGDl@pliszka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 3/18/22 21:06, Sebastian Krzyszkowiak wrote:
> Hi Krzysztof, hi Hans,
> 
> thanks for the review!
> 
> On piątek, 18 marca 2022 10:51:26 CET Hans de Goede wrote:
>> Hi,
>>
>> On 3/18/22 10:06, Krzysztof Kozlowski wrote:
>>> On 18/03/2022 10:00, Hans de Goede wrote:
>>>> Hi,
>>>>
>>>> On 3/18/22 09:16, Krzysztof Kozlowski wrote:
>>>>> On 18/03/2022 01:10, Sebastian Krzyszkowiak wrote:
>>>>>> Instead of sprinkling the code with magic numbers, put the unit
>>>>>> definitions used by the gauge into a set of macros. Macros are
>>>>>> used instead of simple defines in order to not require floating
>>>>>> point operations for divisions.
>>>>>>
>>>>>> Signed-off-by: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
>>>>>> ---
>>>>>>
>>>>>>  drivers/power/supply/max17042_battery.c | 40 +++++++++++++++----------
>>>>>>  1 file changed, 24 insertions(+), 16 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/power/supply/max17042_battery.c
>>>>>> b/drivers/power/supply/max17042_battery.c index
>>>>>> ab031bbfbe78..c019d6c52363 100644
>>>>>> --- a/drivers/power/supply/max17042_battery.c
>>>>>> +++ b/drivers/power/supply/max17042_battery.c
>>>>>> @@ -51,6 +51,15 @@
>>>>>>
>>>>>>  #define MAX17042_VMAX_TOLERANCE		50 /* 50 mV */
>>>>>>
>>>>>> +#define MAX17042_CURRENT_LSB		1562500ll /* µV */
>>>>>
>>>>> Is this really long long? The usage in max17042_get_status() is with int
>>>>> operand and result.
>>>>
>>>> The "ll" is part of the original code which these macros replace,
>>>> dropping the "ll" is IMHO out of scope for this patch, it would
>>>> clearly break the only change 1 thing per patch/commit rule.
>>>
>>> Not in max17042_get_status(). The usage there is without ll. Three other
>>> places use it in 64-bit context (result is 64-bit), so there indeed. But
>>> in max17042_get_status() this is now different.
>>
>> Ah, good catch and there is a reason why it is not a ll there, a divide
>> is done on it, which is now a 64 bit divide which will break on 32 bit
>> builds...
>>
>> Note that e.g. this existing block:
>>
>>         case POWER_SUPPLY_PROP_CURRENT_NOW:
>>                 if (chip->pdata->enable_current_sense) {
>>                         ret = regmap_read(map, MAX17042_Current, &data);
>>                         if (ret < 0)
>>                                 return ret;
>>
>>                         data64 = sign_extend64(data, 15) * 1562500ll;
>>                         val->intval = div_s64(data64, chip->pdata->r_sns);
>>                 } else {
>>                         return -EINVAL;
>>                 }
>>                 break;
>>
>> Solves this by using the div_s64 helper. So the code in
>> max17042_get_status() needs to be fixed to do the same.
>>
>> The "ll" is necessary because 32768 * 1562500 = 51200000000 which does not
>> fit in a 32 bit integer.
>>
>> So fixing max17042_get_status() to use sign_extend64 + div_s64 fixes
>> a potential bug there and as such that really should be done in
>> a separate preparation patch with a Cc stable.
>>
>> Regards,
>>
>> Hans
> 
> Yes, I've already noticed that max17042_get_status was broken, but it managed 
> to slip out of my mind before sending the series - although I haven't caught 
> that I'm introducing a yet another breakage there :) I've actually thought 
> about removing the unit conversion from this place whatsoever, because this 
> function only ever cares about the sign of what's in MAX17042_Current, so it 
> doesn't really need to do any division at all.

Removing the value conversion (in a separate patch) would be a good
solution too.

Regards,

Hans

