Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD635309C00
	for <lists+devicetree@lfdr.de>; Sun, 31 Jan 2021 13:37:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231169AbhAaKee (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jan 2021 05:34:34 -0500
Received: from mail.kernel.org ([198.145.29.99]:44682 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230518AbhAaKSQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 31 Jan 2021 05:18:16 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id AE49564DF5;
        Sun, 31 Jan 2021 10:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1612088254;
        bh=4eczZv+hpT+gqQnuIVlGGfa+0AV2WlG4wGhPmrPZXmY=;
        h=From:To:Cc:Subject:Date:From;
        b=DjerGTVwdB1KFlHn0MpRDEMtdgNudre95AhlTUg7ElpG1b9k5Zuy0ZDkeyVDFqVeg
         gQObOmTyCbZchBg7ljrawiPcj8WvA0VnTh0xe72s8imTALZ+GUUl262zOsSCuvePC3
         7dlKBrwtlGCyHBkVCR/3DD1yCRdAsRCUVmkrNnUr/LnvfmSTjcrRBBa+vNQrXQXw7c
         DjXciwucETfrbddRiwnLKIybWjFpyL9cs0Zo6711vbrmRYNo4AejuaQM7C+S8+3RV1
         Ndg2QLd30GsM7a5LI+lxy3Ct20Nd9fUoRkJ23ikXXumjjx39scY5ON7odjxL9uAGGw
         XvhYJITJPMlfA==
From:   matthias.bgg@kernel.org
To:     matthias.bgg@gmail.com, CK Hu <ck.hu@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Matthias Brugger <mbrugger@suse.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: mt8183: Fix GCE include path
Date:   Sun, 31 Jan 2021 11:17:26 +0100
Message-Id: <20210131101726.804-1-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Matthias Brugger <mbrugger@suse.com>

The header file of GCE should be for MT8183 SoC instead of MT8173.

Fixes: 91f9c963ce79 ("arm64: dts: mt8183: Add display nodes for MT8183")
Reported-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Matthias Brugger <mbrugger@suse.com>

---

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 5b782a4769e7..80e466ce99f1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -6,7 +6,7 @@
  */
 
 #include <dt-bindings/clock/mt8183-clk.h>
-#include <dt-bindings/gce/mt8173-gce.h>
+#include <dt-bindings/gce/mt8183-gce.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/memory/mt8183-larb-port.h>
-- 
2.30.0

