Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8732570BF60
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 15:13:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234247AbjEVNNO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 09:13:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234238AbjEVNNM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 09:13:12 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACF52FA
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 06:12:49 -0700 (PDT)
Received: from [127.0.0.1] (unknown [62.91.23.180])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E7F928445D;
        Mon, 22 May 2023 15:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684761167;
        bh=EzIVV8nD01T8Dqootjq2FVJXyWcmmbkx0jQtvcKuGDQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=wqtFzeGEsxu86mNX+YBKMq4OugR8BlxPYPidsWs+tXzmZh360g24/fFVUgg95azFh
         fu/xiQnoabUK5fhZ4FQa5rPWBxYy77KwtURBlZJPzFQi+Xl65CE+pzjYnV5BDiT/yD
         6N3hcEEUUPan/17KYZF3cNL8SviA07ShlyAmrsWCrPK9vRqcTGuzE4BswSOff/roQE
         kXS+DGDWBAbsEpEqFhPBtqQ4muK7aslnzvnTxHSp/MhRfi0fR17pcwUHyv21f8RX1O
         7V9//Hr04Bm+Wn9Wq4H4DpgWLnMG0qjGXdnAW5j0zPRFW7j9f8x/gLYGq9gxkdYL4D
         Ez6XIzB2dynKg==
Message-ID: <50e6c191-51da-9757-c8ee-d04ae5b7c3dd@denx.de>
Date:   Mon, 22 May 2023 15:12:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v5 1/4] dt-bindings: display: bridge: ldb: Adjust imx6sx
 entries
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230522125129.526604-1-festevam@gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230522125129.526604-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/22/23 14:51, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> On the i.MX6SX there is a single entry for 'reg' and 'reg-names', so add
> some logic to reflect that.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v4:
> - Replaced items: with const: for the single item (Conor)
> 
>   .../bindings/display/bridge/fsl,ldb.yaml      | 26 ++++++++++++++++---
>   1 file changed, 23 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> index 07388bf2b90d..d97064140547 100644
> --- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> @@ -28,12 +28,12 @@ properties:
>       const: ldb
>   
>     reg:
> +    minItems: 1
>       maxItems: 2
>   
>     reg-names:
> -    items:
> -      - const: ldb
> -      - const: lvds
> +    minItems: 1
> +    maxItems: 2
>   
>     ports:
>       $ref: /schemas/graph.yaml#/properties/ports
> @@ -74,6 +74,26 @@ allOf:
>             properties:
>               port@2: false
>   
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: fsl,imx6sx-ldb
> +    then:
> +      properties:
> +        reg:
> +          maxItems: 1
> +        reg-names:
> +           const: ldb

Can we drop the reg-names on MX6SX if we have reg maxItems=1 here ?

I think we can, but we need to retain that on the newer iMXes which have 
reg maxItems=2
