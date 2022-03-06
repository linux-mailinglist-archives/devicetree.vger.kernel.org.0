Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C14F94CEB70
	for <lists+devicetree@lfdr.de>; Sun,  6 Mar 2022 13:08:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233485AbiCFMIs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Mar 2022 07:08:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232037AbiCFMIr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Mar 2022 07:08:47 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30D79B7CA
        for <devicetree@vger.kernel.org>; Sun,  6 Mar 2022 04:07:54 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7C3213F1B7
        for <devicetree@vger.kernel.org>; Sun,  6 Mar 2022 12:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646568472;
        bh=5IOaq+YufH1O5iptx1mkNlYrqkIWyE0RDyxFyfke9gU=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=vd0ie6BPZz8FLoZp3sSDN5HPGpyhfx5WXJYHPdP9GDMEPV3HwAXKsWrf74VzWPWhY
         rEZqcTufKYIPBcA3L98EWIXgj/CnAqBew3Ea2lOzD9Fhp2+UCeZ8ConuBHZwyRfYvB
         yPQ/Ozbd4CofmRiHtiBYJclz/g05uKFn9qiYfOTXZ6FPdz6NBza6OWeIJka5vC74Sd
         BGJ80VFaG7+LuC0F0Ns40y9+JMrQLDv5GiFM6y11KarCYAvZKftrQ9Z4AgAU7KBwuB
         uxjN0AgUJ4EA9IEsdFn3kYoZyLMQlSMnsQVCPzC1+zljmElLn0xfzIGunqKp4x6GfF
         Jh1lraK7Y9xfA==
Received: by mail-ed1-f69.google.com with SMTP id x5-20020a50ba85000000b004161d68ace6so1691996ede.15
        for <devicetree@vger.kernel.org>; Sun, 06 Mar 2022 04:07:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5IOaq+YufH1O5iptx1mkNlYrqkIWyE0RDyxFyfke9gU=;
        b=6Wj8wZRlFLUrmqwvTCuVCPG4QcHkFBZ8wdhmeU51Y57AMZ3+F2jw6ZywkI7qInv+9l
         lA6as4m8xClHK1eX+8kU2EjjyRmkZNlbSrlX7a68/X2AXgLZT8B2GX2AqhwX6JczyTU+
         Ba5jmH2SqFRoL8SykiMMteQH5n8VkohKf8+xPSct6JnkYjTt2b298uxXPTtmHrpIaURI
         9u6/3Wfr0XCSLV0o+bgJoD5gpyKN/foGtyJ5cJPn63Krj5uMke377gVj28XygBBEOx47
         J82ZDjFfLAlkAp5/MXmOgK1+qJsSWTnpynp1A8ODTTXQLUAl3K+PlbjgcDy2TPvYtMm/
         Ge+w==
X-Gm-Message-State: AOAM532T0kHruLsg9Mq4GQI97qGsCUsbogzWPO6XGyWMl1iAjIj765Wc
        cJ+Sb8WzP2hjkQoklhLa5Dh3+xW4D6x5hAKRTLj78xHVT/vuGiVBLieOgdY95SSlQ6C1tLE/jT5
        wSF44UDr+rlvtn1w6hY9VVMR8J+ePlXa7lTK3D7A=
X-Received: by 2002:a17:906:3e09:b0:6cf:cf2c:2c02 with SMTP id k9-20020a1709063e0900b006cfcf2c2c02mr5603569eji.291.1646568472040;
        Sun, 06 Mar 2022 04:07:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzDfebfdKiG4YwPAGHmL0vGHlXgw8Al3VjbRvS0kYtSEJSQ7isfS6n1MA1Itv/GVcirehCDoA==
X-Received: by 2002:a17:906:3e09:b0:6cf:cf2c:2c02 with SMTP id k9-20020a1709063e0900b006cfcf2c2c02mr5603548eji.291.1646568471776;
        Sun, 06 Mar 2022 04:07:51 -0800 (PST)
Received: from [192.168.0.140] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id bn14-20020a170906c0ce00b006c5ef0494besm3728787ejb.86.2022.03.06.04.07.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Mar 2022 04:07:51 -0800 (PST)
Message-ID: <67ec6f3a-1579-f77a-a54d-381472252d6b@canonical.com>
Date:   Sun, 6 Mar 2022 13:07:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 2/2] dt-bindings: usb: Add bindings doc for Sunplus
 EHCI driver
Content-Language: en-US
To:     Vincent Shih <vincent.sunplus@gmail.com>,
        gregkh@linuxfoundation.org, stern@rowland.harvard.edu,
        p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, wells.lu@sunplus.com
References: <1646547036-14885-1-git-send-email-vincent.sunplus@gmail.com>
 <1646547036-14885-3-git-send-email-vincent.sunplus@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1646547036-14885-3-git-send-email-vincent.sunplus@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/03/2022 07:10, Vincent Shih wrote:
> Add bindings doc for Sunplus EHCI driver
> 
> Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
> ---
> Changes in v2:
>   - Address the comments by Rob Herring.
> 
>  .../bindings/usb/sunplus,sp7021-usb-ehci.yaml      | 63 ++++++++++++++++++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ehci.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ehci.yaml b/Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ehci.yaml
> new file mode 100644
> index 0000000..905f68c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ehci.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) Sunplus Co., Ltd. 2021
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/sunplus,sp7021-usb-ehci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sunplus SP7021 EHCI Controller Device Tree bindings

s/Device Tree bindings//
(title describes hardware)

> +
> +allOf:
> +  - $ref: usb-hcd.yaml#
> +
> +maintainers:
> +  - Vincent Shih <vincent.sunplus@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: sunplus,sp7021-usb2-ehci

You do not use this compatible in the driver.

> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    minItems: 1

Suddenly it became minItems. This looks odd, it should be maxItems: 1
rather. How many reset lines do you have there?


> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    maxItems: 1

phy-names needs list of names.

> +
> +required:
> +  - compatible
> +  - clocks
> +  - resets
> +  - reg
> +  - interrupts
> +  - phys
> +  - phy-names
> +
> +additionalProperties: false

This should be unevaluatedProperties:false, because you reference
usb-hcd schema.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    sp_ehci0: usb@9c102100 {
> +      compatible = "sunplus,sp7021-usb-ehci";
> +      clocks = <&clkc 0x3a>;
> +      resets = <&rstc 0x2a>;
> +      reg = <0x9c102100 0x68>;

reg goes after compatible in DTS.

Best regards,
Krzysztof
