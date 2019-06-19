Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7F0744BB49
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2019 16:21:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730357AbfFSOUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jun 2019 10:20:55 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:38785 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730404AbfFSOUW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jun 2019 10:20:22 -0400
Received: by mail-wr1-f68.google.com with SMTP id d18so3625081wrs.5
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2019 07:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kT6C5gE5FK+KfGlZUIPAV8YPgNwsfj0frh0Wye9Nflo=;
        b=sSRIPzPK+cPvn1MTMZBkX0cP7V4UYFS/H/JmGFKmf/qben3Z21FjOkPBh/Mfe8nKNv
         CGx+fG8LX4MzmhIqhLYyXlOL+6TEFHSgwR323FP/RdYc3LOK+Ja6Nq4I5qe73LXMZ25N
         JgWj297MqgpUtnqnioJrYPlJZmETPT/Mo54B5Ogyc1wo0HsuHp6qSctXAtn6eWBz9bho
         dtKKpDftYUiYmJNRo6g89JTDnkReLn0x6XYFhLuRG8Geqlj4husJAfw2UOOu+TsTrrYq
         ZXeRmyUHlllMdiqiJ+oMyirBtcf+50WcH+dooZG4mWyhLEnZDDUEJXoiJNaKWFih8OaS
         pgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kT6C5gE5FK+KfGlZUIPAV8YPgNwsfj0frh0Wye9Nflo=;
        b=BN+0mLYgJhNVwY9PVIRUF0yUcum3+eTEolAIKx4GSUqr03UCoa9wHVIg1sP7EgOUzx
         Y3pYrcoriJMZXjkMg4a6myHSFX/Kp+05WjLB7LhMBy6/xRlpBMn8vkTmHAU4I3WQOuRv
         6HVIGqbdF+QzMiBl1Oz8StYiEU1CrO77vq/xV8sFi3L3IEg+mOKifSHtd0IO02E5Ne9S
         BKu89p3iVahUovramOBaVLF+vKXGwf0rB3ibKOWs1fBgAXGTbuymwCA8RCOr1TDtp2ZH
         iXc+ITRHoO/FDCMEEkEreXVDgnD9wQiMhMpm4oqMVc13c/pGXyPljkZZlccDzo97u+lA
         UEgw==
X-Gm-Message-State: APjAAAX7yJOUMeYca9sCy46m/nHkbIP9q8HyVMif9YdvRPQBtsu+zFyO
        bJ56lv9y2mQBDXYC3/JpuAZ8cw==
X-Google-Smtp-Source: APXvYqy2BRCb05/k/zzKqZd8m/UIuZO+uW8jfzrNFlV7AFJWIlz2oU4yN1NtUSCIidGEmkuu4fzypg==
X-Received: by 2002:adf:dc81:: with SMTP id r1mr3516215wrj.298.1560954020155;
        Wed, 19 Jun 2019 07:20:20 -0700 (PDT)
Received: from localhost.localdomain (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
        by smtp.gmail.com with ESMTPSA id o20sm24209979wrh.8.2019.06.19.07.20.18
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 19 Jun 2019 07:20:19 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, matthias.bgg@gmail.com,
        lee.jones@linaro.org, lgirdwood@gmail.com, broonie@kernel.org
Cc:     dmitry.torokhov@gmail.com, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Fabien Parent <fparent@baylibre.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 2/7] dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
Date:   Wed, 19 Jun 2019 16:20:08 +0200
Message-Id: <20190619142013.20913-3-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619142013.20913-1-fparent@baylibre.com>
References: <20190619142013.20913-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the currently supported bindings for the MT6392 PMIC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---

V4:

	* No change

V3:
	* No change

V2:
	* New patch

---
 Documentation/devicetree/bindings/mfd/mt6397.txt | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
index 0ebd08af777d..aa6d2eb0eb19 100644
--- a/Documentation/devicetree/bindings/mfd/mt6397.txt
+++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
@@ -17,7 +17,10 @@ Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
 This document describes the binding for MFD device and its sub module.
 
 Required properties:
-compatible: "mediatek,mt6397" or "mediatek,mt6323"
+compatible: Should be one of:
+	- "mediatek,mt6397"
+	- "mediatek,mt6392"
+	- "mediatek,mt6323"
 
 Optional subnodes:
 
@@ -28,6 +31,8 @@ Optional subnodes:
 	Required properties:
 		- compatible: "mediatek,mt6397-regulator"
 	see Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
+		- compatible: "mediatek,mt6392-regulator"
+	see Documentation/devicetree/bindings/regulator/mt6392-regulator.txt
 		- compatible: "mediatek,mt6323-regulator"
 	see Documentation/devicetree/bindings/regulator/mt6323-regulator.txt
 - codec
@@ -43,7 +48,10 @@ Optional subnodes:
 
 - keys
 	Required properties:
-		- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
+		- compatible: Should be one of:
+			- "mediatek,mt6397-keys"
+			- "mediatek,mt6392-keys"
+			- "mediatek,mt6323-keys"
 	see Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
 
 Example:
-- 
2.20.1

