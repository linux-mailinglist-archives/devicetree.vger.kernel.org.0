Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D2C0505B23
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 17:33:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236503AbiDRPgB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 11:36:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345129AbiDRPfk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 11:35:40 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A70B31504
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 07:53:11 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id ck12so5742702ejb.4
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 07:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=DH6JdY2Df2NMHSgp+NcPipbg3dAcuG9vODo0rK+nRUs=;
        b=xT6xA0HxpRBU8B+pXYJkiW8X6ZzUuy0w+9Wo+OhesUtTOHfK/nAPPhqlqkCSSnK4BN
         aUlyBqDRCLaft0jhx0B0btf8hnrx7/CIoK3xMCVDcBuBpeV1Grar1RIrGr8WNqFfLBxq
         4ev5G5LYxLvPOCXOIlBHcrhALERz7/fyVWSlDEYNjKApCIb55dOqycf49QVw+xicUeWF
         osGZPSEnMJe2Fonw1nZaV2PN2oEB9rnTBhR6BdYEHbMuZcyz1WyifPyiumQQhErsn0lk
         wKDI6ej2OnXtJgnf3MJF7SqQu+OYSp6ApkfCKTVXEVhJQkY1DDhoFuR0pMbKZz/1LHY8
         Fycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DH6JdY2Df2NMHSgp+NcPipbg3dAcuG9vODo0rK+nRUs=;
        b=8CfsfpHktUY0aeTHkriBHZ/md4chVcWv/lwCfbu8eCUPsxLH9e+wKLLB7Btv/YtCmB
         3ZnGM5LUvwbNgJfbeEjhjNyGOw+KFjrJE3YhYM9TnzCkUKH68PZK1+lkE2UWcR8L6U/6
         xXED5QNsNn+KXkp1pnX5gcYcP99YCbYvxkW4yEq/GUmyRVc7qVN22TqZYPIxfUFo6No5
         kPIeMZVeTqI/RasIUtY1nGZji4rXtRL9F3fQPNGLCOqbsYBKfJdpfG3bSFJd0Ln4jG+S
         oF1enwkWqeqPAQBCyib4oy7IyFf0FApGXrflIctxC/2m/0RHSrmzRqgHgr2WIzDFUuWH
         AdbQ==
X-Gm-Message-State: AOAM532YZPTthWG/8xu/WKdjrFUoKGmIQ3YEySmYTHvSUzq4qXRJE0aF
        xocTQJbEs5/qxB5gUS82OvqicA==
X-Google-Smtp-Source: ABdhPJyS5QJICv3KZXNdlmWf/CzBB7I6w4cejS8iQeq2nG/5Q9SQbz7fDw7bFDQUMeVEARWjs2uMdQ==
X-Received: by 2002:a17:907:6e1e:b0:6ef:5a59:2bd4 with SMTP id sd30-20020a1709076e1e00b006ef5a592bd4mr9673198ejc.143.1650293589988;
        Mon, 18 Apr 2022 07:53:09 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id la10-20020a170907780a00b006e889ee7741sm4641977ejc.75.2022.04.18.07.53.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Apr 2022 07:53:09 -0700 (PDT)
Message-ID: <7c8ac7c6-d56c-63b1-195f-ac9b4c22977a@linaro.org>
Date:   Mon, 18 Apr 2022 16:53:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: fsl: Add Engicam i.Core MX8M
 Plus EDIMM2.2 Starter Kit
Content-Language: en-US
To:     Manoj Sai <abbaraju.manojsai@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Matteo Lisi <matteo.lisi@engicam.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
        Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
References: <20220330191437.614065-2-abbaraju.manojsai@amarulasolutions.com>
 <20220418144907.327511-1-abbaraju.manojsai@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220418144907.327511-1-abbaraju.manojsai@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/04/2022 16:49, Manoj Sai wrote:
> i.Core MX8M Plus is an EDIMM SoM based on NXP i.MX8M Plus from Engicam.
> 
> EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive Evaluation
> Board from Engicam.
> 
> i.Core MX8M Plus needs to mount on top of this Evaluation board for
> creating complete i.Core MX8M Plus EDIMM2.2 Starter Kit.
> 
> Add bindings for it.
> 
> Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
> Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2 :
>  -added the device binding of imx8mp as per soc order.
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index b6cc34115362..3bdc490cfbe2 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -936,6 +936,13 @@ properties:
>            - const: toradex,verdin-imx8mp          # Verdin iMX8M Plus Module
>            - const: fsl,imx8mp
>  
> +      - description: Engicam i.Core MX8M Plus SoM based boards

Still not matching the existing convention in that file. :(

This should be just before PHYTEC.


Best regards,
Krzysztof
