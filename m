Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85D22545206
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 18:31:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244063AbiFIQbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 12:31:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233789AbiFIQbo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 12:31:44 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 45860379400
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 09:31:43 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C09E12FC;
        Thu,  9 Jun 2022 09:31:43 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7217E3F73B;
        Thu,  9 Jun 2022 09:31:41 -0700 (PDT)
Date:   Thu, 9 Jun 2022 17:31:38 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Liviu Dudau <liviu.dudau@arm.com>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        David Airlie <airlied@linux.ie>, Will Deacon <will@kernel.org>,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 10/11] dt-bindings: display: convert Arm Mali-DP to
 DT schema
Message-ID: <20220609173138.77ca1571@donnerap.cambridge.arm.com>
In-Reply-To: <YnumGEilUblhBx8E@e110455-lin.cambridge.arm.com>
References: <20220506140533.3566431-1-andre.przywara@arm.com>
        <20220506140533.3566431-11-andre.przywara@arm.com>
        <1651876793.707852.2407424.nullmailer@robh.at.kernel.org>
        <20220509144901.26707a1d@donnerap.cambridge.arm.com>
        <YnumGEilUblhBx8E@e110455-lin.cambridge.arm.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 11 May 2022 13:03:36 +0100
Liviu Dudau <liviu.dudau@arm.com> wrote:

Hi Liviu,

> On Mon, May 09, 2022 at 02:49:01PM +0100, Andre Przywara wrote:
> > On Fri, 06 May 2022 17:39:53 -0500
> > Rob Herring <robh@kernel.org> wrote:
> >   
> > > On Fri, 06 May 2022 15:05:32 +0100, Andre Przywara wrote:  
> > > > The Arm Mali Display Processor (DP) 5xx/6xx is a series of IP that scans
> > > > out a framebuffer and hands the pixels over to a digital signal encoder.
> > > > It supports multiple layers, scaling and rotation.
> > > > 
> > > > Convert the existing DT binding to DT schema.
> > > > 
> > > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > > ---
> > > >  .../bindings/display/arm,malidp.txt           |  68 ----------
> > > >  .../bindings/display/arm,malidp.yaml          | 116 ++++++++++++++++++
> > > >  2 files changed, 116 insertions(+), 68 deletions(-)
> > > >  delete mode 100644 Documentation/devicetree/bindings/display/arm,malidp.txt
> > > >  create mode 100644 Documentation/devicetree/bindings/display/arm,malidp.yaml
> > > >     
> > > 
> > > Running 'make dtbs_check' with the schema in this patch gives the
> > > following warnings. Consider if they are expected or the schema is
> > > incorrect. These may not be new warnings.
> > > 
> > > Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> > > This will change in the future.
> > > 
> > > Full log is available here: https://patchwork.ozlabs.org/patch/
> > > 
> > > 
> > > display@f080000: 'arm,malidp-arqos-value' does not match any of the regexes: 'pinctrl-[0-9]+'
> > > 	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dtb
> > > 	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dtb
> > > 	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var1.dtb
> > > 	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dtb
> > > 	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dtb
> > > 	arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dtb
> > > 	arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dtb
> > > 	arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dtb  
> > 
> > Ah, good point, I missed that directory when testing. I came up with the
> > following change on top:
> > 
> > ==============================
> > diff --git a/Documentation/devicetree/bindings/display/arm,malidp.yaml b/Documentation/devicetree/bindings/display/arm,malidp.yaml
> > index ea7b7100548bf..bc0d3f3ab2b75 100644
> > --- a/Documentation/devicetree/bindings/display/arm,malidp.yaml
> > +++ b/Documentation/devicetree/bindings/display/arm,malidp.yaml
> > @@ -76,6 +76,14 @@ properties:
> >      description:
> >        integer describing the ARQoS levels of DP500's QoS signaling
> >  
> > +  arm,malidp-arqos-value:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      Quality-of-Service value for the display engine FIFOs, to write
> > +      into the RQOS register of the DP500.
> > +      See the ARM Mali-DP500 TRM for details on the encoding.
> > +      If omitted, the RQOS register will not be changed.
> > +  
> 
> Actually, this needs to replace 'arm,malidp-arqos-high-level'. Commit ce6eb0253cba
> ("dt/bindings: display: Add optional property node define for Mali DP500") is
> introducing the wrong property (it mentions 'arm,malidp-arqos-value' in the commit
> message). There is no user of 'arm,malidp-arqos-high-level' in the kernel.

Ah, thanks for the report and the background, and sorry for the delay. I
verified that, and sent a patch[1], since this binding here was already
merged.

Cheers,
Andre

[1]
https://lore.kernel.org/linux-arm-kernel/20220609162729.1441760-1-andre.przywara@arm.com/T/#u

> 
> Appologies for signing off on the wrong patch content at that time.
> 
> Best regards,
> Liviu
> 
> >    port:
> >      $ref: /schemas/graph.yaml#/properties/port
> >      unevaluatedProperties: false
> > ==============================
> > 
> > Cheers,
> > Andre  
> 

