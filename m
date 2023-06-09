Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD63B72A31D
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 21:31:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231772AbjFITbL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 15:31:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230148AbjFITbJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 15:31:09 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EAB030D0
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 12:31:07 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9788554a8c9so358731966b.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 12:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686339066; x=1688931066;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DliK5Hp5RoZMubfG2AiJ9X+1ugEJQb3FPewKfTexS7w=;
        b=bCOv1PBRv5EuN82ku5W4DhPb7+JPx+hrv+GJ+/nt6Glk+8NsQxyMpmLo8JpOtdJlQe
         qHyBcrPrNKcYAyGB/35ZgtG9eW7AgfBUWsUOjd3Gsyw7xCtKamNRL7iKVNcvQX1MHzP3
         T0x5Vd5D4KREHAJpGXw3uaUmbVa+Jq79OhLOrseW69ZI+B7iNJ5iltCdJrs1M6id/lNB
         kB5a3zafD6u4ne5yYSAquqRDV9eXz6VO8lS2A+E12nydmju9sfLzlrUjbFwfgRMnXcxI
         bqB3HR+QDOCdlcd36J3goaU/ePvrjUuKt8baxEBi00wgO0K4agq6rKOP1+/y3QYYWII6
         gTCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686339066; x=1688931066;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DliK5Hp5RoZMubfG2AiJ9X+1ugEJQb3FPewKfTexS7w=;
        b=HppGMDOKIVKv2GVL768ro+kQE7jZCVtJ0SZR25lfe5MiAg2eixxoXYKeBSKvaYoJN0
         v4gC22JrlgvieE7xnXR2t1xZqyBg4b0bRJBFQiUNEPVG2X9I0z9rP7jkX/zUIJ+f0Qa/
         tF4ATSnh3/JIHRMfOthRqIMtL/RUzCvAAyhky4ofvAJcrNU2YAY9qnvc5BLl07hlf567
         13RKaCw67qgAwnLk1yB0qm5xRmlH51AA1ZHWavGcKOc4wFC5aTkevREe0OkFON5ehyNw
         Jac378vVLazcidSMl8nZNl97aZpRV9Le3ZVBxodo0iuKLfJYB45Icwmxgq3b9b8OKCxF
         Ftxg==
X-Gm-Message-State: AC+VfDxhSXfK1Oj84JlQFrlYg+hH5ndhOb1Jx6u8Od1Km1Sbb/E/pOo3
        1DKTK/sYx3YgykvTmLk8Y8ogVQ==
X-Google-Smtp-Source: ACHHUZ5/kIn8quJT6E08siRRrzbmgtYPkciUGjRvxv52jycK2IvUzHGqi09YeWBNH1BhvQU6Pq/cIw==
X-Received: by 2002:a17:907:86a4:b0:970:1a68:bacc with SMTP id qa36-20020a17090786a400b009701a68baccmr3059925ejc.67.1686339065818;
        Fri, 09 Jun 2023 12:31:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id p22-20020a170906229600b009745c628bcdsm1641778eja.93.2023.06.09.12.31.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jun 2023 12:31:05 -0700 (PDT)
Message-ID: <5dc0b50c-611a-187a-2f91-dec0dcecde78@linaro.org>
Date:   Fri, 9 Jun 2023 21:31:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/2] NFC: nxp-nci: Add pad supply voltage pvdd-supply
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
References: <20230609182639.85034-1-raymondhackley@protonmail.com>
 <20230609182729.85088-1-raymondhackley@protonmail.com>
 <20230609182729.85088-2-raymondhackley@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230609182729.85088-2-raymondhackley@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/06/2023 20:28, Raymond Hackley wrote:
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

No, don't send a new version before we finish discussion. One version
per day is enough.

NAK for this part, same reasons as before.


Best regards,
Krzysztof

