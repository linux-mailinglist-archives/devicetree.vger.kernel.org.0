Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6A0563D9B6
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 16:44:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229955AbiK3Pou (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 10:44:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbiK3Pot (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 10:44:49 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD2E2813AF
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 07:44:47 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id be13so27595482lfb.4
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 07:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FTBAlGncbs4Sqv0vPKkuevbQDQVGzsGoNFUsDw2KArw=;
        b=n/OCKwF2/Hc3gTnAUxEOc/MVLaL321cKUT7VTOCjkPivmmw9WsWhqbLR7UwOVmqDwC
         MGKLwliZCWSjuP6zjYXcY5xVE861ORjzv2+8qJAunyQZORybbhuAuf4W/B7qImyYe4zI
         l6gzUlTdmikdzZK2aQS36Vgp8xnKRzwubW3LTOJMcuBnXKRj9Oo9xUaO4A+3jc4QQyDD
         yi109CSUcDrN/624aq4r8QHwInJMOLkKPGq/teUX3/aiAQz8oDE5y6RDylTiWGAFetIp
         AXjYWLjWEfpSPi5q/dtBSDOncur4KjeaHDBjWetB9O/VeZuApaWbvSIeUSq4wRHPo+R6
         PPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FTBAlGncbs4Sqv0vPKkuevbQDQVGzsGoNFUsDw2KArw=;
        b=6n8rXV4ezPSdrg09INvaRABNyOxuebDmF3uCX14QeOSMC2tYwXUJGOJ6MZCqR2nQsZ
         6dqrSkxIIO1f7Ynvu4Kgmc16uJJsJ2JsGjvxGfFiqjrcd4PgK4jBqVExgQEptk3ZGxlY
         guiwgf87AssqJWP1AWE3oiwZNuoUPibi3zxBGRsEjmkffWQpdMuvEa5a4tY5CaEOAHYN
         rKuiL1JEm1wl/F15E9+2udZvnU8KnjZN+86QoP+LXMrqHK4hVRA9Mi1MOxy4wtHBo1mj
         Iv3es6m9wDu4JmILwypsj4Y22azdI6wQsB5lfUdCgfFEjI0FULciD0cS2NNSCzrsd9Yg
         ajoA==
X-Gm-Message-State: ANoB5pkI7JxPR0OCEs+nMoGlDnTAv5IFBSs+Z8mfiuHdyIrPXIoo8QwT
        V1/mT2vqh1R5MZRQHZdDeWg5oA==
X-Google-Smtp-Source: AA0mqf4qp0ZQK/ovtxZkr31zWd1I3EgbD9B0NjY/n4lnfjEkweAPRaPstM7SsbvJudcuNwS15qbEag==
X-Received: by 2002:a19:5e51:0:b0:4a9:d072:f5c6 with SMTP id z17-20020a195e51000000b004a9d072f5c6mr22008042lfi.112.1669823086026;
        Wed, 30 Nov 2022 07:44:46 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j22-20020a05651231d600b00498fc3d4d15sm294250lfe.190.2022.11.30.07.44.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 07:44:45 -0800 (PST)
Message-ID: <903bd0fb-aebd-3ce2-9f3f-d46f708f6c85@linaro.org>
Date:   Wed, 30 Nov 2022 16:44:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] dt-bindings: input: gpio-beeper: Convert to yaml schema
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, dmitry.torokhov@gmail.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
References: <20221120012135.2085631-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221120012135.2085631-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/11/2022 02:21, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Convert the bindings from plain text to yaml schema.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/input/gpio-beeper.txt | 13 --------
>  .../bindings/input/gpio-beeper.yaml           | 33 +++++++++++++++++++
>  2 files changed, 33 insertions(+), 13 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/input/gpio-beeper.txt

Somehow I missed this. Apologies for late reply.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

