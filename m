Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4A162601EA
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 19:14:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731120AbgIGROS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 13:14:18 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:53288 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729591AbgIGOOz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 10:14:55 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 087EESMf108833;
        Mon, 7 Sep 2020 09:14:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599488068;
        bh=+A4v9Ak7dOI4FDfhBTSwxdeBG9OaXxayC7pbYW8Zdy4=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=gNuZ6q1FmpTUxRbd9zraMHGj9s8AgCVw81F+bArwSf/Iok/CEyV7d6FO/knauI+Xc
         r3APlfGPKN8pE+l7Owmr8cDYjGAIWRP8e9rrtXifa8UELtwGbX8a/BnjQyPUgQXVXx
         l4Pm7J0xMYyrJAlM+wihQzNPorcymbcIeNJxBZAI=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 087EESeR107111;
        Mon, 7 Sep 2020 09:14:28 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 7 Sep
 2020 09:14:27 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 7 Sep 2020 09:14:27 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 087EERug041718;
        Mon, 7 Sep 2020 09:14:27 -0500
Date:   Mon, 7 Sep 2020 09:14:27 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v2 0/4] arm64: Initial support for Texas Instrument's
 J7200 Platform
Message-ID: <20200907141427.ti6r3h6namv2hezw@akan>
References: <20200827065144.17683-1-lokeshvutla@ti.com>
 <de8d64eb-05fd-ed7d-61b8-1d8e13649ae8@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <de8d64eb-05fd-ed7d-61b8-1d8e13649ae8@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17:32-20200907, Lokesh Vutla wrote:
> Hi,
> 
> On 27/08/20 12:21 pm, Lokesh Vutla wrote:
> > This series adds initial support for latest new SoC, J7200, from Texas Instruments.
> > 
> > The J7200 SoC is a part of the K3 Multicore SoC architecture platform.
> > It is targeted for for automotive gateway, vehicle compute systems,
> > Vehicle-to-Vehicle (V2V) and Vehicle-to-Everything (V2X) applications.
> > The SoC aims to meet the complex processing needs of modern embedded products.
> > 
> > See J7200 Technical Reference Manual (SPRUIU1, June 2020)
> > for further details: https://www.ti.com/lit/pdf/spruiu1
> > 
> > Changes since v1:
> > - Swapped Patch 1 and 2 as suggested by Nishanth.
> > - Added description for each SoC in yaml bindings.
> > 
> > Testing:
> > - ./scripts/checkpatch --strict
> > 	- Few warningns about Line length exceeding 100 columns.
> > 	  But these are corresponding to comments
> > - v8make dtbs_check
> > - DT_SCHEMA_FLAGS="-u"
> >   DT_SCHEMA_FILES="Documentation/devicetree/bindings/arm/ti/k3.yaml"
> >   v8make dtbs_check
> > - DT_SCHEMA_FLAGS="-u"
> >   DT_SCHEMA_FILES="Documentation/devicetree/bindings/arm/ti/k3.yaml"
> >   v8make dt_binding_check
> 
> This series has been lying around for soo long with no major comments. It will
> be nice to get this merged. I understand we are waiting for Acks on yaml
> documentation but it would be bad to miss a merge window for a new platform
> because we are waiting for Acks on yaml conversion.

I do require Rob / DT maintainer to ack the DT yaml conversion and the
j7200 binding addition.

Besides yaml and compatibility acks, there are a few ancillary
comments to fix up.. Kconfig -> I think we should either stay with
status quo and create a new config option per SoC OR rename the
config to be generic (using j7200 with j721e SoC config is not very
consistent). In addition, around the stuff that is going to next in
parallel, the dts is generating additional warnings as well (DSS
etc). I think it might be easier if we wait for DT maintainer ack on
bindings prior to giving further cosmetic comments (To allow for any
additional changes to come in to -next).

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
