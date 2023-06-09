Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA1E772A321
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 21:32:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbjFITcY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 15:32:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbjFITcX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 15:32:23 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A23F2D7E
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 12:32:22 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5151934a4e3so3252171a12.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 12:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686339140; x=1688931140;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e+7TJ2Bz4PP84jI71k9rtSrZBuTihEfvjYh1C5ap+bM=;
        b=dwuJQ2Nfv3uoOXXnIfCtewKQKhPdrx1lMxuhEwkh/apP2l8A5U36iSzQ1LQ9Tp9ZIy
         iuuL7Ur1Fg6eeDqDI3KzMcpa9Dlob2NiJb/XZ1Rd4ziQGLYwA5yaMYCVzmbRhG8O0jzS
         IosOLT7eRJ89zYXtJ8hC7NyQueCE4kMBsunVLvb9aUyAWnFKrzivwQ3pWOQmq52O37Pp
         0oRHuqlsG5dpYcjsqnX+fGDYPAjupfxNSVUWh0ZWHcqOTx9JC2QPW5uuIHdr2CRfeVzo
         CrtfePDBNwmmCWI6LerZWKFB0JYgDwGIOJPH78aFq+bDkQ8UMrmNO3vzDtcl43Jex/yD
         0ngA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686339140; x=1688931140;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e+7TJ2Bz4PP84jI71k9rtSrZBuTihEfvjYh1C5ap+bM=;
        b=AdUNHWZ1mKPjmQmfZYoFJb3RZBVc6q76voCSZWMMEBxN++o/mkVtKoPMDZKWv1rQ4m
         lEbYJPJFfJN8bVdYHYAFRJkt+jHB8sStNME1OvG9SoiIRuWcDBAm67JZDJP+LpZk1sCT
         9UJnBJ7exd4KE2EnM+3Pzwlu5YVlTBl2baXBvqerr9zgD/9907S7Q4/lynUsoBSrGg8O
         X2yUekwvEloXWGWEvQlU4x4JY6/gf3jmxOb68v6LIyJk6XCQhj5A35/RUNPA71bJlajz
         wcgbemQ8HOvlawbObTPHtfQELnokPCo8o/ph8/iBbcoig5LpAAeUE4bYk2UFXGs7nmKj
         H3hQ==
X-Gm-Message-State: AC+VfDzhNyjow18IXgjjfnG+iR+9APYsUjCcaPDmnM7jm0V7gRnVMBP1
        89T5JCJNP+bqmcRcbgSER/72lw==
X-Google-Smtp-Source: ACHHUZ47CXjFiaJRYtVFHZQsAMutpuxSWyyvSPvy1BZQ/QZWq+q14Z5qFYjDWmabnbmTrxtzAlY2Mw==
X-Received: by 2002:aa7:d14c:0:b0:514:666b:1e04 with SMTP id r12-20020aa7d14c000000b00514666b1e04mr1775182edo.35.1686339140518;
        Fri, 09 Jun 2023 12:32:20 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id p4-20020aa7d304000000b005169ffc81absm2089208edq.51.2023.06.09.12.32.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 12:32:20 -0700 (PDT)
Message-ID: <4c37d4cd-cb8f-8c73-e09b-37e32cd79c30@linaro.org>
Date:   Fri, 9 Jun 2023 21:32:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [RESEND PATCH v3 2/2] NFC: nxp-nci: Add pad supply voltage
 pvdd-supply
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
References: <20230609183639.85221-1-raymondhackley@protonmail.com>
 <20230609183639.85221-3-raymondhackley@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230609183639.85221-3-raymondhackley@protonmail.com>
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

On 09/06/2023 20:37, Raymond Hackley wrote:
> PN547/553, QN310/330 chips on some devices require a pad supply voltage
> (PVDD). Otherwise, the NFC won't power up.
> 
> Implement support for pad supply voltage pvdd-supply that is enabled by
> the nxp-nci driver so that the regulator gets enabled when needed.
> 
> Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
> ---
>  drivers/nfc/nxp-nci/i2c.c | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/drivers/nfc/nxp-nci/i2c.c b/drivers/nfc/nxp-nci/i2c.c
> index d4c299be7949..6f01152d2c83 100644
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
> @@ -263,6 +264,20 @@ static const struct acpi_gpio_mapping acpi_nxp_nci_gpios[] = {
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
> +		r = regulator_disable(pvdd);
> +		if (r < 0)
> +			dev_warn(dev, "Failed to disable regulator pvdd: %d\n", r);

Why resending? This should be explained.

It's like third or fourth patchset today. You need to slow down.
Unresolved comments from v2, so I still don't agree with this. I don't
like that I have to write the same three times because you sent three
patchsets...

Best regards,
Krzysztof

