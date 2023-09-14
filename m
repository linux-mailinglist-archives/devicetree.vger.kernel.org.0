Return-Path: <devicetree+bounces-79-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 923CB79FB64
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 07:55:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A97C0281A17
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 05:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDBF217C3;
	Thu, 14 Sep 2023 05:55:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B3E250FD
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 05:55:40 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2801CE
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:55:39 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-401c90ed2ecso6303815e9.0
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694670938; x=1695275738; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KVqz5fTFaZOPkRTloQdqhhX4Yfas1CeW5UW/reBPVug=;
        b=Ts1zjQnHej8q0dX+4eQ0t0eHxXNz+upMSVOHdTbRwUlC4DWVUWcOKWnNZJzcBRgjsP
         djmj57EkNaeVUpb2rkdLL8J6c1HvjWp1Xsja+XThINc5nSklD1JV6Vi7Ab6rQhUR3ARd
         f+p1vsvNnIBjd8H1sSBEuFkVkncVzzVB9ElWSkAWr0BC7dAVmLmMA0tXZlaZEJ52eHQe
         leDU+d+RwmcyPH4Fi9OZFk/CtMCU4oBYmRQ3zC2gi8tu1FY624IOP3mlitUAhbS+eQUE
         BiVA/gjmJMw0jWPk9/2+QyGcd1ulni1rL6NiEDvvoyuCTQ0YVPVeKqvnO9xwAe9t3zzu
         AomQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694670938; x=1695275738;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KVqz5fTFaZOPkRTloQdqhhX4Yfas1CeW5UW/reBPVug=;
        b=lqYzmAw19nyGZuQbIAmg9UzmAXdjACT0W7/9nSBhetSS80oanYuVrLwAAHyY+OUWY8
         rZ/XLNYqjxNoABbjV/q5roSRABlR11vFWw4b7xH65Q3TiRH6bK6jxcOxOUsi+rPiEmaX
         CojNrPJE7nOOSyTWBxwz5zgJcsx5s3EDIrQZ0ZkSo1kF4BVgWKO+Vlg6Ht3b/n0Fmcra
         VSEmefyIXJiJsa47ucCc+jEIr3gWupmp1Nbx+5z260GRL8Tso+SZT1xb/IkKXjeOa5p4
         5tl4AznUpaL5NmCnwYCC+1lknZOW3juYAdaRuyMsAoj3D5DRJqvfuabH0bKdnZMznbqP
         dqgQ==
X-Gm-Message-State: AOJu0YzA8eH8zH8GVYGw5w6Us781sjWuVXaVB8aluLCf1s3GkyijmcGu
	f5mHJGw+f2Le/7ryE27tnw89yw==
X-Google-Smtp-Source: AGHT+IG0W3wyhxluqtBNYusc57CPjlOiC3XamIm1oevXpauiZO52uIinBPwKk77BV+JH8o7fg2a7pg==
X-Received: by 2002:a5d:58e8:0:b0:319:666e:b466 with SMTP id f8-20020a5d58e8000000b00319666eb466mr3280085wrd.42.1694670938069;
        Wed, 13 Sep 2023 22:55:38 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id c3-20020a05600c0ac300b003fef6881350sm962830wmr.25.2023.09.13.22.55.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 22:55:37 -0700 (PDT)
Message-ID: <d7bf0ae3-d263-4231-9656-2b7af4b372a3@linaro.org>
Date: Thu, 14 Sep 2023 07:55:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/4] dt-bindings: serial: document esp32-uart bindings
Content-Language: en-US
To: Max Filippov <jcmvbkbc@gmail.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20230913211449.668796-1-jcmvbkbc@gmail.com>
 <20230913211449.668796-2-jcmvbkbc@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230913211449.668796-2-jcmvbkbc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/09/2023 23:14, Max Filippov wrote:
> Add documentation for the ESP32xx UART controllers.
> 
> Signed-off-by: Max Filippov <jcmvbkbc@gmail.com>
> ---
>  .../bindings/serial/esp,esp32-uart.yaml       | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml
> 
> diff --git a/Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml b/Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml
> new file mode 100644
> index 000000000000..8b45ef808107
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/esp,esp32-uart.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/serial/esp,esp32-uart.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ESP32 UART controller
> +
> +maintainers:
> +  - Max Filippov <jcmvbkbc@gmail.com>
> +
> +description: |
> +  ESP32 UART controller is a part of ESP32 SoC series.

1. Company name?
2. ESP32 SoC series suggests esp32 is a series.

> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - description: UART controller for the ESP32 SoC
> +        const: esp,esp32-uart

Also, the vendor prefix looks incorrect, so again - what is the company
name?

Best regards,
Krzysztof


