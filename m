Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFC505A79E4
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 11:16:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229742AbiHaJQM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 05:16:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231332AbiHaJQL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 05:16:11 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D2AA74DE2
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 02:16:03 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id by6so13944032ljb.11
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 02:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=yo2waPsn/VqYxgd2pcDs/I6zHMqdvY640Tr+GIvipRQ=;
        b=XTYiYuH/bXWDfvmPO6sSGKYWyRufpke6PgmvtLNPIqwPcMwojHADlhExcBeWJGeMuL
         74KMCq+D3Qo6JiExwZtM7rjoJSXoW91qnIKpdOAMaHuMzTNLOnJYFNA/gR2LBYIhh90d
         sLybxLoYQ5Y0E0JICZDODxhzuW7d9eqc3F6tNx3guju3FqkC3AEGYlNrwKl1f0cwUVY7
         i3AI7uEik3OIMc7dqoxkkopt7jKRTCbfR+M+St42gpcqrZ3qDKHnfBNyI2kP8cuOfNJC
         +nr0Wg+rUiB4pikkRM7B3O+EO7OQtp7204LX+3HgfWC2I4uiv+sU+lhwx+lkFm0MV3HM
         bdfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=yo2waPsn/VqYxgd2pcDs/I6zHMqdvY640Tr+GIvipRQ=;
        b=2Fd4EX0LDYEYDdUEdEx+DxauSQBD08VNyaMTSLYp1MDPSf0i7BJooYyZr4qnKheR3+
         E+Sdjzk4xI+mI5BR72EyikaVhw4CJCA0xMwc6RFK1CsWLP4fTm01AaW87FJNokDJAx3t
         IossnCy5k+xUjjBaWtfKJ2dihONBUirflRQDWHqQ1Coia3vLdsbjUtRX71uWHG6SJ8aX
         R9i+LKYLG0UwvXPEWIJDTgw5SIGGa6O5uWHhBSbSJzARovDrnrZLBX60+LTk36DVi4yV
         ZKDiFaCfvcBh5kJ+Y9sw+wcBoh4hehHOrY7j93HL4Ohf7n1OdJG+doV0PFxiLhQM4+1Q
         x1GQ==
X-Gm-Message-State: ACgBeo1rYbt5vXsoyTSqtEH4Ac81syNMODL5Pz3qJiXLPFM7uKW3BVfq
        2m7kGt6sj6hRz+rSiQghBJWpdg==
X-Google-Smtp-Source: AA6agR47GdZxxgTBbHsCe/hhHr8+UPz/pFmx+778ocPnijLif3kR3Mws9lFbUER6RhQ/VK/t4ARqgA==
X-Received: by 2002:a2e:bc0c:0:b0:268:7411:c7da with SMTP id b12-20020a2ebc0c000000b002687411c7damr1023491ljf.118.1661937361410;
        Wed, 31 Aug 2022 02:16:01 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id x6-20020a056512078600b0049480c69d98sm454811lfr.239.2022.08.31.02.16.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 02:16:00 -0700 (PDT)
Message-ID: <cb3870bc-451a-ff62-e671-f2045eecc781@linaro.org>
Date:   Wed, 31 Aug 2022 12:15:59 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH V2 1/8] dt-bindings: soc: imx: add binding for i.MX9
 syscon
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        aisheng.dong@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
References: <20220831074923.3085937-1-peng.fan@oss.nxp.com>
 <20220831074923.3085937-2-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220831074923.3085937-2-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2022 10:49, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add binding doc for i.MX9 blk_ctrl_ns_aonmix and blk_ctrl_wakeupmix
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../bindings/soc/imx/fsl,imx9-syscon.yaml     | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml
> new file mode 100644
> index 000000000000..90c5e354f86c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx9-syscon.yaml
> @@ -0,0 +1,37 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/imx/fsl,imx9-syscon.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

One more - drop the quotes both lines above.

Best regards,
Krzysztof
