Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5573C466C05
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 23:19:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229836AbhLBWXA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 17:23:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237077AbhLBWW7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 17:22:59 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97DC0C06174A
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 14:19:36 -0800 (PST)
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1AD98B7E;
        Thu,  2 Dec 2021 23:19:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1638483573;
        bh=vCXcWm9bW7kU3BglYCKMhUvTt7pTnb66+WtqGFRlUIY=;
        h=From:To:Cc:Subject:Date:From;
        b=iOV96cfApAeYJ0QsL1IdPxJwPCWEPSXiwNBklohPEVR4FZX0SFZKIY6UyBZ567QoC
         EICofMFsjIp2r+83TjwL/IKQXlsIh6+nfFMk8DslkU+DQTK1mi7b8sQyP5y1p5kTuy
         iksjr0yVM/gqdXfqUne8nB7ULNN2FdatUsFRlqWs=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 0/3] ARM: dts: Fixes for imx7 mipi_csi
Date:   Fri,  3 Dec 2021 00:19:00 +0200
Message-Id: <20211202221903.21882-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This small patch series is a follow up on Rob's nxp,imx7-mipi-csi2.yaml
fix ([1]) and the dtb check warnings that started appearing as a result.
There's not much else to be said, please see individual patches for
details.

[1] https://lore.kernel.org/all/20211202023021.3655384-1-robh@kernel.org/

Laurent Pinchart (3):
  ARM: dts: imx7s-warp: Drop undefined property in mipi_csi node
  ARM: dts: imx7: Drop reset-names property for mipi_csi node
  ARM: dts: imx7: Group mipi_csi 'port' children in a 'ports' node

 arch/arm/boot/dts/imx7s-warp.dts | 14 +++++++-------
 arch/arm/boot/dts/imx7s.dtsi     | 22 ++++++++++++----------
 2 files changed, 19 insertions(+), 17 deletions(-)


base-commit: 1f1517fafda598839a02e39968c5063ddcfa51fc
-- 
Regards,

Laurent Pinchart

