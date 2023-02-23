Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D76BD6A0441
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 09:57:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233746AbjBWI5E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 03:57:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233394AbjBWI5D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 03:57:03 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02AA04A1DA
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 00:56:57 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id 6so9612906wrb.11
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 00:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mRdDSbS7nEkJ9kdJNqP0X8nEH0I1zPFXRhFF4w2M6FM=;
        b=uof/8xpGNMHg7iY5wJ+1UskO3GHuWWbi+LCRXKfXoZp2VNoFZYGNSfC72Z09UgZuCO
         wvvGj3qqdHqtvjdlCxmiW7a55/x93iaXFJk+1+8i+ITCkmBjBfPy/Bsw17U9V+3dNvND
         zAYnX97eEp4ZXVGmB67Pw5pkjXmKm1SmQuFMUotL0HzqbJbo8kqrONfhTbJ3APnVcQkX
         LRVXogPcFOujMToZtiqtWvsO871CuUA6fSe93FxaLsfCTqQETsXT1zARS2EKYNyXjzcs
         PlthB+V+Ieinf7X2oLasgtlIiiR3fopI6hlQxEEPE0RRdKhpCkWP9ygPo33quzqAPoY6
         Sk4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mRdDSbS7nEkJ9kdJNqP0X8nEH0I1zPFXRhFF4w2M6FM=;
        b=RMddb9zOQrjjXtdGc/o6FduBSQkx7IMRWFXRxEvn5ug8IaYgzVXMBPSKPwcVk37G4+
         CnxoLikYhKHyrXumU2S/gQ7+VcBWl3+BIHJAZrf9NYFm+xrOap8mNRhUJ/m+gDNNWkVd
         sdHsxk0LiNDXx96fqX7493yTIzHTm98YBVZJZ3He+uoqovhRU7l8vMDdlGL6Awp/jqvg
         dLym1QRz5vv+kCNsrrYA63ps7TGGfiJWZV4wNKc1qjBYA9mJfcMnKpHvtXMLrdtVI4Ch
         bXe0Mn3wIGsUhG2zt8+jIWBZSStXbGaWv7uXia6Z3jByvqhIKCQ4De7PCyCNpKOXvNao
         pxZg==
X-Gm-Message-State: AO0yUKUtqis/upG6NZv8NzGemLUHlaqBfeYAcC39HoT6uX1dda0TrzMM
        +MLCck3KReGwfq6USP2v7vTDCg==
X-Google-Smtp-Source: AK7set8NKlL8SHoM9z9qqJPq+MxNrjGbRtINAlauiFot2x6JL9A+CeI+ByZ3GoT99Y+o5rWLUelBvw==
X-Received: by 2002:a5d:5f03:0:b0:2c3:be89:7c2b with SMTP id cl3-20020a5d5f03000000b002c3be897c2bmr9576815wrb.14.1677142616464;
        Thu, 23 Feb 2023 00:56:56 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l18-20020a5d4112000000b002c56179d39esm10760022wrp.44.2023.02.23.00.56.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 00:56:56 -0800 (PST)
Message-ID: <3f50066b-f967-b9fa-1e0d-5337ec1ed194@linaro.org>
Date:   Thu, 23 Feb 2023 09:56:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 2/3] clk: starfive: Add StarFive JH7110 PLL clock
 driver
Content-Language: en-US
To:     Xingyu Wu <xingyu.wu@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Emil Renner Berthing <kernel@esmil.dk>
Cc:     Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Hal Feng <hal.feng@starfivetech.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20230221141147.303642-1-xingyu.wu@starfivetech.com>
 <20230221141147.303642-3-xingyu.wu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230221141147.303642-3-xingyu.wu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/02/2023 15:11, Xingyu Wu wrote:
> Add driver for the StarFive JH7110 PLL clock controller and
> modify the JH7110 system clock driver to rely on this PLL clocks.
> 
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> ---


> +
> +static int jh7110_pll_clk_probe(struct platform_device *pdev)
> +{
> +	int ret;
> +	struct of_phandle_args args;
> +	struct regmap *pll_syscon_regmap;
> +	unsigned int idx;
> +	struct jh7110_clk_pll_priv *priv;
> +	struct jh7110_clk_pll_data *data;
> +	char *pll_name[JH7110_PLLCLK_END] = {
> +		"pll0_out",
> +		"pll1_out",
> +		"pll2_out"
> +	};
> +
> +	priv = devm_kzalloc(&pdev->dev,
> +			    struct_size(priv, data, JH7110_PLLCLK_END),
> +			    GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->dev = &pdev->dev;
> +	ret = of_parse_phandle_with_fixed_args(pdev->dev.of_node, "starfive,sysreg", 0, 0, &args);

1. Wrong wrapping. Wrap code at 80 as coding style asks.

2. Why you are using syscon for normal, device MMIO operation? Your DTS
also points that this is incorrect, hacky representation of hardware.
Don't add devices to DT to fake places and then overuse syscon to fix
that fake placement. The clock is in system registers, thus it must be
there.

3. Even if this stays, why so complicated code instead of
syscon_regmap_lookup_by_phandle()?


> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to parse starfive,sys-syscon : %d\n", ret);

dev_err_probe and in other places as well, if applicable.


Best regards,
Krzysztof

