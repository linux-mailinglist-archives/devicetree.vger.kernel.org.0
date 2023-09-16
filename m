Return-Path: <devicetree+bounces-804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEB87A327C
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 22:38:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C3A7281256
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 20:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 326031C286;
	Sat, 16 Sep 2023 20:38:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AD3134DE
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 20:38:19 +0000 (UTC)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B14AFCE3
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:38:16 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-530e180ffcbso351074a12.1
        for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694896695; x=1695501495; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M5mtdsABJYkZ37qC2C38/N7zHZsWwIrfw/Qhh3bbiuw=;
        b=fZkprpac8Xgd50UnERGh/62V0LjoPca569fSU/oAHN2mYMyeficxFY3MdBJjZsDAuv
         3rAHM5OzEvxU2vb/lCPsJr4k2R0zEVGk1F4KAiixzY/VPBIKiHWRZRVIZFL/vE57NzG3
         R4Dq0kEygYPy41OcOjAc6OTdeFUFQeaxFJCEfyrvtMLCwnu7Mg4KwkUy2mm+QgEhBpqs
         V9hBoT6l4e4R3rr6kjLMDXITxoYH04Xf1ybflyU0t4oi5ON0PcQJoNXgdxpbGM3vS0RK
         YBT9ONVNFgs8lLxYwjjSuM8l4JVpuBUvE12NQirxk+ZTanTnANMrV9rV7WKIaT0nONYp
         fBMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694896695; x=1695501495;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M5mtdsABJYkZ37qC2C38/N7zHZsWwIrfw/Qhh3bbiuw=;
        b=J0vz9iiJ0x4tPSHu4MHsy8JAaP6h/qXzIJbSm5eFKkXlHWhPCtpUaduC3jLE9OmOOU
         AMMqLqTalLPWlLTHwcx66Lw6b5Eu13eBj8Q9FWI+7jznZjbKg9tIpb8ZZUaLP6WtRl91
         hG7lIAlYVACV7cOaSRs18TFLC8UWAGOYdQXGKqct4H5ebP5HkINgLqm2nPi3JrHC263l
         yNGUrHg8ieYAiIp1xd2/Xeb2J/hikPXXOp3m3n447RlGVquZBwCbL7h+kta9d3dFF7sC
         tuVkByU/jDkit5qUWk/5XfWxtJR7xpstP2EfekkHCkEmpTvx2WGAUhf4RpF+WhEY8cvy
         v1bg==
X-Gm-Message-State: AOJu0Yzb+gKdhWErQAezg/YrS0jNppyZgb2asnOWyUyBmcR5MuvIjy/i
	Tpy9OX6++pm15+1L7jeySRSdRQ==
X-Google-Smtp-Source: AGHT+IHbchk3PUwrMNToUoM+pJOEkNiQ+H/1dUMlTy+kuUA3vXvlD49RNngPnzeYAHP3oG9NtQoigQ==
X-Received: by 2002:a05:6402:409:b0:525:4c2b:b87b with SMTP id q9-20020a056402040900b005254c2bb87bmr4286627edv.22.1694896695225;
        Sat, 16 Sep 2023 13:38:15 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id fd14-20020a056402388e00b005307e75d24dsm2625322edb.17.2023.09.16.13.38.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Sep 2023 13:38:14 -0700 (PDT)
Message-ID: <8c46b45e-2127-346c-0584-54b06a8a343a@linaro.org>
Date: Sat, 16 Sep 2023 22:38:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] dt-bindings: watchdog: atmel,at91rm9200-wdt: convert txt
 to yaml
Content-Language: en-US
To: Nik Bune <n3q5u8@yahoo.com>, wim@linux-watchdog.org, linux@roeck-us.net,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 claudiu.beznea@microchip.com
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230916154826.84925-1-n3q5u8.ref@yahoo.com>
 <20230916154826.84925-1-n3q5u8@yahoo.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230916154826.84925-1-n3q5u8@yahoo.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/09/2023 17:48, Nik Bune wrote:
> Convert txt file to yaml. 
> Add reg to the list of required properties.
> Add mainteiners from ./scripts/get_maintainer.pl output.


...

> +---
> +$id: http://devicetree.org/schemas/watchdog/atmel,at91rm9200-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel AT91RM9200 System Timer Watchdog
> +
> +maintainers:
> +  - Wim Van Sebroeck <wim@linux-watchdog.org>
> +  - Guenter Roeck <linux@roeck-us.net>

No, these should be maintainer of device or subarch, not subsystem.

Best regards,
Krzysztof


