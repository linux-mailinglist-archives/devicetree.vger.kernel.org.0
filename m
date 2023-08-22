Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F79B7841F9
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 15:25:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233926AbjHVNZh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 09:25:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232088AbjHVNZg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 09:25:36 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 851B018B
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 06:25:34 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3fee87dd251so26793975e9.2
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 06:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692710733; x=1693315533;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+hKgghhRN3TguWnTAxKtp6shzze7BpvGg+Ihs5YYqAo=;
        b=pxi+F9on9zwIuNZd+E/OeriMBFKpthRC9z6LlOKnmpPMDe857SyPgfbe9R2O5o4Tg7
         fKVN17SzjkGG2tgqpzy15/nCCYUeFIlrDOyMClwv53w8ngdcLR5TBXkEwoi2L1etCsTK
         EucT7EOXoodspLGY3Q4KObgboypbDopiWFVV/kuHi7R+KObg7zdnFsAW4pbXXnhFR0Nq
         m0/ZjuT/moZWSWrdI7PDTPMt0y+33JmutmMtcgGpU1iwTCQ9Lfp1+huJTGGgJYzquTYE
         aiqclt5S2ojFzxZocqz3QBFrbcAjnFgcqHhS1Bd/0y8EG7m9yjhxQguM8sNzvcxGRLZi
         GQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692710733; x=1693315533;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+hKgghhRN3TguWnTAxKtp6shzze7BpvGg+Ihs5YYqAo=;
        b=XP04XyuQOjAobhY/dczsFknO0zBq6jCsUP+WOV48pURzQQIULCtsE2AUBnyfUlU7Q/
         4ItCbidLRYfa1ikxBO9ghzFhUJ+v4+PmptkkNQy1qaoRLmtaf06tQ1szei20A2C9AL38
         fcUDq8ojm0byXtEPzadP44CLgbXKx5n0csPuqhgZgBxH4GsvnsKPxbPU6cuyXnyP5oQ+
         bS9zfyOUD+fjUKHUcHTYfvbNN/l8jSYKecIVSEb4TJ1hB9VtcAIKQirMBpeboKLApJvx
         Shslqtj4i54JGq1GARuUvv1HdRQmdfSDHQf2rCKDuSDCFzPXa0Ip9TzqRRcKqiOZoGry
         +igA==
X-Gm-Message-State: AOJu0YyMz3+kLpK2KSzwpACChFebnR8Y9ZIIWHJOOpkINItK3pp1wrVO
        gVujFosJOqaNpFJZDFPPwYqqpA==
X-Google-Smtp-Source: AGHT+IHYXYs2OZ2ZSAys4NpOF3y8Z+bVuY3gup7rcbOoiqes71xbSlrooIH2TJ5s702CU92gT0W8Qg==
X-Received: by 2002:adf:fe03:0:b0:319:5a7c:6418 with SMTP id n3-20020adffe03000000b003195a7c6418mr7085688wrr.43.1692710732984;
        Tue, 22 Aug 2023 06:25:32 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:cad:2140:de4a:6da8:c7fc:12c? ([2a01:e0a:cad:2140:de4a:6da8:c7fc:12c])
        by smtp.gmail.com with ESMTPSA id o2-20020adfcf02000000b00317a04131c5sm15778520wrj.57.2023.08.22.06.25.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 06:25:31 -0700 (PDT)
Message-ID: <ba6b2484-3180-4f50-a867-6236b025190d@linaro.org>
Date:   Tue, 22 Aug 2023 15:25:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/3] dt-bindings: media: Add compatible for Meson-S4 IR
 Controller
Content-Language: en-US, fr
To:     Zelong Dong <Zelong.Dong@amlogic.com>, Sean Young <sean@mess.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20230302063402.42708-1-zelong.dong@amlogic.com>
 <20230302063402.42708-3-zelong.dong@amlogic.com>
 <80fe197a-3f15-d1b8-ed99-adeb4a8c24d2@linaro.org>
 <9dc78ceb-3852-e5e8-0b8e-b95f9bec4557@amlogic.com>
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro Developer Services
In-Reply-To: <9dc78ceb-3852-e5e8-0b8e-b95f9bec4557@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 22/08/2023 13:11, Zelong Dong wrote:
> 
> 
> 在 2023/3/2 17:24, Neil Armstrong 写道:
>> On 02/03/2023 07:34, zelong dong wrote:
>>> From: Zelong Dong <zelong.dong@amlogic.com>
>>>
>>> Add new compatible for Amlogic's Meson-S4 IR Controller
>>>
>>> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
>>> ---
>>>   Documentation/devicetree/bindings/media/meson-ir.txt | 3 +++
>>>   1 file changed, 3 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/media/meson-ir.txt b/Documentation/devicetree/bindings/media/meson-ir.txt
>>> index efd9d29a8f10..2a6662edd04d 100644
>>> --- a/Documentation/devicetree/bindings/media/meson-ir.txt
>>> +++ b/Documentation/devicetree/bindings/media/meson-ir.txt
>>> @@ -5,11 +5,14 @@ Required properties:
>>>             - "amlogic,meson6-ir"
>>>             - "amlogic,meson8b-ir"
>>>             - "amlogic,meson-gxbb-ir"
>>> +          - "amlogic,meson-s4-ir"
>>>    - reg        : physical base address and length of the device registers
>>>    - interrupts    : a single specifier for the interrupt from the device
>>>   Optional properties:
>>>    - linux,rc-map-name:    see rc.txt file in the same directory.
>>> + - amlogic,ir-support-hw-decode: enable hardware IR Decoder, and register
>>> +                 rc driver as type RC_DRIVER_SCANCODE
>>
>> AFAIK this is a software parameter since the HW is capable of decoding,
>> if you want to make the HW decoding a runtime option, please use another way.
> 
> Part 1 patch for HW IR Decoder was queued, now I'm preparing part 2.
> I add a new property "amlogic,ir-support-hw-decode" because I think rc driver don't support change the driver type (enum rc_driver_type) dynamically, it need to declare the type in DTS.
> Am I right?

DT should not have software parameters, it's ok to enable the HW decoding for a specific compatible for example.

Neil

>>
>>>   Example:
>>
>> Please base changes on top of https://lore.kernel.org/all/20221117-b4-amlogic-bindings-convert-v3-4-e28dd31e3bed@linaro.org/
>>
>> Thanks,
>> Neil
>>

