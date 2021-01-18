Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 655B12F9823
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 04:21:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731534AbhARDVj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 22:21:39 -0500
Received: from szxga04-in.huawei.com ([45.249.212.190]:11171 "EHLO
        szxga04-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731529AbhARDVi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 22:21:38 -0500
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
        by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DJxpq3hMtzl6Hv;
        Mon, 18 Jan 2021 11:19:31 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.176.220) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.498.0; Mon, 18 Jan 2021 11:20:43 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 5/6] arm64: dts: hisilicon: avoid irrelevant nodes being mistakenly identified as PHY nodes
Date:   Mon, 18 Jan 2021 11:16:33 +0800
Message-ID: <20210118031634.934-6-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.26.0.windows.1
In-Reply-To: <20210118031634.934-1-thunder.leizhen@huawei.com>
References: <20210118031634.934-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7BIT
Content-Type:   text/plain; charset=US-ASCII
X-Originating-IP: [10.174.176.220]
X-CFilter-Loop: Reflected
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently, the names of several nodes incorrectly match common PHY
provider schema. And the phy-provider.yaml requires them must have
property "#phy-cells". As a result, false positives similar to the
following are reported:
usb2-phy@120: '#phy-cells' is a required property

Change their names slightly so that they do not match pattern:
"^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$".

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
index 16e11fde3ed9020..a83b9d4f172e350 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
@@ -113,7 +113,7 @@
 			#size-cells = <1>;
 			ranges = <0x0 0x8a20000 0x1000>;
 
-			usb2_phy1: usb2-phy@120 {
+			usb2_phy1: usb2_phy@120 {
 				compatible = "hisilicon,hi3798cv200-usb2-phy";
 				reg = <0x120 0x4>;
 				clocks = <&crg HISTB_USB2_PHY1_REF_CLK>;
@@ -134,7 +134,7 @@
 				};
 			};
 
-			usb2_phy2: usb2-phy@124 {
+			usb2_phy2: usb2_phy@124 {
 				compatible = "hisilicon,hi3798cv200-usb2-phy";
 				reg = <0x124 0x4>;
 				clocks = <&crg HISTB_USB2_PHY2_REF_CLK>;
-- 
1.8.3


