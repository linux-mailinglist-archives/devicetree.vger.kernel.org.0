Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9643638129B
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 23:07:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbhENVIz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 17:08:55 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:48620 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229952AbhENVIz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 17:08:55 -0400
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14EL7eTo064596;
        Fri, 14 May 2021 16:07:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1621026460;
        bh=+pkryp52Dfsy6F5buHVvIChEYBsGEpY1HbEziZu1hUQ=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=YNvp5cC+GmvuSJsiClX8ZysM21iGjuFbxdeD5NpTt0uS4vfd2kBE+o33JL3fY3EMj
         o0sDTr3Pa+L+XU93O3aufO+Tnz02DKtvux6vakWa/8nPCZln7XxdKwpi4L6loE1eMi
         qUXdwEERvOSZmhtHj0y4dN92GII1aMHs9daClqF0=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14EL7eEc063006
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 14 May 2021 16:07:40 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 14
 May 2021 16:07:40 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 14 May 2021 16:07:40 -0500
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14EL7eoJ029992;
        Fri, 14 May 2021 16:07:40 -0500
Received: from localhost ([10.250.35.60])
        by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 14EL7e5w005872;
        Fri, 14 May 2021 16:07:40 -0500
From:   Suman Anna <s-anna@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>
CC:     Gowtham Tammana <g-tammana@ti.com>,
        Praneeth Bajjuri <praneeth@ti.com>,
        Vaibhav Gupta <v_gupta@ti.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 2/3] arm64: dts: ti: k3-am64: Add SA2UL address space to Main CBASS ranges
Date:   Fri, 14 May 2021 16:07:23 -0500
Message-ID: <20210514210725.32720-3-s-anna@ti.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210514210725.32720-1-s-anna@ti.com>
References: <20210514210725.32720-1-s-anna@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the address space for the SA2UL in MAIN domain to the ranges property
of the cbass_main interconnect node so that the addresses within the
corresponding sram nodes and its children can be translated properly by
the relevant OF address API.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am64.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am64.dtsi b/arch/arm64/boot/dts/ti/k3-am64.dtsi
index de6805b0c72c..8ccd03ee3036 100644
--- a/arch/arm64/boot/dts/ti/k3-am64.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64.dtsi
@@ -77,6 +77,7 @@ cbass_main: bus@f4000 {
 			 <0x00 0x3b000000 0x00 0x3b000000 0x00 0x00000400>, /* GPMC0_CFG */
 			 <0x00 0x3cd00000 0x00 0x3cd00000 0x00 0x00000200>, /* TIMERMGR0_CONFIG */
 			 <0x00 0x3f004000 0x00 0x3f004000 0x00 0x00000400>, /* GICSS0_REGS */
+			 <0x00 0x40900000 0x00 0x40900000 0x00 0x00030000>, /* SA2_UL0 */
 			 <0x00 0x43000000 0x00 0x43000000 0x00 0x00020000>, /* CTRL_MMR0 */
 			 <0x00 0x44043000 0x00 0x44043000 0x00 0x00000fe0>, /* TI SCI DEBUG */
 			 <0x00 0x48000000 0x00 0x48000000 0x00 0x06400000>, /* DMASS */
-- 
2.30.1

