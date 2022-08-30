Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A3645A6958
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 19:14:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbiH3ROI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 13:14:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230141AbiH3ROH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 13:14:07 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73BD5BB915
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:14:01 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id y10so8932436ljq.0
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=NMG+tb0NL7DJnjXoTL3QKt3TNW9BfJSancliFW+t1M8=;
        b=PKKkWR9H8flZ65Bv82OpLQ46D9KJJOmFqzyfyTqkffcjzwnvXPmTlprf/zMT9RmdVD
         Szs8FaPKHmUfjJmIWLh/HJLSE/JzrMYK+VN6A8S6wbrXQp8/UNT4NICq0wZVdOOYijbi
         +UsTpJaIMeu8kCAmKhlllbwFtd3LOBETb0+1Z0p2xwS7BjeadSJ3dDY/aZbzAC5ZYVci
         zetEzgXXQj7eHHN6TUwmUM+OzIuht5ZJI8Zk82s4syQiYya20HHNJoGorSuQWxgyFaHN
         477oJ/qZTOw1vEzbpoDLdwhePvdvIdo4wFHwK3x9XXD1DnwI7iYX+HoerT8X+oPmJYKq
         o1WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=NMG+tb0NL7DJnjXoTL3QKt3TNW9BfJSancliFW+t1M8=;
        b=LSCAUyLr8LzWuyLkxNjXZLArAQAwhcVKpmG74Hy8UEyC4COq+6k8fohkJH9KXMo9Qc
         N4Maaw3udZPxDXkDSHwKnFmUdYBA0cZL4Q0LoQ7t6YwUt9FQYiPdyzeX2U+61h/i6fYH
         elYERRv4bjf+KdsrjfCuZ+Ay20WbmrFKvBCCwj6nFSYrrxzwo5TRLPbsfSx0mMzsQyoB
         +4pPqAe8SZMqNGg0NyVSVro+7TotNGjG/SOZ9YcKZMiNM6fbDKw5GMpGWcoxo0SjYlRp
         4LKIQI5Uy49mN89RXNuegv80JGN/VArGZR7ZK5n3mNnsWh0kR7Lb+sgS0OqHERfymqT0
         LyaQ==
X-Gm-Message-State: ACgBeo0H5apLUh37gATbzDON6QCz9XXOc9lJqGHX4BxBZ/9TbOXKjxii
        lHdHSLLK4o6wFpHnlNXPhTEdPg==
X-Google-Smtp-Source: AA6agR7A+MFeY/CZNzmtpzJy5NKpu1On/5rvG7XYhypEcrqWVjP8ym6R5SWnTn8JH2QjrQPYY/mUYw==
X-Received: by 2002:a05:651c:1507:b0:261:d72d:9959 with SMTP id e7-20020a05651c150700b00261d72d9959mr7980548ljf.77.1661879639497;
        Tue, 30 Aug 2022 10:13:59 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id v2-20020a05651203a200b004931000140asm134672lfp.112.2022.08.30.10.13.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 10:13:58 -0700 (PDT)
Message-ID: <4a37d318-8c83-148b-89b3-9729bc7c9761@linaro.org>
Date:   Tue, 30 Aug 2022 20:13:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH net-next v2 1/5] dt-bindings: net: Convert Altera TSE
 bindings to yaml
Content-Language: en-US
To:     Maxime Chevallier <maxime.chevallier@bootlin.com>,
        davem@davemloft.net, Rob Herring <robh+dt@kernel.org>
Cc:     netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        thomas.petazzoni@bootlin.com, Andrew Lunn <andrew@lunn.ch>,
        Jakub Kicinski <kuba@kernel.org>,
        Eric Dumazet <edumazet@google.com>,
        Paolo Abeni <pabeni@redhat.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20220830095549.120625-1-maxime.chevallier@bootlin.com>
 <20220830095549.120625-2-maxime.chevallier@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830095549.120625-2-maxime.chevallier@bootlin.com>
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

On 30/08/2022 12:55, Maxime Chevallier wrote:
> This converts the bindings for the Altera Triple-Speed Ethernet to yaml.

Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Rebase your changes on some decent kernel and use get_maintainers.pl...

> ---
> V1->V2:
>  - Removed unnedded maxItems
>  - Added missing minItems
>  - Fixed typos in some properties names
>  - Fixed the mdio subnode definition
> 
>  .../devicetree/bindings/net/altera_tse.txt    | 113 -------------
>  .../devicetree/bindings/net/altr,tse.yaml     | 156 ++++++++++++++++++
>  2 files changed, 156 insertions(+), 113 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/altera_tse.txt
>  create mode 100644 Documentation/devicetree/bindings/net/altr,tse.yaml
> 

(...)

> diff --git a/Documentation/devicetree/bindings/net/altr,tse.yaml b/Documentation/devicetree/bindings/net/altr,tse.yaml
> new file mode 100644
> index 000000000000..1676e13b8c64
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/altr,tse.yaml
> @@ -0,0 +1,156 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/altr,tse.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Altera Triple Speed Ethernet MAC driver (TSE)
> +
> +maintainers:
> +  - Maxime Chevallier <maxime.chevallier@bootlin.com>
> +
> +allOf:

Put allOf below "required".

> +  - $ref: "ethernet-controller.yaml#"
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - altr,tse-1.0
> +              - ALTR,tse-1.0
> +    then:
> +      properties:
> +        reg:
> +          minItems: 4
> +        reg-names:
> +          items:
> +            - const: control_port
> +            - const: rx_csr
> +            - const: tx_csr
> +            - const: s1
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - altr,tse-msgdma-1.0
> +    then:
> +      properties:
> +        reg:
> +          minItems: 6
> +        reg-names:
> +          minItems: 6

No need for minItems.

> +          items:
> +            - const: control_port
> +            - const: rx_csr
> +            - const: rx_desc
> +            - const: rx_resp
> +            - const: tx_csr
> +            - const: tx_desc
> +
> +properties:
> +  compatible:
> +    enum:
> +      - altr,tse-1.0
> +      - ALTR,tse-1.0

This is deprecated compatible. You need oneOf and then deprecated: true.

> +      - altr,tse-msgdma-1.0
> +
> +  reg:
> +    minItems: 4
> +    maxItems: 6
> +
> +  reg-names:
> +    minItems: 4
> +    items:
> +      - const: control_port
> +      - const: rx_csr
> +      - const: rx_desc
> +      - const: rx_resp
> +      - const: tx_csr
> +      - const: tx_desc
> +      - const: s1

This is messed up. You allow only 6 items maximum, but list 7. It
contradicts your other variants in allOf:if:then.


Best regards,
Krzysztof
