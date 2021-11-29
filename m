Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EDC34625F2
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 23:42:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234011AbhK2Wpg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 17:45:36 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:35399 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234899AbhK2Wo3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 17:44:29 -0500
Received: by mail-oi1-f180.google.com with SMTP id m6so37510824oim.2
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 14:41:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/mVagZKB5sENnWA5/x92h5prjYHHYygiRoEd9UYVS20=;
        b=sV3s4SkVFsSvhbLd/Cza7G4sQykfG9t+M155Gjvl5FUpnWTWyd40/tv8l8fJ2W9F2B
         x/ly5vy/tULfa7AoGG/bIvdLQcEQrGATssMaRdd+g2wykfkpW7fn68oGe6ek1m/4JGeC
         B0fI6ilobK9ZDk2DTo6KaYGWlTtCFwL91prw1DOUtOGB/kdmNt3A/vetumXP/S/ASyOH
         9ZVCt51ZlY9v5ewB0dF83B5JkDtrTfkDvdQY2qdynqjGSE0jyPTX+HA7qnlrwHiBOD3u
         IfPQghJ+H2Do1MStKLYwHch4R/+rNVHpDsH3BfiXpFAEt90G/WU29ZJKEordmrNG43Sg
         Pi1w==
X-Gm-Message-State: AOAM531Mp9LAAMSMpjGd3bMNYBiJT2szFqbyDsAa6oJeAk6g1b/EMCsK
        wn46vrH9dMCh4gwoZkABqQ==
X-Google-Smtp-Source: ABdhPJzPrmQTisKPqX+mcQG21GYX6RJWb/RaFSFgyZkE7/CVaR4iKXleUPZI2cSTY9KS1sSs9GCAbA==
X-Received: by 2002:a05:6808:1644:: with SMTP id az4mr877879oib.86.1638225671084;
        Mon, 29 Nov 2021 14:41:11 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id q9sm2857314oti.32.2021.11.29.14.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 14:41:10 -0800 (PST)
Received: (nullmailer pid 743486 invoked by uid 1000);
        Mon, 29 Nov 2021 22:41:09 -0000
Date:   Mon, 29 Nov 2021 16:41:09 -0600
From:   Rob Herring <robh@kernel.org>
To:     Joel Stanley <joel@jms.id.au>
Cc:     Andrew Jeffery <andrew@aj.id.u>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH 1/3] dt-bindings: aspeed: Add Secure Boot Controller
 bindings
Message-ID: <YaVXBZb2QFpjEGtj@robh.at.kernel.org>
References: <20211117035106.321454-1-joel@jms.id.au>
 <20211117035106.321454-2-joel@jms.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211117035106.321454-2-joel@jms.id.au>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 17, 2021 at 11:51:04AM +0800, Joel Stanley wrote:
> The secure boot controller was first introduced in the AST2600.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  .../bindings/arm/aspeed/aspeed,sbc.yaml       | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml
> new file mode 100644
> index 000000000000..c72aab706484
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed,sbc.yaml
> @@ -0,0 +1,37 @@
> +# SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)

GPL-2.0-only OR BSD-2-Clause

> +# Copyright 2021 Joel Stanley, IBM Corp.
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/arm/aspeed/aspeed,sbc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: ASPEED Secure Boot Controller
> +
> +maintainers:
> +  - Joel Stanley <joel@jms.id.au>
> +  - Andrew Jeffery <andrew@aj.id.au>
> +
> +description: |

Only need '|' to preserve formatting which you don't have.

With those addressed,

Reviewed-by: Rob Herring <robh@kernel.org>

> +  The ASPEED SoCs have a register bank for interacting with the secure boot
> +  controller.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: aspeed,ast2600-sbc
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sbc: secure-boot-controller@1e6f2000 {
> +            compatible = "aspeed,ast2600-sbc";
> +            reg = <0x1e6f2000 0x1000>;
> +    };
> -- 
> 2.33.0
> 
> 
