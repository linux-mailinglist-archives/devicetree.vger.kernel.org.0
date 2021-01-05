Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A555F2EADFE
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 16:15:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725838AbhAEPOG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 10:14:06 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:39602 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725936AbhAEPOF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jan 2021 10:14:05 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 105FCMQn012022;
        Tue, 5 Jan 2021 09:12:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1609859542;
        bh=mEd6uiP7ZJTbYDLPwiYXQLyxW/qQsfNO7uWM61UIuqk=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=sMgDQUGtTm9DGwd1dqUY74OxvPLszViG8lp2ax++b9ZvV9XvfcNSkPn0TO42dmmkW
         VpUxpsz6+/l1i9tgPHekLAuIVJVDS0HNN6HGM7+jfS+DvyFMzFIONSr/28qxDnPUBu
         ta87y5W6lA7XYGcmlnHuic8YNlhA13t43y0x5Uyw=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 105FCMf4037322
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 5 Jan 2021 09:12:22 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 Jan
 2021 09:12:22 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 Jan 2021 09:12:22 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 105FCL8R002667;
        Tue, 5 Jan 2021 09:12:21 -0600
Date:   Tue, 5 Jan 2021 09:12:20 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Dave Gerlach <d-gerlach@ti.com>
CC:     Suman Anna <s-anna@ti.com>, Rob Herring <robh+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH 2/3] arm64: dts: ti: Add Support for AM642 SoC
Message-ID: <20210105151220.vy42nw7uwv5ax3z6@library>
References: <20201125052004.17823-1-d-gerlach@ti.com>
 <20201125052004.17823-3-d-gerlach@ti.com>
 <9ef76d15-46e5-884d-2b00-3228c46a73ac@ti.com>
 <d62d6ce5-b346-d734-0bda-d2dd0d360d5c@ti.com>
 <c8df15fa-a41f-72b2-6b9d-9e27cc449e31@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c8df15fa-a41f-72b2-6b9d-9e27cc449e31@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22:02-20210104, Dave Gerlach wrote:
> >> This is atleast missing the ranges for On-Chip SRAM and the R5FSS, but those can
> >> always be added incrementally as well.
> 
> Yes, I think they should be added incrementally once a user is present.
> 


Most of the driver dependencies are resolved in v5.11-rc1. So, you
should be able to add a lot of devices (aka users) instead of making
this a barebones dts as the first introduction - I see no benefit of
things coming in piece meal - other than creating all kind of dependency
mayhem that I don't want to deal with.

Please make sure that all nodes for all peripherals that can be
introduced in v5.11-rc1 is part of this introduction of device.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
