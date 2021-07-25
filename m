Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DAD53D4ECF
	for <lists+devicetree@lfdr.de>; Sun, 25 Jul 2021 18:50:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbhGYQJd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jul 2021 12:09:33 -0400
Received: from mxwww.masterlogin.de ([95.129.51.170]:36640 "EHLO
        mxwww.masterlogin.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229709AbhGYQJd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Jul 2021 12:09:33 -0400
X-Greylist: delayed 600 seconds by postgrey-1.27 at vger.kernel.org; Sun, 25 Jul 2021 12:09:32 EDT
Received: from mxout1.routing.net (unknown [192.168.10.81])
        by backup.mxwww.masterlogin.de (Postfix) with ESMTPS id 1AF312C48B
        for <devicetree@vger.kernel.org>; Sun, 25 Jul 2021 16:35:00 +0000 (UTC)
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
        by mxout1.routing.net (Postfix) with ESMTP id 95A893FE0A;
        Sun, 25 Jul 2021 16:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
        s=20200217; t=1627230896;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=Lg1oxsELMZqDQIrjH4RSgZ9fqtlF3mLOVTFIS4nov8g=;
        b=o5maxEdrEe49lcIYpRM5ZHrnwMiylZPtlTDNW8qWdz9gjwfmB1xF56jNKZzSGfVoDlKXkY
        02tkghIUpwlnzDuFxrvI4v71yLfo3zVKs43p4HTLMuaksu3tqV9WVdDFbtf904gQ6FLFmz
        6TQAiXKH5li5nQ3EHpJoFrNAZviPo5w=
Received: from localhost.localdomain (fttx-pool-80.245.77.24.bambit.de [80.245.77.24])
        by mxbox1.masterlogin.de (Postfix) with ESMTPSA id E80F440126;
        Sun, 25 Jul 2021 16:34:55 +0000 (UTC)
From:   Frank Wunderlich <linux@fw-web.de>
To:     linux-mediatek@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm: dts: mt7623: increase passive cooling trip
Date:   Sun, 25 Jul 2021 18:34:51 +0200
Message-Id: <20210725163451.217610-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mail-ID: aaa04f1c-3dcd-4e4a-a25e-3c7da6c05f12
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Frank Wunderlich <frank-w@public-files.de>

MT7623/BPI-R2 has idle temperature after bootup from 48 degrees celsius
increase the passive trip temp threshold to not trottle CPU frequency at
this temperature

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm/boot/dts/mt7623.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mt7623.dtsi b/arch/arm/boot/dts/mt7623.dtsi
index b7247ab082aa..11933494e03d 100644
--- a/arch/arm/boot/dts/mt7623.dtsi
+++ b/arch/arm/boot/dts/mt7623.dtsi
@@ -160,7 +160,7 @@ cpu_thermal: cpu-thermal {
 
 				trips {
 					cpu_passive: cpu-passive {
-						temperature = <47000>;
+						temperature = <57000>;
 						hysteresis = <2000>;
 						type = "passive";
 					};
-- 
2.25.1

