Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 60A496FB69
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 10:37:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727699AbfGVIhr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 04:37:47 -0400
Received: from inva021.nxp.com ([92.121.34.21]:40140 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726236AbfGVIhr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Jul 2019 04:37:47 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C2EBA200255;
        Mon, 22 Jul 2019 10:37:45 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 565262002C3;
        Mon, 22 Jul 2019 10:37:42 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AFAC4402DF;
        Mon, 22 Jul 2019 16:37:37 +0800 (SGT)
From:   fugang.duan@nxp.com
To:     festevam@gmail.com, shawnguo@kernel.org
Cc:     daniel.baluta@gmail.com, fugang.duan@nxp.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH arm64/dts 0/2] arm64: dts: imx8qxp: add lpuart ports
Date:   Mon, 22 Jul 2019 16:28:22 +0800
Message-Id: <20190722082824.15022-1-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fugang Duan <fugang.duan@nxp.com>

Add lpuart baud clock and add serial alias for imx8qxp lpuart ports,
to let lpuart work on imx8qxp platform.

V2:
- separate v1 patch to two patches, one is to add baud clock,
  the other is to add serial alias property.

Fugang Duan (2):
  arm64: dts: imx8qxp: add lpuart baud clock
  arm64: dts: imx8qxp: add serial alias

 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

-- 
2.7.4

