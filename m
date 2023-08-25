Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 734DC788711
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 14:22:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233185AbjHYMWJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 08:22:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244796AbjHYMVr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 08:21:47 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9741268C
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 05:21:21 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-31c615eb6feso672453f8f.3
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 05:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692965998; x=1693570798;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nHMjHCi8nL3iHIgcbWKICMPh5N5wLAaAe8hnVrLWWts=;
        b=stSpww4kF0HfI75b/eWOhExLhhjPevwnLfPVWe0HermHZAv8tXzhNecSqYc8XiE3X8
         y+gRUNDTSriSSKp1j84eabEVaRwcXVfo9X2TH/Fo/oQ1wVGKvSAf0E6Pzv/JOcPlbd6M
         XS1WgHhrc5XbSd61e4DYhdf4mulHv+qsmvZnjvOUlboMm24zPMFMKXQdkir77/TaA4tN
         XLah1OSo9F8POQxkSIhMOUp+j3UwKw/Hmv77+8UGKRr9R/WBPi1mVG6B1/3iTUSdp1KK
         eh97E7gdcVBzuYdRYK7+Le7w/+eCQHjwO5nTBTEtIx8chlzcbLl2vfwHwBVi24rUYr0j
         wHww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692965998; x=1693570798;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nHMjHCi8nL3iHIgcbWKICMPh5N5wLAaAe8hnVrLWWts=;
        b=e+o0xYV5DxV5qXomtHMBphRhN/074vP50NlL4rjEFC4mFPJHSCYVld8K6aLoJ8qzY9
         ShN2P3N+ZZNF1PQXKoNzo1MiAm1+L4LJVuDSyARZTOwrHmYovBpOJvTISmz4ZTKIZBws
         nBK8yS8ktRMJjczwwHKl2fiLADCqTqW4xJp7Ags5CPRQdM8aDY4yQW9dCk6ZSjIOKHNB
         Q60K+RpaJXp/rpCseP14hUrAdSFdelc7xkPvci03nZKO1EWb+TC/QioR9XJ/+w7GOGuP
         akFefbcHFMl+Jier8EI96HuYU2CR4FvscRvjplAtSy/+vbR2K06pHQTVVvrYMBqbyTUs
         W80Q==
X-Gm-Message-State: AOJu0Yys8WKioPR9r4ZoCXA76TIk1xcDI+xeVM+a5G0pjj4Gy4CKN4wW
        rzUpcs05fUHwdxG9SqJV0JH/pg==
X-Google-Smtp-Source: AGHT+IErkRB/kpj/09WspYrWIaceU32Ug6rXwPqFBa48iPDlFLCkFheTF9ANCrHi7SZ2AjSvH8UDuw==
X-Received: by 2002:a5d:5963:0:b0:31a:ccc7:29ee with SMTP id e35-20020a5d5963000000b0031accc729eemr12307289wri.7.1692965997883;
        Fri, 25 Aug 2023 05:19:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:4e1:71e1:b02b:811e? ([2a01:e0a:982:cbb0:4e1:71e1:b02b:811e])
        by smtp.gmail.com with ESMTPSA id g13-20020a5d64ed000000b003177f57e79esm2095673wri.88.2023.08.25.05.19.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Aug 2023 05:19:57 -0700 (PDT)
Message-ID: <fcdb1fb2-784d-4235-aa47-9e489395c028@linaro.org>
Date:   Fri, 25 Aug 2023 14:19:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/3] media: rc: meson-ir: support rc driver type
 RC_DRIVER_SCANCODE
Content-Language: en-US, fr
To:     zelong dong <zelong.dong@amlogic.com>, Sean Young <sean@mess.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Qianggui.Song@amlogic.com, Yonghui.Yu@amlogic.com,
        kelvin.zhang@amlogic.com
References: <20230825115310.39993-1-zelong.dong@amlogic.com>
 <20230825115310.39993-2-zelong.dong@amlogic.com>
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
In-Reply-To: <20230825115310.39993-2-zelong.dong@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2023 13:53, zelong dong wrote:
> From: Zelong Dong <zelong.dong@amlogic.com>
> 
> Meson IR Controller supports hardware decoder in Meson-S4 and later
> SoC. So far, protocol NEC could be decoded by hardware decoder.
> 
> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
> ---
>   drivers/media/rc/meson-ir.c | 522 +++++++++++++++++++++++++++++++-----
>   1 file changed, 451 insertions(+), 71 deletions(-)
> 

<snip>

It looks pretty good now, so far I'm ok with it:

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

I think some test reports would be needed to be sure it doesn't regress existing HW.

Thanks,
Neil
