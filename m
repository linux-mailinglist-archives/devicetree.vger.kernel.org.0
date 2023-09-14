Return-Path: <devicetree+bounces-73-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A9379FB4E
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 07:50:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 007F51C203B1
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 05:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FB742511D;
	Thu, 14 Sep 2023 05:48:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FFE250FC
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 05:48:05 +0000 (UTC)
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65EE2C6
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:48:04 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99c1c66876aso71452366b.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694670483; x=1695275283; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TfGXKt00Cpu1VM3dmeeDSUKZ343EJMe0hHl3+p8EaQw=;
        b=fPlCijpuc4g8adn4j4ufcvDl1fxvdNZdp+YU9bNamZqm2B9WbvBe8onnm+pENwZDtD
         rUwlgt3nbsrKY3d12twN51T+YYhhIwhwRqD4LIP+eo0MpKTack0ujk5RoYtgzz/lm/F+
         YxmU0ra6BQlveCaZVBt7/S8Dsc2Ta6ArQKEWjfYIgwOdgzQ55nWAwr1Ypl7RdozwvxV3
         PVUjNRGuDITLWoP26sByPCogQhgVDNYKXebAeifWF13qr5HBAy3yiF3YpONI6BM/JNWu
         s3K9/qkIxX58j3s4h+nYljchEWnnazOmAX/4qMUBi50S2p4FaW52hECkAqd56p0JY4h0
         wfAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694670483; x=1695275283;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TfGXKt00Cpu1VM3dmeeDSUKZ343EJMe0hHl3+p8EaQw=;
        b=DqzjE3rh6Quiw7Xq8boQ3f9q3aEadboUbvI+M2jCb/CR2G6S9h3n1SEw4FYE7Q3fre
         AfhzxcSqKa93SJb/y0ghGcikSQBarULSHdgTXRv44MwCYX1KjWEFNYdjmdc1xvK4YOCm
         dupExCsDKrOc8MEnBihM2pQZM/O5kQrJFAVQau59g0gjMTBDCpuyiz5sIpJi5dycp3Xa
         vdtgnroNvtRPK9bO2c6UkUGGteSAQ1NvQ5NmbCRaZJbo0sef6P+NQdZ/3sXw7RgRA4SO
         QaPxs+PlHOAgzE1pq9qOTDoHKcCigw33e3M9zpcW+KLumiMQhq7soPYCZyfP6wDZzUCB
         YF4A==
X-Gm-Message-State: AOJu0Yyt45tD/u+dKYI8qe1zU/nxwVLZBa71UP4EWNXswkkTiOXDTTGf
	5Ya4c9d5dUFJBQDhP33eCFP2WA==
X-Google-Smtp-Source: AGHT+IH4Mh5DkZfgKNLNhCRsuNSHMLuMtZFw02LD8r/PeDnq8+urBDArz5zwYgwUsw7gAsU4QwYXDQ==
X-Received: by 2002:a17:906:3297:b0:9a6:5696:3887 with SMTP id 23-20020a170906329700b009a656963887mr3624398ejw.59.1694670482941;
        Wed, 13 Sep 2023 22:48:02 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id x26-20020a1709064a9a00b009a13fdc139fsm472558eju.183.2023.09.13.22.48.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 22:48:02 -0700 (PDT)
Message-ID: <8f86536f-42a3-a549-f01a-d1ce60aee338@linaro.org>
Date: Thu, 14 Sep 2023 07:48:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 2/5] dt-bindings: gpio: vf610: add i.MX95 compatible
Content-Language: en-US
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Peng Fan <peng.fan@nxp.com>
References: <20230914-vf610-gpio-v1-0-3ed418182a6a@nxp.com>
 <20230914-vf610-gpio-v1-2-3ed418182a6a@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230914-vf610-gpio-v1-2-3ed418182a6a@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/09/2023 04:20, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX95 compatible string which is compatible with i.MX8ULP
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-vf610.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml b/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
> index 2593cc96fcbb..d0db2089cfab 100644
> --- a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
> +++ b/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
> @@ -26,7 +26,9 @@ properties:
>            - const: fsl,imx7ulp-gpio
>            - const: fsl,vf610-gpio
>        - items:
> -          - const: fsl,imx93-gpio
> +          - enum:

Just make it an enum in your previous patch, so you won't change this
line twice.

> +              - fsl,imx93-gpio

Best regards,
Krzysztof


