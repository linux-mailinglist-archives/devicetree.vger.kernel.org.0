Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23A1151DBC2
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 17:19:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355522AbiEFPXT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 May 2022 11:23:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347956AbiEFPXS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 May 2022 11:23:18 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4569C66AD7
        for <devicetree@vger.kernel.org>; Fri,  6 May 2022 08:19:35 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 837F614BF;
        Fri,  6 May 2022 08:19:34 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 41BC33F885;
        Fri,  6 May 2022 08:19:33 -0700 (PDT)
Date:   Fri, 6 May 2022 16:19:30 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Will Deacon <will@kernel.org>, iommu@lists.linux-foundation.org
Subject: Re: [PATCH 01/11] dt-bindings: iommu: arm,smmu-v3: make PRI IRQ
 optional
Message-ID: <20220506161930.787435ca@donnerap.cambridge.arm.com>
In-Reply-To: <4d37f41c-4463-73e4-7271-8d191e9953af@linaro.org>
References: <20220427112528.4097815-1-andre.przywara@arm.com>
        <20220427112528.4097815-2-andre.przywara@arm.com>
        <4d37f41c-4463-73e4-7271-8d191e9953af@linaro.org>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 28 Apr 2022 08:56:38 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

Hi,

> On 27/04/2022 13:25, Andre Przywara wrote:
> > The Page Request Interface (PRI) is an optional PCIe feature. As such, a
> > SMMU would not need to handle it if the PCIe host bridge or the SMMU
> > itself do not implement it. Also an SMMU could be connected to a platform
> > device, without any PRI functionality whatsoever.
> > In all cases there would be no SMMU PRI queue interrupt to be wired up
> > to an interrupt controller.
> > 
> > Relax the binding to allow specifying three interrupts, omitting the PRI
> > IRQ. At the moment, with the "eventq,gerror,priq,cmdq-sync" order, we
> > would need to sacrifice the command queue sync interrupt as well, which
> > might not be desired.
> > The Linux driver does not care about any order at all, just picks IRQs
> > based on their names, and treats all (wired) IRQs as optional.  
> 
> The last sentence is not a good explanation for the bindings. They are
> not about Linux and are used in other projects as well.

It was not meant as an explanation, but just as an assurance that we can
*change* the binding. At the moment the order is strict, so binding
compliant DT consumers could just read the first, second, third, and fourth
interrupt, without caring about the names. If we now allow a different
order, this would break those users.
I couldn't find any user of arm,smmu-v3 in FreeBSD, OpenBSD, U-Boot,
or Zephyr, hence my mentioning of Linux being fine, so it's safe to relax
the strict ordering requirement.
If someone knows about other DT consumers that need attention, I am
all ears.

Cheers,
Andre

> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  .../bindings/iommu/arm,smmu-v3.yaml           | 21 ++++++++++++++-----
> >  1 file changed, 16 insertions(+), 5 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
> > index e87bfbcc69135..6b3111f1f06ce 100644
> > --- a/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
> > +++ b/Documentation/devicetree/bindings/iommu/arm,smmu-v3.yaml
> > @@ -37,12 +37,23 @@ properties:
> >            hardware supports just a single, combined interrupt line.
> >            If provided, then the combined interrupt will be used in preference to
> >            any others.
> > -      - minItems: 2
> > +      - minItems: 1
> >          items:
> > -          - const: eventq     # Event Queue not empty
> > -          - const: gerror     # Global Error activated
> > -          - const: priq       # PRI Queue not empty
> > -          - const: cmdq-sync  # CMD_SYNC complete
> > +          - enum:
> > +              - eventq     # Event Queue not empty
> > +              - gerror     # Global Error activated
> > +              - cmdq-sync  # CMD_SYNC complete
> > +              - priq       # PRI Queue not empty
> > +          - enum:
> > +              - gerror
> > +              - cmdq-sync
> > +              - priq
> > +          - enum:
> > +              - cmdq-sync
> > +              - priq
> > +          - enum:
> > +              - cmdq-sync
> > +              - priq  
> 
> The order should be strict, so if you want the first interrupt optional,
> then:
> oneOf:
>  - items:
>     ... 4 items list
>  - items
>     ... 3 items list
> 
> Best regards,
> Krzysztof

