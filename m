Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 433375E8FBB
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 22:47:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230451AbiIXUrA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 16:47:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229589AbiIXUq7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 16:46:59 -0400
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BDB336790
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 13:46:58 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 28OKkXOi113937;
        Sat, 24 Sep 2022 15:46:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1664052394;
        bh=RFfO3pmV06NaSrF2sx7gaTEF8L9Gi/KFBzOH3rdh7l0=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=EHo3oHQmsQ+QB3NEQlM25keno799tmnkl42xaT7sLoHZUyq+m4OFuUG+g994/OxJg
         I0T6aKP42U9lZnf9wzOSBBNiAl+4hdgkBeN/TRS5VbF2uLfguCil0U2BYrGTvI5DYB
         9yJlrgNziOmMlNUSidSedfI9bq/M6blay3/w06KE=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 28OKkXRK028751
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sat, 24 Sep 2022 15:46:33 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Sat, 24
 Sep 2022 15:46:33 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Sat, 24 Sep 2022 15:46:33 -0500
Received: from ubuntu (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with SMTP id 28OKkTRW016099;
        Sat, 24 Sep 2022 15:46:31 -0500
Date:   Sat, 24 Sep 2022 13:46:29 -0700
From:   Matt Ranostay <mranostay@ti.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC:     <devicetree@vger.kernel.org>, <vigneshr@ti.com>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/2] dt-bindings: PCI: ti,j721e-pci-host: add interrupt
 controller definition
Message-ID: <Yy9spckVoTl1pGmP@ubuntu>
References: <20220922204434.74764-1-mranostay@ti.com>
 <20220922204434.74764-2-mranostay@ti.com>
 <20220923093111.hutfiwvk6ky7yqwq@krzk-bin>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220923093111.hutfiwvk6ky7yqwq@krzk-bin>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 23, 2022 at 11:31:11AM +0200, Krzysztof Kozlowski wrote:
> On Thu, 22 Sep 2022 13:44:33 -0700, Matt Ranostay wrote:
> > Add missing 'interrupt-controller' property and related subnodes to resolve
> > the following warning:
> 
> You did not Cc respective maintainers on your patch. Use
> scripts/get_maintainers.pl.
>

Yeah noticed I forgot to Cc Rob Herring :-/

> 
> > 
> > arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dtb: pcie@2910000: Unevaluated properties are not allowed ('interrupt-conroller' was unexpected)
> >         From schema: Documentation/devicetree/bindings/pci/ti,j721e-pci-host.yaml
> > 
> > Signed-off-by: Matt Ranostay <mranostay@ti.com>
> > ---
> >  .../devicetree/bindings/pci/ti,j721e-pci-host.yaml  | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/1681334
> 
> 
> pcie@2900000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
> 	arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dtb
> 	arch/arm64/boot/dts/ti/k3-j721e-sk.dtb
> 
> pcie@2910000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
> 	arch/arm64/boot/dts/ti/k3-j7200-common-proc-board.dtb
> 	arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dtb
> 	arch/arm64/boot/dts/ti/k3-j721e-sk.dtb
> 
> pcie@2920000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
> 	arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dtb
> 	arch/arm64/boot/dts/ti/k3-j721e-sk.dtb
> 
> pcie@2930000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
> 	arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dtb
> 	arch/arm64/boot/dts/ti/k3-j721e-sk.dtb
> 
> pcie@f102000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts' were unexpected)
> 	arch/arm64/boot/dts/ti/k3-am642-evm.dtb
> 	arch/arm64/boot/dts/ti/k3-am642-sk.dtb

This get resolved in the second patchset in this series.

- Matt
