Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D58C687EC3
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 14:35:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232119AbjBBNfU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 08:35:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232029AbjBBNfS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 08:35:18 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D79A79CA6
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 05:35:17 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id me3so5974972ejb.7
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 05:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dm8Y8/3ZlugPk4EFTs/7wduXDkC6VnkhC2G4LVvwJd0=;
        b=ZxX4QEHLRJ2PHthHrF3gSRPpnH5MZrugWjduzDgQ5JUWp43Fgtd3hvTFDU9oT2Jagx
         PuYr0M9oDsz0l229rHER2zdssLFhxHkFjEzQEwZlh+lpfbbFtwvSIsxmllMxEUUe5xAT
         s2q9RhN+Qz8kVWM/dRzDV8hJ7lribKEOXQOmEx9U5SHV6JNKtAX0w0KcWlBqWVlIzoJh
         1tr2tbf7our8k/PbY4hgb5CE7AmJcRdTMzy0pCB/P6k1f/UW45lNLSq6caxD0w1hZs9F
         jrKv3Y5Ev02jK6JqBhpN0s6riX5uGFNk3b1YRzr+EerNjyhYZ3+PHN5tR7h4A8Sw8J0Z
         TPlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dm8Y8/3ZlugPk4EFTs/7wduXDkC6VnkhC2G4LVvwJd0=;
        b=z4WMsqpKg11N1V8ViLm/ixVCcSTMdBnyrU8mLWx+a26Ri2x2t0zzsqvJaHI6S9b3k9
         pOuVRtMSyMtx4MYqNM4rRD85wOnpy9CW8+n98sDKISPjsb/9PS16d76YaTDZ+QqsCKcT
         OJaMW99MwUEMIvtl99Vx8ecFLzamJoERlK6fWFgXAnxnt7iNz1TczuWonk6uKNUAqY65
         u04pvXeLwpLXH1dbpTeCxnUmXU5Cwi2pCtFXv0fOxXy7HsfYqzmin1gDQQ4Sn8PC2bH9
         C/JEQ4NI+d2Lsn7PHEXIZtfYNxOKdQV0+l8nuLLBrzzNpM8ahrPfPKoCVaBw1LD7I5QG
         bGrg==
X-Gm-Message-State: AO0yUKV0SPeQKrCv5HmRWzsAFj0iUCLcZvhjClwQEsp28/QAU6L79AjJ
        WcdmepUnDW7+zzlYBuhF3GKRaQ==
X-Google-Smtp-Source: AK7set8Id5IUMAU6BaLsexzxecpuDQWzuzgrs/OxWb+fhW7c5RFMSwRiv+Q1hvrOFbz0EcBz4vVpvw==
X-Received: by 2002:a17:907:8d16:b0:878:955e:b4a4 with SMTP id tc22-20020a1709078d1600b00878955eb4a4mr6973342ejc.33.1675344916237;
        Thu, 02 Feb 2023 05:35:16 -0800 (PST)
Received: from [192.168.2.9] (78-22-137-109.access.telenet.be. [78.22.137.109])
        by smtp.gmail.com with ESMTPSA id o2-20020a1709064f8200b0088a2aebb146sm5534780eju.52.2023.02.02.05.35.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Feb 2023 05:35:15 -0800 (PST)
Message-ID: <b9c6c74b-65d2-46bf-bd7c-e031d420f31c@mind.be>
Date:   Thu, 2 Feb 2023 14:35:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v4 1/2] dt-bindings: leds-lp55xx: add ti,charge-pump-mode
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230202101032.26737-1-maarten.zanders@mind.be>
 <20230202101032.26737-2-maarten.zanders@mind.be>
 <20eb5589-8287-90bd-3703-2818b61c6ba3@linaro.org>
From:   Maarten Zanders <maarten.zanders@mind.be>
In-Reply-To: <20eb5589-8287-90bd-3703-2818b61c6ba3@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

First off, bear with me here, I only recently started upstreaming 
patches to kernel. It still feels like navigating an extremely busy 
shipping lane... Either way, your feedback is highly valued.

On 2/2/23 14:15, Krzysztof Kozlowski wrote:
>
>> diff --git a/include/dt-bindings/leds/leds-lp55xx.h b/include/dt-bindings/leds/leds-lp55xx.h
>> new file mode 100644
>> index 000000000000..8f59c1c12dee
>> --- /dev/null
>> +++ b/include/dt-bindings/leds/leds-lp55xx.h
>> @@ -0,0 +1,10 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +#ifndef _DT_BINDINGS_LEDS_LP55XX_H
>> +#define _DT_BINDINGS_LEDS_LP55XX_H
>> +
>> +#define LP55XX_CP_OFF		0
>> +#define LP55XX_CP_BYPASS	1
>> +#define LP55XX_CP_BOOST		2
>> +#define LP55XX_CP_AUTO		3
> Additionally, these are not used, so it's a dead binding. Drop. Sorry,
> this is not the approach you should take.
>
> Best regards,
> Krzysztof
>
These definitions are intended to be used in the DTS's, so it seems 
normal to me that most of them go unused in the code? What am I missing?

As for the changes v2 > v3, this was based on input I got on v2 from Lee 
Jones, maintainer for leds, on the implementation of the parsing of this 
option:

>> +	pdata->charge_pump_mode = LP55XX_CP_AUTO;
>> +	ret = of_property_read_string(np, "ti,charge-pump-mode", &pm);
>> +	if (!ret) {
>> +		for (cp_mode = LP55XX_CP_OFF;
>> +		     cp_mode < ARRAY_SIZE(charge_pump_modes);
>> +		     cp_mode++) {
>> +			if (!strcasecmp(pm, charge_pump_modes[cp_mode])) {
>> +				pdata->charge_pump_mode = cp_mode;
>> +				break;
>> +			}
>> +		}
>> +	}
> A little over-engineered, no?
>
> Why not make the property a numerical value, then simply:
>
>    ret = of_property_read_u32(np, "ti,charge-pump-mode", &pdata->charge_pump_mode);
>    if (ret)
>            data->charge_pump_mode = LP55XX_CP_AUTO;

I found examples of similar configuration options of both types with 
other drivers in the kernel tree (ie string & uint8). I can appreciate 
both viewpoints but unfortunately cannot comply with both.


Best regards,
Maarten

