Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34068339246
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 16:50:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbhCLPtx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 10:49:53 -0500
Received: from mail.kernel.org ([198.145.29.99]:34072 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232105AbhCLPtX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 12 Mar 2021 10:49:23 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id CBEED65006
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 15:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1615564163;
        bh=ITV8yYanRuLWRrhgdvQTLw9WWtU2HzzRTFEBHtl96RU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=OAIFose9UQOl6WEjEMbhdYy1ZygespU3a3Ydisow9K3vTI8EpN6nNHdGDz/6EqvUE
         QVu6kIRRIGKrxZDYYGmwETEH2PwXQYnRjU0iuYKGJG4EDePoCRDXrFsc/TBWAkjNQI
         rz+wAfw4GaHxJ455g+O72PWpoRXSpNQJKoLZLPoT9Q6w8kpZF0hNY6nAK3/qWl4NpS
         dDjcHH8t8HvP5kS1zZl0WYP7NrXqATPRvspfTD60GjoLXge1EqEA5ePd+K5QOSO0iv
         u93zQ+mgvZVE0xy9qLCv5GnAgjGtxt2wHz8rTLKuJ3TM4M6DAfbboK4QklZ3OOU3mD
         Er/o6EDGzBAgw==
Received: by mail-ed1-f41.google.com with SMTP id j3so8622432edp.11
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 07:49:22 -0800 (PST)
X-Gm-Message-State: AOAM532fMQJm4f4DJnLVIvpn8K3KjeHbrBV7Ll2MsZk6d1dMOcOCKQnM
        gsRGJz7t32A7z9B3CtIocFBvd8NBYPaZpyKo5A==
X-Google-Smtp-Source: ABdhPJzPIjJEtlxOXhtTlMLI3nkgUMRWP0jfax7yMCce0mbCSNvsKUU38PwuXvjxbXhN6s/tpmkN6rboRA256BRYC8k=
X-Received: by 2002:aa7:c403:: with SMTP id j3mr14874186edq.137.1615564161374;
 Fri, 12 Mar 2021 07:49:21 -0800 (PST)
MIME-Version: 1.0
References: <20210311113456.15686-1-conor.dooley@microchip.com>
 <20210311174305.GA926017@robh.at.kernel.org> <b4c99657-e28c-cf4f-31e5-67a83ecbb4d0@microchip.com>
In-Reply-To: <b4c99657-e28c-cf4f-31e5-67a83ecbb4d0@microchip.com>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 12 Mar 2021 08:49:06 -0700
X-Gmail-Original-Message-ID: <CAL_JsqLxX3rJiwp-Ljg8gvavdaqrkg5q7bj5a23+TK2ZCMfXCA@mail.gmail.com>
Message-ID: <CAL_JsqLxX3rJiwp-Ljg8gvavdaqrkg5q7bj5a23+TK2ZCMfXCA@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] dt-bindings: add bindings for polarfire soc system controller
To:     Conor.Dooley@microchip.com
Cc:     Damien Le Moal <damien.lemoal@wdc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        devicetree@vger.kernel.org,
        linux-riscv <linux-riscv@lists.infradead.org>,
        =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
        Lewis.Hanly@microchip.com, Cyril.Jean@microchip.com,
        Daire McNamara <Daire.McNamara@microchip.com>,
        Atish Patra <atish.patra@wdc.com>,
        Anup Patel <anup.patel@wdc.com>, david.abdurachmanov@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 12, 2021 at 7:42 AM <Conor.Dooley@microchip.com> wrote:
>
> On 11/03/2021 17:43, Rob Herring wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >
> > On Thu, Mar 11, 2021 at 11:34:56AM +0000, conor.dooley@microchip.com wrote:
> >> From: Conor Dooley <conor.dooley@microchip.com>
> >>
> >> Add device tree bindings for the MSS system controller on
> >> the Microchip PolarFire SoC.
> >>
> >> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> >> ---
> >>  ...icrochip,polarfire-soc-sys-controller.yaml | 36 +++++++++++++++++++
> >>  1 file changed, 36 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
> >> new file mode 100644
> >> index 000000000000..222557f96a13
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
> >> @@ -0,0 +1,36 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: "http://devicetree.org/schemas/soc/microchip/microchip,polarfire-soc-sys-controller.yaml#"
> >> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> >> +
> >> +title: Microchip PolarFire SoC (MPFS) MSS (microprocessor subsystem) system controller
> >> +
> >> +maintainers:
> >> +  - Conor Dooley <conor.dooley@microchip.com>
> >> +
> >> +description: |
> >> +  The PolarFire SoC system controller can be accessed as a mailbox device.
> >> +  This document describes the bindings for that device.
> >> +
> >> +
> >> +properties:
> >> +
> >> +  allOf:
> >> +    - $ref: /schemas/mbox/mbox-consumer.yaml#properties
> > This defines a DT property 'allOf'. This would need to be at the top
> > level with 'properties' dropped. However, you generally don't want to
> > include consumer schemas. You need to define 'mboxes' property here
> > because you need to define how many and what they are if more than 1.
>
> In a previous version i was defining it like the below, but you didnt like the redefinition of the common property.
> Is there something in between the two that you are looking for?
>
>   mboxes:
>     maxItems: 1
>     description: |
>       phandle and index of the mailbox controller device node.

You don't need a description that applies to every 'mboxes' property.
You need either for 1 entry:

mboxes:
  maxItems: 1

Or for multiple entries:

mboxes:
  items:
    - description: What the 1st entry is for
    - description: What the 2nd entry is for
    ...

Same thing applies to all common properties where the binding defines
how many entries (reg, interrupts, clocks, power-domains, etc.).

Rob
