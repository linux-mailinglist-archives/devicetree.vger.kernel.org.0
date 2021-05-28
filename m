Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFE093946F7
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 20:24:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229476AbhE1SZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 14:25:48 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:48972 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbhE1SZq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 14:25:46 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14SIO17a055904;
        Fri, 28 May 2021 13:24:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1622226241;
        bh=Qv5D+n9NVq/b0Smx4ZmeRddei8NU2jggFRswOZibXvQ=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=eMAVVUbfJIyBqQxgo65HMNbwuk610t+Ms2HIKH1MOqap6x6K36lK/luxG7Jp5Q7jf
         XeuNg9oofAr1TbhhOuQlxhaBex/2bVDwkM4esPJcJuG2FEOmqZ+nXcJAZ6YAySy8eB
         5/bAS61eyk/L2h78tdtxqsdDpNa2EqQ5jTF1JyAQ=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14SIO16q036586
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 28 May 2021 13:24:01 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 28
 May 2021 13:24:00 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 28 May 2021 13:24:01 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14SIO0I6051672;
        Fri, 28 May 2021 13:24:00 -0500
Date:   Fri, 28 May 2021 13:24:00 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Jan Kiszka <jan.kiszka@siemens.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH 0/2] Add ICSSG MDIO nodes on AM65x & J721E SoCs
Message-ID: <20210528182400.gjegxcl3umqqf5gl@filth>
References: <20210514224759.9987-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210514224759.9987-1-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17:47-20210514, Suman Anna wrote:
> Hi Nishanth,
> 
> The following series adds the base MDIO nodes representing the MDIO
> sub-module present in each of the ICSSG subsystem. These build on
> top of the foundation ICSSG nodes added in v5.13-rc1. Please see
> the previous ICSSG foundation series for more details [1]. 
> 
> The MDIO nodes would only be used on boards wired for supporting
> the ICSSG Ethernet, so in general are expected to be disabled in
> all boards where they are not pinned out.
> 
> I have added these as "enabled" by default in the base dtsi files,
> and have marked it disabled in all the existing board dts files
> until we are ready to add in the ICSSG Ethernet functionality.
> 
> Note that the bus_freq property throws a warning with W=2, but this
> had been a legacy property defined a long back. The davinci-mdio
> binding continues to use this.
> 
> regards
> Suman
> 
> [1] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210114194805.8231-1-s-anna@ti.com/

Did you mean https://lore.kernel.org/linux-arm-kernel/20210304160712.8452-1-s-anna@ti.com/
the series we actually did pick up?

> 
> Roger Quadros (1):
>   arm64: dts: ti: k3-am65-main: Add ICSSG MDIO nodes
> 
> Suman Anna (1):
>   arm64: dts: ti: k3-j721e-main: Add ICSSG MDIO nodes
> 

OK, does'nt apply on my tree as I am picking up patches.. There are
new cleanups and nodes I have picked up, so could be conflicting with
those.

Please rebase and post based on:
https://git.kernel.org/pub/scm/linux/kernel/git/nmenon/linux.git/log/?h=ti-k3-dts-next

I'd suggest you do that on monday OR base on monday's linux-next tag for
the next post.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
