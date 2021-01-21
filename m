Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B17342FECED
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 15:34:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728456AbhAUOXq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 09:23:46 -0500
Received: from fllv0015.ext.ti.com ([198.47.19.141]:51138 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729554AbhAUOXb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 09:23:31 -0500
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LELlx7043712;
        Thu, 21 Jan 2021 08:21:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611238907;
        bh=gAhMZQ5zRcDg5RiXsNx3MsyaWQUC2DaAOoW6ulEBMuM=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=wvU3adU9rGAxn9Unxn9Q3kVTpETLdGi88/Sq3A1e3pzgBCoGKbbRYe7KSn3Ad6OAR
         prWjp5AszmYsaoy7vXUdNNYudWS3QQ4uEczla/2L0Yq8pI0rsoGqSSMuh3o+xdL3ik
         5USV9IVmT4WSZN3ktDcjBUNsTta1C+0fDc01uKHc=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LELlQ9095168
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 08:21:47 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 08:21:46 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 08:21:46 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LELkRa106212;
        Thu, 21 Jan 2021 08:21:46 -0600
Date:   Thu, 21 Jan 2021 08:21:46 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Vignesh Raghavendra <vigneshr@ti.com>
CC:     Dave Gerlach <d-gerlach@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>, Suman Anna <s-anna@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: ti: k3-am64-main: Enable DMA support
Message-ID: <20210121142146.g7oqlhu5xxnnpe4u@provider>
References: <20210119163927.774-1-d-gerlach@ti.com>
 <20210119163927.774-5-d-gerlach@ti.com>
 <f0975045-13ee-ef0e-a5c8-fcd219b17baf@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f0975045-13ee-ef0e-a5c8-fcd219b17baf@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18:57-20210121, Vignesh Raghavendra wrote:
> 
> 
> On 1/19/21 10:09 PM, Dave Gerlach wrote:
> > From: Peter Ujfalusi <peter.ujfalusi@ti.com>
> > 
> > Add the nodes for DMSS INTA, BCDMA and PKTDMA to enable the use of the
> > DMAs in the system.
> > 
> > Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> > Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> > ---
> 
> Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Is V3 of this series valid as well?

https://lore.kernel.org/linux-arm-kernel/20210120202532.9011-5-d-gerlach@ti.com/


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
