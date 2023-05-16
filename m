Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 231B870561D
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 20:37:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230035AbjEPShb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 14:37:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229631AbjEPSha (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 14:37:30 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0385D30F7
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 11:37:27 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bcb4a81ceso25467467a12.2
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 11:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684262246; x=1686854246;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K9fNkQqJDfFcYTNfr1VNHIPlwegnRkzoPTNG3p1hlhQ=;
        b=GF3Rjp3VBjWHSEi4CUJZdmq1WpimHOKMe9nyqQC/SbePd8WhLfHT3RmOvvdDZAWaqJ
         iTxaBj4toUmB6tEw98JOgzWKzhvhZFl3JzvxvGuIi7Y1OJBz+9i0QXWgePqbZdQl7jsc
         iHXzOhsUl0nCZrJhkot4UIUCoBh3TXfnIv792algjcuBqnkmlNKXwtQl5Cx4oiHoigBt
         0WJ7Q0vuLysJOOhSM7g1a6tr0f2Y4lFq8t948v+GLoyCBMMGMq0I6xg4iI8aSU3sJICo
         7uUoJ0vh/JQirsb5oeMfiQ6GWMBWL6m4KZt1m+xQFoS7qPoYqNQR6M34m0Bs/92ZZItc
         CQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684262246; x=1686854246;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K9fNkQqJDfFcYTNfr1VNHIPlwegnRkzoPTNG3p1hlhQ=;
        b=PH+rk1sUwK0jBc3OanVGAVaJfB9a1QX8KBSMsMqKIWXs1GgYWyOosEfUb6qCoLK+xX
         Ff3T5M6wNBkrtc1nxH0OcmQe3P/AXcrhXtYHPTXFawTzDZRG7gKBy07LWJOEc7YLbLCU
         g2vzlOOSDpepmhBCTbWggQ28PPcZzcA9a08wPyrJwPTONbw+9RePi+GH00gkJSZKjBJb
         C9mI7iRNC6JYV8JcdfDaQp3MJh83qp4P6pSQye0BrwS8WpBun+tVAzd02qXwqEAHlqZV
         QTNFbyA71akoUx/Gc8z5jQb3t7pHGur+IbPyffSkpEsJal+M2jECRYR6dFLKFTN+H6lH
         sgyA==
X-Gm-Message-State: AC+VfDxGDKdDaO5DDgw+XMUuFB21x6MSnIMgvTaEGGKUmhtFZPlgQaKf
        5ojnZnvcxCiyl6Mad2kA86R90Q==
X-Google-Smtp-Source: ACHHUZ7QiVK8bAUghPg/DxQLmvoqOB8XAEcJFUE2wF3J3eWoGWn4b52NvsRNezlZe2pily3rxHoPew==
X-Received: by 2002:a17:907:1c88:b0:961:be96:b0e0 with SMTP id nb8-20020a1709071c8800b00961be96b0e0mr36846248ejc.73.1684262246454;
        Tue, 16 May 2023 11:37:26 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:77d1:16a1:abe1:84fc? ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id s1-20020a1709070b2100b0096a16761ab4sm9879452ejl.144.2023.05.16.11.37.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 11:37:26 -0700 (PDT)
Message-ID: <21429720-e27f-bf26-64e7-ace1186da31b@linaro.org>
Date:   Tue, 16 May 2023 20:37:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] mux: mmio: use reg property when parent device is not a
 syscon
Content-Language: en-US
To:     Andrew Davis <afd@ti.com>, Peter Rosin <peda@axentia.se>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230515191909.611241-1-afd@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230515191909.611241-1-afd@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/05/2023 21:19, Andrew Davis wrote:
> The DT binding for the reg-mux compatible states it can be used when the
> "parent device of mux controller is not syscon device". It also allows
> for a reg property. When the parent device is indeed not a syscon device,
> nor is it a regmap provider, we should fallback to using that reg
> property to identify the address space to use for this mux.
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
>  drivers/mux/mmio.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mux/mmio.c b/drivers/mux/mmio.c
> index 44a7a0e885b8..42e00b9fd0a9 100644
> --- a/drivers/mux/mmio.c
> +++ b/drivers/mux/mmio.c
> @@ -44,10 +44,13 @@ static int mux_mmio_probe(struct platform_device *pdev)
>  	int ret;
>  	int i;
>  
> -	if (of_device_is_compatible(np, "mmio-mux"))
> +	if (of_device_is_compatible(np, "mmio-mux")) {
>  		regmap = syscon_node_to_regmap(np->parent);
> -	else
> -		regmap = dev_get_regmap(dev->parent, NULL) ?: ERR_PTR(-ENODEV);
> +	} else {
> +		regmap = dev_get_regmap(dev->parent, NULL);
> +		if (!regmap)
> +			regmap = device_node_to_regmap(np) ?: ERR_PTR(-ENODEV);

Unless I miss something obvious, the original code is simply bogus and
wrong. I would like to give here Rb tag... but maybe I miss something
obvious. Why mux cannot be a device with MMIO itself? Binding allows it
which would be perfectly proper description of hardware.

Best regards,
Krzysztof

