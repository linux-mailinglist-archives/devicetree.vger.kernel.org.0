Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89161393200
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 17:13:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236937AbhE0POs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 11:14:48 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:51610 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236920AbhE0POq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 11:14:46 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14RFD6jG127610;
        Thu, 27 May 2021 10:13:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1622128386;
        bh=5yy9IfeCyTMfVS0RXfRBU7GxvHu0VuAZs0qSRBLLNFY=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=XPuiEoBo0MPjZ1pwOBAmtj1AHvI0y4IiQgtqsOFqnPkFcMDec4Xi8YDoiBDkIyuyH
         v3zTTOTC7WBWDb1leTIcpLIZXQrQvAdXrUowxocyHO470b9qP1i+t2XMyDHOOSrIM+
         BquwUe9rmR+vzuJYA7Dv6YrMXVHPQ5PlJFR1hFdc=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14RFD6oX093440
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 27 May 2021 10:13:06 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 27
 May 2021 10:13:06 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 27 May 2021 10:13:06 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14RFD26S072986;
        Thu, 27 May 2021 10:13:02 -0500
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-j721e-main: Add ICSSG MDIO nodes
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20210514224759.9987-1-s-anna@ti.com>
 <20210514224759.9987-3-s-anna@ti.com>
From:   Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <499b9667-30c5-851a-0449-adadd594e5e7@ti.com>
Date:   Thu, 27 May 2021 18:13:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210514224759.9987-3-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 15/05/2021 01:47, Suman Anna wrote:
> The ICSSGs on K3 J721E SoCs contain an MDIO controller that can
> be used to control external PHYs associated with the Industrial
> Ethernet peripherals within each ICSSG instance. The MDIO module
> used within the ICSSG is similar to the MDIO Controller used
> in TI Davinci SoCs. A bus frequency of 1 MHz is chosen for the
> MDIO operations.
> 
> The nodes are added and enabled in the common k3-j721e-main.dtsi
> file by default, and disabled in the existing J721E board dts
> file. These nodes need pinctrl lines, and so should be enabled
> only on boards where they are actually wired and pinned out for
> ICSSG Ethernet. Any new board dts file should disable these if
> they are not sure.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>   .../dts/ti/k3-j721e-common-proc-board.dts     |  8 ++++++++
>   arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 20 +++++++++++++++++++
>   2 files changed, 28 insertions(+)
> 

Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>

-- 
Best regards,
grygorii
