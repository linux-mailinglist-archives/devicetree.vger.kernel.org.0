Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DACF82C7464
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:19:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388570AbgK1Vtl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:41 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:53532 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387678AbgK1UVB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Nov 2020 15:21:01 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ASGflTR059408;
        Sat, 28 Nov 2020 10:41:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606581707;
        bh=Fa1YXFsJNI6xMSU6Zh7w6W5GFNicthju+NAZLmb99Qw=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=ipKVk5CpzOuxUfpCobp3BYnNKJ2Xm/XDw1bmhfbYVscp01TJGfwdQZX12CaF1I2gF
         YLHaYUSF91zmO6cwH18qIvZCG7PGEvrlfFVNQnE4eVIhXtrAkLz2loEPgps4BmlNfg
         UAsBkoFVNZZqFtMTmq03g9jRW81Ge9U9MLOZlza4=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ASGflpj011948
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sat, 28 Nov 2020 10:41:47 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sat, 28
 Nov 2020 10:41:47 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sat, 28 Nov 2020 10:41:47 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ASGflL1063586;
        Sat, 28 Nov 2020 10:41:47 -0600
Date:   Sat, 28 Nov 2020 10:41:46 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Sekhar Nori <nsekhar@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 2/2] arm64: dts: ti: k3-j721e-common-proc-board: Add
 support SD card UHS modes
Message-ID: <20201128164146.53zz4vfg7jg2nppf@refinance>
References: <20201127201024.64836-1-nsekhar@ti.com>
 <20201127201024.64836-3-nsekhar@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20201127201024.64836-3-nsekhar@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01:40-20201128, Sekhar Nori wrote:
[...]

> -	main_usbss0_pins_default: main-usbss0-pins-default {
> +	vdd_sd_dv_alt_pins_default: vdd_sd_dv_alt_pins_default {
> +		pinctrl-single,pins = <
> +			J721E_IOPAD(0x1d8, PIN_INPUT, 7) /* (W4) SPI1_CS1.GPIO0_117 */
> +		>;
> +	};
> +
> +	main_usbss0_pins_default: main_usbss0_pins_default {

Could you not switch the node name to _ ? We just fixed that
bunch. Now, this patch introduces the following with W=2:
arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts: /bus@100000/pinctrl@11c000/vdd_sd_dv_alt_pins_default: Character '_' not recommended in node name
arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts: /bus@100000/pinctrl@11c000/main_usbss0_pins_default: Character '_' not recommended in node name


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
