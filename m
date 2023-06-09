Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F71A729EFD
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 17:46:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231725AbjFIPqj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 11:46:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231927AbjFIPqh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 11:46:37 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 902413583
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 08:46:36 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b1c5a6129eso21345661fa.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 08:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686325595; x=1688917595;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CsymM+sZ3qbYclB4M5H6X6tKIPBYp8xhsDNrjslRkGA=;
        b=U0R15ttGv/TbjJ/B0vIXcPj2HSXCDddhALpM01VZFZQTSUX/D+s7Ehb/WdfHwXH6Lx
         VVA5/zt+L6jd1UrKxu/koUhE7WKHHaMNKpruaUwQk7ELsOvZTCS5cJZmD2JEl1TMomI4
         wlWYjgUVgX0TMvBj49rT8ipW6imBtR6LNkDvKEQQ5cTdk3hH4yYDETtRAb3pLLo74baL
         QEGwXfrVHhuyCjVWf5WjSwPeDvHlFZcKTx6PoH55pi4fwThFNo/PoAd0UEse6X4/pc30
         5jm0ZR8uVHdIaKH0Bm/Xav7bIzsZPjrLKkm7v5OywhVgXxKdjSl6+vprnrBK3n4mrbDS
         vGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686325595; x=1688917595;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CsymM+sZ3qbYclB4M5H6X6tKIPBYp8xhsDNrjslRkGA=;
        b=BCk7GuDbi6xr5dZ8RNikh7nDwdm2/wqQ9GWUU761l4aP5tksUKThbqmzV7Ni5jjWqu
         +whbwNfNcwvtIi1uUeumQOAJr6LQ0eys2jhE7BRh+g/QKMZuiAdXt7KaYIE4U3LZhJSe
         lnMJsSm0JOa3eQa9mZgHRFXryQaiUsS7gndP2Fs8oMsIW55kho0peKK/3OHNwpk5DkgH
         S1rjE+YyFgGFlY3U6f2GTwKcOu7wz/2E2ZNBSWEMrmuZcR8j2HgNvG0lLGCJMJE27OPT
         Fcn4G7l+eRqz/zO6mcwUj/jnDNJPKtlv/vuTu5EyO0zL4oHk8Q9aro24W9feZYki+r7C
         ph1A==
X-Gm-Message-State: AC+VfDxnXgip3xq0v1RjNVViJqza1TRA4ds+RhEC//AlOeEd37J8CVoP
        1HXDpbkFr95Zh8WUF2fsFVV2dw==
X-Google-Smtp-Source: ACHHUZ6H7GAfgliIQ7vuLHDItb52P6CVINhTdC1Q32aXlHSelmdJ38e92Lqf8weZj9+3H/UIebQ3Ig==
X-Received: by 2002:a2e:a402:0:b0:2b1:b301:e650 with SMTP id p2-20020a2ea402000000b002b1b301e650mr1433992ljn.1.1686325594809;
        Fri, 09 Jun 2023 08:46:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id l14-20020aa7c30e000000b00514b0f6a75esm1869455edq.97.2023.06.09.08.46.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 08:46:34 -0700 (PDT)
Message-ID: <e2bb439c-9b72-991b-00f6-0b5e7602efd9@linaro.org>
Date:   Fri, 9 Jun 2023 17:46:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 2/2] NFC: nxp-nci: Add pad supply voltage pvdd-supply
Content-Language: en-US
To:     Raymond Hackley <raymondhackley@protonmail.com>,
        linux-kernel@vger.kernel.org
Cc:     "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Michael Walle <michael@walle.cc>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Jeremy Kerr <jk@codeconstruct.com.au>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230609154033.3511-1-raymondhackley@protonmail.com>
 <20230609154200.3620-1-raymondhackley@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230609154200.3620-1-raymondhackley@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/06/2023 17:42, Raymond Hackley wrote:
> PN547/553, QN310/330 chips on some devices require a pad supply voltage
> (PVDD). Otherwise, the NFC won't power up.
> 
> Implement support for pad supply voltage pvdd-supply that is enabled by
> the nxp-nci driver so that the regulator gets enabled when needed.
> 
> Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
> ---
>  drivers/nfc/nxp-nci/i2c.c | 42 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 
> diff --git a/drivers/nfc/nxp-nci/i2c.c b/drivers/nfc/nxp-nci/i2c.c
> index d4c299be7949..1b8877757cee 100644
> --- a/drivers/nfc/nxp-nci/i2c.c
> +++ b/drivers/nfc/nxp-nci/i2c.c
> @@ -35,6 +35,7 @@ struct nxp_nci_i2c_phy {
>  
>  	struct gpio_desc *gpiod_en;
>  	struct gpio_desc *gpiod_fw;
> +	struct regulator *pvdd;
>  
>  	int hard_fault; /*
>  			 * < 0 if hardware error occurred (e.g. i2c err)
> @@ -263,6 +264,22 @@ static const struct acpi_gpio_mapping acpi_nxp_nci_gpios[] = {
>  	{ }
>  };
>  
> +static void nxp_nci_i2c_poweroff(void *data)
> +{
> +	struct nxp_nci_i2c_phy *phy = data;
> +	struct device *dev = &phy->i2c_dev->dev;
> +	struct regulator *pvdd = phy->pvdd;
> +	int r;
> +
> +	if (!IS_ERR(pvdd) && regulator_is_enabled(pvdd)) {

Why do you need these checks? This should be called in correct context,
so when regulator is valid and enabled. If you have such checks it
suggests that code is buggy and this is being called in wrong contexts.

> +		r = regulator_disable(pvdd);
> +		if (r < 0)
> +			dev_warn(dev,
> +				 "Failed to disable regulator pvdd: %d\n",
> +				 r);

Weird wrapping. Why r is wrapped?

> +	}
> +}
> +
>  static int nxp_nci_i2c_probe(struct i2c_client *client)
>  {
>  	struct device *dev = &client->dev;
> @@ -298,6 +315,29 @@ static int nxp_nci_i2c_probe(struct i2c_client *client)
>  		return PTR_ERR(phy->gpiod_fw);
>  	}
>  
> +	phy->pvdd = devm_regulator_get_optional(dev, "pvdd");
> +	if (IS_ERR(phy->pvdd)) {
> +		r = PTR_ERR(phy->pvdd);
> +		if (r != -ENODEV)
> +			return dev_err_probe(dev, r,
> +					     "Failed to get regulator pvdd\n");
> +	} else {
> +		r = regulator_enable(phy->pvdd);
> +		if (r < 0) {
> +			nfc_err(dev,
> +				"Failed to enable regulator pvdd: %d\n",
> +				r);

Weird wrapping. Why r is wrapped?

> +			return r;
> +		}
> +	}
> +
> +	r = devm_add_action_or_reset(dev, nxp_nci_i2c_poweroff, phy);
> +	if (r < 0) {
> +		nfc_err(dev, "Failed to install poweroff handler: %d\n",
> +			r);

Weird wrapping. Why r is wrapped?

Just move it to the success path of enabling regulator.


> +		return r;
> +	}
> +
>  	r = nxp_nci_probe(phy, &client->dev, &i2c_phy_ops,
>  			  NXP_NCI_I2C_MAX_PAYLOAD, &phy->ndev);
>  	if (r < 0)
> @@ -319,6 +359,8 @@ static void nxp_nci_i2c_remove(struct i2c_client *client)
>  
>  	nxp_nci_remove(phy->ndev);
>  	free_irq(client->irq, phy);
> +
> +	nxp_nci_i2c_poweroff(phy);

Why? This code is buggy...



Best regards,
Krzysztof

