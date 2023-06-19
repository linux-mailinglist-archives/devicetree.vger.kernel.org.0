Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91DA4734BE6
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 08:54:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229849AbjFSGyT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 02:54:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229673AbjFSGyS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 02:54:18 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21563C6
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 23:54:17 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-51a20138617so4542064a12.2
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 23:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687157655; x=1689749655;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RFA1s9sPOFLDHeM8JVLNOmdOT3KqlEJ+F62ywYBEaQ0=;
        b=qX+5sH+TD7rVDXh9VU49bJ+fOR/OAYB60qZOHcjwrEvoakbWgtbKU5zb4Yq5x42kZb
         lewccwmCTPQkmzp3Hxo6G9Py+Ofy0Kpo8gGkagg/SMlIAuxkNgLbopKVeTxZDgK30yJM
         zVIBEBnlJjAWHT/pMCmsJU2tML1JlOcKBpc/c5KoGJug+QZrgRGCWtf9KdqR++lRy01S
         CT6fKlswtrQzFqgAp3CxyWdRDCapoQX9tR+HmFBHcTkmVLJI7H1eOI0fMOr9WUlLu8bj
         UDDGWqnZUWn8P6ZDM8yDCMag8AAUZXtKogXW1TTdgrjyk7NBE+R/dUFKTbHYYtXzwRI3
         qHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687157655; x=1689749655;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RFA1s9sPOFLDHeM8JVLNOmdOT3KqlEJ+F62ywYBEaQ0=;
        b=YwPwlZ5yRnbhOI29xiTIj9+DgFilJVTj8sIUjLzaYzlMJaayT+17yxLnM8Mv38MaDK
         qWdRi9drW78su6jr+3M8aOohZtY5pzU+N1b8d35gV3kpcv1eozxaaHXlG4OKeJSCLwRF
         plrlauhbkpN06hu7q3BRxGHF6iqdWCibyJVKb2SWw7BN0Q2hhPG7A1e02ra++oThxefO
         fv6PtR94XfhKKOrVk+Eqe7ZiwzA7RRR932q2JKUCcKhZx+1/kUt6xjFT4tSSH8QHwZKr
         VjExJ03INsiB8onRzd1DFoKYnEIRVTBAe5Rdc+ZP1gdkWQdO6tBuZo9ls3HnVK5ZXqSl
         bw9A==
X-Gm-Message-State: AC+VfDy1kCHLY7LmrhPItK8nn4+sd0kZiI8OKYOCHFyrP99jqgyBfEqV
        wsm4GcwLt+dUzo1pSIpZb7oDBg==
X-Google-Smtp-Source: ACHHUZ5n2hJSkj0ukICFCKD6/N41Jxo7jlDoQvCWYtTHsTcv+0CGrU9F2qFqs/Zmh+golRi+maGZwg==
X-Received: by 2002:a50:ec8f:0:b0:514:a0a7:7e7f with SMTP id e15-20020a50ec8f000000b00514a0a77e7fmr6287357edr.2.1687157655554;
        Sun, 18 Jun 2023 23:54:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u3-20020aa7d543000000b00514bddcb87csm12966752edr.31.2023.06.18.23.54.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jun 2023 23:54:15 -0700 (PDT)
Message-ID: <3f4f4beb-4136-312a-be0b-5ec018b4329d@linaro.org>
Date:   Mon, 19 Jun 2023 08:54:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 05/17] dt-bindings: mtd: qcom: Fix a property position
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Manivannan Sadhasivam <mani@kernel.org>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
 <20230606175246.190465-6-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230606175246.190465-6-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2023 19:52, Miquel Raynal wrote:
> qcom,boot-partitions is a NAND chip property, not a NAND controller
> property. Move the description of the property into the NAND chip
> section and just enable the property in the if/else block.
> 
> Fixes: 5278cc93a97f ("dt-bindings: mtd: qcom_nandc: document qcom,boot-partitions binding")
> Cc: Manivannan Sadhasivam <mani@kernel.org>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/mtd/qcom,nandc.yaml   | 41 +++++++++++--------
>  1 file changed, 25 insertions(+), 16 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> index 07024ee45951..7217d8a64d14 100644
> --- a/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> +++ b/Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
> @@ -45,6 +45,22 @@ patternProperties:
>          enum:
>            - 512
>  
> +      qcom,boot-partitions:
> +        $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +        items:
> +          items:
> +            - description: offset
> +            - description: size
> +        description:
> +          Boot partition use a different layout where the 4 bytes of spare
> +          data are not protected by ECC. Use this to declare these special
> +          partitions by defining first the offset and then the size.
> +
> +          It's in the form of <offset1 size1 offset2 size2 offset3 ...>
> +          and should be declared in ascending order.
> +
> +          Refer to the ipq8064 example on how to use this special binding.
> +
>  allOf:
>    - $ref: "nand-controller.yaml#"

Also based on some old tree.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

