Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBF703D115D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:30:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238083AbhGUNuV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:50:21 -0400
Received: from mail.kernel.org ([198.145.29.99]:48742 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238063AbhGUNuU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 09:50:20 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 221506120C;
        Wed, 21 Jul 2021 14:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1626877857;
        bh=ItoMV2w0siUwl28cOzY8vDd1juPLnJDPTjp4OHicjsY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ClvtVxu6OzSCTr6zmptraNDY5OLNM624UREm7ezvDoU7BW5bC7r8V6ZGzAZy4bz+s
         sJmW+LWR+x+z38wxw+FmxcRcR3VpAili1h7VPCl3/irV2M+zsa6ltHGlpNRW3joXxb
         qiGO227LA3oUUwE+OoUR5Fu8ZX+U03rbDw2VN5xN/OfXGUj4oZJLRs7BhcNb9PHRHa
         lMOv2MfIHgkGFQInTs+9K/XPN8JjjdnzcYx83pg5Go6wg10Pw7FlgESAqmTDqVrVDX
         vXdI0cnQYmzHSoBs+o0R54zCBZ3MKEfh4VhiWFx5NPNp2fXiHaImlqF/qOEP0ti2ob
         j+9LQ+FyekYLw==
Received: by mail-ej1-f43.google.com with SMTP id hd33so3544376ejc.9;
        Wed, 21 Jul 2021 07:30:57 -0700 (PDT)
X-Gm-Message-State: AOAM531NnvOJ/dMT93jE55LZVgvyMiGgapWVbcbmfbXWSDvQ1QETH6KW
        BlLcsH8rfK+0x1WO69wrDd8/XQGfNzf+rHbUpA==
X-Google-Smtp-Source: ABdhPJxRy4QTRGTzS/mvAFQhcw860lxwIiR+bbQYhncMtCZggceYaOOm1hj37+GvvSrLHiI7dlywoxUv3mfvXB62HXQ=
X-Received: by 2002:a17:907:5096:: with SMTP id fv22mr37457462ejc.525.1626877855685;
 Wed, 21 Jul 2021 07:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210721140424.725744-1-maxime@cerno.tech> <20210721140424.725744-6-maxime@cerno.tech>
In-Reply-To: <20210721140424.725744-6-maxime@cerno.tech>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 21 Jul 2021 08:30:43 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKAZLBK2UDDUNrO4aaYr886oODB_N_yF70X44gPXs=k5Q@mail.gmail.com>
Message-ID: <CAL_JsqKAZLBK2UDDUNrO4aaYr886oODB_N_yF70X44gPXs=k5Q@mail.gmail.com>
Subject: Re: [PATCH 05/54] dt-bindings: Convert Reserved Memory binding to a schema
To:     Maxime Ripard <maxime@cerno.tech>,
        Grant Likely <grant.likely@arm.com>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi@googlegroups.com,
        Mailing List <devicetree-spec@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 8:04 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The Reserved Memory mechanism is supported by Linux thanks to its device
> tree binding.
>
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.

Thanks for this!

>
> Cc: Mailing List <devicetree-spec@vger.kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../reserved-memory/reserved-memory.txt       | 141 ---------------
>  .../reserved-memory/reserved-memory.yaml      | 167 ++++++++++++++++++
>  2 files changed, 167 insertions(+), 141 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml

> diff --git a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
> new file mode 100644
> index 000000000000..b61527f11953
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
> @@ -0,0 +1,167 @@
> +# SPDX-License-Identifier: GPL-2.0

I think this is okay to dual license. Grant (Linaro) is the original
author and there's only a few lines from other authors.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reserved-memory/reserved-memory.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: /reserved-memory Node
> +
> +maintainers:
> +  - Devicetree Specification Mailing List <devicetree-spec@vger.kernel.org>
> +
> +description: >
> +  Reserved memory is specified as a node under the /reserved-memory node. The
> +  operating system shall exclude reserved memory from normal usage one can
> +  create child nodes describing particular reserved (excluded from normal use)
> +  memory regions. Such memory regions are usually designed for the special
> +  usage by various device drivers.
> +
> +properties:
> +  $nodename:
> +    const: reserved-memory
> +
> +  "#address-cells": true
> +  "#size-cells": true
> +  ranges: true
> +
> +patternProperties:
> +  "^(?!(ranges))[a-z,-]*(@[0-9]+)?$":

Note that you could drop this and put under 'additionalProperties'.
You would lose some node name checking, but there's really little
standard on these nodes.

> +    type: object
> +
> +    description: >
> +      Each child of the reserved-memory node specifies one or more regions of
> +      reserved memory. Each child node may either use a 'reg' property to
> +      specify a specific range of reserved memory, or a 'size' property with
> +      optional constraints to request a dynamically allocated block of memory.
> +
> +      Following the generic-names recommended practice, node names should
> +      reflect the purpose of the node (ie. "framebuffer" or "dma-pool"). Unit
> +      address (@<address>) should be appended to the name if the node is a
> +      static allocation.
> +
> +    properties:
> +      reg: true
> +
> +      size:
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        description: >
> +          Length based on parent's \#size-cells. Size in bytes of memory to
> +          reserve.
> +
> +      alignment:
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        description: >
> +          Length based on parent's \#size-cells. Address boundary for
> +          alignment of allocation.
> +
> +      alloc-ranges:
> +        $ref: /schemas/types.yaml#/definitions/uint32-array
> +        description: >
> +          Address and Length pairs. Specifies regions of memory that are
> +          acceptable to allocate from.
> +
> +      compatible:
> +        oneOf:
> +          - const: shared-dma-pool
> +            description: >
> +              This indicates a region of memory meant to be used as a shared
> +              pool of DMA buffers for a set of devices. It can be used by an
> +              operating system to instantiate the necessary pool management
> +              subsystem if necessary.
> +
> +          # Vendor-specific compatibles in the form <vendor>,[<device>-]<usage>
> +          - const: mediatek,trustzone-bootinfo

I think these should be separate schema files. At least, we're going
to need to support separate files because I don't think we want ones
adding custom properties here. This would fail unless we add every
compatible here. We could also be a bit more exact as to which
properties below apply (e.g. linux,.*-default is only valid for
shared-dma-pool).

> +
> +      no-map:
> +        type: boolean
> +        description: >
> +          Indicates the operating system must not create a virtual mapping of
> +          the region as part of its standard mapping of system memory, nor
> +          permit speculative access to it under any circumstances other than
> +          under the control of the device driver using the region.
> +
> +      reusable:
> +        type: boolean
> +        description: >
> +          The operating system can use the memory in this region with the
> +          limitation that the device driver(s) owning the region need to be
> +          able to reclaim it back. Typically that means that the operating
> +          system can use that region to store volatile or cached data that
> +          can be otherwise regenerated or migrated elsewhere.
> +
> +      linux,cma-default:
> +        type: boolean
> +        description: >
> +          If this property is present, then Linux will use the region for the
> +          default pool of the contiguous memory allocator.
> +
> +      linux,dma-default:
> +        type: boolean
> +        description: >
> +          If this property is present, then Linux will use the region for the
> +          default pool of the consistent DMA allocator.
> +
> +    allOf:
> +      - if:
> +          required:
> +            - no-map
> +
> +        then:
> +          not:
> +            required:
> +              - reusable
> +
> +      - if:
> +          required:
> +            - reusable
> +
> +        then:
> +          not:
> +            required:
> +              - no-map
> +
> +    oneOf:
> +      - required:
> +          - reg
> +
> +      - required:
> +          - size
> +
> +    additionalProperties: true
> +
> +additionalProperties: true

This should be false, right?

> +
> +examples:
> +  - |
> +      / {
> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +          model = "MediaTek MT2701 evaluation board";
> +          compatible = "mediatek,mt2701-evb", "mediatek,mt2701";
> +
> +          reserved-memory {
> +              #address-cells = <1>;
> +              #size-cells = <1>;
> +              ranges;
> +
> +              /* global autoconfigured region for contiguous allocations */
> +              linux,cma {
> +                  compatible = "shared-dma-pool";
> +                  reusable;
> +                  size = <0x4000000>;
> +                  alignment = <0x2000>;
> +                  linux,cma-default;
> +              };
> +
> +              display_reserved: framebuffer@78000000 {
> +                  reg = <0x78000000 0x800000>;
> +              };
> +
> +              trustzone-bootinfo@80002000 {
> +                  compatible = "mediatek,trustzone-bootinfo";
> +                  reg = <0x80002000 0x1000>;
> +              };
> +          };
> +      };
> +
> +...
> --
> 2.31.1
>
