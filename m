Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F001366B39A
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 20:16:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231580AbjAOTQ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 14:16:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231569AbjAOTQ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 14:16:28 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3E6212846
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 11:16:25 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id u19so63434939ejm.8
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 11:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R1KYEjzsfB0r5L+lets4QzbwQ5qDbW3Ig0EpGysGDyw=;
        b=LfgGJccGja73lIwSv1samKvRHDsszVjEt5CdeFvJ2sgIVyeMtS48IOD4ve08l4YDmL
         S4CVxOKQnMWupaHJLiRtIHKfH4c/k2eHt2vRIByDAwAz209ggDeWBWHy1+E+NRy3K8se
         TMGwSaEmRKFAGyolGf+ANCktSFjXgPmpmooBjYTFRIPgb0SXFqNdK0d140dzXN40/fwK
         16JqXI8WjBFDVPU5LQyRaqW6YyDJKvR1tq9lQiihyOKH8HZ/pr4W7Wi1HPjmcqUAtbnv
         XspnltwiNnGkvgy3FbzcU7Yn9TT6hrDcd9CG80UppHH07vQw8rNt+BvYadFJ5B9OAwok
         Q/Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R1KYEjzsfB0r5L+lets4QzbwQ5qDbW3Ig0EpGysGDyw=;
        b=yAovG7r6zfaaifznsPQuMmofDImDN7U9AU4D2+K1omRD/jqAaNeL9ua2Bz+i/x6K3G
         9xjlam/WUl/5MZXyQvBnQPyNr0TqVACG9/vBUE0lBSgbXnhkLHYJbdN5nTYUgKF2fRuT
         c65slntp5ToIQ2f2YXluMOBJcUZ+dQXdZlfFT/vhbTYrcrHeoHY3UAu+Gw8HXrjkrqwG
         ks9CyPkDtZYQitAKFehK7QQRWYu7LVXB7rUbxWPM3F5vkfqVZZrqkCtM7L+yy5T2ZheA
         EJ65jKC3swnIDRWRhw7SnMpH66AOXtHG7jsolY6j1S8QZEqyuTnT06g20JwpfR7KFlzX
         Hjtg==
X-Gm-Message-State: AFqh2kq9ouoOpmqhIlx3+7uIBAEF0pxC3AjByPm98nNSWQ7DkB6oZoQe
        TnOg40A8BKVwmAyJn0FQ2te0Mg==
X-Google-Smtp-Source: AMrXdXssByycNWYnhzUI9FZz5exMX/TXGfSxhC59jDzU9JLIekHgxxy8wWJLQFYxjKmI8wuo6IaLyw==
X-Received: by 2002:a17:906:49cd:b0:7c0:f684:9092 with SMTP id w13-20020a17090649cd00b007c0f6849092mr71806335ejv.37.1673810184540;
        Sun, 15 Jan 2023 11:16:24 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id et14-20020a056402378e00b00497d8613532sm9874685edb.5.2023.01.15.11.16.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 11:16:23 -0800 (PST)
Message-ID: <d570c775-158c-26e1-94d8-de3dc4d5370e@linaro.org>
Date:   Sun, 15 Jan 2023 20:16:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 2/5] dt-bindings: mfd: adi,max77541.yaml Add MAX77541
 bindings
Content-Language: en-US
To:     "Sahin, Okan" <Okan.Sahin@analog.com>
Cc:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:MAXIM MAX77541 PMIC MFD DRIVER" 
        <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20221226223839.103460-1-okan.sahin@analog.com>
 <20221226223839.103460-3-okan.sahin@analog.com>
 <88ba15e1-ee03-bd61-fc7d-d00c8c6ae72e@linaro.org>
 <MN2PR03MB51689EC83FF462C5CE903567E7C09@MN2PR03MB5168.namprd03.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <MN2PR03MB51689EC83FF462C5CE903567E7C09@MN2PR03MB5168.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/01/2023 18:40, Sahin, Okan wrote:
> Hi Krzysztof,
> 
> Thank you for your feedback and efforts. I apologize for some missing points of v2 patch. I tried to do my best. I will be more careful to fix all feedback before sending new patch so I want to ask a few things before sending v3 patch

Please wrap lines in your email.

(...)

>>> +
>>> +  adc:
>>> +    type: object
>>> +    additionalProperties: false
>>> +    properties:
>>> +      compatible:
>>> +        const: adi,max77541-adc
>>
>> This is a friendly reminder during the review process.
>>
>> It seems my previous comments were not fully addressed. Maybe my feedback
>> got lost between the quotes, maybe you just forgot to apply it.
>> Please go back to the previous discussion and either implement all requested
>> changes or keep discussing them.
>>
>> Thank you.
> Honestly, I don't quite understand what you're suggesting regarding the adc part. I thought I should add the adc as an object since it is in the mfd device. Do I need to remove this part?

What is unclear in my comment from v1? Yes, you need to remove it
because it useless. There is no need for a node consisting of only
compatible. Your driver does not need the DT node at all to do its job.

Best regards,
Krzysztof

