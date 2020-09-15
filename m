Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECDC226A43A
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 13:36:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726369AbgIOLgE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 07:36:04 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:44118 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726265AbgIOLes (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 07:34:48 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08FBYWs3006388;
        Tue, 15 Sep 2020 06:34:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600169672;
        bh=K6ggxIb8LLTvzfI7u5dYpVFU6RLfhRuEjbS3Tr+st/s=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=n7mC2qRNRJkT8X58wlGXjjy1BI0N1T22oiSSyuUmmMqff69ci/pl5Q4vEbU9ZcN9j
         rKFJPkUsA6Yi/I01eQ3VcAjcabj2ES/XqjaPbzGwFREGFjEv5MVFw3E1AwPqiZi20/
         Is6dlNYEgebkKroWJTtAaukfexJSlVjfXT09rRV4=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08FBYWf7009604;
        Tue, 15 Sep 2020 06:34:32 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 15
 Sep 2020 06:34:31 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 15 Sep 2020 06:34:31 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08FBYVjJ025768;
        Tue, 15 Sep 2020 06:34:31 -0500
Date:   Tue, 15 Sep 2020 06:34:31 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Vignesh Raghavendra <vigneshr@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 4/5] arm64: dts: ti: Add support for J7200 SoC
Message-ID: <20200915113431.672dtedc4bq6qtye@akan>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
 <20200914162231.2535-5-lokeshvutla@ti.com>
 <ca98b0c7-ba9b-f5de-bffa-67290f7e61a9@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ca98b0c7-ba9b-f5de-bffa-67290f7e61a9@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10:39-20200915, Vignesh Raghavendra wrote:
> [...]
> 
> On 9/14/20 9:52 PM, Lokesh Vutla wrote:
> > +
> > +	cbass_main: bus@100000 {
> > +		compatible = "simple-bus";
> > +		#address-cells = <2>;
> > +		#size-cells = <2>;
> > +		ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
> > +			 <0x00 0x00600000 0x00 0x00600000 0x00 0x00031100>, /* GPIO */
> > +			 <0x00 0x00a40000 0x00 0x00a40000 0x00 0x00000800>, /* timesync router */
> > +			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0d000000>, /* Most peripherals */
> > +			 <0x00 0x30000000 0x00 0x30000000 0x00 0x0c400000>, /* MAIN NAVSS */
> > +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00800000>, /* MSMC RAM */
> > +			 <0x00 0x18000000 0x00 0x18000000 0x00 0x08000000>, /* PCIe1 DAT0 */
> > +			 <0x41 0x00000000 0x41 0x00000000 0x01 0x00000000>, /* PCIe1 DAT1 */
> > +
> > +			 /* MCUSS_WKUP Range */
> > +			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
> > +			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>,
> > +			 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>,
> > +			 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>,
> > +			 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>,
> > +			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>,
> > +			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
> > +			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
> > +			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
> > +			 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>,
> > +			 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>,
> > +			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>,
> > +			 <0x07 0x00000000 0x07 0x00000000 0x01 0x00000000>;
> > +
> > +		cbass_mcu_wakeup: bus@28380000 {
> > +			compatible = "simple-bus";
> > +			#address-cells = <2>;
> > +			#size-cells = <2>;
> > +			ranges = <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>, /* MCU NAVSS*/
> > +				 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>, /* First peripheral window */
> > +				 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>, /* CTRL_MMR0 */
> > +				 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>, /* MCU R5F Core0 */
> > +				 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>, /* MCU R5F Core1 */
> > +				 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>, /* MCU SRAM */
> > +				 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>, /* WKUP peripheral window */
> > +				 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>, /* MMRs, remaining NAVSS */
> > +				 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>, /* CPSW */
> > +				 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>, /* OSPI register space */
> > +				 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>, /* FSS OSPI0/1 data region 0 */
> > +				 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>, /* FSS OSPI0 data region 3 */
> > +				 <0x07 0x00000000 0x07 0x00000000 0x01 0x00000000>; /* FSS OSPI1 data region 3 */
> > +		};
> > +	};
> > +};
> 
> OSPI ranges look good to me... Thanks for adding them!
> 
> [...]

Is that a reviewed-by ? if so, please add tag?

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
