Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D1A22D154E
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 16:58:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726778AbgLGP5k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 10:57:40 -0500
Received: from mail-oi1-f193.google.com ([209.85.167.193]:35859 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726167AbgLGP5k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 10:57:40 -0500
Received: by mail-oi1-f193.google.com with SMTP id x16so15908694oic.3
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 07:57:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hsOMZgEE8UhsWhVv7cu5xwPuYZ+QaDeTUjEEYmQ/L1U=;
        b=p8exJvnRge4cHnuLppj5kFqg8s4ORcnGcvYZJCQq8ZeX1kGAs3OYS2leA+E9Mr459G
         cJOMjgRWdwnIfJC8QsHF2mTVeWhKx/yq1JIoYTRzszVUI7Ita2tjtlqK063/LK25yJXN
         7kViZScJcypy3naONLG03oj2O2HNxARWGN9/lQMEucj7LyprrlJBBVPQUTWcFxfAXzf0
         bU8UE9jOmGRLCXftlLIqTx8F1rPbBfMdA699fmxWInDSgT0J4/gV4mp57iyMhpyQAZaP
         kYK04XVC9QrewztpfCbl/Spr3uio4GFw+PiU5dT+0ksq/q5+vbw0NaE8BdrIbvyBVr77
         I6cA==
X-Gm-Message-State: AOAM530WS4e5Xr+WTp7/+p8d0Vu3rrQuj0QJRHBkL0r1S4ce2na3nQd9
        hcvO82oPa6n678hpj4lzRw==
X-Google-Smtp-Source: ABdhPJxkyYm+K3548Xdy2L+VcNfgUPunU99ZP7sfZJcQSS0768YNjewgdMQT8n2W2zo6Ts9jaUMntA==
X-Received: by 2002:aca:5204:: with SMTP id g4mr12939950oib.91.1607356619559;
        Mon, 07 Dec 2020 07:56:59 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z10sm2704039oom.3.2020.12.07.07.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 07:56:58 -0800 (PST)
Received: (nullmailer pid 350077 invoked by uid 1000);
        Mon, 07 Dec 2020 15:56:57 -0000
Date:   Mon, 7 Dec 2020 09:56:57 -0600
From:   Rob Herring <robh@kernel.org>
To:     conor.dooley@microchip.com
Cc:     damien.lemoal@wdc.com, jassisinghbrar@gmail.com,
        aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
        palmer@dabbelt.com, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, lewis.hanly@microchip.com,
        cyril.jean@microchip.com, daire.mcnamara@microchip.com,
        atish.patra@wdc.com, anup.patel@wdc.com,
        david.abdurachmanov@gmail.com
Subject: Re: [PATCH v2 4/5] dt-bindings: add bindings for polarfire soc
 system controller
Message-ID: <20201207155657.GB345332@robh.at.kernel.org>
References: <20201201110311.28593-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201201110311.28593-1-conor.dooley@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 01, 2020 at 11:03:11AM +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Add device tree bindings for the MSS system controller on
> the Microchip PolarFire SoC.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../microchip,mpfs_sys_controller.yaml        | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
> new file mode 100644
> index 000000000000..c22fc203b95c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/microchip/microchip,mpfs_sys_controller.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Microchip MPFS system controller
> +
> +maintainers:
> +  - Conor Dooley <conor.dooley@microchip.com>
> +
> +properties:
> +  compatible:
> +    const: microchip,polarfire-soc-sys-controller
> +
> +  mbox-names:
> +    maxItems: 1
> +    description: name of the mailbox controller device node

Kind of pointless to have names when there is only one entry. I'd drop, 
but if you do, you need to define what the name is.

> +
> +  mboxes:
> +    maxItems: 1
> +    description: |
> +      phandle and index of the mailbox controller device node. It must be 0 (hardware supports only one channel).

No need to redefine a common property. And the value 0 is outside the 
scope of this binding. That's dependent on the mbox h/w.

> +
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1

These are not needed unless you have child nodes. If you do, then they 
also need to be defined here.

> +
> +required:
> +  - compatible
> +  - mbox-names
> +  - "#address-cells"
> +  - "#size-cells"
> +  - "mboxes"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    syscontroller: syscontroller {
> +      compatible = "microchip,polarfire-soc-sys-controller";
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      mbox-names = "mbox-mpfs";
> +      mboxes = <&mbox 0>;
> +    };
> -- 
> 2.17.1
> 
