Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC6992F9822
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 04:21:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731528AbhARDVb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 22:21:31 -0500
Received: from szxga05-in.huawei.com ([45.249.212.191]:11551 "EHLO
        szxga05-in.huawei.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730600AbhARDVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 22:21:31 -0500
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
        by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4DJxpk1LmFzMLYt;
        Mon, 18 Jan 2021 11:19:26 +0800 (CST)
Received: from thunder-town.china.huawei.com (10.174.176.220) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.498.0; Mon, 18 Jan 2021 11:20:42 +0800
From:   Zhen Lei <thunder.leizhen@huawei.com>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
CC:     Zhen Lei <thunder.leizhen@huawei.com>
Subject: [PATCH 3/6] arm64: dts: hisilicon: normalize the node name of the module thermal
Date:   Mon, 18 Jan 2021 11:16:31 +0800
Message-ID: <20210118031634.934-4-thunder.leizhen@huawei.com>
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

1. Change the node name of the thermal zone to match
'^[a-zA-Z][a-zA-Z0-9\\-]{1,12}-thermal$', add suffix "-thermal".
2. Change the node name of the trip point to match
'^[a-zA-Z][a-zA-Z0-9\\-_]{0,63}$', delete character "@".

Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
---
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi | 6 +++---
 arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
index bfb1375426d2b58..8b8d3d07b67fe84 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
@@ -1113,7 +1113,7 @@
 
 		thermal-zones {
 
-			cls0: cls0 {
+			cls0: cls0-thermal {
 				polling-delay = <1000>;
 				polling-delay-passive = <100>;
 				sustainable-power = <4500>;
@@ -1122,13 +1122,13 @@
 				thermal-sensors = <&tsensor 1>;
 
 				trips {
-					threshold: trip-point@0 {
+					threshold: trip-point0 {
 						temperature = <65000>;
 						hysteresis = <1000>;
 						type = "passive";
 					};
 
-					target: trip-point@1 {
+					target: trip-point1 {
 						temperature = <75000>;
 						hysteresis = <1000>;
 						type = "passive";
diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
index f9953303a3f44dc..d426c6c8722b307 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
@@ -872,7 +872,7 @@
 
 		thermal-zones {
 
-			cls0: cls0 {
+			cls0: cls0-thermal {
 				polling-delay = <1000>;
 				polling-delay-passive = <100>;
 				sustainable-power = <3326>;
@@ -881,13 +881,13 @@
 				thermal-sensors = <&tsensor 2>;
 
 				trips {
-					threshold: trip-point@0 {
+					threshold: trip-point0 {
 						temperature = <65000>;
 						hysteresis = <0>;
 						type = "passive";
 					};
 
-					target: trip-point@1 {
+					target: trip-point1 {
 						temperature = <75000>;
 						hysteresis = <0>;
 						type = "passive";
-- 
1.8.3


