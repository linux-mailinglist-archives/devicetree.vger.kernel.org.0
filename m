Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A087312AB03
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2019 09:39:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726220AbfLZIi7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Dec 2019 03:38:59 -0500
Received: from mail.kernel.org ([198.145.29.99]:39492 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725878AbfLZIi7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Dec 2019 03:38:59 -0500
Received: from localhost (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E1966206CB;
        Thu, 26 Dec 2019 08:38:58 +0000 (UTC)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Wei Xu <xuwei5@hisilicon.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH] arm64: dts: hi3798cv200-poplar: add linux,rc-map-name for IR
Date:   Thu, 26 Dec 2019 16:38:44 +0800
Message-Id: <20191226083844.2729-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It adds remote control map name for IR device, so that key event can be
reported.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts b/arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts
index c563d3eb2d98..7d370dac4c85 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts
+++ b/arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts
@@ -170,6 +170,7 @@
 };
 
 &ir {
+	linux,rc-map-name = "rc-hisi-poplar";
 	status = "okay";
 };
 
-- 
2.17.1

