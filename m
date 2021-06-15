Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8544C3A794B
	for <lists+devicetree@lfdr.de>; Tue, 15 Jun 2021 10:47:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230454AbhFOItL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 04:49:11 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:59754 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230332AbhFOItK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 04:49:10 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 472611F422D6
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     laurent.pinchart@ideasonboard.com
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
        xuwei5@hisilicon.com, michal.simek@xilinx.com,
        mcoquelin.stm32@gmail.com, marex@denx.de
Subject: [PATCH v4 1/3] ARM: dts: zynq: add port definitions to hdmi-tx@39
Date:   Tue, 15 Jun 2021 10:46:33 +0200
Message-Id: <20210615084635.2113070-2-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210615084635.2113070-1-ricardo.canuelo@collabora.com>
References: <20210615084635.2113070-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define a 'ports' node for 'adv7511: hdmi-tx@39' to make it compliant with
the adi,adv7511 DT binding.

This fills the minimum requirements to meet the binding requirements,
remote endpoints are not defined.

Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Michal Simek <michal.simek@xilinx.com>
---
 arch/arm/boot/dts/zynq-zc702.dts | 10 ++++++++++
 arch/arm/boot/dts/zynq-zc706.dts | 10 ++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/zynq-zc702.dts b/arch/arm/boot/dts/zynq-zc702.dts
index cf70aff26c66..13b8ff1bced3 100644
--- a/arch/arm/boot/dts/zynq-zc702.dts
+++ b/arch/arm/boot/dts/zynq-zc702.dts
@@ -141,6 +141,16 @@ adv7511: hdmi-tx@39 {
 				adi,input-clock = "1x";
 				adi,input-style = <3>;
 				adi,input-justification = "right";
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					port@0 {
+						reg = <0>;
+					};
+					port@1 {
+						reg = <1>;
+					};
+				};
 			};
 		};
 
diff --git a/arch/arm/boot/dts/zynq-zc706.dts b/arch/arm/boot/dts/zynq-zc706.dts
index 77943c16d33f..99fa51ba6e93 100644
--- a/arch/arm/boot/dts/zynq-zc706.dts
+++ b/arch/arm/boot/dts/zynq-zc706.dts
@@ -93,6 +93,16 @@ adv7511: hdmi-tx@39 {
 				adi,input-clock = "1x";
 				adi,input-style = <3>;
 				adi,input-justification = "evenly";
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					port@0 {
+						reg = <0>;
+					};
+					port@1 {
+						reg = <1>;
+					};
+				};
 			};
 		};
 
-- 
2.25.1

