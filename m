Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D6F147000C
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 12:35:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240585AbhLJLiw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 06:38:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237724AbhLJLiv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 06:38:51 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 929B4C061746
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 03:35:16 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id y13so28576359edd.13
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 03:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sHUQnknpRoRpINaobvY2dor6jsSdIZSUoZ8Zm4a2q70=;
        b=LadmZCjaZOlcssnT0OFEV4tiYNuniS1zjMbnun6AR2XupZ5FHTEh+sbVXdnATwo0XX
         YHHOr3n+69Mbvv55eH7BOrXueoWN6mAmF+irOtwoIcFiUxXPMMJ40dSK6aIuzvMicgtP
         5CWdUJmIpooWMNySNL11fA+tq2liADfyiULGsbwe0bJrEolmvlpI0f0cp44u8bt8aHtn
         bEjoLPfT0VlGidN+XNd7gA61tRT71HFaxa1z6MZ6FrHVpyaiTvyqg1yk3lxDuRrHGrXo
         PaYIetNfeTrrxatKOVumscoyVV5hPXXgue56dK0D0neUfogL/gkLb2xDxjGzQnjRL4T0
         7h1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sHUQnknpRoRpINaobvY2dor6jsSdIZSUoZ8Zm4a2q70=;
        b=Z33bYMUP78XB/hySeB+Vc+PfFe4dkhyuHkN8IT7q68nd9LHjNqQ1nTLkP+eUAv1ZcM
         urYu7+fFuIvx7r6CzhDYA4C2x17p13L2DlLtbZxUr/XoS6Z/H1KQ1eW6iTiUNT5PQGaX
         C3+WEcZys1X1rFaKZzz9e2vcgZK51tbK5FBljDgwbKOvuPgn7HuYjnqAXQGYBZd1Spgn
         /4KzpFjUCJBjh5tLqVsMBDPduwHTBdC7l89B8mWlh/ayY7Gjb7TDM6rU2z8VziJmgh87
         Md3sRS8+CKfqvAgg2l0b8fMojGMDxtMc3HM9jdWIjkCdejy1OGzJnkOFwW6bdX9HalZG
         4mMQ==
X-Gm-Message-State: AOAM533H306KMRCGDbv76au6kRBwl2B/aqmmjcqQJqSRebZukvGag+nZ
        RJcHHrYdHYlCu4wCqFyzTYQddg==
X-Google-Smtp-Source: ABdhPJzsYrBDIoY58eWULptlz5iAZzxR1uzAUkqovIWOgsfT1CCTkFzLpJgHyonknttyFtOH9BeMBA==
X-Received: by 2002:a17:907:d0b:: with SMTP id gn11mr22731241ejc.355.1639136114749;
        Fri, 10 Dec 2021 03:35:14 -0800 (PST)
Received: from myrica (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id g9sm1373553edb.52.2021.12.10.03.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 03:35:14 -0800 (PST)
Date:   Fri, 10 Dec 2021 11:34:52 +0000
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Linux IOMMU <iommu@lists.linux-foundation.org>,
        devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Jay Chen <jkchen@linux.alibaba.com>,
        Leo Yan <leo.yan@linaro.org>, uchida.jun@socionext.com
Subject: Re: [PATCH 1/2] dt-bindings: Add Arm SMMUv3 PMCG binding
Message-ID: <YbM7XNz9V/zbQuyF@myrica>
References: <20211116113536.69758-1-jean-philippe@linaro.org>
 <20211116113536.69758-2-jean-philippe@linaro.org>
 <CAL_JsqJ6v6HKA3ifQoeVh+2iABL7fBPCS0ntTXb0BA8LO0vi8g@mail.gmail.com>
 <2f17b812-367c-da75-a2a6-0c16a93cf4a3@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2f17b812-367c-da75-a2a6-0c16a93cf4a3@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 18, 2021 at 03:50:54PM +0000, Robin Murphy wrote:
> > > +  An SMMUv3 may have several Performance Monitor Counter Group (PMCG).
> > > +  They are standalone performance monitoring units that support both
> > > +  architected and IMPLEMENTATION DEFINED event counters.
> > 
> > Humm, I don't know that I agree they are standalone. They could be I
> > guess, but looking at the MMU-600 spec the PMCG looks like it's just a
> > subset of registers in a larger block. This seems similar to MPAM
> > (which I'm working on a binding for) where it's just a register map
> > and interrupts, but every other possible resource is unspecified by
> > the architecture.
> 
> They're "standalone" in the sense that they don't have to be part of an
> SMMU, they could be part of a PCIe root complex or other SoC device that
> couples to an SMMU (e.g. anything that can speak AMBA DTI, in the case of
> our SMMU implementations).

The "standalone" word came from the SMMUv3 spec (IHI0070D.b 10.1):

  The Performance Monitor Counter Groups are standalone monitoring
  facilities and, as such, can be implemented in separate components that
  are all associated with (but not necessarily part of) an SMMU.

> 
> In fact our SMMU TBUs are pretty much separate devices themselves, they just
> *only* speak DTI, so access to their registers is proxied through the TCU
> programming interface.
> 
> > The simplest change from this would be just specifying that the PMCG
> > is child node(s) of whatever it is part of. The extreme would be this
> > is all part of the SMMU binding (i.e. reg entry X is PMCG registers,
> > interrupts entry Y is pmu irq).
> 
> Being a child of its associated device doesn't seem too bad semantically,
> however how would we describe a PMCG as a child of a PCIe node when its
> "reg" property still exists in the parent address space and not PCI
> config/memory space like any of its siblings? Also in practical terms,
> consuming that binding in Linux and getting the things to probe when it may
> want to be independent of whether we even understand the parent node at all
> could be... unpleasant.

So there are multiple options for what "the PMCG is part of".

(a) The SMMU: the spec guarantees that a PMCG is associated with an SMMU.

(b) The MMIO region: may be within the SMMU (as with MMU-600), outside of
    it (as does another implementation, two 64k pages after the SMMU base)
    or, theoretically, within a separate device (e.g. PCIe controller).

(c) The thing being measured: does not necessarily match the MMIO region.
    For example a TBU attached to the PCIe RC but the PMCG MMIO is within
    the SMMU region.

(d) None: the PMCG can be probed and driven separately from the SMMU and
    other components, as demonstrated by Linux.

Which one is normally picked to decide where to insert a devicetree node?
I guess (b)?  I picked (d) so far as the easiest choice.

(a) is also a reasonable choice, being based on the spec, but it might be
confusing to have a PMCG node inside the SMMU node when the MMIO region is
external, possibly belonging to another device. For the same reason we
could discard (c).

(b) feels more natural, although it's not clear what to do when the PMCG
MMIO region is external or adjacent to the SMMU region. Does the node go
inside the SMMU node or one level up?

Thanks,
Jean

> 
> Robin.
> 
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    pattern: "^pmu@[0-9a-f]*"
> > 
> > s/*/+/
> > 
> > Need at least 1 digit.
> > 
> > > +  compatible:
> > > +    oneOf:
> > > +      - items:
> > > +        - enum:
> > > +          - hisilicon,smmu-v3-pmcg-hip08
> > > +        - const: arm,smmu-v3-pmcg
> > > +      - const: arm,smmu-v3-pmcg
> > > +
> > > +  reg:
> > > +    description: |
> > > +      Base addresses of the PMCG registers. Either a single address for Page 0
> > > +      or an additional address for Page 1, where some registers can be
> > > +      relocated with SMMU_PMCG_CFGR.RELOC_CTRS.
> > > +    minItems: 1
> > > +    maxItems: 2
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  msi-parent: true
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |+
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +    #include <dt-bindings/interrupt-controller/irq.h>
> > > +
> > > +    pmu@2b420000 {
> > > +            compatible = "arm,smmu-v3-pmcg";
> > > +            reg = <0 0x2b420000 0 0x1000>,
> > > +                  <0 0x2b430000 0 0x1000>;
> > > +            interrupts = <GIC_SPI 80 IRQ_TYPE_EDGE_RISING>;
> > > +            msi-parent = <&its 0xff0000>;
> > > +    };
> > > +
> > > +    pmu@2b440000 {
> > > +            compatible = "arm,smmu-v3-pmcg";
> > > +            reg = <0 0x2b440000 0 0x1000>,
> > > +                  <0 0x2b450000 0 0x1000>;
> > > +            interrupts = <GIC_SPI 81 IRQ_TYPE_EDGE_RISING>;
> > > +            msi-parent = <&its 0xff0000>;
> > > +    };
> > > --
> > > 2.33.1
> > > 
