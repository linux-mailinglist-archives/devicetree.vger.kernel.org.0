Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6740125D819
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 13:55:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729297AbgIDLz2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 07:55:28 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:54020 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728588AbgIDLz0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Sep 2020 07:55:26 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 084BtKwG081282;
        Fri, 4 Sep 2020 06:55:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599220520;
        bh=8A/CI29+3++7WCMzfiZKo1l9Zv+CBCcHO9tXvKi9M/w=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=WuZTi+yn2HRPIYCxRpr2dS2BnwLOiSg0xrEGr6MB+r2e9p9ecjkIxBWrIV0OcSal2
         BhjkqzfzcmFuQr3t2eHQdjWryx6zcmuGkJmPjmHi2bjm9CH8JGHrwAULcMkJMPjSlV
         m4oq1u40WAsUCIZFxHYkaiq+3yE2cpZ2TLiRrWdA=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 084BtJfM100552
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 4 Sep 2020 06:55:20 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 06:55:19 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 06:55:19 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 084BtJom066987;
        Fri, 4 Sep 2020 06:55:19 -0500
Date:   Fri, 4 Sep 2020 06:55:19 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: ti: Convert K3 board/soc
 bindings to DT schema
Message-ID: <20200904115519.mawa7lev37c6rgza@akan>
References: <20200827065144.17683-1-lokeshvutla@ti.com>
 <20200827065144.17683-2-lokeshvutla@ti.com>
 <20200828004105.givypeu3vextefc6@akan>
 <1c9508ce-9336-e20a-5b58-5dd257247273@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1c9508ce-9336-e20a-5b58-5dd257247273@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08:44-20200828, Lokesh Vutla wrote:
> Hi Nishanth,
> 
> On 28/08/20 6:11 am, Nishanth Menon wrote:
> > On 12:21-20200827, Lokesh Vutla wrote:
> >> Convert TI K3 Board/SoC bindings to DT schema format.
> >>
> >> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> >> ---
> >>  .../devicetree/bindings/arm/ti/k3.txt         | 26 ----------------
> >>  .../devicetree/bindings/arm/ti/k3.yaml        | 31 +++++++++++++++++++
> >>  MAINTAINERS                                   |  2 +-
> >>  3 files changed, 32 insertions(+), 27 deletions(-)
> >>  delete mode 100644 Documentation/devicetree/bindings/arm/ti/k3.txt
> >>  create mode 100644 Documentation/devicetree/bindings/arm/ti/k3.yaml
> > 
> > 
> > Thanks for doing this, but I have a problem with dbs_check and dtbs
> > W=2 build warnings on existing dts files that this exposes further..
> 
> IMHO, that should not block the conversion to yaml bindings. May I know the
> problem you are seeing?
> 
> > Do you mind pulling this patch out of this j7200 series ? I would
> > rather us cleanup the warnings a bit as well, and deal with yaml
> > conversion seperate from j7200 bindings?
> 

I just wanted to follow up on this thread as well.. [1] attempts stage 1
of cleanup, and we can follow up cleanup in parallel.


So if Rob acks the binding, we can carry on based on the window it fits
in.

[1]
https://lore.kernel.org/linux-arm-kernel/20200903130015.21361-1-nm@ti.com/

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
