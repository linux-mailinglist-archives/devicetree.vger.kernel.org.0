Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BD2B79BC4F
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 02:14:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237671AbjIKUvk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:51:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242643AbjIKQBJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 12:01:09 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D7691B6
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 09:01:04 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-31aec0a1a8bso2905219f8f.0
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 09:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694448062; x=1695052862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s2glCAHgqqUPWc3CP1OHlMrR0Qn4lq/01XXCsFqva+s=;
        b=SY5tXYSL3U0PP/qZ2RJPEX8XX/Ll4iOZBCdPuex9hsdzhZ+C3ru461B8OLjaALH476
         1AdXOSm3C+yDtkKaI7RWZvjBAmsGgekfnEEh9Q6rs43zfndBKIs4EgTJgH3Q8xn79eaq
         MWqqyaId4JVXpZDFD1kyhb6qIE7HjgQLgbnxM+5mt7wQq+8ZEGjfSGUu4O9iKf5koYY8
         MvaOkoPxuwM5N4rI69PpZJQ+i5oJTU7n9iuLv385kU7b33Sb0bSpGurrobyszWmw23T4
         GvQaZU/AbMAoJGN/nsnZCt4d3pLlrRVzGAWkANGF7RfQBR/Xuxn1Whg3/7VTexWKb2Nv
         7rdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694448062; x=1695052862;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=s2glCAHgqqUPWc3CP1OHlMrR0Qn4lq/01XXCsFqva+s=;
        b=LqsSLPrYq7PimC8HsrmA8Y6uOtamsJz30vPBJV1EFnUntjKlQcR0wLsOrTXg64YH1A
         OpwV3G0pY708eotRXMrThpJoq5sl62wI95b8M2pKqIlSbnHh21pacn6JWe4fYk4l8QJh
         beVHF/iVJSSQYSxfTkP3E1jmgXBeUMoR6IOM7cl0LnMNIkki1EvVgo0Rk6VUaCQICrUg
         //nIMoMZB5vvZEL2u6qd0vqGFnxTym/R1+MwWp1/FaF66RvwH9o/B15RyU7RwKldt28f
         6dE7M4s/95zysUgbGTY+qDUktWDyfAgGNCLd8dwjVME3bSVanwbWFgUslMOXbr1c/9uV
         upIg==
X-Gm-Message-State: AOJu0YxLVpSwX+qW2pzvjqYvoZz2CLUc7DB5Mxt9AvYG7uTBqSw5eUNa
        D6dZclbRp/XDBB3GNk24zSa/Yg==
X-Google-Smtp-Source: AGHT+IEGZdz3zyhtcZpXFiMnEoQFm/pxuP8ny4P7dx2LWdM6dxPR5OqpTxSezqhBaOeX4ArFri4Nlw==
X-Received: by 2002:a5d:568f:0:b0:314:3e96:bd7e with SMTP id f15-20020a5d568f000000b003143e96bd7emr27788wrv.4.1694448062135;
        Mon, 11 Sep 2023 09:01:02 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:daaa:8bc3:eeb7:ce8? ([2a01:e0a:982:cbb0:daaa:8bc3:eeb7:ce8])
        by smtp.gmail.com with ESMTPSA id z20-20020a1c4c14000000b00402e942561fsm13648037wmf.38.2023.09.11.09.01.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 09:01:01 -0700 (PDT)
Message-ID: <eb89a5df-dcac-408d-bf4a-c0f80e0b9da9@linaro.org>
Date:   Mon, 11 Sep 2023 18:01:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 5/5] arm64: dts: meson: u200: add onboard devices
Content-Language: en-US, fr
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Christian Hewitt <christianshewitt@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
References: <20230911154541.471484-1-jbrunet@baylibre.com>
 <20230911154541.471484-6-jbrunet@baylibre.com>
 <eedc9787-06b7-bac5-a1f5-ba07d23f4ac7@linaro.org>
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
In-Reply-To: <eedc9787-06b7-bac5-a1f5-ba07d23f4ac7@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/09/2023 17:56, Krzysztof Kozlowski wrote:
> On 11/09/2023 17:45, Jerome Brunet wrote:
>> Add missing audio devices found on the u200 PCB. This includes
>> * Lineout connected to the internal DAC
>> * SPDIF input connected to a coaxial socket
>> * TDM input decoders allowing output loopback
>> * TDM A and B output encoders and interfaces
>>
>> TDM A and B link format is set by the related external codec.
>> Internal audio DAC can hook to any TDM output.
>>
>> This change does not include support necessary the optional the speaker and
>> PDM Mic headers
>>
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> ---
>>   .../boot/dts/amlogic/meson-g12a-u200.dts      | 228 +++++++++++++++++-
>>   1 file changed, 218 insertions(+), 10 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
>> index da66e2e1dffb..9abe37b5b227 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
>> @@ -9,6 +9,7 @@
>>   #include <dt-bindings/gpio/gpio.h>
>>   #include <dt-bindings/gpio/meson-g12a-gpio.h>
>>   #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>> +#include <dt-bindings/sound/meson-g12a-toacodec.h>
>>   
>>   / {
>>   	compatible = "amlogic,u200", "amlogic,g12a";
>> @@ -19,6 +20,22 @@ aliases {
>>   		ethernet0 = &ethmac;
>>   	};
>>   
>> +	dioo2133: audio-amplifier-0 {
>> +		#sound-dai-cells = <0>;
>> +		compatible = "simple-audio-amplifier";
> 
> compatible is by convention first property. Do you have different style
> in Amlogic/Meson?

Not really, no specific style

> 
>> +		status = "okay";
> 
> status is by default.

I'll fix the patch on my tree.

Thanks,
Neil

> 
> 
> Best regards,
> Krzysztof
> 

