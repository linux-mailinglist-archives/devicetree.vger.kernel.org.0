Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66CEE26389B
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 23:40:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727087AbgIIVki (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 17:40:38 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:60020 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726642AbgIIVke (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 17:40:34 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 089BtTiE005245;
        Wed, 9 Sep 2020 06:55:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599652529;
        bh=jf6peKTi+XBuM2xX6Zy28I6PCnEKDPFzVPtn3BR66QI=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=eFy8ExiPxhjdhd/qZ9QqRaIV2EfUdU/VSiTD3s72Nt3TNqUZ0sqTIHVqSfqN4ywSm
         4LpFPd78dDq9U0a1e3RyjfzYHsmP7/4tEWu+8y274iWK+TkC39reiSwBgMv7bye7Ln
         L8LA0oUclTgcHR5+HNR/6S8xiEK92c+CDZRlU5FI=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 089BtTHi017919
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 9 Sep 2020 06:55:29 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 9 Sep
 2020 06:55:28 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 9 Sep 2020 06:55:28 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 089BtSkE029773;
        Wed, 9 Sep 2020 06:55:28 -0500
Date:   Wed, 9 Sep 2020 06:55:28 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: ti,am65x-dss: add missing
 properties to dt-schema
Message-ID: <20200909115528.cdcpg3goqymefnwq@akan>
References: <20200827083045.76356-1-tomi.valkeinen@ti.com>
 <673547ac-51d9-bb8d-d001-c289e08568a6@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <673547ac-51d9-bb8d-d001-c289e08568a6@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16:11-20200908, Tomi Valkeinen wrote:
> Hi Rob, Tero, Nishanth,
> 
> On 27/08/2020 11:30, Tomi Valkeinen wrote:
> > Add assigned-clocks, assigned-clock-parents and dma-coherent optional
> > properties.
> > 
> > Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> > ---
> >  .../devicetree/bindings/display/ti/ti,am65x-dss.yaml  | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> 
> Any comments to this and the rest of the series?
> 


Looks fine to me. Once you get the bindings in to next, we can look to
get the dts in.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
