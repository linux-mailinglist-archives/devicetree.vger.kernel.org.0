Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5051A768D2A
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 09:09:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231148AbjGaHJO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 03:09:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231153AbjGaHI7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 03:08:59 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0B4A3C3D
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 00:07:17 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-99bccc9ec02so659504466b.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 00:07:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690787173; x=1691391973;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G2S79vQkr/Q6AsrCfTC9FA0lnKMVA5NRuZdzXti1EXs=;
        b=JWdIFUyPCSGhlS9/udGq4gNVONwXz7IgcHWdgX38rdevQIipSg0PqMICpRfm7kXMq6
         HsWcRRKT4BiOviTPUx5rvVAzEaDbr05j76NHSb2wLnYHNKAJwR+6I0s0jN9TGITjPPcD
         lYBRBUirFzBqD0/Ei32YyQeSuExCH4/XMMMN0bObvLNipjF5uxkRwl+yeUop00SwR8QG
         t4eTZ8pJSyTvmTFIkp23JyxfZbH1jGqadG0ylrkpCQePqw/pmGMeZYnkHfzvG/XLyNZ0
         DX/azZfNF4bfhgUB1bX7bY5I+Q8o5QqZ+xysWiVoIYhQZMmDJ2jqC83OsOa1CO05CvRg
         Q8ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690787173; x=1691391973;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G2S79vQkr/Q6AsrCfTC9FA0lnKMVA5NRuZdzXti1EXs=;
        b=lRGyws3nMPFZKM1fmzpxfLSKEYGO751K/dA6Wht6+BusPLAMQCh+BWzm23BtJbLvR5
         fe4VIEK2R8Tmhc4r93egMMtGCMvwh4e3h4Oz4zKtpWGdqqB6h04zmta07Zrm+JjdLCMc
         UmSVCsxR1z/eK5pZGUED1pcUz7ZKbDjIDvgZD/2oFL5Jl7z5IpqewMrlBNZKgjmNNQ2E
         QLhPviu5Zjze8Te2Ac0OZn3LUPHS6nrBZ37QRBZ78agxIeZfuS885dMGSeaQo6Y5QGRZ
         9+rB026IqArbe3rt2x0iVMg1j/7oD6DyQZufH+KcmqQPmfI8TcFUFMeGtpFRUTOS8G8Q
         GL1w==
X-Gm-Message-State: ABy/qLZXOz5L2XjYFYz5TwPWzDlfukrccanSVGG+LvG3Ylbb1dXPRWWu
        CJ+1FA7LX3TxJzNokou4YDthYw==
X-Google-Smtp-Source: APBJJlEPFgaPUMMYauFP7cTFYrzHjUp57IMDsTKAdaxvn07SrcaBjIcW2QxMB+JxkUTO7HjFCXXPvw==
X-Received: by 2002:a17:906:4f:b0:991:d2a8:658a with SMTP id 15-20020a170906004f00b00991d2a8658amr6680496ejg.34.1690787173223;
        Mon, 31 Jul 2023 00:06:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id lj24-20020a170906f9d800b0099bca8b9a31sm5703554ejb.100.2023.07.31.00.06.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jul 2023 00:06:12 -0700 (PDT)
Message-ID: <b938ba84-38e9-b220-9686-6656e4452c10@linaro.org>
Date:   Mon, 31 Jul 2023 09:06:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2 2/3] ASoC: starfive: Add JH7110 PWM-DAC driver
Content-Language: en-US
To:     Hal Feng <hal.feng@starfivetech.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Walker Chen <walker.chen@starfivetech.com>,
        Xingyu Wu <xingyu.wu@starfivetech.com>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230731032829.127864-1-hal.feng@starfivetech.com>
 <20230731032829.127864-3-hal.feng@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230731032829.127864-3-hal.feng@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2023 05:28, Hal Feng wrote:
> Add PWM-DAC driver support for the StarFive JH7110 SoC.
> 


...

> +static int jh7110_pwmdac_probe(struct platform_device *pdev)
> +{
> +	struct jh7110_pwmdac_dev *dev;
> +	struct resource *res;
> +	int ret;
> +
> +	dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
> +	if (!dev)
> +		return -ENOMEM;
> +
> +	dev->base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
> +	if (IS_ERR(dev->base))
> +		return PTR_ERR(dev->base);
> +
> +	dev->mapbase = res->start;
> +
> +	dev->clks[0].id = "apb";
> +	dev->clks[1].id = "core";
> +
> +	ret = devm_clk_bulk_get(&pdev->dev, ARRAY_SIZE(dev->clks), dev->clks);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to get pwmdac clocks\n");

return dev_err_probe

> +		return ret;
> +	}
> +
> +	dev->rst_apb = devm_reset_control_get_exclusive(&pdev->dev, NULL);
> +	if (IS_ERR(dev->rst_apb)) {
> +		dev_err(&pdev->dev, "failed to get pwmdac apb reset\n");
> +		return PTR_ERR(dev->rst_apb);

return dev_err_probe

> +	}
> +
> +	dev->dev = &pdev->dev;
> +	dev->shift = PWMDAC_SHIFT_8;
> +	dev->duty_cycle = PWMDAC_CYCLE_CENTER;
> +	dev->cnt_n = PWMDAC_SAMPLE_CNT_1;
> +	dev->data_change = NO_CHANGE;
> +	dev->data_mode = INVERTER_DATA_MSB;
> +	dev->data_shift = PWMDAC_DATA_LEFT_SHIFT_BIT_0;
> +
> +	dev_set_drvdata(&pdev->dev, dev);
> +	ret = devm_snd_soc_register_component(&pdev->dev,
> +					      &jh7110_pwmdac_component,
> +					      &jh7110_pwmdac_dai, 1);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to register dai\n");
> +		return ret;

I guess here as well for consistency and shorter code even though
EPROBE_DEFER does not happen really.

return dev_err_probe

> +	}
> +
> +	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to register pcm\n");
> +		return ret;

return dev_err_probe

> +	}
> +

Best regards,
Krzysztof

