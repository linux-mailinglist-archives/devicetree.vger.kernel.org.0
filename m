Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7C597265E5
	for <lists+devicetree@lfdr.de>; Wed,  7 Jun 2023 18:28:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232291AbjFGQ2A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 12:28:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231755AbjFGQ1f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 12:27:35 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F38741FEC
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 09:27:31 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-977cf86aae5so649402766b.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jun 2023 09:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686155250; x=1688747250;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Aj2uGEddUvm2YSMazOH62CPVR32K30vnHRS73Clh5nI=;
        b=G/rQv35xZ/aHsQB7/Ky+W6Q7KPQGRYZ+0vUeNzYoFUFi4mLOsegl/v/UnoNfXi3hlz
         uqU+Wke78B7nM+ck2wPIo2p/kfKK+Tk+JK072t3Bqeg05rpd4lHMUakybO+OZ710yHXu
         dF1M1C45fzNS6tUcXPMGetZrCLaLK0DEUo/yHRE1Bsemg3omAArsdlHHd4hAXtGmww8r
         mCy7junxRo7YdEq7iV1P3yYw/pSfbtAtUyuYVLxMc6wKwW32ksPaf2qcPSwuKtCjpgsi
         IwZPxEnevyTZjPteCIDrmnxYnFgLd7z4ckZbdfSwPORJUlQ7CQPG2QzHOPucaOhsIcT3
         FcCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686155250; x=1688747250;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Aj2uGEddUvm2YSMazOH62CPVR32K30vnHRS73Clh5nI=;
        b=X5b0tOHz4Cy8erIpCgzOrxZrmnkXcVUOi25wd52EtEiSELbc/s/w+jaBco+1BvMeYs
         0izL5W16Aob2zr/vYNQSS6DnN0WtC9CZLe439GUVM2s7x8oYpbOsFI48mspXqvjsdcYn
         W9mv/3olbrleLd0OjHNY31PfWhlA+NkLsWmLGDBFE0OtIP4ytjYud4a1SbebrblJ0bJw
         GqM9Au12Y7pGrrdizaxRjvtie1xemDJWXHsbfzuOQ2f/UjlwFY01eZHKkto1aMS+saET
         yV5wpvyaV0KvoWGbIAxc6fmvMFJt/VyevCagEpv6g9EGKHhmyzeoqDyDXVMYgbgSD3OW
         Gw+g==
X-Gm-Message-State: AC+VfDyVVwp/OrCkGwOeEP4cR9EUO6Fc5ZZMSuqy/qcv2kdcpMkQbL++
        YJCGDwd8+X6ucLk6nglE4CxLyA==
X-Google-Smtp-Source: ACHHUZ7eNiJq5WQXyq2bfvEZ1lOkGLfEQBy9mj531JYcuc2jACZnDyn6XQeTGuLB4PbOF9A+zu45dg==
X-Received: by 2002:a17:907:60c9:b0:977:e99c:c958 with SMTP id hv9-20020a17090760c900b00977e99cc958mr6742836ejc.10.1686155250276;
        Wed, 07 Jun 2023 09:27:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id fx22-20020a170906b75600b00977da5d3350sm4043375ejb.107.2023.06.07.09.27.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jun 2023 09:27:29 -0700 (PDT)
Message-ID: <4bee93d7-0613-3b15-d34d-c62cbb367547@linaro.org>
Date:   Wed, 7 Jun 2023 18:27:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Gateworks i.MX8M Mini GW7905-0x
 board
Content-Language: en-US
To:     Tim Harvey <tharvey@gateworks.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230607162438.2009738-1-tharvey@gateworks.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230607162438.2009738-1-tharvey@gateworks.com>
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

On 07/06/2023 18:24, Tim Harvey wrote:
> Add DT compatible string for a Gateworks GW7905-0x board based on
> the i.MX8M Mini from NXP.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 2510eaa8906d..b19444dc23da 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -915,6 +915,7 @@ properties:
>                - gw,imx8mm-gw7901          # i.MX8MM Gateworks Board
>                - gw,imx8mm-gw7902          # i.MX8MM Gateworks Board
>                - gw,imx8mm-gw7903          # i.MX8MM Gateworks Board
> +              - gateworks,imx8mm-gw7905-0x # i.MX8MM Gateworks Board

Are you sure you are using correct prefix? Anyway, keep alphabetical
order, so before "gw".

Best regards,
Krzysztof

