Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3546B4DD760
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 10:51:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234506AbiCRJwx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 05:52:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234683AbiCRJwu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 05:52:50 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 966C1274290
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 02:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1647597090;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=NGB6HPT5rAmAO3WbhoeyotRrqi0pcOCpS5xA0jIJ1zA=;
        b=YyNu76CL0bHpAxdil/DbTMHNYXEBfiafkNvs7mN49v4KIK4lOm/HsCwkaxhNlGHGm7ca/T
        3Uwi0x/vuf5gYUhgdycCZt2lF1G+Bit+npZ5mf8sN+t/woLJT5pU9rpgBkCevYFkSt1+t0
        QHvEfxm6akodastf0kb6nx5aCfyrJUE=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-615-HdFobAa1OZ-eOimng-E3yA-1; Fri, 18 Mar 2022 05:51:29 -0400
X-MC-Unique: HdFobAa1OZ-eOimng-E3yA-1
Received: by mail-ej1-f71.google.com with SMTP id qf24-20020a1709077f1800b006ce8c140d3dso4282242ejc.18
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 02:51:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NGB6HPT5rAmAO3WbhoeyotRrqi0pcOCpS5xA0jIJ1zA=;
        b=Rzz0r9gvwRr22BzM44IohyoG07nbzjHSyhJ22cHwQK5vZfhkdrdb9aAoJ1HdcmeDHb
         /wEy3SI5VDFZ/ERHMQx+Z+TfXMCLD9Og+lXWW8Q3T9sQQSqW2t+98BX1wuIn3LDgXg+2
         HYXWfjrX3pNH3WJ0beUv+hvPO+EDhLKlqH31c20pJjs74bLMvKOhqp2VGrpnFimOCO1m
         9hXUnDZpfvJW0rW+uOJV2FcBbKc+18L/PCDet4mqz5HpS2ckI1c+f8tYl7Myaag0Q/2q
         C+ugoQURDnYjnmGCWgIsRmU0OVYp2iFQy4imNEm8PVlckke3ZxLynF/h8UsKbdw3Zn3p
         9Q3Q==
X-Gm-Message-State: AOAM533Iye83UZIKYIc8NJ4B/i0M4GVuAOj3pxGuwabokiaq2Fc/xvnM
        1AUHMZPMDOajEVJv9al0GsCxabttxOOvQ6DdUr7eubf5EsPXo2gFbaTMT4H0qYEwnsgQzrUCmxb
        vD1V+qy/ezjXXxjtgk4buVg==
X-Received: by 2002:a05:6402:42c9:b0:418:ac44:3418 with SMTP id i9-20020a05640242c900b00418ac443418mr8700242edc.97.1647597087907;
        Fri, 18 Mar 2022 02:51:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyZUtM7mltIUf3tUly3Wx+fHxk9qwFI2nHz3mjK6RYWVMuOLN0eZzBI7KdnhM4DP8slAHZPjQ==
X-Received: by 2002:a05:6402:42c9:b0:418:ac44:3418 with SMTP id i9-20020a05640242c900b00418ac443418mr8700229edc.97.1647597087717;
        Fri, 18 Mar 2022 02:51:27 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:cdb2:2781:c55:5db0? (2001-1c00-0c1e-bf00-cdb2-2781-0c55-5db0.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:cdb2:2781:c55:5db0])
        by smtp.gmail.com with ESMTPSA id g11-20020a170906538b00b006ae38eb0561sm3532795ejo.195.2022.03.18.02.51.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Mar 2022 02:51:27 -0700 (PDT)
Message-ID: <1c4a7088-bcef-ca5c-ff3e-efd1049dc402@redhat.com>
Date:   Fri, 18 Mar 2022 10:51:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Subject: Re: [PATCH 1/4] power: supply: max17042_battery: Add unit conversion
 macros
Content-Language: en-US
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sebastian Reichel <sre@kernel.org>, linux-pm@vger.kernel.org
Cc:     Purism Kernel Team <kernel@puri.sm>, Rob Herring <robh@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220318001048.20922-1-sebastian.krzyszkowiak@puri.sm>
 <20220318001048.20922-2-sebastian.krzyszkowiak@puri.sm>
 <97d88728-4e73-0820-07e7-199377ebff2a@kernel.org>
 <3c890d11-75c6-8370-5659-a78b1a9baea2@redhat.com>
 <f15c415a-ad08-ae4f-c79c-574964ab9cb0@kernel.org>
From:   Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <f15c415a-ad08-ae4f-c79c-574964ab9cb0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 3/18/22 10:06, Krzysztof Kozlowski wrote:
> On 18/03/2022 10:00, Hans de Goede wrote:
>> Hi,
>>
>> On 3/18/22 09:16, Krzysztof Kozlowski wrote:
>>> On 18/03/2022 01:10, Sebastian Krzyszkowiak wrote:
>>>> Instead of sprinkling the code with magic numbers, put the unit
>>>> definitions used by the gauge into a set of macros. Macros are
>>>> used instead of simple defines in order to not require floating
>>>> point operations for divisions.
>>>>
>>>> Signed-off-by: Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>
>>>> ---
>>>>  drivers/power/supply/max17042_battery.c | 40 +++++++++++++++----------
>>>>  1 file changed, 24 insertions(+), 16 deletions(-)
>>>>
>>>> diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
>>>> index ab031bbfbe78..c019d6c52363 100644
>>>> --- a/drivers/power/supply/max17042_battery.c
>>>> +++ b/drivers/power/supply/max17042_battery.c
>>>> @@ -51,6 +51,15 @@
>>>>  
>>>>  #define MAX17042_VMAX_TOLERANCE		50 /* 50 mV */
>>>>  
>>>> +#define MAX17042_CURRENT_LSB		1562500ll /* µV */
>>>
>>> Is this really long long? The usage in max17042_get_status() is with int
>>> operand and result.
>>
>> The "ll" is part of the original code which these macros replace,
>> dropping the "ll" is IMHO out of scope for this patch, it would
>> clearly break the only change 1 thing per patch/commit rule.
> 
> Not in max17042_get_status(). The usage there is without ll. Three other
> places use it in 64-bit context (result is 64-bit), so there indeed. But
> in max17042_get_status() this is now different.

Ah, good catch and there is a reason why it is not a ll there, a divide
is done on it, which is now a 64 bit divide which will break on 32 bit
builds...

Note that e.g. this existing block:

        case POWER_SUPPLY_PROP_CURRENT_NOW:
                if (chip->pdata->enable_current_sense) {
                        ret = regmap_read(map, MAX17042_Current, &data);
                        if (ret < 0)
                                return ret;

                        data64 = sign_extend64(data, 15) * 1562500ll;
                        val->intval = div_s64(data64, chip->pdata->r_sns);
                } else {
                        return -EINVAL;
                }
                break;

Solves this by using the div_s64 helper. So the code in max17042_get_status()
needs to be fixed to do the same.

The "ll" is necessary because 32768 * 1562500 = 51200000000 which does not
fit in a 32 bit integer.

So fixing max17042_get_status() to use sign_extend64 + div_s64 fixes
a potential bug there and as such that really should be done in
a separate preparation patch with a Cc stable.

Regards,

Hans




