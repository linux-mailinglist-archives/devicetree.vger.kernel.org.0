Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 814AF344D33
	for <lists+devicetree@lfdr.de>; Mon, 22 Mar 2021 18:25:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230385AbhCVRYc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Mar 2021 13:24:32 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:45936 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230198AbhCVRYM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Mar 2021 13:24:12 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12MHO6VW076896;
        Mon, 22 Mar 2021 12:24:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1616433846;
        bh=s09Qi3de82W38oar/OGz7Fuo6c8bZx6uqwUGVCx98c8=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=fH/xjvDxRe4M8jjTOH86MSxvm5VSzftC1hYRjHFY5cZFcQUFI7ljzA6LmAy1qvX9r
         GNQd7Ov0jwvwB99axrS9RKnXCiKmg1ThXg+Jap6AKiCRsDVAzDxpdB1lHhPe0fhGoZ
         KlcI3uJmJLeYFSN3r8z3E0iedJ9x/WT+t7vwnszo=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12MHO65K005079
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 22 Mar 2021 12:24:06 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 22
 Mar 2021 12:24:06 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 22 Mar 2021 12:24:06 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12MHO6ER026606;
        Mon, 22 Mar 2021 12:24:06 -0500
Date:   Mon, 22 Mar 2021 12:24:06 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Tero Kristo <kristo@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 0/4] AM64x HwSpinlock and Mailbox DT nodes
Message-ID: <20210322172406.ywkn3gsr7bfy2nyp@doorman>
References: <20210317230946.23675-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20210317230946.23675-1-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18:09-20210317, Suman Anna wrote:
> Hi Nishanth,
> 
> The following series adds the HwSpinlock and Mailbox DT nodes for
> AM64x SoCs on AM64x-EVM and AM64x-SK boards. The bindings for both
> drivers were merged in 5.12-rc1.
> 
> Patches are based on top of your latest ti-k3-dts-next branch,
> commit 04a80a75baa1 ("arm64: dts: ti: k3-am642-evm: Add USB support").

yep, you'd be next in the queue here, so if you dont mind rebasing one
last time, it will help. Also in the repost, please address the
following comment.

> 
> 
> Suman Anna (4):
>   arm64: dts: ti: k3-am64-main: Add hwspinlock node
>   arm64: dts: ti: k3-am64-main: Add mailbox cluster nodes
>   arm64: dts: ti: k3-am642-evm: Add IPC sub-mailbox nodes
>   arm64: dts: ti: k3-am642-sk: Add IPC sub-mailbox nodes

	please squash patches 3,4.



-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
