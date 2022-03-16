Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CD074DB5C3
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 17:15:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350288AbiCPQQ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 12:16:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352225AbiCPQQ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 12:16:27 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E531B7CF
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 09:15:13 -0700 (PDT)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com [209.85.128.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 39F323F607
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 16:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647447311;
        bh=W8RGocwe3R4CTBhqTB8yPl1R4bT/6uO0hUbN5eAaNVw=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=mNKH4bKVy8kOhrkUp6Z84NrdVjs1qyvyxYCxooGljK/2pL3mFbJ3TwGaXW4mAoglS
         UDX3dklr0YwtRaJ1cRVbANau9zveF30iQpA1+DasJz6Qx4/rVJNp4WWHz5Rd4EdC56
         +IAAsxqR2MqNogirgYtTzq1lNwkevx9gKdoo5/3QZh65tHU+qY+9GF1z7UAY2kJEhy
         FSoTqCtKCWwr6LxNX1eJvpUK04K0ROdU/ESXLbD3r0I9iSg61jX/cAhmXV0p9PSSID
         eiRDtOIqqPgC5BuSaF2AzGgkjrpaXaCBxieaHur4nGAKLtgRQO1BNuNc1fFVBFuAwK
         9goYT1lycB8iA==
Received: by mail-wm1-f72.google.com with SMTP id r9-20020a1c4409000000b0038c15a1ed8cso960992wma.7
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 09:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=W8RGocwe3R4CTBhqTB8yPl1R4bT/6uO0hUbN5eAaNVw=;
        b=ZvFkmN/DU49YyTt7A0iMcTD6A8XbitHwLykxJK4AVen/M2XygPyxly821rlIrnBR12
         jSsHk9WhWdmwi2VN06goApxYDRV16R1PSll0G2fuE60j1x5u3PKmAnRWhf/sfWmWlI7D
         E6bIQvX1JTpNHFrQ7fplntqb7WbjDlEZSSoH6NZFxy0RFuCmSu+kbQDEGPpODCRuyjso
         yv6J05B6o50ip/9TRRKsH6zXN+//7DcjMtVomVDnnuuyRB2Y6BWxsXVuAwb/1brJGwB2
         uLzeM80VnXWOUFVIPVcczhyqjMPQR1H8SlwUaMKlLtD/QekxmboLSTe9Uqoa42T5K2i3
         QGaQ==
X-Gm-Message-State: AOAM531IwE0Hnr7fGYxCWEOxCB2jNL1EkN8vi1+BB+lGYKRH7V4PZC2C
        gYPGiEt9lj1SM61b7UrF+p4vsll2IsQkIQcaCjkkk2v25pI3hLniWwwJHdUQ+TvTaJHkcWn+UPw
        GDLCeA9qbxmpyvysjTbV+duzpLkVfWm168ii0Eo8=
X-Received: by 2002:a5d:4149:0:b0:203:e064:2571 with SMTP id c9-20020a5d4149000000b00203e0642571mr577689wrq.62.1647447308296;
        Wed, 16 Mar 2022 09:15:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyiD2G7PUJuX0I4t5w5dngEPn9s8CIKdlXiSw5kyMM3ZUtrKm20xsZIHmLKroCxW6B0HMWC8Q==
X-Received: by 2002:a5d:4149:0:b0:203:e064:2571 with SMTP id c9-20020a5d4149000000b00203e0642571mr577669wrq.62.1647447308045;
        Wed, 16 Mar 2022 09:15:08 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.googlemail.com with ESMTPSA id b15-20020adfc74f000000b001e888b871a0sm2042259wrh.87.2022.03.16.09.15.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 09:15:07 -0700 (PDT)
Message-ID: <a158beb0-9eee-24ba-3ffe-1a02011c4be0@canonical.com>
Date:   Wed, 16 Mar 2022 17:15:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: arm: bcm: document BCM4912 bindings
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20220315184403.17217-1-zajec5@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220315184403.17217-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2022 19:44, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4912 is a successor family to the BCM4908. It includes BCM4912,
> BCM4915 and BCM49418. It's mostly used in home routers.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../bindings/arm/bcm/brcm,bcm4912.yaml        | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4912.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4912.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4912.yaml
> new file mode 100644
> index 000000000000..438a6f20ca93
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4912.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm4912.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom BCM4912 device tree bindings
> +
> +description:
> +  Broadcom BCM4912 / BCM4915 / BCM49418 Wi-Fi/network SoCs with Brahma CPUs.
> +
> +maintainers:
> +  - Rafał Miłecki <rafal@milecki.pl>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: BCM4912 based boards
> +        items:
> +          - enum:
> +              - asus,gt-ax6000
> +          - const: brcm,bcm4912
> +
> +      - description: BCM4915 based boards
> +        items:
> +          - const: brcm,bcm4915
> +          - const: brcm,bcm4912
> +
> +      - description: BCM49418 based boards
> +        items:
> +          - const: brcm,bcm49418
> +          - const: brcm,bcm4908

The last two entries do not look correct currently. You don't have any
boards. Maybe just skip them? Unless you plan to use these compatibles
in DTSI?


Best regards,
Krzysztof
