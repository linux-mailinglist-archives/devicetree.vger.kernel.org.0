Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 781482FDD01
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 00:40:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727085AbhATWLQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 17:11:16 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:36132 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732512AbhATWFy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 17:05:54 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10KM4PbY117948;
        Wed, 20 Jan 2021 16:04:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611180265;
        bh=l7FPmUmxYIv5xnu29knvZYlZgQZERVnv7zqpQvWksUw=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=u4fejAdvldYPvqKGOI+K0QbkPPYBL3uvdhk81TvoLyaOoypEYwmkrnyoDnOv5jT15
         j37KG9pPgsd7Ii9kqfg1CY9TYUtP3XFduLQ/U/Kq02pCmftOtQRK0Ugsvctg6pplyJ
         Edof0W8/VUndwQKl6omNFjvEIPXYM2zDci512Vew=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10KM4Pt0101576
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 20 Jan 2021 16:04:25 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 Jan 2021 16:04:24 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 Jan 2021 16:04:24 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10KM4OTd014736;
        Wed, 20 Jan 2021 16:04:24 -0600
Date:   Wed, 20 Jan 2021 16:04:25 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Dave Gerlach <d-gerlach@ti.com>,
        Sudeep Holla <sudeep.holla@arm.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH v3 3/5] arm64: dts: ti: Add support for AM642 SoC
Message-ID: <20210120220425.dzixsaetrejkk2li@crusader>
References: <20210120202532.9011-1-d-gerlach@ti.com>
 <20210120202532.9011-4-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210120202532.9011-4-d-gerlach@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14:25-20210120, Dave Gerlach wrote:
> The AM642 SoC belongs to the K3 Multicore SoC architecture platform,
> providing advanced system integration to enable applications such as
> Motor Drives, PLC, Remote IO and IoT Gateways.

Hi Sudeep,
> +
> +	pmu: pmu {
> +		compatible = "arm,cortex-a53-pmu";
> +		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +	};


If this looks right to you, would be nice to have your reviewed-by :)

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
