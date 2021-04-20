Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CE96366087
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 22:00:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233541AbhDTUBU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 16:01:20 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:35725 "EHLO
        mail-ot1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233548AbhDTUBT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 16:01:19 -0400
Received: by mail-ot1-f53.google.com with SMTP id 35-20020a9d05260000b029029c82502d7bso5498829otw.2
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 13:00:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=IhDL9E4EMajKLlxLPAH3/m7tAdxZQuhhLK82BEcjgIs=;
        b=oxtSrGJiwDui/COG8T5CCCqAU9MTisHHwXT6iT+lyhU26urdo7OkDCR67IGAMMukLQ
         vgTvX4+ft6RD5715sBgnpH76z920rFoGijiPfMqs3+3lLLSIbCoixAD41GOPRp72sH2x
         eSS+naLHHI0Jz3Kk6mF7z5XJpdMWR4FUDvRbtCoaXBVQ7ud93sSNE0rK58g5uXNVlntO
         r76tzkqosk7SBeQVnX5bnm0XgiVuIvWLX1oVF7peeWquw5bULTKV7JOxDF/yA60A/1eI
         kb5ZeJUV8BLIbj9cSorSSue7cIzTX56XdV0brJzC1c3ZTyYt/e9/u/wGb5gQlCWDfkrb
         eY3Q==
X-Gm-Message-State: AOAM532LeNwUWe9RZgJpPSYl3XTzgHXk9EJSNRlKG2cfE4i/EoS02ZCw
        S/xffmPY4x1JD/7JesWG/oUmgkTW+Q==
X-Google-Smtp-Source: ABdhPJxboA35RcbHVSP5NuFAUvqrJnu9tWe+0EajshhhLShxYWXe+BvyeYC2Odu+m/93QhL4uVgxMA==
X-Received: by 2002:a9d:6e9:: with SMTP id 96mr19886392otx.118.1618948847684;
        Tue, 20 Apr 2021 13:00:47 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id e20sm8797otl.15.2021.04.20.13.00.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 13:00:47 -0700 (PDT)
Received: (nullmailer pid 3717287 invoked by uid 1000);
        Tue, 20 Apr 2021 20:00:45 -0000
Date:   Tue, 20 Apr 2021 15:00:45 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH robh dt/next] dt-bindings: mfd: add Broadcom CRU
Message-ID: <20210420200045.GA3710852@robh.at.kernel.org>
References: <20210415062839.11713-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210415062839.11713-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 15, 2021 at 08:28:39AM +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> CRU is a block used in e.g. Northstar devices. It can be seen in the
> bcm5301x.dtsi and this binding documents its proper usage.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> This is reworked version of the
> [PATCH robh next] dt-bindings: bus: add Broadcom CRU
> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210309142241.16259-1-zajec5@gmail.com/
> ---
>  .../devicetree/bindings/mfd/brcm,cru.yaml     | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/brcm,cru.yaml b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> new file mode 100644
> index 000000000000..f5bce6453c33
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/brcm,cru.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom CRU
> +
> +maintainers:
> +  - Rafał Miłecki <rafal@milecki.pl>
> +
> +description: |
> +  Broadcom CRU ("Clock and Reset Unit" or "Central Resource Unit") is a hardware
> +  block grouping smaller blocks. On Broadcom Northstar platform it contains e.g.
> +  clocks, pinctrl, USB PHY and thermal.

As I said before, this needs to be a complete binding.

> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - brcm,ns-cru
> +      - const: simple-mfd

As of now, it is not a 'simple-mfd' because there are no defined 
children.

> +
> +  reg:
> +    description: CRU registers
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +additionalProperties: true

This needs to be 'false' (and then any child nodes defined).

> +
> +required:
> +  - reg
> +
> +examples:
> +  - |
> +    cru-bus@1800c100 {
> +      compatible = "brcm,ns-cru", "simple-mfd";
> +      reg = <0x1800c100 0x1d0>;
> +      ranges;
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +    };
> -- 
> 2.26.2
> 
