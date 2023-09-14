Return-Path: <devicetree+bounces-78-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A43979FB5F
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 07:54:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8A1BFB209A9
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 05:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9F982511F;
	Thu, 14 Sep 2023 05:54:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1B763B
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 05:54:25 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DD8DC1
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:54:24 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-313e742a787so336718f8f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694670863; x=1695275663; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Vont974mPR+vR1R39yYi+/MSVKxLVG/yjvIZF0kTQRc=;
        b=yl2CJ87hp4cn8MtdgQLfoCHnHcykGpuXop7iShtXDX7LhcLlqybZO98Kx/IjGSQAni
         +nC+k0jCfvsFkYLyNAvoMputiAr0cHhLfcE5jyAt56FkSYiSnNONx5RTk0WTbcyxLGHn
         ++axWqnoT2npLOC1EN+nF0XfGI2kUEDd/tdPUxfhD7nYsBBTGYotVeixUUn0B9TDNq7u
         eQyrN08COo63Dobzuqpc981PobbI7/xHNxADPu9DGHKi5qetJrgfiPkadOtkTNkmBDv3
         S8FG36YEjzW8W6PFvP8yMUYb1DCcv9/e7IYGdDkoIV6PEZu+Er9T1u7NOTxWyQ2OlksC
         8bqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694670863; x=1695275663;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Vont974mPR+vR1R39yYi+/MSVKxLVG/yjvIZF0kTQRc=;
        b=iW8GDs7N6o3Q8xDgJfY7DWPe1q7xKC1iyEY9chZl6s+R0cAkNwMKjXaNxamRVlobO+
         wg9nQeY1OuvreJgs2d7dsJ4YySYYN+KOKxJftgfYWCD+rRzgMysaX95vPdtOtSBuZYof
         OI7int05VXuI8hYvaIClLTjqFX7WvUApAP6kjOQA+SoQt02VlylF1qsTobbL0+EGFhXb
         l9XpEt/FkLNaFVuC/3JroGCPq6vFOyXorqsq81EL+Dk+9FOu8dc4WvNCXUSvedTh7KqT
         AexBjVKUb8EDO5givDMOmJeMbXIB/994HYvShTs0Dg/0gESieTWNeZTTzkm5SilaclZb
         /uWg==
X-Gm-Message-State: AOJu0YxCY85FbWSi2Ia0h56lD518/gCaasOe7PPsNKv0m/ckIjIxx+Nv
	1TRg5JOEWK3SlzTGfkUHmAK0qA==
X-Google-Smtp-Source: AGHT+IFCo+0UH+egV7WEJxmQZmqKJAcM2k6gd0KiChB1i4jHeNdtLdZ6CD4BZ9jTtvogt60rDLTlgg==
X-Received: by 2002:a5d:4c49:0:b0:31f:c9a4:667b with SMTP id n9-20020a5d4c49000000b0031fc9a4667bmr538888wrt.31.1694670863060;
        Wed, 13 Sep 2023 22:54:23 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id l10-20020a5d560a000000b003142e438e8csm747480wrv.26.2023.09.13.22.54.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 22:54:22 -0700 (PDT)
Message-ID: <465dc390-a5ff-547a-2bd3-54b29e1b6c43@linaro.org>
Date: Thu, 14 Sep 2023 07:54:20 +0200
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

Do not need '|' unless you need to preserve formatting.

> +  ESP32 UART controller is a part of ESP32 SoC series.
> +
> +properties:
> +  compatible:
> +    oneOf:

That's just enum. Your descriptions are useless - tell nothing - so drop
them.

> +      - description: UART controller for the ESP32 SoC
> +        const: esp,esp32-uart

Looks quite generic, so just to be sure? This is not a family name,
right? Neither family names nor wildcards are allowed.

> +      - description: UART controller for the ESP32S3 SoC
> +        const: esp,esp32s3-uart
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    serial0: serial@60000000 {

Drop unused label.

> +            compatible = "esp,esp32s3-uart";

Use 4 spaces for example indentation.

> +            reg = <0x60000000 0x80>;
> +            interrupts = <27 1 0>;

Use proper define for IRQ flags.

> +            clocks = <&serial_clk>;
> +    };

Best regards,
Krzysztof


