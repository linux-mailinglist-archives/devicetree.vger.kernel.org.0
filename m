Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D85465BC572
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 11:34:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230051AbiISJer (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 05:34:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229995AbiISJeo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 05:34:44 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 499B36424
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 02:34:42 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id z20so33142784ljq.3
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 02:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=FTO4xkFBPcb9bkHA3D6SXnppwQjXCtQZXKOlomcgrAk=;
        b=eVjkluKs/rylrd2SQ4adyExMc49NPWBdXvdUrnNaf/b/xoVD6A+vjiX+rRyQwLjZlR
         bc6gcBqwKgov0ihhYEuz4aYElsMk8MTvdLl2Xhk421uXtk1/4dTBWp7ZaJl848ga8l7K
         oz1kocjIZkYhM727tbSBEVe9lyQjM3ndwf6NqSgq4rAP5W/lpYWB8KmtLzzjwrXCXuCF
         2Xz5GIl2GPTPd0BsxxuSJlmKKRFNwu5skY77QP6AFA7yDoyN89XN24U21ARiw7DpXKS0
         EItL2mUHgUdONellW/I5Be5qEtYTkBnQVSR14lf13od3mLcKWOZPn5nnXjw654GmhIqt
         FQ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=FTO4xkFBPcb9bkHA3D6SXnppwQjXCtQZXKOlomcgrAk=;
        b=kv94JFU9TRk6jz4peCMvsPUpe/iLO0InIQL81M+jtEH6w58ymo0/174FW9+TDAzoVe
         GHpW6uF0qzkFd0Gjsw7cGklHOwrmBP49mpowVIzQwSXW3cLp/4LKbzr/18RaqvFwtfOG
         3dbO+vQCUHuQsoR8Z6xOdo+WEcZIEeVJMecMtnYyBe5Zgb9jcHqVbgqnv58o13S23seQ
         cmGtBpEo6fGcXkKJmS6wIfrJKr8CEnzfE27tlQp/DO8PPqhoiqXsSsAZy5lodcsbAvzi
         dL9ff3io0pIJKpal/3hEPgieLk9bNjA1XWxK6tuklyZnL9Xmif6v/llp/snnqvJFx9lK
         HpLQ==
X-Gm-Message-State: ACrzQf3lKkc4QRNgdZrf0DzleN4vsHdgpLYuwCKkXGizi+L2qtOZTWTJ
        GmnKAjbY7d21Mh79V8S8GOT7A1pb5u4eug==
X-Google-Smtp-Source: AMsMyM4TbZ3FGhqOfzaGNia+xVWSc5lybYfSCEesK4NE9CksMo2FcZAzVtb0gT4NDS3RbZOUPgNCPg==
X-Received: by 2002:a05:651c:305:b0:26a:915f:45e8 with SMTP id a5-20020a05651c030500b0026a915f45e8mr4936704ljp.6.1663580080599;
        Mon, 19 Sep 2022 02:34:40 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o1-20020a2ebd81000000b0026c0158b87csm4330841ljq.29.2022.09.19.02.34.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 02:34:40 -0700 (PDT)
Message-ID: <5d4d9412-6445-f3a3-0f86-6c41a37dca70@linaro.org>
Date:   Mon, 19 Sep 2022 11:34:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 1/3] memory: omap-gpmc: allow shared wait pins
Content-Language: en-US
To:     "B. Niedermayr" <benedikt.niedermayr@siemens.com>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org
Cc:     rogerq@kernel.org, tony@atomide.com, robh+dt@kernel.org
References: <20220916120749.2517727-1-benedikt.niedermayr@siemens.com>
 <20220916120749.2517727-2-benedikt.niedermayr@siemens.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220916120749.2517727-2-benedikt.niedermayr@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/09/2022 14:07, B. Niedermayr wrote:
> From: Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
> 
> Newer kernels refuse to probe when using the same wait pin for
> different chipselect regions.
> But this may be a usecase when connecting for example FPGA or ASIC
> modules to the gpmc, which only got one wait pin installed.
> 
> The wait-pin allocation is now tracked by the gpmc driver in order
> to be sure that the wait pin has been indeed requested by gpmc.
> Therefore the "wait_pin_alloc_mask" has been introduced.
> 
> Signed-off-by: Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
> ---
>  drivers/memory/omap-gpmc.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/memory/omap-gpmc.c b/drivers/memory/omap-gpmc.c
> index d9bf1c2ac319..ea495e93766b 100644
> --- a/drivers/memory/omap-gpmc.c
> +++ b/drivers/memory/omap-gpmc.c
> @@ -232,6 +232,7 @@ struct gpmc_device {
>  	int irq;
>  	struct irq_chip irq_chip;
>  	struct gpio_chip gpio_chip;
> +	unsigned long wait_pin_alloc_mask;
>  	int nirqs;
>  	struct resource *data;
>  };
> @@ -2221,9 +2222,16 @@ static int gpmc_probe_generic_child(struct platform_device *pdev,
>  							 GPIO_ACTIVE_HIGH,
>  							 GPIOD_IN);
>  		if (IS_ERR(waitpin_desc)) {
> -			dev_err(&pdev->dev, "invalid wait-pin: %d\n", wait_pin);
>  			ret = PTR_ERR(waitpin_desc);
> -			goto err;
> +			if (ret == -EBUSY &&
> +			    test_bit(wait_pin, &gpmc->wait_pin_alloc_mask)) {
> +				dev_info(&pdev->dev, "shared wait-pin: %d\n", wait_pin);
> +			} else {
> +				dev_err(&pdev->dev, "invalid wait-pin: %d\n", wait_pin);
> +				goto err;
> +			}
> +		} else {
> +			set_bit(wait_pin, &gpmc->wait_pin_alloc_mask);
>  		}

And how do you handle shared pin when the original owner unbinds?


Best regards,
Krzysztof
