Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 181FF53FE92
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 14:19:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243638AbiFGMTr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 08:19:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243672AbiFGMRr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 08:17:47 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B45EAF8E5C
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 05:16:18 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id v1so24112066ejg.13
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 05:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=06i39agsU8HuZjR8TtH1PW9licnqFJhwqBG7mgYQgaU=;
        b=vUX+/ZCQT/Vp1n72imHbSlot9vnnbBJMMjxqrMcq7njwpDdCXU+5WZ65+pOolivfo8
         STLqF/r0aUY6MD+PKoHssQ85CvsUzNPExIMs2To0iXcko+j7/5DkfNQ/q7g0qSNcr2E0
         Ap9Pw78QUjRoWgPpSy13R3htRu7KF+kHc0II9266WmTEz3459csi10bOhbliz/G2M0P2
         DZ+oXbLl+6iVS4afBNtpJRUDb4GuJ1lR5z09PsfmWt39LdbJnKR5YDSdqXiuIJzsar4R
         GmalyqjG2yp/Y4wMKYM5Nf0baaxZKunN1D6rtg7iFCYzyINze0XMnJYLzmGttAkDLh5w
         fvIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=06i39agsU8HuZjR8TtH1PW9licnqFJhwqBG7mgYQgaU=;
        b=a3tKz8HpRoGoYOkGA5rJ29EzRuz9wRKy9WNK5zqRnhlEEtdMdcKfIJ1349iQe4IWdl
         Re0sM09lv+4s2XeRRb0seta6OOQ9VzNqpf3Um6p0QSo9L7J+0FIDodiTG9w3k8igbc1l
         4Qtj7tcVM/tbTl/SkcpAjc4F3JO9MXEbEEYVQoUkJ9MogHeZR9SCZ5NKYWMLIZydNbw9
         YPkL5tY4Z8Jd0SYWAEsL158AUdhXwQzcLUu5zr4NhUxhd9bSF13zZGhQQIfvRc6bHI8u
         JKVUBxgSosYcA9TN36ec9xfIjgoEsCS2mtyZiDbT0V9HuAHlCCuGppLy2kLNmrKBThb4
         pVHg==
X-Gm-Message-State: AOAM530pjlB7kHYRKZIM06Tt1jk/hQPfj7BHJRm7rdXBQvPpt+2/l0pb
        y4qI/XOb3r390TFQ2PdEpkO9X+XUe7U0DA==
X-Google-Smtp-Source: ABdhPJw9Q1zxLxajWHbMHVWAMN//ho5UJetCvthsIdVimgSkH+1lCvTdz9db4IvCmnSQw9n73jXsdQ==
X-Received: by 2002:a17:907:9606:b0:70a:e140:6329 with SMTP id gb6-20020a170907960600b0070ae1406329mr24523296ejc.471.1654604174858;
        Tue, 07 Jun 2022 05:16:14 -0700 (PDT)
Received: from [192.168.0.183] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u4-20020a170906124400b007105a157706sm4626183eja.82.2022.06.07.05.16.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 05:16:14 -0700 (PDT)
Message-ID: <3849248a-fe0e-157a-21dc-62c1c91ae204@linaro.org>
Date:   Tue, 7 Jun 2022 14:16:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: i2c: Convert arm,i2c-versatile to DT schema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220606184339.1058557-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220606184339.1058557-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2022 20:43, Rob Herring wrote:
> Convert the arm,i2c-versatile binding to DT schema format.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/i2c/arm,i2c-versatile.yaml       | 29 +++++++++++++++++++
>  .../devicetree/bindings/i2c/i2c-versatile.txt | 10 -------
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 30 insertions(+), 11 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i2c/arm,i2c-versatile.yaml
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-versatile.txt
> 
> diff --git a/Documentation/devicetree/bindings/i2c/arm,i2c-versatile.yaml b/Documentation/devicetree/bindings/i2c/arm,i2c-versatile.yaml
> new file mode 100644
> index 000000000000..e58465d1b0c8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/arm,i2c-versatile.yaml
> @@ -0,0 +1,29 @@
> +# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/arm,i2c-versatile.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: I2C Controller on ARM Ltd development platforms
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: arm,versatile-i2c
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +...
> +
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-versatile.txt b/Documentation/devicetree/bindings/i2c/i2c-versatile.txt
> deleted file mode 100644
> index 361d31c51b6f..000000000000
> --- a/Documentation/devicetree/bindings/i2c/i2c-versatile.txt
> +++ /dev/null
> @@ -1,10 +0,0 @@
> -i2c Controller on ARM Versatile platform:
> -
> -Required properties:
> -- compatible : Must be "arm,versatile-i2c";
> -- reg
> -- #address-cells = <1>;
> -- #size-cells = <0>;
> -
> -Optional properties:
> -- Child nodes conforming to i2c bus binding
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a6d3bd9d2a8d..ecc0907e312a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1520,7 +1520,7 @@ F:	Documentation/devicetree/bindings/arm/arm,versatile.yaml
>  F:	Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml
>  F:	Documentation/devicetree/bindings/auxdisplay/arm,versatile-lcd.yaml
>  F:	Documentation/devicetree/bindings/clock/arm,syscon-icst.yaml
> -F:	Documentation/devicetree/bindings/i2c/i2c-versatile.txt
> +F:	Documentation/devicetree/bindings/i2c/arn,i2c-versatile.yaml

typo:
s/arn/arm/

With that:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
