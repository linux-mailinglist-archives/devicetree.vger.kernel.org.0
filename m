Return-Path: <devicetree+bounces-75-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B9A79FB52
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 07:51:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ADF301C202DC
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 05:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC692186E;
	Thu, 14 Sep 2023 05:48:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A181263B
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 05:48:51 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95ECBC1
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:48:50 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9ad8d47ef2fso71696366b.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 22:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694670529; x=1695275329; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kRXT1XCEH3qRW4otbnhQc+gy/aCuBaX7SCns0Y4ZdTE=;
        b=bes/oP2T4geskceEbtNYfBc6zwMWSEyJsihRkDIH3hMw5fT442+2uoDU49sJpy0hU4
         Tc+ENaEwtGKsvxvepId0FLYNUnbi0kAOSxz5K4RuBHROsNX1dszDIUFQ4LoIgnggdwki
         x7szAcStEG5ZdNK7PNsjUM80wnUrS70kZ1O58IR4gB4Zmg3fOwy9EMDdfSaoBvle62EB
         AeDBfko//ZaIY7MXF8iAsUV/yxE2e9NZ8a4T8BewG7vc0CYVtz7nalzBbkdadALIeLlP
         xQ0cq83NVPCt59BpCyYUL0NffTVsdkg/TmAFHkiHnuYBiQhUUsmPL6qQpPZYgxiAGneH
         X0sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694670529; x=1695275329;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kRXT1XCEH3qRW4otbnhQc+gy/aCuBaX7SCns0Y4ZdTE=;
        b=G1/5b9+AfuRTccg6hJHIoAV8sAgUqYAzZcuLaTxj+AC9oOzsviMeEQLV5VVunesWG2
         I8e7+C/1vNFtKL1aATD2BgDLCl//V7Po2WY2IE6OJOK/XSx3aMu3eI1kpuIFqr3Ch1ar
         pyQBNFvG+n7wQqM+OseeGiDO2F5RJYhz0Z7Fi3yNS3xl36KZVdDyO4lKmSEmRQEsRthq
         BBHpCmLalp1c1w7BahzbJdO1f19wZ3JMPyhIz8L8qeyIW+F+ANX1xdsjO+jYQRu4LU3h
         PIHQKBw6j97J/fTJhbRlYXRIKHYECn2FKXZT9BLl7cwwpFV9OVKsLa6gDJZ/7dzhRwJm
         KosQ==
X-Gm-Message-State: AOJu0Yz4fqEc1UZArhAHsSpOSB+gyUQrn4UDM7Fua0tcx0Y1ghhAlfai
	/xBv3woxbgYsoqg2rlr4pKajAg==
X-Google-Smtp-Source: AGHT+IEEeJspwL1FrNoc7MBtXOWv5bEOrTccW1kY7tJvgLHmScM7sU/kV0KfmXgiMLCIzEx0tehzaQ==
X-Received: by 2002:a17:906:21b:b0:9a6:5696:3879 with SMTP id 27-20020a170906021b00b009a656963879mr3698036ejd.65.1694670528993;
        Wed, 13 Sep 2023 22:48:48 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id p27-20020a17090635db00b00982d0563b11sm470000ejb.197.2023.09.13.22.48.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 22:48:48 -0700 (PDT)
Message-ID: <b97ff9b6-97df-2c62-1946-06cd4ac79c95@linaro.org>
Date: Thu, 14 Sep 2023 07:48:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 3/5] gpio: vf610: add i.MX8ULP of_device_id entry
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
 <20230914-vf610-gpio-v1-3-3ed418182a6a@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230914-vf610-gpio-v1-3-3ed418182a6a@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/09/2023 04:20, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8ULP supports two interrupts, while i.MX7ULP supports one interrupt.
> So from hardware perspective, they are not compatible.
> 
> So add entry for i.MX8ULP.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/gpio/gpio-vf610.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
> index dbc7ba0ee72c..88f7215cdf4b 100644
> --- a/drivers/gpio/gpio-vf610.c
> +++ b/drivers/gpio/gpio-vf610.c
> @@ -67,6 +67,7 @@ static const struct fsl_gpio_soc_data imx_data = {
>  static const struct of_device_id vf610_gpio_dt_ids[] = {
>  	{ .compatible = "fsl,vf610-gpio",	.data = NULL, },
>  	{ .compatible = "fsl,imx7ulp-gpio",	.data = &imx_data, },
> +	{ .compatible = "fsl,imx8ulp-gpio",	.data = &imx_data, },

Why? It is the same as imx7. No need.

Best regards,
Krzysztof


