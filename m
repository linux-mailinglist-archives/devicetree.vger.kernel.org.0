Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E6FD7850BE
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 08:43:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232977AbjHWGnI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 02:43:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232936AbjHWGnI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 02:43:08 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00EA6E51
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 23:43:03 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5236b2b4cdbso6741824a12.3
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 23:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692772982; x=1693377782;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Yjfdfn7zDJ3oY0yqLMbQnYLs8oP53jkHaZtBrJK4aZY=;
        b=clCAQ43e2P1ecZ/RHHwnOjy23p2CWLCMPRZuubOPgwmfugY+Qmp5MKuwSoMbTz8xeg
         R/tYKnKSkT1NNACwkOA8cWkpFr2HO6OipzVezx4x3EeKiMH8rOuK0gVB8ZVSbR4bAGBM
         IWr35nhxyLLDxQr8njIZDpxPWgOTkFXLzmYeEAqoykZ76QgVCF5uU1wPS9nzTZwr3ftu
         pcYfSVUeRMIFfR/+1AKYG/Sq1OC/0WxCg8zjeXw3cxYKf09e/8a4SzPLE2dK/fNkeZEh
         QMYtD49xfo3ohWOgndKx2b8aPc/ChtmeFf7vWsJBLat3kaKcy0n/KYZsVIZpugzbhW0y
         aEBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692772982; x=1693377782;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Yjfdfn7zDJ3oY0yqLMbQnYLs8oP53jkHaZtBrJK4aZY=;
        b=iRZY7Q0XhefQVLDGS/kg4IYTyUClRQjhMEmP5n2Q87txTHcVWBO++x/AopCqu4nVOe
         g+446m6ri8ZGwzXtJgrvWGWESz/HmL06uvKiP0AUOX7Pjsi/UAt50porRT34vPx/A9UO
         JHiE2SMK4NwFJH5ITM2VGncwgnhlwwNxQb+Gkw7deCslnct8gzQLpyiS6ZQqTTr23aev
         QecfBN97Shyt2dAc9d1w43Y9ofB/revdfTqFSuq+CFPD9ur/p5xV86q8m7S2F3M/fj/9
         Wp5z/ZQ4gfYYnmPswOuovIi2pN0hiUMb7Ooer1WgwkYTTuwOn9oTwsaRfiQyRTwYn+g6
         du3Q==
X-Gm-Message-State: AOJu0YwUv/GZm7apOI53SRVxhb8W2W6JHz84qyxUIFz/KCMHvX8o8PnS
        83YTPeoZFR2V7PduDrLyKN7kmQ==
X-Google-Smtp-Source: AGHT+IENUkqAb+iFYYvNG2ra9eusUsjreUWka/VKl+pIiILy/fuSTu/KFS+CCx0yjOSRt0Zs+4d98w==
X-Received: by 2002:a05:6402:2025:b0:521:ae63:ee63 with SMTP id ay5-20020a056402202500b00521ae63ee63mr9587307edb.16.1692772982441;
        Tue, 22 Aug 2023 23:43:02 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id bo20-20020a0564020b3400b0052569cb790bsm8874713edb.89.2023.08.22.23.43.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 23:43:01 -0700 (PDT)
Message-ID: <88ebbb45-7407-f30a-94ca-f4947e887d01@linaro.org>
Date:   Wed, 23 Aug 2023 08:43:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2] dt-bindings: phy: st: convert phy-stih407-usb to DT
 schema
Content-Language: en-US
To:     Raphael Gallais-Pou <rgallaispou@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Patrice Chotard <patrice.chotard@foss.st.com>
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230822204321.54716-1-rgallaispou@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230822204321.54716-1-rgallaispou@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2023 22:43, Raphael Gallais-Pou wrote:
> Convert the st,stih407-usb2-phy binding to DT schema format.
> 
> Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>
> ---

Thank you for your patch. There is something to discuss/improve. Minor
change needed at the end. While at it, few more nits (which I would skip
if not that change).

> Changes in v2:
>   * Removed quotes surrounding $ref
>   * Removed quotes surrounding const properties
>   * Changed 'st,syscfg' $ref value to phandle-array
>   * Changed authorship to my oss email addressThank you for your patch. There is something to discuss/improve.

Nit: Drop "driver" and any other driver references. Instead, focus on
device.


> +  (when controlling usb2/1.1 devices) available on STiH407 SoC family from
> +  STMicroelectronics.
> +
> +properties:
> +  compatible:
> +    const: st,stih407-usb2-phy
> +
> +  st,syscfg:
> +    description: Phandle to the syscfg bank
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to syscfg
> +          - description: phyparam register offset
> +          - description: phyctrl register offset
> +
> +  resets:
> +    items:
> +      - description: Phandle and reset specifier pair for the whole phy.
> +      - description: Phandle and reset specifier pair for the port.
> +
> +  reset-names:
> +    description: List of reset signal names.

Nit: drop description, it is obvious.

> +    items:
> +      - const: global
> +      - const: port
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - st,syscfg
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/reset/stih407-resets.h>
> +    usb2_picophy0: usbpicophy {

Drop unused label, and make node name as: usb-phy or phy

https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


Best regards,
Krzysztof

