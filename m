Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00818344DA4
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 18:43:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231667AbhCVRnQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 13:43:16 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:49518 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231585AbhCVRnC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 13:43:02 -0400
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12MHgsKF083556;
        Mon, 22 Mar 2021 12:42:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616434974;
        bh=8TcBZcInp6Op4JdxvqABz/OHr54LUqm+/RGqr5noh9U=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=ObpP+WN69BvScmKpC2Tqnm2XbCfXV5/bc87vsRMpaAR9z2hPK/eKfCZzXU2NLcyMZ
         5ARseaKhaP6ddIwZt+vpEeuIoGdnl19mj/t7dsfoVozidZffQvf3R7f42iuAWg2QKH
         EjOmDZcMol8/8UVnBfMb7oztOOx/K8SW3ubZq/Rk=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12MHgsOi074325
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Mar 2021 12:42:54 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 22
 Mar 2021 12:42:53 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 22 Mar 2021 12:42:53 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12MHgrfU089468;
        Mon, 22 Mar 2021 12:42:53 -0500
Date:   Mon, 22 Mar 2021 12:42:53 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Tero Kristo <kristo@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 0/4] AM64x HwSpinlock and Mailbox DT nodes
Message-ID: <20210322174253.7p5kfss2l2phsact@morally>
References: <20210317230946.23675-1-s-anna@ti.com>
 <20210322172406.ywkn3gsr7bfy2nyp@doorman>
 <10ab1853-aa6f-fd8e-59a9-df13d6dbc697@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <10ab1853-aa6f-fd8e-59a9-df13d6dbc697@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:34-20210322, Suman Anna wrote:
> Hi Nishanth,
> 
> On 3/22/21 12:24 PM, Nishanth Menon wrote:
> > On 18:09-20210317, Suman Anna wrote:
> >> Hi Nishanth,
> >>
> >> The following series adds the HwSpinlock and Mailbox DT nodes for
> >> AM64x SoCs on AM64x-EVM and AM64x-SK boards. The bindings for both
> >> drivers were merged in 5.12-rc1.
> >>
> >> Patches are based on top of your latest ti-k3-dts-next branch,
> >> commit 04a80a75baa1 ("arm64: dts: ti: k3-am642-evm: Add USB support").
> > 
> > yep, you'd be next in the queue here, so if you dont mind rebasing one
> > last time, it will help. Also in the repost, please address the
> > following comment.
> > 
> >>
> >>
> >> Suman Anna (4):
> >>   arm64: dts: ti: k3-am64-main: Add hwspinlock node
> >>   arm64: dts: ti: k3-am64-main: Add mailbox cluster nodes
> >>   arm64: dts: ti: k3-am642-evm: Add IPC sub-mailbox nodes
> >>   arm64: dts: ti: k3-am642-sk: Add IPC sub-mailbox nodes
> > 
> > 	please squash patches 3,4.
> 
> Hmm, I prefer to not mix or combine stuff that affects more than a single board.
> This is not a bug fix, so, if you don't mind, I would like to keep these as is.

Lets stay consistent with patches I have been consolidating, I
see no reason to add to a patch count here.

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
