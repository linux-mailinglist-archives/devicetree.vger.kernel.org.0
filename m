Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81F7A32CE72
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 09:29:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233001AbhCDI2p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Mar 2021 03:28:45 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:45920 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233137AbhCDI2e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Mar 2021 03:28:34 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1248RMJQ008850;
        Thu, 4 Mar 2021 02:27:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614846442;
        bh=W/Uxq0vc7SG064ns+iXP//qEZpPyR8IzwSRVTIOI3SM=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=ISRWEr5UWcqoVxp6kZX8Lb5YN08FphBAn4FYUjbxFBGFxR2ua2qcxrdOC8oOMToV0
         i27JZjXcNMouBEG7E7AZdG9klqidAiGOpw4QUuKjoZb3E+cRf7hZEbm19CNCzw7bjo
         9xGHG+zqaCpb2u/0tcKC8IBuHFRbajPD7P+iZTDw=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1248RMYk042124
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 4 Mar 2021 02:27:22 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 4 Mar
 2021 02:27:20 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 4 Mar 2021 02:27:20 -0600
Received: from [10.250.234.120] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1248RHQF017876;
        Thu, 4 Mar 2021 02:27:17 -0600
Subject: Re: [PATCH 2/2] arm64: dts: ti: k3-j721e-main: Add ICSSG nodes
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <kristo@kernel.org>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20210114194805.8231-1-s-anna@ti.com>
 <20210114194805.8231-3-s-anna@ti.com>
From:   Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <b2bbeb33-6720-2b61-a98c-120829de86a2@ti.com>
Date:   Thu, 4 Mar 2021 13:57:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210114194805.8231-3-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/15/21 1:18 AM, Suman Anna wrote:
> Add the DT nodes for the ICSSG0 and ICSSG1 processor subsystems that are
> present on the K3 J721E SoCs. The two ICSSGs are identical to each other
> for the most part, with the ICSSG1 supporting slightly enhanced features
> for supporting SGMII PRU Ethernet. Each ICSSG instance is represented by
> a PRUSS subsystem node and other child nodes. These nodes are enabled by
> default.
> 

[...]

> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

[...]

Regards
Vignesh
