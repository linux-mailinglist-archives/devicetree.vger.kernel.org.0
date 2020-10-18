Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0454E291D06
	for <lists+devicetree@lfdr.de>; Sun, 18 Oct 2020 21:42:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731303AbgJRTmd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Oct 2020 15:42:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730514AbgJRTmc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Oct 2020 15:42:32 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AEC3C061755
        for <devicetree@vger.kernel.org>; Sun, 18 Oct 2020 12:42:31 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id b127so10618882wmb.3
        for <devicetree@vger.kernel.org>; Sun, 18 Oct 2020 12:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RKz/glIDgqXLsKwUH5mAwh9re1kJ1vMgTO8yUCSmg/4=;
        b=1f2Jtl85s/SyDOvTb1ZgqX2X2g3djWqoR7b7ydmDzDFSbYe6UYbXVbs1Gv7yAbg7gX
         cRme3fyaWAxycWYUVGs/431BTGMbotzOkxZYU3VHMnt3nRtfslvezYF/NE2ZrrZk+fXK
         fdEH+OuxEQnjkLicXnRKJkYyIbKF4nTCCHcwC0aBCEpQygRZYcBZxnIzqdVY16ZEYJCl
         kL2Sdo2Jcsa5FYMPPIJGvUZ0GR1whh4BVgYnkmuKpBMgYVRuOSOupld+x8k60QEVCfxF
         4uubbd7N6bA5Xe9Y+jIhZPa6Z2YP7T3bdKAqa+s5j1v5vei5nPBwrnI9yKPH0vLTLxFG
         68zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RKz/glIDgqXLsKwUH5mAwh9re1kJ1vMgTO8yUCSmg/4=;
        b=YHypHf3Z6cvNntfLqAGCQoQ7RMGtHuyQWsmUyGPqIy8LUXJELmgcJfkdmwz4GkarXE
         fhL4YV5tKigy5R9Td4ubZsWU27jeEaXFTJLvpc4WsYSDoWiO2h+66Ug1QEKOr5aLhv3k
         aqfX6TSfYwy7skOYWQZ42tBMuDV/2xPqS+1FWAYojLJQUeTQHZhL8bxH6+2VqQc/Syed
         CvWRp6SbfZXeMkPxnsUl8akB0/CRSd4k6+25FLF4/F6jo8Tny8OwD+9svaMWjMuw0UoG
         p81/QPYPO110MEFESrxU0FE9TlFwQY6KxyDnzS8Jm8BKwnyMqAGL3JVTUFiDfCLnl2Cp
         ApFQ==
X-Gm-Message-State: AOAM530w5J1M5sdubY+LLZvLz+A0ji8V6sV90jeOe+CsNC2bDz+6gBT4
        X10poRy6Cnon4tR+OqHE8Ije41zr6n+89A==
X-Google-Smtp-Source: ABdhPJygp4zfPt0GTUPgI2ugSev36X1niFyJ+XGD4da4OhVKLzbK+lDKf86uxATNEWqg/QYtTRt9/A==
X-Received: by 2002:a7b:cb82:: with SMTP id m2mr14912567wmi.56.1603050150184;
        Sun, 18 Oct 2020 12:42:30 -0700 (PDT)
Received: from localhost.localdomain (124.171.185.81.rev.sfr.net. [81.185.171.124])
        by smtp.gmail.com with ESMTPSA id l11sm14253674wro.89.2020.10.18.12.42.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:42:29 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     bibby.hsieh@mediatek.com, matthias.bgg@gmail.com,
        robh+dt@kernel.org, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH] arm64: dts: mediatek: mt8183: fix gce incorrect mbox-cells value
Date:   Sun, 18 Oct 2020 21:42:25 +0200
Message-Id: <20201018194225.3361182-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The binding documentation says:
- #mbox-cells: Should be 2.
	<&phandle channel priority>
	phandle: Label name of a gce node.
	channel: Channel of mailbox. Be equal to the thread id of GCE.
	priority: Priority of GCE thread.

Fix the value of #mbox-cells.

Fixes: d3c306e31bc7 ("arm64: dts: add gce node for mt8183")
Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 102105871db2..9a3cf95676e1 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -352,7 +352,7 @@ gce: mailbox@10238000 {
 			compatible = "mediatek,mt8183-gce";
 			reg = <0 0x10238000 0 0x4000>;
 			interrupts = <GIC_SPI 162 IRQ_TYPE_LEVEL_LOW>;
-			#mbox-cells = <3>;
+			#mbox-cells = <2>;
 			clocks = <&infracfg CLK_INFRA_GCE>;
 			clock-names = "gce";
 		};
-- 
2.28.0

