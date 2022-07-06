Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2398D5695D9
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 01:26:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230009AbiGFXZ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 19:25:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232370AbiGFXZ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 19:25:58 -0400
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3EEE2C122
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 16:25:56 -0700 (PDT)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 266NPieN066177;
        Wed, 6 Jul 2022 18:25:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1657149944;
        bh=4BRnxF3nLhXQixDuq7UdD8GzJ8Zm2rgsDBQbL+ioKMU=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=XmMStkkiBJFlQD7x3dsD6QzBKzRwYOH1p2/ZGYZDg97K/USk4gaJpE/i4WpU++wEv
         8xsWNJ4W1IKkeAU6ypK/z9h1VIxLszm3MblFXhemqXfrgtjY5b31wEKoNgj1ouFgFR
         v0B001CvR2crh/matObi+1qgACzbgseXzED0AhX4=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 266NPiKp041393
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 6 Jul 2022 18:25:44 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Wed, 6
 Jul 2022 18:25:44 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Wed, 6 Jul 2022 18:25:44 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 266NPi9s005285;
        Wed, 6 Jul 2022 18:25:44 -0500
Date:   Wed, 6 Jul 2022 18:25:44 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Georgi Vlaev <g-vlaev@ti.com>
CC:     Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am62-main: Add epwm nodes
Message-ID: <20220706232544.z5hj4i3rcmhhlp37@spinal>
References: <20220531205229.198011-1-g-vlaev@ti.com>
 <20220531205229.198011-2-g-vlaev@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220531205229.198011-2-g-vlaev@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23:52-20220531, Georgi Vlaev wrote:
[...]

> Signed-off-by: Georgi Vlaev <g-vlaev@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 33 ++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> index d08abad0bcf4..951f0309d6be 100644
> --- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
> @@ -54,6 +54,12 @@ phy_gmii_sel: phy@4044 {
>  			reg = <0x4044 0x8>;
>  			#phy-cells = <1>;
>  		};
> +
> +		epwm_tbclk: clock@4130 {
> +			compatible = "ti,am62-epwm-tbclk", "syscon";

Lets do this in the next rc1 cycle. we should have all the missing
pieces in master by then.

[...]

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
