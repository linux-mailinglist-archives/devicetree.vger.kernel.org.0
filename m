Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D340326D74
	for <lists+devicetree@lfdr.de>; Sat, 27 Feb 2021 15:56:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230014AbhB0O45 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Feb 2021 09:56:57 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:59282 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbhB0O45 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Feb 2021 09:56:57 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11REtDth062152;
        Sat, 27 Feb 2021 08:55:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614437713;
        bh=qE17wORT8HC55BjuUHaeR2MnIFlbbjIcBnCb5vJHVnc=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=CxgkbBV2QeYjo4PQjbuQV40rxzNc0Cc0WaVw+RW7yHcDLmnhQLICBqnI+LyHvq/H3
         xPQ72tClvbuMjQx0EtSOspvumyiDMl1HythGbu5mji+hslAxyniRe/ktkpdd63Qr3w
         psYehOOhLFGM6BgN5PegCWVwAaFaeJ/rcGzPH2rw=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11REtD8J071642
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Sat, 27 Feb 2021 08:55:13 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sat, 27
 Feb 2021 08:55:12 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sat, 27 Feb 2021 08:55:12 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11REtCeV102943;
        Sat, 27 Feb 2021 08:55:12 -0600
Date:   Sat, 27 Feb 2021 08:55:12 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Dave Gerlach <d-gerlach@ti.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH v4 0/5] arm64: Initial support for Texas Instruments
 AM642 Platform
Message-ID: <20210227145512.fyhxrgxzh7ucqe7e@floral>
References: <20210226144257.5470-1-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210226144257.5470-1-d-gerlach@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08:42-20210226, Dave Gerlach wrote:
> Hi,
> This is v4 of the series to add initial support for the latest new SoC,
> AM642, from Texas Instruments. Additional detail can be found in the
> patch descriptions, also see AM64X Technical Reference Manual (SPRUIM2,
> Nov 2020) for further details: https://www.ti.com/lit/pdf/spruim2
> 
> This version contains a few minor fixes from v3:
> 
> * Add Rob's Ack to patch 2
> * Drop address-cells from interrupt controller node in patch 4 as [1] was dropped
> * Add Suman's Signed-off-by to patch 3
> * Fix date range in Makefile for TI dtbs in patch 5
> * Include Reviewed-by from several people from v3 for multiple patches
> 
> v3: https://lore.kernel.org/linux-arm-kernel/20210120202532.9011-1-d-gerlach@ti.com/
> v2: https://lore.kernel.org/linux-arm-kernel/20210119163927.774-1-d-gerlach@ti.com/
> v1: https://lore.kernel.org/linux-arm-kernel/20201125052004.17823-1-d-gerlach@ti.com/
> 
> Regards,
> Dave
> 
> [1] https://lore.kernel.org/linux-arm-kernel/161131973654.21299.8023411678794984222.b4-ty@ti.com/


I'd appreciate if you / team could provide a boot log on
pastebin.ubuntu.com with just these patches on latest linux-next ?

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D)/Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
