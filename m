Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 161E22C67E5
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 15:27:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730786AbgK0O0A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 09:26:00 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:56184 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730815AbgK0OZ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 09:25:59 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AREPris013931;
        Fri, 27 Nov 2020 08:25:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1606487153;
        bh=qmaKJ8gLVGgxtyDqLwXpGhMN8rNISIc5BlNBOt4YyKc=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=MZeMNadPxrioou6HlOcIxkt40MNcFWIdJUR23T9+L1bsVjClLdnmjLlo9Lc7oiiqq
         ziqt3tD9pqtJON2czPlT0Sla3HfpuJnRLCqNmFe0fQXtEK2GjtUMpo2IYfnSmvOE9f
         lce+v+NxQjuoWVwr8r/0JiJg5Zr+p0XVN9Ac35DQ=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AREPrs3090722
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 27 Nov 2020 08:25:53 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 27
 Nov 2020 08:25:53 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 27 Nov 2020 08:25:53 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AREPqgJ033541;
        Fri, 27 Nov 2020 08:25:53 -0600
Date:   Fri, 27 Nov 2020 08:25:52 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Peter Ujfalusi <peter.ujfalusi@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>, Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Suman Anna <s-anna@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH 0/3] arm64: Initial support for Texas Instruments AM642
 Platform
Message-ID: <20201127142552.47jmvepcf3hpbs2r@bullseye>
References: <20201125052004.17823-1-d-gerlach@ti.com>
 <fbec746d-f629-dd13-1ab9-5f530171748c@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <fbec746d-f629-dd13-1ab9-5f530171748c@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14:40-20201127, Peter Ujfalusi wrote:
> Dave,
> 
> On 25/11/2020 7.20, Dave Gerlach wrote:
> > This series adds initial support for the latest new SoC, AM642,
> > from Texas Instruments.
> > 
> > Additional detail can be found in the patch descriptions, also
> > see AM64X Technical Reference Manual (SPRUIM2, Nov 2020) for
> > further details: https://www.ti.com/lit/pdf/spruim2
> 
> Tested-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Reviewed-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> 
> fwiw, with these, plus the BCDMA/PKTDMA series [1] and one local dt
> patch to enable the DMAs on linux-next:
> https://pastebin.ubuntu.com/p/W5QkTMhrVp/
> 
> [1]
> https://lore.kernel.org/lkml/20201117105656.5236-1-peter.ujfalusi@ti.com/
> 

Thanks Peter, Lets see if Rob is able to get to the binding.. The queue
looks pretty deep today :(
-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
