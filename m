Return-Path: <devicetree+bounces-148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79FCC79FE4B
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:27:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 17D90B20ABD
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A83010A17;
	Thu, 14 Sep 2023 08:26:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA061391
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 08:26:59 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34A4C1BFC
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:26:58 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-31aec0a1a8bso437779f8f.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 01:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694680016; x=1695284816; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xG6M6y8Pw7X9V4XyilW5IhSYyMQL3ODzvTuhgeyn1Zk=;
        b=vEuvOOWoT1w6AdS8b1ltGdShWiwSHcRImNoXwArETgcxajMIDCqvRpx7Jons25Zkof
         cJKwH5psn9Jb60dxik2n2loBJULN/kXWxSdUlSxgTSdDbUpC6HkRb6PfnryRvm81jrRz
         v4g2h3nseynEFDusbwtAva8KEewINYQB6FJNDvBL4n6rN00DCRRkz3UGtqlLD//vlyzE
         tj3lFMTUQpGuXNhiQu/7jvaGTf934loPw5VTeVg05uQQErzlH+wtGlU72hBmWatiO6Uu
         MGyXlR/ToAhhuxVXDECqw0uGL+7VsDAcnhyO9E9X4cdiZralsyA34Z62l+hyN9CP/epC
         ulxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694680016; x=1695284816;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xG6M6y8Pw7X9V4XyilW5IhSYyMQL3ODzvTuhgeyn1Zk=;
        b=M3ty/seg13HvlNnQuUCfXPo7nb0GOjKZsw7z0TqK+DcgLBBmC8T4+adAFHa35n6pa+
         HA65trZypLHQk/hKhy86cEmOSk6gTQN2Jxkps8OsTYNL0dN4DOQfoBMeKOuPxJzU1894
         vwxNA/+2t8UUAtYnhPxCD8vlKOSaS1xPRKySjxQhfPG/JGhLMRaBnp4v2/GezsdygmGX
         gL7eWu/H6nuy2NFbFbOdEI7GEtpnhsVSfQ6Bih8Q9WrGoiRuV/D+8deyD7vV7hmmxfPF
         Zub3cwwtbjLhIfKFxThoXeTFgq1Gerhyiguv+X2C726iUdAYbbYMEPUZ6SobdbkKmEVg
         Y95A==
X-Gm-Message-State: AOJu0YwyALgk4b7ZdtF2w9tHQpfkAU+HcKTXzZedKm9VpsHFsl3SEpPJ
	QCdCHuRlbLVslqA72xzhlvluiQ==
X-Google-Smtp-Source: AGHT+IFXh1He09xY9piFkgjFF4M1NajNlBCuQYWyy34YTNkgEUY34Mxl3ZDxCwoN7B2QiWTF6RHtWA==
X-Received: by 2002:a05:6000:4013:b0:319:735f:92c5 with SMTP id cp19-20020a056000401300b00319735f92c5mr913680wrb.32.1694680016672;
        Thu, 14 Sep 2023 01:26:56 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:c61:ffb9:3ed9:c494? ([2a01:e0a:982:cbb0:c61:ffb9:3ed9:c494])
        by smtp.gmail.com with ESMTPSA id w16-20020adfec50000000b003141a3c4353sm1091493wrn.30.2023.09.14.01.26.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 01:26:56 -0700 (PDT)
Message-ID: <4c1566e0-a502-4379-b360-9e6ef374af04@linaro.org>
Date: Thu, 14 Sep 2023 10:26:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/3] arm64: dts: Add gpio_intc node for Amlogic-T7 SoCs
Content-Language: en-US, fr
To: Huqiang Qin <huqiang.qin@amlogic.com>, tglx@linutronix.de,
 maz@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, hkallweit1@gmail.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
References: <20230913080924.3336391-1-huqiang.qin@amlogic.com>
 <20230913080924.3336391-4-huqiang.qin@amlogic.com>
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
In-Reply-To: <20230913080924.3336391-4-huqiang.qin@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/09/2023 10:09, Huqiang Qin wrote:
> Add GPIO interrupt controller device.
> 
> Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> index dae3465bd39b..21b2436c47e2 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
> @@ -155,6 +155,16 @@ watchdog@2100 {
>   				clocks = <&xtal>;
>   			};
>   
> +			gpio_intc: interrupt-controller@4080 {
> +				compatible = "amlogic,t7-gpio-intc",
> +					     "amlogic,meson-gpio-intc";
> +				reg = <0x0 0x4080 0x0 0x20>;
> +				interrupt-controller;
> +				#interrupt-cells = <2>;
> +				amlogic,channel-interrupts =
> +					<10 11 12 13 14 15 16 17 18 19 20 21>;
> +			};
> +
>   			uart_a: serial@78000 {
>   				compatible = "amlogic,t7-uart", "amlogic,meson-s4-uart";
>   				reg = <0x0 0x78000 0x0 0x18>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

