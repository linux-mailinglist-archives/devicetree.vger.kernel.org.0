Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37BBC295109
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 18:42:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438225AbgJUQml (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 12:42:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2438909AbgJUQmk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 12:42:40 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EFF3C0613D2
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 09:42:38 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id i1so3929269wro.1
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 09:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oJ1aKiINz0LrDU7aEXlCXE8tQqMpnuCeNmVOG6Ww0Oo=;
        b=ejJUXrzhfpQggo3vO73m1qC2ZK7LYm9EZfc6A/LtRy5ByuRubgYG+fwFBIu/0V1H/2
         jTA5a9YkArTcVWbMcngRM0EWvr66+7EAn2ztGJMgE2LmPfRwRLKjZx8WdZyUwcaVPyqI
         9yLQ45kLhXWMK1Ewzxsxh7thE//owACHFh7d/XjLVC1rFo6Fdc6vuappjtg05+7Zl+M1
         lvlNIjnjClBhbepPGXcvJFciSUDz4kvHnJGltnpDGllNWmTKEv/dHFfb8dYOHohXlUdI
         ihJ/JE2NIGn/uhQ6bNEChusM1zoVZja207abAl9HYHeFYeldjuCCj5mbY03a4VwSQUJG
         yS2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oJ1aKiINz0LrDU7aEXlCXE8tQqMpnuCeNmVOG6Ww0Oo=;
        b=asysb6RlHhZQFyRNbZCjWHkLn4rQcvDgnk22BtmW04CCL+2iWiaPmNdS3iyxL+rGTR
         0Yks2iDXLXx/PWG5oOzJEcaGnqKinaZlY3aWJNdovE1DWC9niQdynQNPZ6ybtCHBlxhB
         1pSmNsx4zY7qqvwyfPwKjJDczG1Xw0qJih/BPQ6w8Zuo+LeS09PGQWhIBp+aMmMBOVNg
         pQJgLgVFM9rHPhrPXKSRiaaAB4J79GkQ2YQ+eNWa4LA7GhAKwHD078pi1wIFHnro+JCa
         8248bBPTT7M66mf5NeUMsiTt5pYSHx4AJVTl9gxlkz1jWZ+yUnzC7oHKQi3Y9KsYzdED
         5s1A==
X-Gm-Message-State: AOAM531nFr+ERZzLIKnwdYldmL623QSm+9py+aWB9ejVZkNqXbYiIRj/
        vnPz5MACditq4p9dwr90tycf82YwFnjIKQ==
X-Google-Smtp-Source: ABdhPJx73zW9wIrp01tKrd0AfCe57dEOyLM7D7HDQ0Xn+ABvJXdf/J86jJpZPTzBTZV6B1/xQWM35g==
X-Received: by 2002:a5d:4fc5:: with SMTP id h5mr5545357wrw.145.1603298556934;
        Wed, 21 Oct 2020 09:42:36 -0700 (PDT)
Received: from localhost.localdomain (58.164.185.81.rev.sfr.net. [81.185.164.58])
        by smtp.gmail.com with ESMTPSA id a3sm5321724wrh.94.2020.10.21.09.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 09:42:36 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, amitk@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 2/3] dt-bindings: thermal: mediatek: add documentation for MT8516 SoC
Date:   Wed, 21 Oct 2020 18:42:30 +0200
Message-Id: <20201021164231.3029956-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201021164231.3029956-1-fparent@baylibre.com>
References: <20201021164231.3029956-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation for the MediaTek MT8516 SoC.
The SoC thermal IP is similar to MT2701.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/thermal/mediatek-thermal.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
index 2d20f6b0dca0..5c7e7bdd029a 100644
--- a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
@@ -14,6 +14,7 @@ Required properties:
   - "mediatek,mt2712-thermal" : For MT2712 family of SoCs
   - "mediatek,mt7622-thermal" : For MT7622 SoC
   - "mediatek,mt8183-thermal" : For MT8183 family of SoCs
+  - "mediatek,mt8516-thermal", "mediatek,mt2701-thermal : For MT8516 family of SoCs
 - reg: Address range of the thermal controller
 - interrupts: IRQ for the thermal controller
 - clocks, clock-names: Clocks needed for the thermal controller. required
-- 
2.28.0

