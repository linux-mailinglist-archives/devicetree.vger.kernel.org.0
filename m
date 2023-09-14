Return-Path: <devicetree+bounces-80-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AFC79FB68
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 07:57:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CDB6C1C20A6C
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 05:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE41F17F4;
	Thu, 14 Sep 2023 05:57:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E295563B
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 05:57:37 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7690C6
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:57:36 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4018af103bcso3537315e9.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694671055; x=1695275855; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sd+yNH3HCnvohWB8kKSot+DWu8r82XF/02XSPDy4hjI=;
        b=UvDXbsFrxyjkT18fjOC3Nxj0bIkmoBXqgIdESy4mNm/znxKs+DqDC3Yp2+KQqaD5K4
         nC1aZ0dgNV4kmitZlNestAqaU23OkyaHjBngBW/zSLxyGORmHJ1aVhAuheUxFJNve/Ts
         N9KhGmtOGsywG7izkjUmiB0vLeMLxsV3r14pjLlqkdgepgcKZWxXfgvZzlfj7Rq7sOvk
         0GrQ7+gjLVEiB5BFj2omrvXDmsCNpVwgHOMJ0Fktn3uZtnMtnIOR7HOkbgRUdsL0LKrH
         IXeDD690qy0lWemaSUOVQnzo6lXtwW3SQUNOBEXfdRg+FsADgt/AHTdaZ/Rc3jDCKXMq
         sk/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694671055; x=1695275855;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sd+yNH3HCnvohWB8kKSot+DWu8r82XF/02XSPDy4hjI=;
        b=FnYmRbDBhkK0RSUUzxg08qvzhMhx60esgkWz8/f/zXuZQzPBuxLs67N2GtRpZYU9kS
         Ss60+HaVMZmtVMHiGFDTYdRyaRdLbdxQEChjgrN9/V22UZIzfp2ID3feu/MQJGaIMqjd
         iYaGfMpGOcidDuApcA6n937g53xLJkdG1jeL313p3ntVpCzcLrO2POO+PRXX6bhT09gc
         XuOZjl7vPIEHrGPxTBId1/6ShSRD83//6T/Z5KO3tvD4mHJM6nFzNYVS1IJQw1xxyYmy
         ryKi5Gox4C3xn3lRVQqlcRez9o+Zs2euEde4iLj9HgumKySDWgeKTvBXAQkWNuBQXL3e
         9NGA==
X-Gm-Message-State: AOJu0Yy8p20jByrjU7KKMlAlx82CCa6HHFB9RjXAgCAHV1J9Wg/oevMx
	VtyCJA7hR8DMpHmc5B/WiQFqrShmPn9WoqWWf14=
X-Google-Smtp-Source: AGHT+IHQ3ToshXAt0xNl0LOHLgftxsrHEuc1Dba4IRwvwAmsrwulg2mrlsMfDvVYxxeB3xwA76gJBw==
X-Received: by 2002:a05:600c:8607:b0:402:ea5c:1845 with SMTP id ha7-20020a05600c860700b00402ea5c1845mr574855wmb.5.1694671054983;
        Wed, 13 Sep 2023 22:57:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id a22-20020a05600c225600b00402d7105035sm3871567wmm.26.2023.09.13.22.57.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 22:57:34 -0700 (PDT)
Message-ID: <196fb9ac-53b7-51a6-6ce4-9f980215fde4@linaro.org>
Date: Thu, 14 Sep 2023 07:57:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 3/4] dt-bindings: serial: document esp32s3-acm bindings
Content-Language: en-US
To: Max Filippov <jcmvbkbc@gmail.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20230913211449.668796-1-jcmvbkbc@gmail.com>
 <20230913211449.668796-4-jcmvbkbc@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230913211449.668796-4-jcmvbkbc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/09/2023 23:14, Max Filippov wrote:
> Add documentation for the ESP32S3 ACM controller.

A nit, subject: drop second/last, redundant "bindings". The
"dt-bindings" prefix is already stating that these are bindings.

> 
> Signed-off-by: Max Filippov <jcmvbkbc@gmail.com>
> ---
>  .../bindings/serial/esp,esp32-acm.yaml        | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml b/Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
> new file mode 100644
> index 000000000000..dafbae38aa64
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
> @@ -0,0 +1,40 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/serial/esp,esp32-acm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ESP32S3 ACM controller
> +
> +maintainers:
> +  - Max Filippov <jcmvbkbc@gmail.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.


> +  ESP32S3 ACM controller is a communication device found in the ESP32S3

What is "ACM"? Why is this in serial? Only serial controllers are in
serial. The description is very vague, way too vague.

> +  SoC that is connected to one of its USB controllers.

Same comments as previous patch.

> +
> +properties:
> +  compatible:
> +    const: esp,esp32s3-acm
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    acm@60038000 {
> +            compatible = "esp,esp32s3-acm";

Use 4 spaces for example indentation.

> +            reg = <0x60038000 0x1000>;
> +            interrupts = <96 3 0>;

Same comments as previous patch.

> +    };

Best regards,
Krzysztof


