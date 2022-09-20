Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 050AC5BE44F
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 13:21:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229727AbiITLVc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 07:21:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229590AbiITLVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 07:21:31 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B738E5EDC8
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 04:21:29 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id b24so2573139ljk.6
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 04:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=h0VIMBFQoGRoKWJ6PWntUd1+ZCIkDbf89Bc+ni5OqVQ=;
        b=zF1mKouO/y2VQk7yt32W7IKd+diC4VOHrkHUCuKW31hivrsmN1DWJtIrQtHGNdF0xQ
         xYsuS5CNi6uXVs/qsyvUlN2sokU6cDYlRGDQUvEArs97D4CbBVwr/wUYY5yqWu9oaC/y
         eVrQwzIBGisP3TYw55O4mePSO7CgMIt9dWo0GAhZ/kjOU1jSghyyX2MEsCnfq1ao1+Jh
         /uarrZVlIz2Ha8AX/RzcYMlggmbPJx4f2efGmJ1CGgN3bupP7Nr8SOUbMUS7Ve6c2HJ9
         BFpXFHeq+0y1LXPaMAykzhE+tZsUX8vrYwdZexD/LNopqvH9qdzW9cnbN1LpMCzEjRzt
         cCdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=h0VIMBFQoGRoKWJ6PWntUd1+ZCIkDbf89Bc+ni5OqVQ=;
        b=ri9tPi62HpQzJysHL3PmeBT4qjex71dFH6LlGv56x00baL3LrhIsbY5ZMlQ5s0muKx
         yqtW3wykV6SQAWDeEXNfmZpyIunFqdHpvUSfifWI4jd00vkdK40FmfhgSmhdgMUx1GHE
         pp4/QdpBn1mIPs4B2n+pkDhhXMR/KdWUm0Y6sh4RBE1PEwiRv2r0cPolxmYjabW/SubR
         WCzx2N1EggzGxXayx7rVqga7gtrIcVQ+mPRjurdTOb4ogXyf3qO+nL+ZyANynZgyCz1f
         irPGZRqvEVJhSFCePuyf5nFMqzLw/FoZRWa3Qz4wmRVvFi7Q66FE2/szk2ZhRG3prF++
         lV3w==
X-Gm-Message-State: ACrzQf0hSa1gM26f9HI3k8zNqyjzPAhtjON/5zxlBgiT66BsZI5OE2KC
        UUdZbJYcdEstDHa/6ojGoMfURA==
X-Google-Smtp-Source: AMsMyM6BHc4RC3MDeHpHqVD5bxnmkicmFCT8iWMLZzYHWLgcSNa733vHWJu9KLwyHeb0jy1KQaRIYg==
X-Received: by 2002:a05:651c:4ca:b0:26c:50e6:a9d3 with SMTP id e10-20020a05651c04ca00b0026c50e6a9d3mr3030605lji.318.1663672888083;
        Tue, 20 Sep 2022 04:21:28 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b14-20020a05651c032e00b00261e2aab7c2sm220678ljp.58.2022.09.20.04.21.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 04:21:27 -0700 (PDT)
Message-ID: <d17d2eb3-2030-935d-728b-60d9e1c66cea@linaro.org>
Date:   Tue, 20 Sep 2022 13:21:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 3/3] dt-bindings: memory-controllers: gpmc-child: add
 wait-pin polarity
Content-Language: en-US
To:     "B. Niedermayr" <benedikt.niedermayr@siemens.com>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org
Cc:     rogerq@kernel.org, tony@atomide.com, robh+dt@kernel.org
References: <20220916120749.2517727-1-benedikt.niedermayr@siemens.com>
 <20220916120749.2517727-4-benedikt.niedermayr@siemens.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220916120749.2517727-4-benedikt.niedermayr@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/09/2022 14:07, B. Niedermayr wrote:
> From: Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
> 
> The GPMC controller has the ability to configure the polarity for the
> wait pin. The current properties do not allow this configuration.
> This binding directly configures the WAITPIN<X>POLARITY bit
> in the GPMC_CONFIG register by setting the gpmc,wait-pin-polarity
> dt-property.
> 
> Signed-off-by: Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
> ---
>  .../bindings/memory-controllers/ti,gpmc-child.yaml         | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/ti,gpmc-child.yaml b/Documentation/devicetree/bindings/memory-controllers/ti,gpmc-child.yaml
> index 6e3995bb1630..8e541acdb1ff 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/ti,gpmc-child.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/ti,gpmc-child.yaml
> @@ -230,6 +230,13 @@ properties:
>        Wait-pin used by client. Must be less than "gpmc,num-waitpins".
>      $ref: /schemas/types.yaml#/definitions/uint32
>  
> +  gpmc,wait-pin-polarity:
> +    description: |
> +      Set the desired polarity for the selected wait pin.
> +      0 for active low, 1 for active high.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1]

I propose to keep the same value as GPIO flags. Not that it matters, but
maybe one day you will unify it.

Best regards,
Krzysztof
