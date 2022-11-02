Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 043EF616DEB
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 20:42:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229875AbiKBTmA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 15:42:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbiKBTl7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 15:41:59 -0400
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com [198.47.23.249])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 326D310D9
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 12:41:58 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2A2JfkAg005858;
        Wed, 2 Nov 2022 14:41:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1667418106;
        bh=RZL3NQLhGNU5QGx3OdaGdZVvg9x4UOH8qQy79a3Y4XQ=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=m3Uj5wzXt+qu5dbtq6p81g8zU/EzsO2BQZpIitQJhqZjyW6S3SzofN0GYLr5CGySZ
         R4ZYRGacGCSj+tFYO4n9wlPUa6ueoxIF/abKBpyzBxlfKwHEzCLtjSOMoXYBn75cj+
         39g13tlWkLQBlFryT8rDVUix5Q4y2fQbkuZPVtnw=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2A2Jfkbh050324
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 2 Nov 2022 14:41:46 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 2 Nov
 2022 14:41:46 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 2 Nov 2022 14:41:46 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2A2Jfkrv100649;
        Wed, 2 Nov 2022 14:41:46 -0500
Date:   Wed, 2 Nov 2022 14:41:46 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Wadim Egorov <W.Egorov@phytec.de>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "vigneshr@ti.com" <vigneshr@ti.com>,
        "kristo@kernel.org" <kristo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: Add support for phyBOARD-Electra-AM642
Message-ID: <20221102194146.zyaw2yzl7q4b6r7u@ducky>
References: <20221102134923.3438022-1-w.egorov@phytec.de>
 <20221102134923.3438022-2-w.egorov@phytec.de>
 <20221102151047.ucwh7dwmmqhx4nxf@rejoice>
 <1c73c3a0-458a-0005-f9a7-2d879e70cfe3@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1c73c3a0-458a-0005-f9a7-2d879e70cfe3@phytec.de>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16:56-20221102, Wadim Egorov wrote:
[...]

> >> +
> >> +#include <dt-bindings/gpio/gpio.h>
> >> +#include <dt-bindings/leds/common.h>
> >> +#include <dt-bindings/net/ti-dp83867.h>
> >> +
> >> +/ {
> >> +	model = "PHYTEC phyCORE-AM64x";
> >> +	compatible = "phytec,am64-phycore-som";
> > Does this match the binding?
> 
> Not very sure about the compatible I should chose here. It is probably not very 
> important since the compatible gets overridden by the carrier which specifies 
> the am642 SoC.
> Seems like the TI SoMs (k3-j7*som*.dtsi) do not add a compatible at all.
> 
> Or do you think we should add the "ti,am642" compatible here?

If the compatible of SoM makes much sense as a standalone OR usable
elsewhere, then it could be an enum option to allow for som, soC as a
valid combination.

On the other hand, simplistically, it does look like SoM (like the j7es
processor board) serves no specific purpose standalone, in which case
skipping it is more appropriate.

> >> +
> >> +		rtos_ipc_memory_region: ipc-memories@a5000000 {
> >> +			reg = <0x00 0xa5000000 0x00 0x00800000>;
> >> +			alignment = <0x1000>;

Since it is no-map, alignment does'nt serve any purpose, right?

> >> +			no-map;
> >> +		};
> > Does this memory map work for All usage of the SoM and firmware
> > combinations? OR would you like to keep the immutable memory map
> > reservation in the base device tree and use overlay for firmware
> > combination?
> 
> Can you be a bit more specific about the firmware and the combinations you are 
> talking about?
> For now, I just applied the same memory maps as the k3-am642-evm.dts.
> 
> Are you referring to the variants of the AM64 which can come with more or less 
> R5 cores?
> So an AM644 and AM641 would need different entries here and should be adjusted 
> e.g. per dt overlays?
> In that case it would be nice to have a minimal set of regions defined in the 
> som.dtsi.

Two things:
In the actual usage of the board, do folks tend to stick with the memory
map OR does the memory map tend to change? there are specific stuff like
DM or tisci or tfa that does look mandatory.

Further, if there are variations like the processor variations you
mention with differing R5 combinations (processor and firmware),
overlays will be your friend as it can scale across multiple carrier
board options as well.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
