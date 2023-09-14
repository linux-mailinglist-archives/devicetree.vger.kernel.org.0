Return-Path: <devicetree+bounces-87-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE8579FBC2
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:18:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C313E1C2097D
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:17:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58DA11C01;
	Thu, 14 Sep 2023 06:17:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3D53FFF
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:17:05 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60187F7
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:17:04 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9a65f9147ccso75685366b.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694672223; x=1695277023; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UK0O4WJKJlOZsHN2AORyIn3x8ciKDTzhX6N4dTgrbtM=;
        b=oxpc56GmwVM8T7ITmCtul2+h1l1OM4rnDWfEd6u7N7jZXtABZVKnif8VSsvXly5o8W
         ZppQCIDTxiPPFHMG/O0S7ONp+bztV1vXr0BvZGHKe0U116CKFXCqdprhfxipXkwr/Y+Y
         uoVoTKjlZaqXw44jwEzhOQfF/Si9p9d5W3Im5pIQlcAwkU80k+eV3clTQhY9iYOOh+41
         ebpoN67B8YLhHTGF/LJ/y+H0JBllnPU7mH5bWDj5TsdFahV4i6LQ24sswrkg2BNG6J2P
         FQyxgxjnBKCjQJc7n+36/bKFjL8lxrSRufPcnFUN6RSO7OTY7zT7x+jTwNx9dqUdWzDC
         a+tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694672223; x=1695277023;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UK0O4WJKJlOZsHN2AORyIn3x8ciKDTzhX6N4dTgrbtM=;
        b=MEg5CVE9MnyhebedYcdNU0nLoJvRHYg6T9RcB32rj0TvaTbGQPgxIM+qPXPccbc+Vo
         I/gTuf1LMtW3jUbZdSBfQ4QLjvmMPL07NYhhthsyHqIn4lwUEzmRmlNZoP8wf90Kn5Zh
         GPaTHwggGbR20E8f6Zcpn3d9p6Qp2fUDPuBOHTQN7HoU2+BulBf8IgNFE5/jPfmRAjsD
         LU1ZjzD+7lyn5PwbAG2TmKP7lYv5Gy8+8iItHYJbFlVNgo3HfPw0yYTnZL0xGom+G/yE
         n54iygpAnnfACVHUjfF7ypRa68ZE6JKS/2HXo3ywQQiD/mYvglNbf65SkqOYP5QU0RzX
         lUZw==
X-Gm-Message-State: AOJu0Yw7PPTC7g3pU1APsEPrvDoNs2lahKBcd+LJMWw1g21OzEWXu5s6
	tVJA2Kw+6CBpOsZ1nL+nVtkzng==
X-Google-Smtp-Source: AGHT+IFoQUQl22lWSHFNhUxXzHXGNgTqAInQGx0SzU77yOY3Lg/+ylETFd0JjlYLR9E9wxvPxBnT4A==
X-Received: by 2002:a17:907:62a6:b0:99d:e8da:c20b with SMTP id nd38-20020a17090762a600b0099de8dac20bmr4172306ejc.24.1694672221956;
        Wed, 13 Sep 2023 23:17:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id q13-20020a170906770d00b0097073f1ed84sm514322ejm.4.2023.09.13.23.17.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 23:17:01 -0700 (PDT)
Message-ID: <45637012-0972-fc7b-1276-163da363b962@linaro.org>
Date: Thu, 14 Sep 2023 08:16:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: Add compatibles for Amlogic T7
 SoCs
Content-Language: en-US
To: Huqiang Qin <huqiang.qin@amlogic.com>, linus.walleij@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, brgl@bgdev.pl, andy@kernel.org
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230914054525.1180595-1-huqiang.qin@amlogic.com>
 <20230914054525.1180595-2-huqiang.qin@amlogic.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230914054525.1180595-2-huqiang.qin@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/09/2023 07:45, Huqiang Qin wrote:
> Add a new compatible name for Amlogic T7 pin controller, and add
> a new dt-binding header file which document the detail pin names.
> 
> Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
> ---
>  .../pinctrl/amlogic,meson-pinctrl-a1.yaml     |   1 +
>  include/dt-bindings/gpio/amlogic-t7-gpio.h    | 179 ++++++++++++++++++
>  2 files changed, 180 insertions(+)
>  create mode 100644 include/dt-bindings/gpio/amlogic-t7-gpio.h
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-a1.yaml b/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-a1.yaml
> index 4e7a456ea4cc..c7df4cd34197 100644
> --- a/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-a1.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-a1.yaml
> @@ -16,6 +16,7 @@ properties:
>    compatible:
>      enum:
>        - amlogic,c3-periphs-pinctrl
> +      - amlogic,t7-periphs-pinctrl
>        - amlogic,meson-a1-periphs-pinctrl
>        - amlogic,meson-s4-periphs-pinctrl
>  
> diff --git a/include/dt-bindings/gpio/amlogic-t7-gpio.h b/include/dt-bindings/gpio/amlogic-t7-gpio.h
> new file mode 100644
> index 000000000000..2bab9a99501a
> --- /dev/null
> +++ b/include/dt-bindings/gpio/amlogic-t7-gpio.h

Use compatible syntax.

> @@ -0,0 +1,179 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
> +/*
> + * Copyright (c) 2023 Amlogic, Inc. All rights reserved.
> + * Author: Huqiang Qin <huqiang.qin@amlogic.com>
> + */
> +
> +#ifndef _DT_BINDINGS_AMLOGIC_T7_GPIO_H
> +#define _DT_BINDINGS_AMLOGIC_T7_GPIO_H
> +
> +#define	GPIOB_0		0

Why weird indentation?



Best regards,
Krzysztof


