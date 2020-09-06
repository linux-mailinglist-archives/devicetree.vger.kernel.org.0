Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0DE325EF70
	for <lists+devicetree@lfdr.de>; Sun,  6 Sep 2020 20:10:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729139AbgIFSJw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Sep 2020 14:09:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729094AbgIFSJv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Sep 2020 14:09:51 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD523C061574
        for <devicetree@vger.kernel.org>; Sun,  6 Sep 2020 11:09:49 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id x23so1492407wmi.3
        for <devicetree@vger.kernel.org>; Sun, 06 Sep 2020 11:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NQSqriQ+Oe6AXLkXoxURAgwhIAz5B8mg5HUOyceRaNE=;
        b=nzzQyiNa8rQcUAxBAKtcjxvn8Z/NBnTq1BCOt8tepxUgorNExl1s0ZkDz1CyCc70xC
         bB6xvUMwoV0UTUU+mv8bjg0hWZsvrsrou45DpBCu1+OOH5Vru8A0mFbQVD7cMcVkAOVp
         xropCu5NotExuTib2BY0RPN6qsRiItiRgcwYGWErDtodSMgW/THTIDr8AJDLBNSR/0Q8
         BuShhulLeCJf9gnEO/WeZi4COs/OvEoUU5TdwNCVZvKW9Y+iZoLCtao6AHDCc8bI6As4
         EVclkLAEDCZ+PzcLZF2pVQr+a11H8d7nHYuFG8LyislgqlcZphJTPeufC68EkzllDA7g
         lnEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NQSqriQ+Oe6AXLkXoxURAgwhIAz5B8mg5HUOyceRaNE=;
        b=LHVjguwo05lkoTiPUoPKyxG/7qLTsOpqzMjkWoo+euKnB71BofDTxhYz2DjBbzub6x
         sJJBbk0TTkZCsJwESfim8Lg9JrOUEUsVsWHiY2QGMlOpT+L4n7GO+JLZRvSIR4yaP3Bi
         C0j+PW8peDktG2uoB/j8zW7y9SLnqdrI9jwx8W+Lh0WctAp6VK8csBSi7XYvuVpiC2ST
         8yalfAztB/IFNPc+v7H3kujAGSEeiMyjv/9pn9g3ekblZ+82q+pqNXJ357/6YhM1mJmg
         fF8h76/xw6R9XRScPylPpKr5yHWQJYxR+47kCt0FsESt9CKnk1mzNf3KHn8biADHavNy
         bPpg==
X-Gm-Message-State: AOAM532iaI4+w/tbYiDEBrbTIe7q2naZzSo8JVWNmr0Dxax7rCKWoGnN
        VHvRPls4/h8CAxQqQ/0MYo4P+A==
X-Google-Smtp-Source: ABdhPJwT0GnOgudgWfvSH7xfMSErDdiy138y71snJGOMmAaWrk+a+mBdo9cAwboSzipzn8KYwteQtw==
X-Received: by 2002:a7b:c84a:: with SMTP id c10mr17091888wml.139.1599415787873;
        Sun, 06 Sep 2020 11:09:47 -0700 (PDT)
Received: from localhost.localdomain (208.19.23.93.rev.sfr.net. [93.23.19.208])
        by smtp.gmail.com with ESMTPSA id s11sm24593937wrt.43.2020.09.06.11.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2020 11:09:47 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, krzk@kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 1/2] dt-bindings: mediatek: Add binding for MT8167 SMI
Date:   Sun,  6 Sep 2020 20:09:37 +0200
Message-Id: <20200906180938.1117526-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree bindings documentation for MT8167 SMI.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../bindings/memory-controllers/mediatek,smi-common.txt        | 3 ++-
 .../bindings/memory-controllers/mediatek,smi-larb.txt          | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
index b64573680b42..dbafffe3f41e 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
@@ -5,7 +5,7 @@ The hardware block diagram please check bindings/iommu/mediatek,iommu.txt
 Mediatek SMI have two generations of HW architecture, here is the list
 which generation the SoCs use:
 generation 1: mt2701 and mt7623.
-generation 2: mt2712, mt6779, mt8173 and mt8183.
+generation 2: mt2712, mt6779, mt8167, mt8173 and mt8183.
 
 There's slight differences between the two SMI, for generation 2, the
 register which control the iommu port is at each larb's register base. But
@@ -20,6 +20,7 @@ Required properties:
 	"mediatek,mt2712-smi-common"
 	"mediatek,mt6779-smi-common"
 	"mediatek,mt7623-smi-common", "mediatek,mt2701-smi-common"
+	"mediatek,mt8167-smi-common"
 	"mediatek,mt8173-smi-common"
 	"mediatek,mt8183-smi-common"
 - reg : the register and size of the SMI block.
diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
index 8f19dfe7d80e..0c5de12b5496 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
@@ -8,6 +8,7 @@ Required properties:
 		"mediatek,mt2712-smi-larb"
 		"mediatek,mt6779-smi-larb"
 		"mediatek,mt7623-smi-larb", "mediatek,mt2701-smi-larb"
+		"mediatek,mt8167-smi-larb"
 		"mediatek,mt8173-smi-larb"
 		"mediatek,mt8183-smi-larb"
 - reg : the register and size of this local arbiter.
@@ -22,7 +23,7 @@ Required properties:
   - "gals": the clock for GALS(Global Async Local Sync).
   Here is the list which has this GALS: mt8183.
 
-Required property for mt2701, mt2712, mt6779 and mt7623:
+Required property for mt2701, mt2712, mt6779, mt7623 and mt8167:
 - mediatek,larb-id :the hardware id of this larb.
 
 Example:
-- 
2.28.0

