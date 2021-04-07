Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78E4F357665
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 22:58:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230280AbhDGU7C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 16:59:02 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:41730 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231607AbhDGU7A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 16:59:00 -0400
Received: by mail-oi1-f179.google.com with SMTP id z15so20138337oic.8
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 13:58:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=5LHLj3OzBFR68+p4XxMX2aqrpEOVN06M1O5+dq5H9lE=;
        b=gZedwYVOBISB5ovmH/+hxZHkjy57fFni+hTaDSvcLtbWWJvZCRXbyeshe66wNmxnPV
         6ecHcoA1s8ta3aA2Jv2EP1iD2uXZuQLLebBmpY3ye9ikgdv3ExnHgKxHDbZeO9T606oy
         EfOrDm47mEycbF5nDoa1SsDEtr0OVw6lUGYeoQcOmjmcZcG+GxORwNvJGigT1huBBkH8
         pWoRrmqbBj++1gu0/ZIXaL2PtCAHS6gvPhpSFEvEmDXTPHvyWN2WEVRbcgpTMGPn+4IE
         RW7bBu6l+FmiGkGFmS2/ejHLCXokizeQsPT2fCK4XjP/lVdh6tzMeXZ/barw0k3xe6Jm
         w82Q==
X-Gm-Message-State: AOAM531a0Ht2F+pfHXjYsJtxDI/cxe+iy38v2+sChui5RM7zUaiWEazy
        yjohaKRxOc6wM4ig13Qb/Q==
X-Google-Smtp-Source: ABdhPJzdU9hR+V2/GO53+/fjUoLXbpjXGnDI6Jl+zw3gak7YWa1/fAl/drkZU47j0LJBC/+YK5p0ew==
X-Received: by 2002:a54:4184:: with SMTP id 4mr3622150oiy.72.1617829130025;
        Wed, 07 Apr 2021 13:58:50 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y11sm5870202ots.80.2021.04.07.13.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 13:58:18 -0700 (PDT)
Received: (nullmailer pid 15692 invoked by uid 1000);
        Wed, 07 Apr 2021 20:58:04 -0000
Date:   Wed, 7 Apr 2021 15:58:04 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH robh next] dt-bindings: bus: add Broadcom CRU
Message-ID: <20210407205804.GA10597@robh.at.kernel.org>
References: <20210309142241.16259-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210309142241.16259-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 09, 2021 at 03:22:41PM +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> CRU is a block used in Northstar devices. It can be seen in the
> bcm5301x.dtsi and this binding documents its proper usage.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../devicetree/bindings/bus/brcm,cru.yaml     | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/brcm,cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/bus/brcm,cru.yaml b/Documentation/devicetree/bindings/bus/brcm,cru.yaml
> new file mode 100644
> index 000000000000..c3b1ca53a443
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/bus/brcm,cru.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bus/brcm,cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom CRU
> +
> +maintainers:
> +  - Rafał Miłecki <rafal@milecki.pl>
> +
> +description: |
> +  Broadcom CRU ("Clock and Reset Unit" or "Central Resource Unit") is a hardware
> +  block grouping smaller blocks. It contains e.g. clocks, pinctrl, USB PHY and

Are these really separate blocks? I really need to see a complete 
binding for the block.

> +  thermal.
> +
> +allOf:
> +  - $ref: /schemas/simple-bus.yaml#

I don't think this should be a 'simple-bus'. Maybe 'simple-mfd' instead.

> +
> +properties:
> +  compatible:
> +    contains:
> +      const: brcm,cru

This should be SoC specific.

> +
> +  reg:
> +    description: CRU registers
> +
> +unevaluatedProperties: false
> +
> +required:
> +  - reg
> +
> +examples:
> +  - |
> +    cru-bus@1800c100 {
> +      compatible = "brcm,cru", "simple-bus";
> +      reg = <0x1800c100 0x1d0>;
> +      ranges;
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +    };
> -- 
> 2.26.2
> 
