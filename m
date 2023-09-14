Return-Path: <devicetree+bounces-150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C48979FE51
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:28:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 307601F22660
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:28:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6082610A19;
	Thu, 14 Sep 2023 08:27:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522561391
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:27:52 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7945E1FCF
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:27:51 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-31fd89c27e2so538076f8f.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694680070; x=1695284870; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q2WcVjPBs3fFe0/D2LShO9ZiZ6qQh5rdBuTf9oU5ymE=;
        b=oJLXAsm2yGnSjjqW/qHTxV2ZnAfDyZcRpwr/PFZNL4l+rtzcPIi74cnXlp6AERk7QK
         0XVFs83Jbz2l5ajn0Bj7emBibeFxOAx2EyuQR5QiTZKIwDmnbmAtcsnSwvR89NX+qlm1
         hW7ohE8+Cpn1qTDqlRHc7O63vzsZsixLdxiUZkGIM2O8cKhhOCY1+Y8+tC/fgjMW8i5a
         y07j20gVL5ENjVJSQj/+bUbRKr5Pk+yYzg90nmJPOn4SOcExSQG56xsTmDQm7c4pFehR
         4iz4npPhqOvYkwVF1inxSfjypWQOOW+EztzCDDfAtIP4El7Ox/90QkwAydttcYbSnRJY
         scQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694680070; x=1695284870;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=q2WcVjPBs3fFe0/D2LShO9ZiZ6qQh5rdBuTf9oU5ymE=;
        b=CtCJkztw+2qZDvZp+ztJNsQ4Oowdo7idp+Bfc99XRvtxBOf5ZFH/raOW2H5Xhx8Cwa
         Hhsv0Zn1H6VNEnxkoX3PecF4/PAr4EJk5TCwz7zasRzxXA8N53OLEh/kmjS3Q5Ye8LSA
         sJpDYO5kB/0QRZXwKx5EU3/yRp2VKfzjopFDcTR2mF/CeYMvkGHO0LdCT9eNm25DoXwp
         xMgxZetzK88vQcBCkMw0YN04pAikoPIG6VGpqeIk9ogNVc2wca07J6+Wbzb/aWPCLAnT
         LUVO/ZBp02s7GxvO1ZBUFueQlwzvxW2XQk4uzp5m6KTmyYnOAwaBIc1XvbQ9ll5umVxM
         B5UQ==
X-Gm-Message-State: AOJu0YwMFofzer0wmIK11EnD3W5BuJKOEV0vljMMCfKqpdM9BjANh6rc
	CneYZXJIShR/mwln/G9FkU1SIw==
X-Google-Smtp-Source: AGHT+IEkZM5xkr565q68ZsFr7T1qMnViqvIK/JEj5NSuqG6hxI79hG6NM/YPOu3j0dE4vtkjhZkmLg==
X-Received: by 2002:adf:ebcd:0:b0:31a:d4d0:6e98 with SMTP id v13-20020adfebcd000000b0031ad4d06e98mr3634619wrn.8.1694680069862;
        Thu, 14 Sep 2023 01:27:49 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:c61:ffb9:3ed9:c494? ([2a01:e0a:982:cbb0:c61:ffb9:3ed9:c494])
        by smtp.gmail.com with ESMTPSA id w16-20020adfec50000000b003141a3c4353sm1091493wrn.30.2023.09.14.01.27.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 01:27:49 -0700 (PDT)
Message-ID: <56164dee-ceb7-4dac-a2c6-fae8fcfc00a6@linaro.org>
Date: Thu, 14 Sep 2023 10:27:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/3] arm64: dts: Add pinctrl node for Amlogic T7 SoCs
Content-Language: en-US, fr
To: Huqiang Qin <huqiang.qin@amlogic.com>, linus.walleij@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, brgl@bgdev.pl, andy@kernel.org
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230914054525.1180595-1-huqiang.qin@amlogic.com>
 <20230914054525.1180595-4-huqiang.qin@amlogic.com>
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
In-Reply-To: <20230914054525.1180595-4-huqiang.qin@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/09/2023 07:45, Huqiang Qin wrote:
> Add pinctrl device.
> 
> Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> index dae3465bd39b..a03c7667d2b6 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> @@ -155,6 +155,22 @@ watchdog@2100 {
>   				clocks = <&xtal>;
>   			};
>   
> +			periphs_pinctrl: pinctrl@4000 {
> +				compatible = "amlogic,t7-periphs-pinctrl";
> +				#address-cells = <2>;
> +				#size-cells = <2>;
> +				ranges;
> +
> +				gpio: bank@4000 {
> +					reg = <0x0 0x4000 0x0 0x0064>,
> +					      <0x0 0x40c0 0x0 0x0220>;
> +					reg-names = "mux", "gpio";
> +					gpio-controller;
> +					#gpio-cells = <2>;
> +					gpio-ranges = <&periphs_pinctrl 0 0 157>;
> +				};
> +			};
> +
>   			uart_a: serial@78000 {
>   				compatible = "amlogic,t7-uart", "amlogic,meson-s4-uart";
>   				reg = <0x0 0x78000 0x0 0x18>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

