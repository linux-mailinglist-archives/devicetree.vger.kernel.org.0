Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26D0B6D9188
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 10:28:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236118AbjDFI2t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 04:28:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236109AbjDFI2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 04:28:48 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A030E18E
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 01:28:45 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-4fd23c30581so1154201a12.3
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 01:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google; t=1680769724;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=20coA4glkdpOkZOcWK/cfFVjecshS2DyrEnIOMLBfXs=;
        b=fG9Oec8fFAktEZy9s0Bjlye2DO74mjUPYSB2HhLP1kpvMKjH1Wq7+lOy+HdpXjHAbw
         JYngnqiVxaMuAEm7crsLXZWcMhQJzj5zTLKWYVkMslBRRVWV9f07s0l3Vu73eqbzuzHC
         h4V9pJn83impfmYkIlth4CaQCVKLF3h9dnIUz+lQWc8AFBe5MiEwoH+StUDkcYzWUPBo
         +822andwpq5ju15VUDstlvj4wUUYIlzK16mjfVbrnxPZmdJwYjyNqr4Lb5sbVbsLoO9f
         9bS96PznUv7vaW1N+EPK1lrqTLuxApEJuEWqjMcaHYO0+kfhEFTa0+C/MQStsW0l6Exo
         M4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680769724;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=20coA4glkdpOkZOcWK/cfFVjecshS2DyrEnIOMLBfXs=;
        b=y8hTyYTu0R1U6HSvfwOa2IqmhvY0OB+4qraZ6+EgchQX7GF33nzD+SpLEDD3BWm4Tl
         0aYECjJOUe0QPeTsVQBWqlJdnRo8NSSj2FDkP+kMh/DrGGLFwuf2u6vQnQIZHwXu4QM7
         WWMqrz3Dw80yvRz0kbM0t6ZFbVW42h6SQUPTPzccsmsfVYZaNEMRUtN6kGJT6/uIWCLo
         EsHR0+Am++BvWPF5GzJgNxcWO5PLzAhEEogOlHgMsQQTRfMGERL+QT+E/snDLYgprAmk
         mXvbOm5PU2BD051jreHH6edmOM+laIDIwN71f8ozVx2R+V+0VopRe0AIF0XRQnB79KDf
         WmIQ==
X-Gm-Message-State: AAQBX9cQSfkU/yBabTnS9cK9+11sHbShc7B8hJXJe5zydWgXCahgEGr0
        wgdIQ7GtESGgpgyMAxeEgGPFbw==
X-Google-Smtp-Source: AKy350alUEuW7MUoCbOTgUwV8VD7WVrguT6Wesjzfgmmw0tCYJxCkMvhqRVh6CFt5sUSX/ls27qBgQ==
X-Received: by 2002:a05:6402:148:b0:502:32ae:14fb with SMTP id s8-20020a056402014800b0050232ae14fbmr4101278edu.5.1680769724141;
        Thu, 06 Apr 2023 01:28:44 -0700 (PDT)
Received: from [192.168.2.9] (78-22-137-109.access.telenet.be. [78.22.137.109])
        by smtp.gmail.com with ESMTPSA id 26-20020a508e5a000000b004fcd78d1215sm418780edx.36.2023.04.06.01.28.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 01:28:43 -0700 (PDT)
Message-ID: <32c0a958-58bd-7476-c276-94c8f33ffbb3@mind.be>
Date:   Thu, 6 Apr 2023 10:28:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v6 2/2] leds: lp55xx: configure internal charge pump
To:     Lee Jones <lee@kernel.org>
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230331114610.48111-1-maarten.zanders@mind.be>
 <20230331114610.48111-3-maarten.zanders@mind.be>
 <20230405152627.GO8371@google.com>
Content-Language: en-US
From:   Maarten Zanders <maarten.zanders@mind.be>
In-Reply-To: <20230405152627.GO8371@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> Sorry Maarten, just a couple of small nits.

No need to be sorry.


> This fits on one line, no?  < 100-chars?

I thought the line length was meant to be <80 chars according to:

https://www.kernel.org/doc/html/latest/process/coding-style.html#breaking-long-lines-and-strings

Happy to adapt if this shouldn't be taken as strict as I tried to do. 
Either way I'll post an update with a cleanup.

>
>> --- a/include/linux/platform_data/leds-lp55xx.h
>> +++ b/include/linux/platform_data/leds-lp55xx.h
>> @@ -73,6 +73,9 @@ struct lp55xx_platform_data {
>>   	/* Clock configuration */
>>   	u8 clock_mode;
>>
>> +	/* Charge pump mode */
>> +	u32 charge_pump_mode;
> That's a lot of data.  Does it need to be u32?

No, it luckily doesn't get that big. This is to avoid an intermediate 
variable & casting as the DT parameter has to be 32bit (which I learned 
from an earlier comment). It was changed from u8 in v5 of the patch.

Thanks for the review,
Maarten

