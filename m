Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7E29466C06
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 23:19:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237226AbhLBWXB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 17:23:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237077AbhLBWXA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 17:23:00 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADEECC06174A
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 14:19:37 -0800 (PST)
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id F0769E79;
        Thu,  2 Dec 2021 23:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1638483575;
        bh=LNV84hK6g7cH6H0dCE7Qs7ft8D4eHXnWT9hU4pqg0ik=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=NxLPDXQqVpf0mZZkZSLwJL0kA72XuLJDzwyWHOsABLkUrL51CyTqoX9TJIG6btrMD
         Bq5Yh0gRC8Z67p9Ihya7f8zOAhKd8LXtXZPUxKSg6JT6nkmfyy0LysO37lntghUi4m
         us4U9SGujn03beLLXqXfdpSS4qkn5+t5zzEPhABw=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 2/3] ARM: dts: imx7: Drop reset-names property for mipi_csi node
Date:   Fri,  3 Dec 2021 00:19:02 +0200
Message-Id: <20211202221903.21882-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211202221903.21882-1-laurent.pinchart@ideasonboard.com>
References: <20211202221903.21882-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The reset-names property isn't defined by the nxp,imx7-mipi-csi2.yaml
binding, and isn't used by the corresponding driver as it acquires the
reset with a NULL ID. Drop it.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm/boot/dts/imx7s.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 1843fc053870..7e6b99ece7e9 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -819,7 +819,6 @@ mipi_csi: mipi-csi@30750000 {
 				power-domains = <&pgc_mipi_phy>;
 				phy-supply = <&reg_1p0d>;
 				resets = <&src IMX7_RESET_MIPI_PHY_MRST>;
-				reset-names = "mrst";
 				status = "disabled";
 
 				port@0 {
-- 
Regards,

Laurent Pinchart

