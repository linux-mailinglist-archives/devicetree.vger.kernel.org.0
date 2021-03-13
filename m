Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADDE033A1F4
	for <lists+devicetree@lfdr.de>; Sun, 14 Mar 2021 00:44:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231205AbhCMXoT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 18:44:19 -0500
Received: from eu-shark2.inbox.eu ([195.216.236.82]:37864 "EHLO
        eu-shark2.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234788AbhCMXoR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 18:44:17 -0500
X-Greylist: delayed 394 seconds by postgrey-1.27 at vger.kernel.org; Sat, 13 Mar 2021 18:44:17 EST
Received: from eu-shark2.inbox.eu (localhost [127.0.0.1])
        by eu-shark2-out.inbox.eu (Postfix) with ESMTP id 82D3A4612BF;
        Sun, 14 Mar 2021 01:37:40 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1615678660; bh=pvIBmRAw8d1VUyi9V/SeXV0tyYF89ThqAif8y8U7n3A=;
        h=Date:From:To:Cc:Subject;
        b=zht9rfBCY5gNRpSipU3V0FSXLxWa2evvyzeFaQYGj20zBl8q126KGE8Vrv7CKigZA
         KQJ8cJUGUlGFXFTiTPCzVYAOPk/nbvb/0ugBjUbINxD8ESdqNgS6cgmi+aTgv9Cvba
         UvbfOsnhuz9mln05OJV4DRlSemsfPO4S2/oqpyzo=
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark2-in.inbox.eu (Postfix) with ESMTP id 5E8614612B2;
        Sun, 14 Mar 2021 01:37:40 +0200 (EET)
Received: from pc (unknown [185.176.222.57])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id DF06F1BE0154;
        Sun, 14 Mar 2021 01:37:39 +0200 (EET)
Date:   Sun, 14 Mar 2021 02:37:35 +0300
From:   Boris Lysov <arzamas-16@mail.ee>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: [PATCH] arm: mediatek: dts: activate SMP for mt6589
Message-ID: <20210314023735.052d2d35@pc>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: OK
X-ESPOL: 6N1mkJY3ejOlglu/QnzYGwQ1rTRMW/GWher6j11F7wj3TUiYHDwAURW+m25+SXi8vSM=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This simple patch activates SMP for mt6589 by adding the missing
"enable-method" property. After applying this patch kernel log
indicates all cores are brought up:

[    0.070122] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
[    0.071652] Setting up static identity map for 0x80100000 - 0x80100054
[    0.072711] rcu: Hierarchical SRCU implementation.
[    0.073853] smp: Bringing up secondary CPUs ...
[    0.133675] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
[    0.193675] CPU2: thread -1, cpu 2, socket 0, mpidr 80000002
[    0.253675] CPU3: thread -1, cpu 3, socket 0, mpidr 80000003
[    0.253818] smp: Brought up 1 node, 4 CPUs
[    0.256930] SMP: Total of 4 processors activated (7982.28 BogoMIPS).
[    0.257855] CPU: All CPU(s) started in SVC mode.

Before this change CPU cores 1-3 didn't start and the following lines
were in kernel log:

[    0.070126] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
[    0.071640] Setting up static identity map for 0x80100000 - 0x80100054
[    0.072706] rcu: Hierarchical SRCU implementation.
[    0.073850] smp: Bringing up secondary CPUs ...
[    0.076052] smp: Brought up 1 node, 1 CPU
[    0.076678] SMP: Total of 1 processors activated (2000.48 BogoMIPS).
[    0.077603] CPU: All CPU(s) started in SVC mode.

Signed-off-by: Boris Lysov <arzamas-16@mail.ee>
---
 arch/arm/boot/dts/mt6589.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/mt6589.dtsi
b/arch/arm/boot/dts/mt6589.dtsi index f3ccb70c0779..70df00a7bb26 100644
--- a/arch/arm/boot/dts/mt6589.dtsi
+++ b/arch/arm/boot/dts/mt6589.dtsi
@@ -17,6 +17,7 @@
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
+		enable-method = "mediatek,mt6589-smp";
 
 		cpu@0 {
 			device_type = "cpu";
-- 
2.20.1

