Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 428802611DB
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 15:14:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729189AbgIHNN4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 09:13:56 -0400
Received: from fllv0016.ext.ti.com ([198.47.19.142]:43942 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729941AbgIHL0K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 07:26:10 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 088BPYo0125649;
        Tue, 8 Sep 2020 06:25:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1599564334;
        bh=ma5FyqGZzBv1gBvZ6mKpGD4wkyeCYZk4WZHIeT6RzQ0=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=zL6F4VrpL8vE5XQemBuoDuzb5SICWAuJ7B7FYKqmfcJYCKJFvmiDHEybu2r9/yPSa
         CIhde4yH0GdynLKmnSmLKYa1TSI+G3hxxW58MULRHU+2ptuffL4RyZ8eKFzIAtxNKt
         eyyUsJjjMtYPSrEqpzEZcBef4FzZR4asqpfiV33c=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 088BPYR5062754
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 8 Sep 2020 06:25:34 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 8 Sep
 2020 06:25:34 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 8 Sep 2020 06:25:34 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 088BPYOu130695;
        Tue, 8 Sep 2020 06:25:34 -0500
Date:   Tue, 8 Sep 2020 06:25:34 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Tero Kristo <t-kristo@ti.com>
CC:     Lokesh Vutla <lokeshvutla@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Suman Anna <s-anna@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH v2 0/4] arm64: Initial support for Texas Instrument's
 J7200 Platform
Message-ID: <20200908112534.t5bgrjf7y3a6l2ss@akan>
References: <20200827065144.17683-1-lokeshvutla@ti.com>
 <de8d64eb-05fd-ed7d-61b8-1d8e13649ae8@ti.com>
 <20200907141427.ti6r3h6namv2hezw@akan>
 <9d8d6980-0b22-da45-52af-474c6d96c873@ti.com>
 <20200907234833.r376hhl64q55gd7o@akan>
 <d89cf38a-da57-b1ca-dc80-0c2cca2ada38@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d89cf38a-da57-b1ca-dc80-0c2cca2ada38@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:55-20200908, Tero Kristo wrote:
> On 08/09/2020 02:48, Nishanth Menon wrote:
> > On 19:53-20200907, Lokesh Vutla wrote:
> > 
> > [... I should have responded to the correct patch..]
> > > > Besides yaml and compatibility acks, there are a few ancillary
> > > > comments to fix up.. Kconfig -> I think we should either stay with
> > > > status quo and create a new config option per SoC OR rename the
> > > > config to be generic (using j7200 with j721e SoC config is not very
> > > 
> > > Please suggest your preference here. I guess separate defconfig for J7200?
> > 
> > 
> > I was just scanning through remaining arm64 additions to see what others have
> > done. We seem to have two options here:
> > a) Just use ARCH_K3 and no specific SoC configs
> > b) Specific SoC configs
> > In both cases, use += instead of \ to incrementally add dtbs
> > 
> > We have been going with (b) so far, Tero: any specific preference here?
> > 
> > (a) has the aspect of simplicity and reduced dependencies.
> > (b) Allows downstream kernels to save just a little bit and focus purely
> >      on SoC of interest.
> 
> If possible, I think we should aim for a) at least for now. We have the soc
> type detection code in place anyways that can be used on driver level.
> Creating compile time flags should be avoided imo as much as possible and
> just go with runtime detection. I can't see why saving maybe a megabyte of
> memory with SoC specific kernels would be of any importance on K3 arch with
> the memory amounts we have in our disposal.


Agreed on (a). I see one other user (SND) beyond dtb Makefile, So, to
order this right, lets first switch the users over from SOC config
builds to ARCH_K3, before we drop the Kconfig definition/defconfig
update in a follow on rc/version.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
