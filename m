Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EC2A6B97D3
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 15:23:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230227AbjCNOX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 10:23:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbjCNOX1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 10:23:27 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 327F553721
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 07:23:00 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id x13so15433391edd.1
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 07:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678803774;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UMxrUpznXSIBDo2JBKKZe9hAbpKqNtdthZ67TgrD304=;
        b=GTGBBybGUCWr8NRVVOUsCyAosbwVGVWSu3bqDDbw9xDnXA+8NgqD8LwkL86aoeNrIY
         euRoJQ9wyR2+H2vXJRuNuO3OHg1JpwxD3JhLl1nc2OR34rKiAsQFX1uuaMr/FeYwXjEx
         Gd7QsilVuCde+S1lII2v5woiuZYFM+nJfz62WM7vF7IeGdFbiPCs0URkEfM0a4PlFg/H
         DxEHgR1HxOocPfZzEnklSamjU0i7x7hFKSIvOdWpq77vaY3MtjXeeG5kKhrsmaPmxhW1
         X/FEe4x7JnF3/OOxEMG5Y1uaxP7y6HDEkREp6xy3W5udTmp17M+rAQQ8w4BSwl9rGNL/
         2eKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678803774;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UMxrUpznXSIBDo2JBKKZe9hAbpKqNtdthZ67TgrD304=;
        b=IW+38BgMkO6O6VOVcI0g3GpZLsuTbqulAkaAPgMPlNS32cS5dTpFc4Z1LQNmtCt7DA
         Eq0iypaf47fK0VUTmNhGPNMFnvT+GWMe+fhKD7jEJSFT+l5FRxXSDvTXV4/xfIr5HzC3
         mpU4+pzhHa+mvf9N9D9U8tqJOfr/wXimmt4GU/w2f7YvbJjfJfyHFf4RPkRGyOpPMdl6
         2nGX+fCIJdkkQpDuGZPbwCZuWbREhfoJ8cPK3b/NFQQid7nle8CiLTKxLEESvVnANffP
         YEEn71xszHC62Gp2gUoPn5SWmGWBROoK2E1aCgaa6GBYj5+gURu8DW1+9eW4xLjy4qax
         C7uw==
X-Gm-Message-State: AO0yUKXcoLqQ8aGp/hy50vmny+vJVxSOPTu4vJaifCaQmMOmwJpJdQxZ
        oc3jivXv1UCDHD5oDZqBAkazuQ==
X-Google-Smtp-Source: AK7set/ies7q/bxpR0JGu9kGi9/sMVrE4sF4RFClvxfUbWMiesVzIQmDyZZF9q00uf84NX1+jmFjGA==
X-Received: by 2002:a17:906:4f8f:b0:88d:f759:15b0 with SMTP id o15-20020a1709064f8f00b0088df75915b0mr3266541eju.45.1678803774214;
        Tue, 14 Mar 2023 07:22:54 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id b27-20020a50ccdb000000b004ad601533a3sm1125175edj.55.2023.03.14.07.22.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 07:22:53 -0700 (PDT)
Message-ID: <ec504c7d-66d4-a4b7-547e-7272e012cdf9@linaro.org>
Date:   Tue, 14 Mar 2023 15:22:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 3/3] i2c: mpc: Use i2c-scl-clk-low-timeout-ms i2c
 property
Content-Language: en-US
To:     Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Wolfram Sang <wsa@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>,
        Ryan Chen <ryan_chen@aspeedtech.com>
References: <20230312233613.303408-1-andi.shyti@kernel.org>
 <20230312233613.303408-4-andi.shyti@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230312233613.303408-4-andi.shyti@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/03/2023 00:36, Andi Shyti wrote:
> "fsl,timeout" is marked as deprecated and replaced by the
> "i2c-scl-clk-low-timeout-ms" i2c property.
> 
> Use this latter and, in case it is missing, for back
> compatibility, check whether we still have "fsl,timeout" defined.
> 
> Signed-off-by: Andi Shyti <andi.shyti@kernel.org>
> Reviewed-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>  drivers/i2c/busses/i2c-mpc.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-mpc.c b/drivers/i2c/busses/i2c-mpc.c
> index 87e5c1725750..28f11e30ac50 100644
> --- a/drivers/i2c/busses/i2c-mpc.c
> +++ b/drivers/i2c/busses/i2c-mpc.c
> @@ -843,8 +843,18 @@ static int fsl_i2c_probe(struct platform_device *op)
>  			mpc_i2c_setup_8xxx(op->dev.of_node, i2c, clock);
>  	}
>  
> +	/*
> +	 * "fsl,timeout" has been marked as deprecated and, to maintain
> +	 * backward compatibility, we will only look for it if
> +	 * "i2c-scl-clk-low-timeout-ms" is not present.
> +	 */
>  	result = of_property_read_u32(op->dev.of_node,
> -				      "fsl,timeout", &mpc_ops.timeout);
> +				      "i2c-scl-clk-low-timeout-ms",
> +				      &mpc_ops.timeout);
> +	if (result == -EINVAL)
> +		result = of_property_read_u32(op->dev.of_node,
> +					      "fsl,timeout", &mpc_ops.timeout);

Wasn't old property in us and new one is in ms?

Best regards,
Krzysztof

