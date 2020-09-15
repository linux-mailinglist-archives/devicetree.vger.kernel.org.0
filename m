Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECCC826A444
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 13:39:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726189AbgIOLhy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 07:37:54 -0400
Received: from lelv0142.ext.ti.com ([198.47.23.249]:45220 "EHLO
        lelv0142.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726324AbgIOLgS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 07:36:18 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08FBZpbv017175;
        Tue, 15 Sep 2020 06:35:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1600169751;
        bh=iqfpir7137qFHMCPxzH2s2GOamS8jvihmHY3B3YS8YU=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=TBDjOglcXPcnbHgnvsAW9qVTGGMgV9rC14q6lzwPZSdHOL+tUtJZ+/6G9FAzOMbc0
         /FWi0PjbjKFl4QAmb7OWmnDcCc+HwjCejXd52XwWw+wLaU4OrgTEHe1CpdK0bH152h
         bWPK7JdJQxbuDiFzpPiBYE8jFdZqhZVbfzQ6myUE=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08FBZpTr044250
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 15 Sep 2020 06:35:51 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 15
 Sep 2020 06:35:50 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 15 Sep 2020 06:35:50 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08FBZo5n038465;
        Tue, 15 Sep 2020 06:35:50 -0500
Date:   Tue, 15 Sep 2020 06:35:50 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 0/5] arm64: Initial support for Texas Instrument's
 J7200 Platform
Message-ID: <20200915113550.pxwizhdjti6y65p4@akan>
References: <20200914162231.2535-1-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20200914162231.2535-1-lokeshvutla@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21:52-20200914, Lokesh Vutla wrote:
> This series adds initial support for latest new SoC, J7200, from Texas Instruments.
> 
[..]

> 
> Lokesh Vutla (5):
>   arm64: dts: ti: Makefile: Use ARCH_K3 for building dtbs
>   dt-bindings: arm: ti: Convert K3 board/soc bindings to DT schema
>   dt-bindings: arm: ti: Add bindings for J7200 SoC
>   arm64: dts: ti: Add support for J7200 SoC
>   arm64: dts: ti: Add support for J7200 Common Processor Board
> 
>  .../devicetree/bindings/arm/ti/k3.txt         |  26 --
>  .../devicetree/bindings/arm/ti/k3.yaml        |  35 +++
> 
Series looks fine to me at least.. but the binding changes, will be
great if DT maintainers could review it.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
