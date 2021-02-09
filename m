Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4B8731591A
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 23:08:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233422AbhBIWHQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 17:07:16 -0500
Received: from mail-oo1-f44.google.com ([209.85.161.44]:44270 "EHLO
        mail-oo1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233264AbhBIWEz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 17:04:55 -0500
Received: by mail-oo1-f44.google.com with SMTP id n19so43659ooj.11;
        Tue, 09 Feb 2021 14:02:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=PwZj/7zr44f2FsbgWWkoqBN0rW0GWk+WxuX482kBQ/Y=;
        b=RFiarLUCLIjTSDVZ7KC4MLvphFWm9Nay4A3x51nRKs3iS1y86iGAKy+UYEEUAeFolj
         xvDIc7WKVa58KcGbpQh4ZuuzJUnJGygngODXYJY2H5ytZBpqoQRsaEvhruKbqA+EXPpo
         B+sP9StCMUKPWsrs5C42kmgli9cu1mOW9tM9q4bmSVX/Tt2TM5wbyfzXstQ6F7p5e9B9
         IV4ATHkgL8Tdzqk5Zz4u7Y5lXeszbF5QCuaZDvPoNL7wXZh53CJXUQpX/BwQwflgl25A
         YQnSbsBQ4Gup6CONXwbGKJk7ufT8kyTWNnATyq8SX0sqqxYXqNe7vr6X8yePtRCHfYH2
         fhgw==
X-Gm-Message-State: AOAM530SxUobwnUwzsJFDmJfMGZD1p6AtbuEGSoOu7q0QfWAmbhb4qa7
        GWWtjR1ZrIgNvSuQ8Bj9mY/AONbkxw==
X-Google-Smtp-Source: ABdhPJx+NSvUQxgvUjLWWifMfWthsDQub3Xekmm16XrspqEqlI5USgXFej4JenEUgbhC6/c2xIIXhQ==
X-Received: by 2002:a05:6830:1c6a:: with SMTP id s10mr17149646otg.118.1612907027192;
        Tue, 09 Feb 2021 13:43:47 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y4sm1305379oou.44.2021.02.09.13.43.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 13:43:46 -0800 (PST)
Received: (nullmailer pid 250544 invoked by uid 1000);
        Tue, 09 Feb 2021 21:43:45 -0000
Date:   Tue, 9 Feb 2021 15:43:45 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     "David S . Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Masahiro Yamada <masahiroy@kernel.org>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 net-next 1/2] dt-bindings: net: document BCM4908
 Ethernet controller
Message-ID: <20210209214345.GA244143@robh.at.kernel.org>
References: <20210205214417.11178-1-zajec5@gmail.com>
 <20210207222632.10981-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210207222632.10981-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Feb 07, 2021 at 11:26:31PM +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 is a family of SoCs with integrated Ethernet controller.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../bindings/net/brcm,bcm4908enet.yaml        | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/brcm,bcm4908enet.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/brcm,bcm4908enet.yaml b/Documentation/devicetree/bindings/net/brcm,bcm4908enet.yaml
> new file mode 100644
> index 000000000000..5f12f51c5b19
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/brcm,bcm4908enet.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/brcm,bcm4908enet.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom BCM4908 Ethernet controller
> +
> +description: Broadcom's Ethernet controller integrated into BCM4908 family SoCs
> +
> +maintainers:
> +  - Rafał Miłecki <rafal@milecki.pl>
> +

allOf:
  - $ref: 'ethernet-controller.yaml#'

> +properties:
> +  compatible:
> +    const: brcm,bcm4908enet

Normal convention is 'brcm,bcm4908-enet'. (And update the filename/$id)

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description: RX interrupt
> +
> +  interrupt-names:
> +    const: rx

Don't really need *-names when only 1 possible entry.

> +
> +required:
> +  - reg
> +  - interrupts
> +  - interrupt-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    ethernet@80002000 {
> +        compatible = "brcm,bcm4908enet";
> +        reg = <0x80002000 0x1000>;
> +
> +        interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "rx";
> +    };
> -- 
> 2.26.2
> 
