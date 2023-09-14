Return-Path: <devicetree+bounces-186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7517A018B
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:21:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 820D31C209D3
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27CD520B09;
	Thu, 14 Sep 2023 10:21:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA371D524
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 10:21:39 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FF981BEB
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 03:21:38 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-401187f8071so5384375e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 03:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694686896; x=1695291696; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yYWvJHAEBqdUoPbTnWqLpQ5JgMpbEpnfVdN2ca8X2Gs=;
        b=E7tQojiKfgcPFgd8Gxg4dnB6UQiXlY40NDHfhXhA6nFDUMJ2MMhux4C4sR3k/wxyFV
         9embqigSdlm1eSnb2SYst8kr9PL9g2nBLdXORP+SfZPYn2k2zdhMmHs6NGSCa8KFuneU
         KtwzmJNyuzKMnKzmYmCvrzdRWHRekOp/w5kMcB8+TIRzM+5inEffZWPRagbYEzA7dA60
         a6ggdVfbUrJ36SScOB1orAUUqVHhbcMZulFizINP4olJODtoJpXvO/VGXwO1SfIOMk9M
         4MrcBD84m9TEgLf9xIk4+ZI7dLUDHL7fM98a/MmmSJEJfls4jtKVrJjZsQgl4rahdD1A
         trMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694686896; x=1695291696;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yYWvJHAEBqdUoPbTnWqLpQ5JgMpbEpnfVdN2ca8X2Gs=;
        b=ONp3RhfELf5oMXaH9K2XDXrgmdVWTQj6dZfk2o2AqarC6MVEi6dsD4KIAFY1hP1Zve
         0xJR7zPhwKvdnxuwwZuQnXPgcu04TMVJLq0FuXZN1TG0odUsngsnLYcJSA1TEj/y3s5t
         bSr1Y10PbpH50FB4rydIsKT+K0LGtlMvlJpTcejpadESbxzP6LtZqCEpGVbKriHZ4Gdi
         Ju8+xd5k1pITRmQ+r5jvd7Fkx+jXXuN3PzcLphlfSJgyQkEuHRuIEAUkA35Vxkc0zd4y
         3XeqdJw1XpisdjSr2olMf6GJbihc0dk5AHFDQqYRe6vxfIViuocjNnzxa4FtqbLAm/JL
         gI5g==
X-Gm-Message-State: AOJu0YwRrBMsRyeebBEuk/+AY+hkl9E10kx7QOdc2TNw0hBIt27b/eqT
	Te6IQAawbBJYvlNfU5tik9xRkJaaXB72u5Nm08M=
X-Google-Smtp-Source: AGHT+IHQFxeDIrprFqMGiaX/FpQ3narAqPNlV/p1RYNPAUe4C70aocKCEVEWRyWxe6VYZReik25x9w==
X-Received: by 2002:a1c:7914:0:b0:401:cf93:3103 with SMTP id l20-20020a1c7914000000b00401cf933103mr1177756wme.0.1694686896628;
        Thu, 14 Sep 2023 03:21:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id n7-20020a5d6b87000000b0031ae8d86af4sm1344490wrx.103.2023.09.14.03.21.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 03:21:36 -0700 (PDT)
Message-ID: <334c70fd-31f0-6ebb-e7e2-9f428da97cfa@linaro.org>
Date: Thu, 14 Sep 2023 12:21:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] perf: imx9_ddr_perf: resolve resource map conflict
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, will@kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, shawnguo@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-imx@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ye.li@nxp.com
References: <20230914102038.2944844-1-xu.yang_2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230914102038.2944844-1-xu.yang_2@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/09/2023 12:20, Xu Yang wrote:
> Usually, the ddr pmu node will be a subnode of DDR controller, then using
> devm_platform_ioremap_resource will report conflict with DDR controller
> resource. So update the driver to use devm_ioremap to avoid such
> resource check.
> 

Why would you like to map same region twice? The resource check is for
purpose there...

> Signed-off-by: Ye Li <ye.li@nxp.com>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  drivers/perf/fsl_imx9_ddr_perf.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/perf/fsl_imx9_ddr_perf.c b/drivers/perf/fsl_imx9_ddr_perf.c
> index 5cf770a1bc31..885024665968 100644
> --- a/drivers/perf/fsl_imx9_ddr_perf.c
> +++ b/drivers/perf/fsl_imx9_ddr_perf.c
> @@ -602,8 +602,15 @@ static int ddr_perf_probe(struct platform_device *pdev)
>  	void __iomem *base;
>  	int ret, irq;
>  	char *name;
> +	struct resource *r;
>  
> -	base = devm_platform_ioremap_resource(pdev, 0);
> +	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!r) {
> +		dev_err(&pdev->dev, "platform_get_resource() failed\n");
> +		return -ENOMEM;
> +	}
> +
> +	base = devm_ioremap(&pdev->dev, r->start, resource_size(r));

You need to document this, otherwise someone will revert your commit soon.


Best regards,
Krzysztof


