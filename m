Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92F864ED376
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 07:49:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230033AbiCaFvT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 01:51:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbiCaFvS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 01:51:18 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D57FAE
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 22:49:31 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id bi12so45855357ejb.3
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 22:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=B85i9bWCy5v24V5TH8KA7sGLXrCtm+fOs7lvraBY4mc=;
        b=MU3I3v6HXN4lOCJ5Y7vpZ6C4MDCHQst/H6I7X57cAqqpHzVloGMkjlXRvZ9qZZm875
         eryDRKDaTspyZVWOt4B2TtZdhEA9AX7p6+UspkUyX3K/8ryCyIOM+Hmb7gpp27pMYPCP
         6VTgUK6m22QTPgMRlVEktcJqPY4aRTGRf04VjDDf3iYGEie0rDePgHkl88MK2ICSkltg
         T65aHDOgalwGWsMksfCGMFn+/3EYY6DyYrH9kCzaL4KvOaGiIp1jA3urIzA0UUTCNZM8
         tfhtAtCFORi8tKRKUCEOHXRlZoOpgcPO2fkstk249ZztGq86VYq+7oK0rVCD1aukYcI6
         OWqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=B85i9bWCy5v24V5TH8KA7sGLXrCtm+fOs7lvraBY4mc=;
        b=ffYfjF7Htoc8pyz8t+jeIIAk6NVxBEIQqZrjS40tM/WFLLs7XOADIZYpNwYx88kPCV
         5Yau77zkHaRtrzJQKYsCPKYMg4jIduGEBkeMBqWs+BVlM511l0RL9uFItW5bM99cFa+W
         92n2u6WwfZNPJgMETxYeXPOsTrA9dPzCjrHfQFl7xPZruUo0oxrwbxOIAjAVMnQyOtNA
         NWfUQtDulp0OlNtxeDlrVfqU1c/MUIPIJPvcuZSnblnbAAJjOzoRBz27vunOizXKdT44
         CeK41o50iNuyCT/VpO4uC6bPNZMcBh74hhACZLCtHg2lKlDv2zoSsWBnimBdnsFe6h7b
         aOYg==
X-Gm-Message-State: AOAM530RM1rfgEf+txjoat44w56l27E2DphMfsboNn6uOouSmscZhaWO
        he2e1aetrTT4kXdSaAateUNPcg==
X-Google-Smtp-Source: ABdhPJye1dd5zPJb8GfztQPpp/HGK3K9Z6Rqq1YqGu8uI0IAkTRq4jLe4nG3qiPY27Rtvg1cPM8bOg==
X-Received: by 2002:a17:907:96a6:b0:6e3:9c1b:f403 with SMTP id hd38-20020a17090796a600b006e39c1bf403mr3457045ejc.524.1648705770160;
        Wed, 30 Mar 2022 22:49:30 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id s3-20020a1709067b8300b006e4a6dee49dsm554209ejo.184.2022.03.30.22.49.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 22:49:29 -0700 (PDT)
Message-ID: <e27c5e1c-5cd7-96f1-6598-2c7124e7faa1@linaro.org>
Date:   Thu, 31 Mar 2022 07:49:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/3] dt-bindings: arm: fsl: Add Engicam i.Core MX8M Plus
 EDIMM2.2 Starter Kit
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
References: <20220330191437.614065-1-abbaraju.manojsai@amarulasolutions.com>
 <20220330191437.614065-2-abbaraju.manojsai@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330191437.614065-2-abbaraju.manojsai@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 21:14, Manoj Sai wrote:
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
>  Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> index 08bdd30e511c..5c4137e4c859 100644
> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> @@ -787,6 +787,13 @@ properties:
>            - const: engicam,icore-mx8mm             # i.MX8MM Engicam i.Core MX8M Mini SoM
>            - const: fsl,imx8mm
>  
> +      - description: Engicam i.Core MX8M Plus SoM based boards
> +        items:
> +          - enum:
> +              - engicam,icore-mx8mp-edimm2.2       # i.MX8MP Engicam i.Core MX8M Plus EDIMM2.2 Starter Kit
> +          - const: engicam,icore-mx8mp             # i.MX8MP Engicam i.Core MX8M Plus SoM
> +          - const: fsl,imx8mp

You dropped it in some random order. Please match existing ordering by SoC.


Best regards,
Krzysztof
