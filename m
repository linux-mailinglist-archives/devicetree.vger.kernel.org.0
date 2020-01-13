Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9BCD1139B51
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2020 22:22:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726878AbgAMVW4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jan 2020 16:22:56 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:38324 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727137AbgAMVWz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jan 2020 16:22:55 -0500
Received: by mail-ot1-f67.google.com with SMTP id z9so8286913oth.5
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2020 13:22:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Kdq9aN9RfFQuJmNV+vqMSqQdkkLqzs/g4fONHkpv+9g=;
        b=LA0i/iruH59YiC8zxeBAQwgu0juvLhVgJODBQUlB7aX7eKmOhHn5u+WaB/8PLvm95r
         VcX46rWN3UqWwOTJ9/0dWd455qCFup6XSmt+4iu214ni4EKQPc3EOywyNUf5lNkCnJsy
         XQnE43stjDaMN6tbCdxnwOtYjFaw/701eLbX4Z24zihUlUCDBGGkBucewGXNwQB/7yD3
         NT908WrsbCrlrlrEoWEg0HTDqZtOVHwcV5pf5Mey22TdofirHynKiGauv9ESoSR7SI3G
         S080keg9YE9r2sNk7zqWjFr+uf/CCrYFdeCk354byDZdDHJ+aJlVu39BTYRlaEpmBxEP
         yzcA==
X-Gm-Message-State: APjAAAVDy1fZhG6mrb8zcvdgDwd3YOFqyD38UeWQJ6T0BWG3Uh3g1wNe
        2i8X74owu+jCI+4L64K56KdEvCI=
X-Google-Smtp-Source: APXvYqzA92505h84n7X2n0oxmwPntbuMb2fz2ufftZ9lAeVSI/pI7OdI3dTYPON7yyK3CW1Muc9Qag==
X-Received: by 2002:a9d:53c2:: with SMTP id i2mr13550026oth.43.1578950574890;
        Mon, 13 Jan 2020 13:22:54 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id m2sm3922524oim.13.2020.01.13.13.22.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2020 13:22:53 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 221998
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Mon, 13 Jan 2020 15:22:52 -0600
Date:   Mon, 13 Jan 2020 15:22:52 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lad Prabhakar <prabhakar.csengg@gmail.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Marek Vasut <marek.vasut+renesas@gmail.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        linux-pci@vger.kernel.org,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andrew Murray <andrew.murray@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-renesas-soc@vger.kernel.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Jingoo Han <jingoohan1@gmail.com>,
        Simon Horman <horms@verge.net.au>,
        Shawn Lin <shawn.lin@rock-chips.com>,
        Tom Joseph <tjoseph@cadence.com>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [v3 4/6] dt-bindings: PCI: rcar: Add bindings for R-Car PCIe
 endpoint controller
Message-ID: <20200113212252.GA3120@bogus>
References: <20200108162211.22358-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200108162211.22358-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200108162211.22358-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 08, 2020 at 04:22:09PM +0000, Lad Prabhakar wrote:
> This patch adds the bindings for the R-Car PCIe endpoint driver.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  .../devicetree/bindings/pci/rcar-pci-ep.yaml  | 76 +++++++++++++++++++
>  1 file changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml

Fails 'make dt_binding_check':

Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml: $id: 
path/filename 'pci/rcar-pcie-ep.yaml' doesn't match actual filename

> 
> diff --git a/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> new file mode 100644
> index 000000000000..99c2a1174463
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/rcar-pci-ep.yaml
> @@ -0,0 +1,76 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# Copyright (C) 2020 Renesas Electronics Europe GmbH - https://www.renesas.com/eu/en/
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/rcar-pcie-ep.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas R-Car PCIe Endpoint
> +
> +maintainers:
> +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: renesas,r8a774c0-pcie-ep
> +      - const: renesas,rcar-gen3-pcie-ep
> +
> +  reg:
> +    maxItems: 5
> +
> +  reg-names:
> +    items:
> +      - const: apb-base
> +      - const: memory0
> +      - const: memory1
> +      - const: memory2
> +      - const: memory3
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: pcie
> +
> +  max-functions:
> +    minimum: 1
> +    maximum: 6
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - resets
> +  - power-domains
> +  - clocks
> +  - clock-names
> +  - max-functions
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/r8a774c0-cpg-mssr.h>
> +    #include <dt-bindings/power/r8a774c0-sysc.h>
> +
> +     pcie0_ep: pcie-ep@fe000000 {
> +            compatible = "renesas,r8a774c0-pcie-ep",
> +                         "renesas,rcar-gen3-pcie-ep";
> +            reg = <0 0xfe000000 0 0x80000>,
> +                  <0x0 0xfe100000 0 0x100000>,
> +                  <0x0 0xfe200000 0 0x200000>,
> +                  <0x0 0x30000000 0 0x8000000>,
> +                  <0x0 0x38000000 0 0x8000000>;
> +            reg-names = "apb-base", "memory0", "memory1", "memory2", "memory3";
> +            resets = <&cpg 319>;
> +            power-domains = <&sysc R8A774C0_PD_ALWAYS_ON>;
> +            clocks = <&cpg CPG_MOD 319>;
> +            clock-names = "pcie";
> +            max-functions = /bits/ 8 <1>;
> +    };
> -- 
> 2.20.1
> 
