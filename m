Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF998523785
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 17:39:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343872AbiEKPjn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 11:39:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343876AbiEKPjh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 11:39:37 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14730994EE
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 08:39:34 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id gh6so4958387ejb.0
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 08:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3EnLHFLc0Jk3HBkHlEdbkbS2KROw6hUVo/W0MBRYlKM=;
        b=OQ46Ckb1vHduf6E2pp3PST82k0EZHs7pmczBztqcLbrnum4AYkflTWi0XtsRpw1JLt
         tzQ2XXBKJKubuPLOecGFeXxzU1hhKRxcUdgK7sqo8XpXQ05NhrEImWpARHKXWfhBmqFh
         QKQZ+cWEF4mKU0Z7BUjQZq0c1uSM2UtPFKkCy2yULw73auxdm4SsB0O7M+Q+Hmwuwhdy
         GfCubg9h5HKOlAxdw7AAnVg6HXAyCP1nZAWmR7jq/cYDcgfdmkJvKAnuF9vT7ZRYCsqU
         4L9rOcARY+JpPQymTQ6nimmTO4Ole5TY/cBC1Qn3LnNPiBSrbiocj+bN/dbHPBd7i4Xa
         p3GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3EnLHFLc0Jk3HBkHlEdbkbS2KROw6hUVo/W0MBRYlKM=;
        b=45hVEivnx3zdLPBZNEJTm5l+rufcLeEm4eg8t0pJj+Po266ETmms/nOQhEKtBvM1eb
         rA+4jlfJ8IHlEbz35DK5N8snF4pMUMPkqriB4R27+98Ihn+SiwK0WLxJKMkO7Xh32LWv
         ZoLWHFvaJz8+bo6zq3VOCd4T0V1TfvtizS8zcJ5r4NGBYwBByLkRzDP7IfxZtstaVK5h
         /tJXu2qlgGNMSpgSFxllH3Md5hYy2mCcoF+bTHFCa/XzzSdRzYhXFX0mWdEQsPAAv7Po
         H0iRbdSNp8u+WKX9GquvT3vgbIbdsOPlc0bH3AjztCjpHiAzQi4U9fW+YLw9cRZo4/BE
         bOFA==
X-Gm-Message-State: AOAM530qKXHB3Ve5VMCy2nmq1+nthxIHr2HM1OnjAxIxm8IWFV1TR2Ni
        0bXBPHw0WmDkHEJ+EG506WU/oQ==
X-Google-Smtp-Source: ABdhPJySKAHxPp8LLhFSHV8vPSGtrR1UdG60EACkRkBfD4ufVPwu4UJ/ureg6z2eSpBxrLmhqGwl3Q==
X-Received: by 2002:a17:907:628e:b0:6d9:c6fa:6168 with SMTP id nd14-20020a170907628e00b006d9c6fa6168mr24951544ejc.132.1652283572558;
        Wed, 11 May 2022 08:39:32 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id tk8-20020a170907c28800b006f3ef214e67sm959236ejc.205.2022.05.11.08.39.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 08:39:32 -0700 (PDT)
Message-ID: <5847417d-921c-7fca-f5de-00e8a550dcb8@linaro.org>
Date:   Wed, 11 May 2022 17:39:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4] dt-bindings: nvmem: convert mtk-efuse.txt to YAML
 schema
Content-Language: en-US
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Eddie Hung <eddie.hung@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>
References: <20220509014521.10248-1-chunfeng.yun@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220509014521.10248-1-chunfeng.yun@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2022 03:45, Chunfeng Yun wrote:
> Convert mtk-efuse.txt to YAML schema mediatek,efuse.yaml
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v4: fix duplicated unit-address in example;
>     drop reviewed-by Rob, due to changes;

That's a small change, you should keep his review tag.

> 
> v3: add reviewed-by Rob
> 
> v2:
>    1. remove description of subnodes which is covered by nvmem.yaml suggested by Rob
>    2. change the example which is commoner than mt8173's
> 
> ---
>  .../bindings/nvmem/mediatek,efuse.yaml        | 86 +++++++++++++++++++
>  .../devicetree/bindings/nvmem/mtk-efuse.txt   | 43 ----------
>  2 files changed, 86 insertions(+), 43 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/mtk-efuse.txt
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
> new file mode 100644
> index 000000000000..abb8b85655fe
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
> @@ -0,0 +1,86 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/mediatek,efuse.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek efuse device tree bindings

s/device tree bindings//

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
