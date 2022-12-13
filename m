Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4635264BC69
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 19:53:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236527AbiLMSxi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 13:53:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236540AbiLMSxf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 13:53:35 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A7021F9E7
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 10:53:33 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id p36so6434652lfa.12
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 10:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SFQ4wL0tGnYvmO2ggaFZ54cPeloHof3apdLmzY/G0jI=;
        b=X+m/Sl7kZrlH4rRMufL5mj57CogNDsaguzy9nqaxOqKz6FaVd2gcu/kpv/Iuik0ndj
         THNCm8C5FqENHoUjGQJwrCU2dYG3Iyyobcc/2zz4+qrlux0V+SeGJhTRfN54pbFu+X8Z
         8dz2gtyqpz8PCMk5zO5bKSCfcMx03NCZKYRg265KiiRg1GfBY6MJqWjgK1lH5Viey4VI
         VV74XmygSGuiCduoxGKg+kXJyzc5Koy721SC/d5rwkSw/qBjSkvY0j9hQbc08bkUAilT
         Ss1PTig8SnEfv2IfDUXFOIZ5JauVtxIjOHUJ5KH2gYvgtDMuGUQO75r5q6xW+kPyVmGL
         90PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SFQ4wL0tGnYvmO2ggaFZ54cPeloHof3apdLmzY/G0jI=;
        b=eey4i3XEqPayCVlxAGxv8rBIbX3AZ1p445w3Z/zbF4H/AhI45f89nEK7P4MWxZWonQ
         UMsV4/LHUuNK9uO6PZI8KTbmJnlkHjx6/4yEQh/YoCOLvTdjKO0PcX+06CKLD8Xs+gD+
         RZidgh7u8Oih1kfJC9YlJeJHzxh4yTjy3INm6/vP9UL4CouJ8QDGF7/+ufFoqIh4+F2W
         0dP8TOYDZ+0Fy/Ltk3dganJQFxiqY/o9pVNTYg1fBGM069oF4z7mUBpPmt4Ur523jhKB
         FreWMWPwo8OzfZXwI/Ve6OoFF1dp3+Ixu/KGMEVbujzp52/CSd9uhP/Yyh8J5DSFl4XD
         cNuQ==
X-Gm-Message-State: ANoB5pmcQ9jj8pgAocPtqsIp/0WEVRaRoPA71dkMk7bJ8h4K5E2Zv0Jp
        BPkeOonWctbJMBNUkN6jnaLqww==
X-Google-Smtp-Source: AA0mqf4/ArFa4MgXEQhOhTXUL1xzqhsnAt9gZdvHwgyR3yfeaaG1i2yZo3v+Pz7s/X4IrvVr3DCedw==
X-Received: by 2002:a05:6512:b10:b0:4a6:c596:6ff7 with SMTP id w16-20020a0565120b1000b004a6c5966ff7mr6966373lfu.2.1670957611705;
        Tue, 13 Dec 2022 10:53:31 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f13-20020a19dc4d000000b004b5a4cf69dfsm468674lfj.261.2022.12.13.10.53.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 10:53:31 -0800 (PST)
Message-ID: <84bd582c-1dde-822c-48b7-025887fd0203@linaro.org>
Date:   Tue, 13 Dec 2022 19:53:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 2/4] iio: accel: add the new entry in driver for
 fxls8967af
Content-Language: en-US
To:     Han Xu <han.xu@nxp.com>, Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Lars-Peter Clausen <lars@metafoo.de>,
        Sean Nyekjaer <sean@geanix.com>,
        =?UTF-8?Q?Nuno_S=c3=a1?= <nuno.sa@analog.com>,
        Matti Vaittinen <mazziesaccount@gmail.com>,
        Haibo Chen <haibo.chen@nxp.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Clark Wang <xiaoning.wang@nxp.com>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, imx@lists.linux.dev
References: <20221213171536.1880089-1-han.xu@nxp.com>
 <20221213171536.1880089-3-han.xu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213171536.1880089-3-han.xu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/12/2022 18:15, Han Xu wrote:
> Add this new device entry in the driver id table.
> 
> Signed-off-by: Han Xu <han.xu@nxp.com>
> 
> ---
> changes in v2
> - change chip info orders
> ---
>  drivers/iio/accel/fxls8962af-core.c | 7 +++++++
>  drivers/iio/accel/fxls8962af-i2c.c  | 2 ++
>  drivers/iio/accel/fxls8962af.h      | 1 +
>  3 files changed, 10 insertions(+)
> 
> diff --git a/drivers/iio/accel/fxls8962af-core.c b/drivers/iio/accel/fxls8962af-core.c
> index 98811e4e16bb..c3589c3084ee 100644
> --- a/drivers/iio/accel/fxls8962af-core.c
> +++ b/drivers/iio/accel/fxls8962af-core.c
> @@ -127,6 +127,7 @@
>  #define FXLS8962AF_DEVICE_ID			0x62
>  #define FXLS8964AF_DEVICE_ID			0x84
>  #define FXLS8974CF_DEVICE_ID			0x86
> +#define FXLS8967AF_DEVICE_ID			0x87
>  
>  /* Raw temp channel offset */
>  #define FXLS8962AF_TEMP_CENTER_VAL		25
> @@ -765,6 +766,12 @@ static const struct fxls8962af_chip_info fxls_chip_info_table[] = {
>  		.channels = fxls8962af_channels,
>  		.num_channels = ARRAY_SIZE(fxls8962af_channels),
>  	},
> +	[fxls8967af] = {
> +		.chip_id = FXLS8967AF_DEVICE_ID,
> +		.name = "fxls8967af",
> +		.channels = fxls8962af_channels,
> +		.num_channels = ARRAY_SIZE(fxls8962af_channels),
> +	},
>  	[fxls8974cf] = {
>  		.chip_id = FXLS8974CF_DEVICE_ID,
>  		.name = "fxls8974cf",
> diff --git a/drivers/iio/accel/fxls8962af-i2c.c b/drivers/iio/accel/fxls8962af-i2c.c
> index 17dd56756ff9..a8944b255a28 100644
> --- a/drivers/iio/accel/fxls8962af-i2c.c
> +++ b/drivers/iio/accel/fxls8962af-i2c.c
> @@ -30,6 +30,7 @@ static int fxls8962af_probe(struct i2c_client *client)
>  static const struct i2c_device_id fxls8962af_id[] = {
>  	{ "fxls8962af", fxls8962af },
>  	{ "fxls8964af", fxls8964af },
> +	{ "fxls8967af", fxls8967af },
>  	{ "fxls8974cf", fxls8974cf },
>  	{}
>  };
> @@ -38,6 +39,7 @@ MODULE_DEVICE_TABLE(i2c, fxls8962af_id);
>  static const struct of_device_id fxls8962af_of_match[] = {
>  	{ .compatible = "nxp,fxls8962af" },
>  	{ .compatible = "nxp,fxls8964af" },
> +	{ .compatible = "nxp,fxls8967af" },
>  	{ .compatible = "nxp,fxls8974cf" },

This is confusing. The I2C ID table has driver data, but OF ID table
hasn't. So are they compatible or not?

Best regards,
Krzysztof

