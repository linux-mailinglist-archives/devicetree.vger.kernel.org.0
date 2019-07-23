Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8D20E72204
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 00:11:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389368AbfGWWLd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 18:11:33 -0400
Received: from lelv0143.ext.ti.com ([198.47.23.248]:32874 "EHLO
        lelv0143.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731838AbfGWWLd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jul 2019 18:11:33 -0400
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NMBUen114723;
        Tue, 23 Jul 2019 17:11:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1563919890;
        bh=cN+mjxcD2eKO1TaVJR39L5jxSZwgC8L+qbLTnTD3Ia4=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=Sqi3Vhc2ptKLRdhmj4p/mOoN5uujnvv2NtUEm9OHC8Z6Mwq/AD5yglOVrLbnP7te5
         B7hKoo+PVDU1CGYEVMTRjfhvtvgIz11uJwnaGg6vOMPaJoLTHE0HZZPzolkiycQZsa
         rHc2xyGsudMLwEDq1sMo2HbJIuATg4J49hQ4b9Ug=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NMBUkK076682
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 23 Jul 2019 17:11:30 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 17:11:30 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 17:11:30 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NMBUwK018344;
        Tue, 23 Jul 2019 17:11:30 -0500
Date:   Tue, 23 Jul 2019 17:11:06 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Suman Anna <s-anna@ti.com>
CC:     Tero Kristo <t-kristo@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/4] arm64: dts: ti: k3-am65-main: Add IPC sub-mailbox
 nodes for R5Fs
Message-ID: <20190723221106.2rshffqma7c6l4gq@kahuna>
References: <20190722202024.14867-1-s-anna@ti.com>
 <20190722202024.14867-3-s-anna@ti.com>
 <20190723113706.ctrxtpezuknohbj3@kahuna>
 <5e8e402e-d577-f1dd-b011-8ddc4407f30b@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5e8e402e-d577-f1dd-b011-8ddc4407f30b@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12:54-20190723, Suman Anna wrote:
> Hi Nishanth,
> 
> On 7/23/19 6:37 AM, Nishanth Menon wrote:
> > On 15:20-20190722, Suman Anna wrote:
> >> Add the sub-mailbox nodes that are used to communicate between
> >> MPU and the two R5F remote processors present in the MCU domain.
> >> The parent mailbox cluster nodes are enabled and the interrupts
> >> associated with the Mailbox Cluster User interrupt used by the
> >> sub-mailbox nodes are also added. The GIC_SPI interrupt to be
> >> used is dynamically allocated and managed by the System Firmware
> >> through the ti-sci-intr irqchip driver.
> >>
> >> The sub-mailbox nodes utilize the System Mailbox clusters 1 and 2.
> >> These sub-mailbox nodes are added to match the hard-coded mailbox
> >> configuration used within the TI RTOS IPC software packages. The
> >> Cortex R5F processor sub-system is assumed to be running in Split
> >> mode, so a sub-mailbox node is used by each of the R5F cores. Only
> >> the sub-mailbox node from cluster 0 is used in case of Lockstep
> >> mode.
> >>
> >> Signed-off-by: Suman Anna <s-anna@ti.com>
> >> ---
> >>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 16 ++++++++++++++--
> >>  1 file changed, 14 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> >> index 0b3ea2a871ee..317563c995b1 100644
> >> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> >> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> >> @@ -426,7 +426,13 @@
> >>  			#mbox-cells = <1>;
> >>  			ti,mbox-num-users = <4>;
> >>  			ti,mbox-num-fifos = <16>;
> >> -			status = "disabled";
> >> +			interrupt-parent = <&intr_main_navss>;
> >> +			interrupts = <164 0>;
> >> +
> >> +			mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
> >> +				ti,mbox-tx = <1 0 0>;
> >> +				ti,mbox-rx = <0 0 0>;
> >> +			};
> > 
> > Should'nt this rather be a board specific node? This is completely
> > dependent on the pre-defined communication scheme with R5F firmware?
> 
> These are the default assignments we are using and inherited by all
> derivative boards leveraging the TI RTOS-side firmwares/stacks.
> Otherwise, these sub-mailboxes have to be added to every board dts file.
> One can always overwrite the values or disable the nodes if they chose a
> different configuration.


This looks strongly  like a case that is to be described in board.dts
files.

-- 
Regards,
Nishanth Menon
