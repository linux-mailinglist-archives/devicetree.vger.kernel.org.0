Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 914A232CE3A
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 09:16:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236415AbhCDIP0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Mar 2021 03:15:26 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:42466 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236494AbhCDIPS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Mar 2021 03:15:18 -0500
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1248EJMF003436;
        Thu, 4 Mar 2021 02:14:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1614845659;
        bh=60b5R2qFSrQYCpEabJ8Xk7HhVDtHSPICkdPKMBWdmdg=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=bf/LB1RmnFx6hVwl3fj3QgevYR2Av6i8tybUswRXnFaZNzZEQpJyFkhUdZ2vCwodb
         slT3cevydZlMbbSGxi0U+BaYr3LlELU9xsFajIKAJ4jO0WvDOnrxaRTFEaGsL/sieW
         fVabD6r//VI+aHrDJDefv6gYH/VIpGLDNKCm75ls=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1248EJ4m098949
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 4 Mar 2021 02:14:19 -0600
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 4 Mar
 2021 02:14:19 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 4 Mar 2021 02:14:19 -0600
Received: from [10.250.234.120] (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1248EGRX025685;
        Thu, 4 Mar 2021 02:14:16 -0600
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am65-main: Add ICSSG nodes
To:     Suman Anna <s-anna@ti.com>, Nishanth Menon <nm@ti.com>,
        Tero Kristo <kristo@kernel.org>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
References: <20210114194805.8231-1-s-anna@ti.com>
 <20210114194805.8231-2-s-anna@ti.com>
From:   Vignesh Raghavendra <vigneshr@ti.com>
Message-ID: <d624260f-ed26-c0d6-a3a9-6c074277c62d@ti.com>
Date:   Thu, 4 Mar 2021 13:44:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210114194805.8231-2-s-anna@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/15/21 1:18 AM, Suman Anna wrote:
> Add the DT nodes for the ICSSG0, ICSSG1 and ICSSG2 processor subsystems
> that are present on the K3 AM65x SoCs. The three ICSSGs are identical
> to each other for the most part, with the ICSSG2 supporting slightly
> enhanced features for supporting SGMII PRU Ethernet. Each ICSSG instance
> is represented by a PRUSS subsystem node. These nodes are enabled by
> default.
> 
[...]
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> ---

Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>

[...]

Regards
Vignesh
