Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7026151CA95
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 22:29:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1384972AbiEEUdQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 16:33:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236524AbiEEUdN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 16:33:13 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10FE35E777
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 13:29:32 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id c190-20020a1c35c7000000b0038e37907b5bso5772146wma.0
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 13:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Nhiu0fngZGCp2SeeUlWWgcjMH+09fel050MQuuk+CH0=;
        b=c1oSeU4BaXTY3ReYOr/uFAyO9izBH2dG1Qlnf+8Hr8Uw3vUsoKOHenuz7wpGz1G3lv
         ym40wpjP1R1uTQtgYd8gikEnTIRqUlXoWrvkAnzPHg8AGFpeocUHG2kgkwMQX9NL3etq
         +mxfkjnSDJDdW3HnR8hp/i6C1WPmJXk+LFZvFqsi3IRZIzWwmnN90bnnpRzXLIKPG6Zc
         eHtIJrBosNasWd3p+NDNF3vx4pBQ+ez3FTfArfU5wI/onzupOfKc35+xFiIfqWc6qqRh
         q7Ut2jUxdfhmab/DvgF8OIAbxIYnzwpEPb49AiYU/N0TsdomVI/zvfwD+IaQxuFI+dnI
         g5xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Nhiu0fngZGCp2SeeUlWWgcjMH+09fel050MQuuk+CH0=;
        b=SvHd2IfwXGjry75A1fPOZ1t9Doq7DNYUBKICRqPTfIImVE05ZLd4G93h9jTk+Q0KQg
         uFZW6UCFFc97XmQYp2PAuI6YAL8sirWiaHvDVBR0UvxatV28Ck5n3O/PJFZue5GvQuNR
         26HuJu60yVO5jpiNQ5zmijJdS+5F7czf86ORzsLWB3Eajcmpqyq6vnB3pkPkpBc2kfBy
         DtoyjLVZbMYyHcTYHiI8oECMbSAVVP3rV53b3qSiDvySGdkpmUbpXXAQtRBsn3CLW1sg
         r4gDy+CBeXPPgqtBSzXqU7Bs/iSSo7q5HQnfzmvhpw0OVz1NcGtSzajK1Q7PZX+Yw4f+
         NEgw==
X-Gm-Message-State: AOAM531enQdeigsvIqPsfwBzpbvVipEYxsnFzgt85I+pqme4Kq9Jr8fT
        wVicX5KF7n52UG4SIslef0X/Vw==
X-Google-Smtp-Source: ABdhPJyTndqxOkEr/uFOGU4QF0R1aF80DfUbLWNbePR/UUOLh1w33usRsZPRT7oIn/7Jas5VFkmrmQ==
X-Received: by 2002:a7b:cd15:0:b0:394:497d:ad1c with SMTP id f21-20020a7bcd15000000b00394497dad1cmr35505wmj.182.1651782570542;
        Thu, 05 May 2022 13:29:30 -0700 (PDT)
Received: from [192.168.0.222] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id n13-20020a056000170d00b0020c5253d911sm2035574wrc.93.2022.05.05.13.29.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 13:29:30 -0700 (PDT)
Message-ID: <6d45f060-85e6-f3ff-ef00-6c68a2ada7a1@linaro.org>
Date:   Thu, 5 May 2022 22:29:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [RFC v2] dt-bindings: net: dsa: convert binding for mediatek
 switches
Content-Language: en-US
To:     Frank Wunderlich <linux@fw-web.de>,
        linux-mediatek@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Landen Chao <Landen.Chao@mediatek.com>,
        DENG Qingfang <dqfext@gmail.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Greg Ungerer <gerg@kernel.org>,
        =?UTF-8?Q?Ren=c3=a9_van_Dorst?= <opensource@vdorst.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
References: <20220505150008.126627-1-linux@fw-web.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220505150008.126627-1-linux@fw-web.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2022 17:00, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Convert txt binding to yaml binding for Mediatek switches.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

Thank you for your patch. There is something to discuss/improve.

> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  core-supply:
> +    description: |

Drop | everywhere where it is not needed (so in all places, AFAICT)

> +      Phandle to the regulator node necessary for the core power.
> +
> +  "#gpio-cells":
> +    description: |
> +      Must be 2 if gpio-controller is defined.

Skip description, it's obvious from the GPIO controller schema.

> +    const: 2
> +
> +  gpio-controller:
> +    type: boolean
> +    description: |
> +      if defined, MT7530's LED controller will run on GPIO mode.
> +
> +  "#interrupt-cells":
> +    const: 1
> +
> +  interrupt-controller:
> +    type: boolean
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  io-supply:
> +    description: |
> +      Phandle to the regulator node necessary for the I/O power.
> +      See Documentation/devicetree/bindings/regulator/mt6323-regulator.txt
> +      for details for the regulator setup on these boards.
> +
> +  mediatek,mcm:
> +    type: boolean
> +    description: |
> +      if defined, indicates that either MT7530 is the part on multi-chip
> +      module belong to MT7623A has or the remotely standalone chip as the
> +      function MT7623N reference board provided for.
> +
> +  reset-gpios:
> +    description: |
> +      Should be a gpio specifier for a reset line.

Skip description.

> +    maxItems: 1
> +
> +  reset-names:
> +    description: |
> +      Should be set to "mcm".

Skip description.

> +    const: mcm
> +
> +  resets:
> +    description: |
> +      Phandle pointing to the system reset controller with line index for
> +      the ethsys.
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +allOf:
> +  - $ref: "dsa.yaml#"
> +  - if:
> +      required:
> +        - mediatek,mcm
> +    then:
> +      required:
> +        - resets
> +        - reset-names
> +    else:
> +      required:
> +        - reset-gpios
> +
> +  - if:
> +      required:
> +        - interrupt-controller
> +    then:
> +      required:
> +        - interrupts
> +
> +  - if:
> +      properties:
> +        compatible:
> +          items:
> +            - const: mediatek,mt7530
> +    then:
> +      required:
> +        - core-supply
> +        - io-supply
> +
> +
> +patternProperties:

patternProperties go before allOf, just after regular properties.

> +  "^(ethernet-)?ports$":
> +    type: object

Also on this level:
    unevaluatedProperties: false

> +
> +    patternProperties:
> +      "^(ethernet-)?port@[0-9]+$":
> +        type: object
> +        description: Ethernet switch ports
> +
> +        properties:
> +          reg:
> +            description: |
> +              Port address described must be 6 for CPU port and from 0 to 5 for user ports.

This looks like not wrapped @80 character.

> +
> +        unevaluatedProperties: false
> +
> +        allOf:
> +          - $ref: dsa-port.yaml#
> +          - if:
> +              properties:
> +                label:
> +                  items:
> +                    - const: cpu
> +            then:
> +              required:
> +                - reg
> +                - phy-mode
> +
> +unevaluatedProperties: false




Best regards,
Krzysztof
