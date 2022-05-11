Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7C53522F49
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 11:22:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231633AbiEKJW6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 05:22:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbiEKJW5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 05:22:57 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 787986BFF8
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 02:22:54 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id ch13so2720546ejb.12
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 02:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=p09vjTM88gJEpe+RFeDanDG0F3s0eSagXk6IVVR5d+Q=;
        b=gycWNXzYJ83DgmFANHQCSScS3mDGlj0/fGHnB3snL83/1khVXhMdcgDA/lVe0QC3NQ
         PTMdzh/2DEilxLN+f86HdOJiG7ANb96rA1/Eqvcw+JpqkscQ9TqR/ixo8uP3t3zY94D/
         C8pY9Wsfdvk1IquI480xzrVuR3/YhBQcv4Dzh96aKNfNJau6GtGpbCRs2vcZ3QNgfoak
         Uqv7tW05NMOoDfDKFkQNs+KOCNl1HdssIQ9K6k70KIcHho0nH6+WqfSUGyHYdtZGWRVQ
         fNX755lUVs3MLfEVnA6G/7WE21rqXABlu5DP+je9pdRBXuma0CIV1/HXsxMxnRe4hxw6
         CLFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=p09vjTM88gJEpe+RFeDanDG0F3s0eSagXk6IVVR5d+Q=;
        b=Z/ohZiFRmgK+mDof7ow7p5Hq3262GmlY6gJ7iYJ1hjgwoku3qDMU43NfrKNUrvmz1n
         4pd85SOBGG1Huowjx/mj0XRtbhEMYAK+qPfOnaLvaX0z4xqpuwD6O15+sCJm1YwuVUJp
         q/soAubnXQ07fSgGGy19abDwp/BHZSpKQ+PiaHyaq+3KAY4wlQ5mL4L8L1IduxRMtIrC
         3d1BZHsglI+Ixjk7urwF0rHE9QkTdhe7WAZg/+Inne1yUEbZ6D6hNYUQkOGGZ+AYWh1z
         Zk1hK/CltSkuV36Z0LuQWrS9ONZJeC7ozV/eN0JC6UePoic8n37xBFjlKZw20WXOWckq
         en7Q==
X-Gm-Message-State: AOAM53050w9MDJn+09tFmjqL8utTJomi4PoMdiLd/pNNmk2FFlgXt8f5
        vVn8+AVC5HG7WcKI0PXiIH4mGQ==
X-Google-Smtp-Source: ABdhPJxx2qqzNoIfVTNAmwZ1XINIWzZC1gYKAr4taH6uPlmjrldY/hW+qryscbswJfH9nYxE7MOntg==
X-Received: by 2002:a17:907:3c81:b0:6e6:cf3e:6e14 with SMTP id gl1-20020a1709073c8100b006e6cf3e6e14mr23605572ejc.181.1652260973014;
        Wed, 11 May 2022 02:22:53 -0700 (PDT)
Received: from [192.168.0.152] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id cb13-20020a0564020b6d00b0042617ba639asm906797edb.36.2022.05.11.02.22.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 May 2022 02:22:52 -0700 (PDT)
Message-ID: <51742635-23df-a534-eff4-81f021eeb474@linaro.org>
Date:   Wed, 11 May 2022 11:22:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v4 1/3] dt-bindings: Add Sercomm (Suzhou) Corporation
 vendor prefix
Content-Language: en-US
To:     Mikhail Zhilkin <csharper2005@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Karim <Karimdplay@gmail.com>, M <x1@disroot.org>
References: <20220510161641.20655-1-csharper2005@gmail.com>
 <20220510162314.20810-1-csharper2005@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220510162314.20810-1-csharper2005@gmail.com>
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

On 10/05/2022 18:23, Mikhail Zhilkin wrote:
> Add "sercomm" vendor prefix for "Sercomm (Suzhou) Corporation".
> 
> Company website:
> Link: https://www.sercomm.com/
> 
> Signed-off-by: Mikhail Zhilkin <csharper2005@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
