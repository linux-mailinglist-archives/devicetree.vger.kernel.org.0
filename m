Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DE602653F5
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 23:42:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728502AbgIJVmc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 17:42:32 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:46742 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730657AbgIJMwG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 08:52:06 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08ACph2t029218;
        Thu, 10 Sep 2020 07:51:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599742303;
        bh=Ijyx/Z3QPWT+RXPEAsyithN3fsFSMHdny3gj47bF4a8=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=v3UEvaQNaVMVlnRArKMSY8Oh6qnT4/T9fBuZELmq4AlErqmfJRmgjYxf21p0ERy8e
         XuevoSb6JFo2/DW2eXl3xL0XYsSM6EIKErDLaqX1TuSGySYHpSi9OIRmSvtqin+D8q
         YkEFBrzhQ5IbWOxR8hVKAXzcD8Vbgge9tnKJ2ZAo=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08ACphCA002028
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 10 Sep 2020 07:51:43 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 10
 Sep 2020 07:51:43 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 10 Sep 2020 07:51:43 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08ACphVv083193;
        Thu, 10 Sep 2020 07:51:43 -0500
Date:   Thu, 10 Sep 2020 07:51:43 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>, Tero Kristo <t-kristo@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 1/5] arm64: dts: ti: Makefile: Use ARCH_K3 for
 building dtbs
Message-ID: <20200910125143.v3xqgl4ywzzfztg7@akan>
References: <20200908162252.17672-1-lokeshvutla@ti.com>
 <20200908162252.17672-2-lokeshvutla@ti.com>
 <e18882ae-f6b2-7dd8-15ee-aa719888c91f@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e18882ae-f6b2-7dd8-15ee-aa719888c91f@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11:48-20200908, Suman Anna wrote:
> On 9/8/20 11:22 AM, Lokesh Vutla wrote:
> > To allow lesser dependency and better maintainability use CONFIG_ARCH_K3
> > for building dtbs for all K3 based devices. This is as per the
> > discussion in [0].
> > 
> > [0] https://lore.kernel.org/linux-arm-kernel/20200908112534.t5bgrjf7y3a6l2ss@akan/
> > 
> > Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> > ---
> >  arch/arm64/boot/dts/ti/Makefile | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> > index 05c0bebf65d4..e7bfb16fa816 100644
> > --- a/arch/arm64/boot/dts/ti/Makefile
> > +++ b/arch/arm64/boot/dts/ti/Makefile
> > @@ -6,6 +6,6 @@
> >  # Copyright (C) 2016-2018 Texas Instruments Incorporated - https://www.ti.com/
> 
> Please update the Copyright to use 2020, like 2016-2020. Minor comment, so can
> be fixed up while applying.

ok, I will fix it up locally when applying.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
