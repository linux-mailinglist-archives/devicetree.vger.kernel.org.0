Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBBB43F0409
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 14:55:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235222AbhHRMzt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 08:55:49 -0400
Received: from mail.kernel.org ([198.145.29.99]:57964 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234801AbhHRMzs (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Aug 2021 08:55:48 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id EDCDD6108E;
        Wed, 18 Aug 2021 12:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629291314;
        bh=qfimuz/xc2ShyihFDgQNSAdTOIIZ4oK4XRr5EFm9R2I=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=OFrXhTd4g/bAi0QZbPFyVKqhN00Z7DB0yuYoMnE7e4ge7IjKWkVa3VPATTyBcyGmP
         8IbxWtoB7NQ3f/QXGJP0BwrF5fAmcEN1WdFHZfq9F9XGnrQEt9ovqUMrg5IL6WdGcT
         C74RBdriBjr0wnMB8eI0qMTTwBdbaz7nBu4C/bbri2fvoqc3Aj9Jy6yE5mEJSax5Nz
         Fc3ZLPn4wggTpoPPNVNXsphcbNAj4AZ5vFCEZNoD3wzeDBSyGe0ChPfMc2Mg9TKRiJ
         PNBhNL3b0Gl9TuxPk7dgbcfNX89SLmFHvRoraFGbI6vxjATeCq//S7ECcQJcKrqC1L
         MFjR9yKlimV5g==
Received: by mail-ed1-f50.google.com with SMTP id by4so3067742edb.0;
        Wed, 18 Aug 2021 05:55:13 -0700 (PDT)
X-Gm-Message-State: AOAM5330ip4sXxZEXzSXpx7Q8IjMXrotjJLP2g7kX3vqH+5Et7FBIWdf
        tvGXpZR0HU1+csqXGUWLRwALxpQej3BZQrb9/w==
X-Google-Smtp-Source: ABdhPJzuNBTtBcYMCaYc9W5j3jR2kGlpRL7Yc/Is/o23NEzU55JTlCNHqsQzj+0z5W7mh/h3lTV812t9gnUkc0HkntM=
X-Received: by 2002:aa7:cb19:: with SMTP id s25mr10215026edt.194.1629291311549;
 Wed, 18 Aug 2021 05:55:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210721140424.725744-1-maxime@cerno.tech> <20210721140424.725744-6-maxime@cerno.tech>
 <CAL_JsqKAZLBK2UDDUNrO4aaYr886oODB_N_yF70X44gPXs=k5Q@mail.gmail.com> <20210818100021.yzzcuadkowy4tfv4@gilmour>
In-Reply-To: <20210818100021.yzzcuadkowy4tfv4@gilmour>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 18 Aug 2021 07:54:59 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK8ZDy=4_KmB_5ce4Z1=XcKH7EgydAVuC5Cko6F63ACrQ@mail.gmail.com>
Message-ID: <CAL_JsqK8ZDy=4_KmB_5ce4Z1=XcKH7EgydAVuC5Cko6F63ACrQ@mail.gmail.com>
Subject: Re: [PATCH 05/54] dt-bindings: Convert Reserved Memory binding to a schema
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Grant Likely <grant.likely@arm.com>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi@googlegroups.com,
        Mailing List <devicetree-spec@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 18, 2021 at 5:00 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Rob,
>
> On Wed, Jul 21, 2021 at 08:30:43AM -0600, Rob Herring wrote:
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/reserved-memory/reserved-memory.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: /reserved-memory Node
> > > +
> > > +maintainers:
> > > +  - Devicetree Specification Mailing List <devicetree-spec@vger.kernel.org>
> > > +
> > > +description: >
> > > +  Reserved memory is specified as a node under the /reserved-memory node. The
> > > +  operating system shall exclude reserved memory from normal usage one can
> > > +  create child nodes describing particular reserved (excluded from normal use)
> > > +  memory regions. Such memory regions are usually designed for the special
> > > +  usage by various device drivers.
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    const: reserved-memory
> > > +
> > > +  "#address-cells": true
> > > +  "#size-cells": true
> > > +  ranges: true
> > > +
> > > +patternProperties:
> > > +  "^(?!(ranges))[a-z,-]*(@[0-9]+)?$":
> >
> > Note that you could drop this and put under 'additionalProperties'.
> > You would lose some node name checking, but there's really little
> > standard on these nodes.
>
> I didn't realise it could be used that way too, I'll change it.
>
> > > +    type: object
> > > +
> > > +    description: >
> > > +      Each child of the reserved-memory node specifies one or more regions of
> > > +      reserved memory. Each child node may either use a 'reg' property to
> > > +      specify a specific range of reserved memory, or a 'size' property with
> > > +      optional constraints to request a dynamically allocated block of memory.
> > > +
> > > +      Following the generic-names recommended practice, node names should
> > > +      reflect the purpose of the node (ie. "framebuffer" or "dma-pool"). Unit
> > > +      address (@<address>) should be appended to the name if the node is a
> > > +      static allocation.
> > > +
> > > +    properties:
> > > +      reg: true
> > > +
> > > +      size:
> > > +        $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +        description: >
> > > +          Length based on parent's \#size-cells. Size in bytes of memory to
> > > +          reserve.
> > > +
> > > +      alignment:
> > > +        $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +        description: >
> > > +          Length based on parent's \#size-cells. Address boundary for
> > > +          alignment of allocation.
> > > +
> > > +      alloc-ranges:
> > > +        $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +        description: >
> > > +          Address and Length pairs. Specifies regions of memory that are
> > > +          acceptable to allocate from.
> > > +
> > > +      compatible:
> > > +        oneOf:
> > > +          - const: shared-dma-pool
> > > +            description: >
> > > +              This indicates a region of memory meant to be used as a shared
> > > +              pool of DMA buffers for a set of devices. It can be used by an
> > > +              operating system to instantiate the necessary pool management
> > > +              subsystem if necessary.
> > > +
> > > +          # Vendor-specific compatibles in the form <vendor>,[<device>-]<usage>
> > > +          - const: mediatek,trustzone-bootinfo
> >
> > I think these should be separate schema files. At least, we're going
> > to need to support separate files because I don't think we want ones
> > adding custom properties here. This would fail unless we add every
> > compatible here. We could also be a bit more exact as to which
> > properties below apply (e.g. linux,.*-default is only valid for
> > shared-dma-pool).
>
> I'm not entirely sure how we can just ignore the vendor compatibles
> without raising a warning. Do you have any suggestion?

You need 1 schema file with all the common (child) properties and then
1 schema file for each compatible (maybe some can be grouped) that
references the common schema.

You'd lose checking that the child nodes are actually children of
/reserved-memory, but I'm not too worried about that.

Rob
