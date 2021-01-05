Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AF612EAFD7
	for <lists+devicetree@lfdr.de>; Tue,  5 Jan 2021 17:16:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726132AbhAEQQH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jan 2021 11:16:07 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:55278 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725838AbhAEQQH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jan 2021 11:16:07 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 105GEP9n037618;
        Tue, 5 Jan 2021 10:14:25 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1609863265;
        bh=HIEr3UqjNZ7O5IMzpO99TdypYMLXysadS7JaGPF4Trk=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=godpBQ0jG6RTGkRNX925v7mhT0y+8LFlkbRrA6b9bZhbIIr7m/GzDE2zNqPjtSpGq
         InZeHOvbczdbGjAQZKkhjvb9YYNumGg/TIwp1A6uTg3s5RT2lxNYN0VtCgl/5O1lX6
         Z0n9bhdZiZCJ070dlz2D2gTyjs2WQw4WkjT+TgTY=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 105GEP81001846
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 5 Jan 2021 10:14:25 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 Jan
 2021 10:14:24 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 Jan 2021 10:14:24 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 105GEOum065563;
        Tue, 5 Jan 2021 10:14:24 -0600
Date:   Tue, 5 Jan 2021 10:14:24 -0600
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
Message-ID: <20210105161424.tt5p7h2kqtt3cx7a@relative>
References: <20201125052004.17823-1-d-gerlach@ti.com>
 <20201125052004.17823-3-d-gerlach@ti.com>
 <9ef76d15-46e5-884d-2b00-3228c46a73ac@ti.com>
 <d62d6ce5-b346-d734-0bda-d2dd0d360d5c@ti.com>
 <c8df15fa-a41f-72b2-6b9d-9e27cc449e31@ti.com>
 <20210105151220.vy42nw7uwv5ax3z6@library>
 <8a3c7296-f372-5392-2e6e-2cc6e0510adf@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8a3c7296-f372-5392-2e6e-2cc6e0510adf@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09:53-20210105, Dave Gerlach wrote:
> 
> On 1/5/21 9:12 AM, Nishanth Menon wrote:
> > On 22:02-20210104, Dave Gerlach wrote:
> >>>> This is atleast missing the ranges for On-Chip SRAM and the R5FSS, but those can
> >>>> always be added incrementally as well.
> >>
> >> Yes, I think they should be added incrementally once a user is present.
> >>
> > 
> > 
> > Most of the driver dependencies are resolved in v5.11-rc1. So, you
> > should be able to add a lot of devices (aka users) instead of making
> > this a barebones dts as the first introduction - I see no benefit of
> > things coming in piece meal - other than creating all kind of dependency
> > mayhem that I don't want to deal with.
> > 
> > Please make sure that all nodes for all peripherals that can be
> > introduced in v5.11-rc1 is part of this introduction of device.
> > 
> 
> Yeah that's no issue, I will add those that Suman referenced for v2 and
> then that covers every entry I am currently aware of.


Perfect, thanks.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
