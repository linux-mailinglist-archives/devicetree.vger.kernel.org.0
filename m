Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF05B6B07F8
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 14:07:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231615AbjCHNHj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 08:07:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231620AbjCHNHR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 08:07:17 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28E6322DDB
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 05:05:35 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id i34so65402003eda.7
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 05:05:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678280658;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nMb+L2QoiV2LI+NBpmUXVL60/+XXKTP1FPumyKzrC1s=;
        b=UyGVKwQI1hVb6+jfOIrwJI18iYJUgpJh7JQnSI4VcEurzXpUqXwh44i4B1byn2bNzn
         xvwSlMesQ4NVYqKCqYg4e8FHiXeTCcU6TrMJMGCmLaZRFesoi95DKb4Q9DVA2XOthvSn
         72uc07plnZK7v9ruRqQ8pieDigLQV/Q9RiH4HF5S2A+GtGYAcVd61Ua2NyxxA1hcG4O1
         v6gwOpX4hnT9H9X1FB60XCET6pMmLqW51elDu5H6peAA120jXMIlbkPCR7GY7zJx1pMB
         pBl9gczG3aD9ztwLVxWCfo8C2eWMEMfQmFJ/ZzQR2xrVNJZRShDI5VxzTshu4f1xVpy0
         5CZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678280658;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nMb+L2QoiV2LI+NBpmUXVL60/+XXKTP1FPumyKzrC1s=;
        b=hFhtsV8vBBUXr6D7Fn4qAYufJInu/5bqx4QXJvPT9TVxS21wa8q2lAdb01sJDxwCJd
         VePtpnua+Pl6GK3l/PX7eupVp0mTXMkAWFpGfZ5LWnODJwn2a2YMwpGCZ/8QaeJdbSq4
         Rd/fc3wMKihNP+Y8S5vWTzEAFXVoo8zeceLdmiDVkpgYH9PD1J6WHCGpIm1rBm9YevwX
         q2Fe8KaN/ou0Kt63QuS/xYcD3OIgzR9MMbXjfNuNHhZCbI3gYKcKM9KxwokHd8roFIT9
         EDTt0SrPfaZoVFgpiztd9MdAB92JY8u0vnDDMWHwsr3Wfo7E2ElwfUWpc8MexOf/hkG6
         B8GQ==
X-Gm-Message-State: AO0yUKVw0VWt2w1NSb8geZf8M8DILXNrWyxo3P4mbbZw1V2+qE9NQ7Wk
        TbqJ/rU1PlbT9UYLuPAu5wUdsw==
X-Google-Smtp-Source: AK7set/E9n8petNzlX74jbR00xrgeCh9vb9MGEnHeK+7rEP4IkyVF03KRVL4s4cym8RKju+iq2afyQ==
X-Received: by 2002:a17:907:6d23:b0:8b1:7a80:3790 with SMTP id sa35-20020a1709076d2300b008b17a803790mr21661615ejc.69.1678280658043;
        Wed, 08 Mar 2023 05:04:18 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id 21-20020a170906309500b008b1779ba3c1sm7428089ejv.115.2023.03.08.05.04.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 05:04:17 -0800 (PST)
Message-ID: <88208e61-e32d-7ce9-cdee-262b214519fb@linaro.org>
Date:   Wed, 8 Mar 2023 14:04:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 22/25] dt-bindings: arm: fsl: Add colibri-imx8x carrier
 boards
Content-Language: en-US
To:     Philippe Schenker <dev@pschenker.ch>, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Philippe Schenker <philippe.schenker@toradex.com>,
        Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Marek Vasut <marex@denx.de>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        linux-kernel@vger.kernel.org
References: <20230308125300.58244-1-dev@pschenker.ch>
 <20230308125300.58244-23-dev@pschenker.ch>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230308125300.58244-23-dev@pschenker.ch>
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

On 08/03/2023 13:52, Philippe Schenker wrote:
> From: Philippe Schenker <philippe.schenker@toradex.com>
> 
> Prepare the dt-bindings for the new colibri-imx8x carrier-boards Aster
> and Iris.
> 
> The Toradex SoM standard is called Colibri, fix the typo.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> ---
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

