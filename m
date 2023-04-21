Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33A3D6EA4B6
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 09:29:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230488AbjDUH3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 03:29:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbjDUH3w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:29:52 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E34E83FB
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:29:48 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-50506ac462bso1900598a12.3
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682062187; x=1684654187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N+iZ1aFyoi01Oag2G0IVEtycCaHj8d8JsSoYMnnAS8s=;
        b=Ux5ynbWj9qHDQvjPzho8jJ1gQ2rb4QipL0X/UAtCqkvo7IZDtVmz74f5nFVkxoK2oW
         e/Hwaxw55z4H8cQ8dTXOQO9SnOUisy/XUhbW/V15gBm7GX8+N8NXFi8WeSOUU2ztdice
         sS1JHQqVHyrPHzOG8qMKQWd4aaXR9mPKYJt38A7HKrctdthX39VX4bBI0e76rCrTClfO
         JkV4BDMB4G0puP7iVT+bFLwgyv07uv+9ie32NqUZzjgSs+T/iTK94VXRicodc5eYYFZc
         9pXeF0kAJDN7/JWfZ1nWQOjFTHbk3L4gQMRJ93LeMNipt/wqgIbPWCU+NUr1nRr8eR3J
         zIIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682062187; x=1684654187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N+iZ1aFyoi01Oag2G0IVEtycCaHj8d8JsSoYMnnAS8s=;
        b=OgAfl6drqto9r+4Dq/FYY/KBRyywt6nK0PBFASsqjUbCwnOgGebPyv/v4XEasWNrge
         VEqJaS6+2b3/kEjXmyTuenRstjSmzJJHv8v4qR/pfMItq1bDsvvbeBqhj50K5vOsOs+0
         YVg3zUgniPRCSVPNgbJqTt2U4OPuK4kGL5TvlInSRvWkvN0hM8nv0CMjshX8uNtz7zDV
         uEcV8EqIEtthjP/fSFCdITUYVJI9qaqwDZDRKTs2kgMvwZXWqQl/C/pTFiR4ZbSJyQtP
         HDsY8i8tWHeVuhmfsHrBYSAtR39gskW0DOnOOb0ArSNf+2HIbZouZG5z1vFonS5xEM4x
         Bvtg==
X-Gm-Message-State: AAQBX9c9Er7N97MV2jxHJ+pQ+1vS5H8e652B7p5gyRmmydKS/EAEHjau
        sinYQ+TtuP0nHfuHVOyrihY7dQ==
X-Google-Smtp-Source: AKy350azq/JG2p2vKeECMHZp/w2A8ZvW4QmweQeB9Z6MJLwx4q7Ifbu/S8dQKqzIgf2nQaaeS+sviA==
X-Received: by 2002:a17:906:35c6:b0:94a:9c9e:6885 with SMTP id p6-20020a17090635c600b0094a9c9e6885mr1316489ejb.58.1682062186815;
        Fri, 21 Apr 2023 00:29:46 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id s22-20020a170906169600b0094f3132cb86sm1712708ejd.40.2023.04.21.00.29.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:29:46 -0700 (PDT)
Message-ID: <e2069707-3f09-f1e7-6973-a2e115af7536@linaro.org>
Date:   Fri, 21 Apr 2023 09:29:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH net-next 1/6] dt-bindings: net: Brcm ASP 2.0 Ethernet
 controller
Content-Language: en-US
To:     Justin Chen <justinpopo6@gmail.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linaro-mm-sig@lists.linaro.org,
        bcm-kernel-feedback-list@broadcom.com
Cc:     justin.chen@broadcom.com, f.fainelli@gmail.com,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com,
        andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
        richardcochran@gmail.com, sumit.semwal@linaro.org,
        christian.koenig@amd.com
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
 <1681863018-28006-2-git-send-email-justinpopo6@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1681863018-28006-2-git-send-email-justinpopo6@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2023 02:10, Justin Chen wrote:
> From: Florian Fainelli <f.fainelli@gmail.com>
> 
> Add a binding document for the Broadcom ASP 2.0 Ethernet
> controller.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Justin Chen <justinpopo6@gmail.com>
> ---
>  .../devicetree/bindings/net/brcm,asp-v2.0.yaml     | 146 +++++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
> new file mode 100644
> index 000000000000..3817d722244f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/brcm,asp-v2.0.yaml
> @@ -0,0 +1,146 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/net/brcm,asp-v2.0.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

Drop quotes.

> +
> +title: Broadcom ASP 2.0 Ethernet controller
> +
> +maintainers:
> +  - Justin Chen <justinpopo6@gmail.com>
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +
> +description: Broadcom Ethernet controller first introduced with 72165
> +
> +properties:
> +  '#address-cells':
> +    const: 1
> +  '#size-cells':
> +    const: 1
> +
> +  compatible:
> +    enum:
> +      - brcm,bcm72165-asp-v2.0
> +      - brcm,asp-v2.0
> +      - brcm,asp-v2.1

Is this part of SoC? If so, then SoC compatibles are preferred, not IP
block versions.

> +
> +  reg:
> +    maxItems: 1
> +    description: ASP registers

Drop description.

> +
> +  ranges: true
> +
> +  interrupts:
> +    minItems: 1
> +    items:
> +      - description: RX/TX interrupt
> +      - description: Port 0 Wake-on-LAN
> +      - description: Port 1 Wake-on-LAN
> +
> +  clocks:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array

Drop.

> +    description: Phandle to clock controller

Drop.

Instead maxItems.

> +
> +  clock-names:
> +    const: sw_asp

Drop entire property.

> +
> +  ethernet-ports:
> +    type: object
> +    properties:
> +      '#address-cells':
> +        const: 1
> +      '#size-cells':
> +        const: 0

Missing additionalProperties:false. Look at existing bindings how it is
done.

> +
> +    patternProperties:
> +      "^port@[0-9]+$":
> +        type: object
> +
> +        $ref: ethernet-controller.yaml#
> +
> +        properties:
> +          reg:
> +            maxItems: 1
> +            description: Port number
> +
> +          channel:
> +            maxItems: 1
> +            description: ASP channel number
> +
> +        required:
> +          - reg
> +          - channel
> +
> +patternProperties:
> +  "^mdio@[0-9a-f]+$":
> +    type: object
> +    $ref: "brcm,unimac-mdio.yaml"
> +
> +    description:
> +      ASP internal UniMAC MDIO bus
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - ranges
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    asp@9c00000 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +        compatible = "brcm,asp-v2.0";
> +        reg = <0x9c00000 0x1fff14>;
> +        interrupts = <0x0 0x33 0x4>;

Use proper defines for flags.

> +        ranges;
> +        clocks = <&scmi 14>;
> +        clock-names = "sw_asp";
> +        #address-cells = <1>;
> +        #size-cells = <1>;


Best regards,
Krzysztof

