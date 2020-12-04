Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBF442CF5D8
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 21:50:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387751AbgLDUuA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 15:50:00 -0500
Received: from mickerik.phytec.de ([195.145.39.210]:56224 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387533AbgLDUuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 15:50:00 -0500
X-Greylist: delayed 941 seconds by postgrey-1.27 at vger.kernel.org; Fri, 04 Dec 2020 15:49:25 EST
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1607113983; x=1609705983;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=z8BRVrkebhW2w2n75AvXMmalfkQgGNF/lWpRdfTsBZo=;
        b=gKZLBLpI3O+NACPAx5qFD63cg6fmCJA/h5QMyV7xyLYmVtD8FADetWDIGc03mNDr
        bowaH9YAgc+3Hd3R/z5HnP+crcE0U1GBKMf0MsBPQ+JbBtzwveuh/MvflybEFSWl
        W+DNOLXu/ryAHpWzkwgUqjWpz2sabuqlIK9mvtH6iAM=;
X-AuditID: c39127d2-96bff70000006435-72-5fca9cfffdc4
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id E3.74.25653.FFC9ACF5; Fri,  4 Dec 2020 21:33:03 +0100 (CET)
Received: from augenblix2.phytec.de ([172.16.0.56])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020120421330317-920467 ;
          Fri, 4 Dec 2020 21:33:03 +0100 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 2/4] arm64: defconfig: Enable PCA9532 support
Date:   Fri, 4 Dec 2020 21:33:00 +0100
Message-Id: <1607113982-109524-3-git-send-email-t.remmet@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
References: <1607113982-109524-1-git-send-email-t.remmet@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 04.12.2020 21:33:03,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 04.12.2020 21:33:03,
        Serialize complete at 04.12.2020 21:33:03
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprILMWRmVeSWpSXmKPExsWyRoCBS/f/nFPxBgu3KVu8X9bDaDH/yDlW
        i4dX/S02Pb7GatG69wi7xd/tm1gsXmwRd2D3WDNvDaPHzll32T02repk89i8pN6j/6+Bx+dN
        cgFsUVw2Kak5mWWpRfp2CVwZW6ZfZyt4yVKx8+lK9gbGKSxdjJwcEgImElunfGDvYuTiEBLY
        yigxZfFBFgjnHKNE68VD7CBVbAIaEk9XnGYCsUUEXCQ6H6wDK2IW2M0osefzOlaQhLCArcTU
        ieeZuxg5OFgEVCSePBMBCfMKOEu8e9HIDLFNTuLmuU4wmxNozvF73xhBbCGgmv+rv4PNlBBo
        ZJI4sWkvG0SDkMTpxWeZJzDyLWBkWMUolJuZnJ1alJmtV5BRWZKarJeSuokRGGyHJ6pf2sHY
        N8fjECMTB+MhRgkOZiUR3ljVk/FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeTfwloQJCaQnlqRm
        p6YWpBbBZJk4OKUaGN2M7DXerxfv97sX6RIUv/v5Co/MzgWeiVsWdiovnXz9qPl39ePLzzia
        rUzefERh3d4c5dRerZX8oRV1+ecWSn+eVNSZ+S+f9eLp/ujFiU8DT1em6L45rF1dFhh2ilP7
        TKbuJ6bGs+vuTeLRKN8b9i+5OjmX298nwjm9/aXb8sc8D/foNEvtVmIpzkg01GIuKk4EAK5x
        2N0kAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable i2c led expander PCA9532 module support populated on
phyBOARD-Pollux-i.MX8M Plus.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 2034fefb3f44..14b0a83d8d3f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -801,6 +801,7 @@ CONFIG_MMC_SDHCI_AM654=y
 CONFIG_MMC_OWL=y
 CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=y
+CONFIG_LEDS_PCA9532=m
 CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_PWM=y
 CONFIG_LEDS_SYSCON=y
-- 
2.7.4

