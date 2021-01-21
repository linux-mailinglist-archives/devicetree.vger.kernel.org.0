Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B1832FEBDA
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 14:30:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731999AbhAUNaK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 08:30:10 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:58920 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731165AbhAUN2p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 08:28:45 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LDRT6G065463;
        Thu, 21 Jan 2021 07:27:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611235649;
        bh=Ay0RKzQw5EqQxObLgOywZlSrpT/l74S0tnsXjRag4WA=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=xcD0C2t64FP1Rvy3N2zyYGOZxl/3dYCFPpWS5aGVmL3rrg5hnXcVuVgXj7KK24ebO
         p04A1LAmTcBq7KyJn9JncldxwFC284xJ/u8yYLIQCjo+RVDrO4Xom/ifaCFaAPaUTU
         o0ISYOlIE2pZV2FBtajZkysGBcaPsdA2UOn6fTAg=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LDRT6q063637
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 07:27:29 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 07:27:28 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 07:27:28 -0600
Received: from [10.250.233.179] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LDROEU038741;
        Thu, 21 Jan 2021 07:27:25 -0600
Subject: Re: [PATCH v2 4/5] arm64: dts: ti: k3-am64-main: Enable DMA support
To:     Dave Gerlach <d-gerlach@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Tony Lindgren <tony@atomide.com>, Suman Anna <s-anna@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
References: <20210119163927.774-1-d-gerlach@ti.com>
 <20210119163927.774-5-d-gerlach@ti.com>
From:   Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <f0975045-13ee-ef0e-a5c8-fcd219b17baf@ti.com>
Date:   Thu, 21 Jan 2021 18:57:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210119163927.774-5-d-gerlach@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/19/21 10:09 PM, Dave Gerlach wrote:
> From: Peter Ujfalusi <peter.ujfalusi@ti.com>
> 
> Add the nodes for DMSS INTA, BCDMA and PKTDMA to enable the use of the
> DMAs in the system.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> ---

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

Regards
Vignesh
