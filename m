Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5DEC42DAEF
	for <lists+devicetree@lfdr.de>; Thu, 14 Oct 2021 15:57:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230177AbhJNN7Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Oct 2021 09:59:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231245AbhJNN7X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Oct 2021 09:59:23 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0190C061760
        for <devicetree@vger.kernel.org>; Thu, 14 Oct 2021 06:57:13 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id y3so19905628wrl.1
        for <devicetree@vger.kernel.org>; Thu, 14 Oct 2021 06:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CJsCWcU0YdDyrwMeRQ7adfzbBn9rJ1IRoawBpqp6LUY=;
        b=nWdcXGVnk8Oz4L0y1/sfaNNPdvqBC8SWVQ5nnv5b8TQyWXphWKaoUoiCpwNZG8Kmg7
         3dj3uagsMpT5Mkox9mRqXNBxgELAR6KQRJP9qR7cIbMpgcAwTrHHxyN3OM34CHGR60Kf
         uIoST2ZV+XIqKoziuz9ddYYjU2uuTxUp8n0OkD0kamILuU2BO4qcyQAoYlx5tI534hXJ
         8wX7ijJxd8dBsX1S0k56zxW+ymjGBOBsd4ztmANLtNmhWda2bOwt25nOHi8W1weYloLU
         m4XidWIX7hPvKFUYi1gyqqnTuCRudf4eTSdoq2TPK4/ZCBoXD2FMfrqCXrtT1XLD+5mN
         fCfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CJsCWcU0YdDyrwMeRQ7adfzbBn9rJ1IRoawBpqp6LUY=;
        b=6V88Tj1cd90xjUvxSbIGyePP+yR5YXNu8Cnc8DahcYGbafPMO5e71Cmrfyqsxb+l12
         xJYr5TYzPlJVB1uBaQnJaeYlfWOvzVK3J8lT7dEQz+Jd/uyDeNonG2SmK2FvwHKYSGuW
         lCZDC5WsEe+tBMCjkgPlaOa7WGgOvDiVaiqj3QBitC35DOGMi1qVbmxcL3XM1O1CERGh
         w/B8XnXCF3WZAGIr14VxRjH8S88hZILijMqGnRUTkN/piz/8n7XslnBkrKELEa35108S
         nBdP0uC0r3REJ2JKpkrFoOw2JgIgY0fGZ30mhZtNXaVWwYq0YNtNUL+DYAc9kYmf0Y2p
         T24g==
X-Gm-Message-State: AOAM531YHVnA+RV3sL9djjlEoPTQ0g+dVLT29PEXrYhrd1K+QbbzSQmC
        AtpH9mmuLk2+FEkUMkBel/+uUbUSPPSo7w==
X-Google-Smtp-Source: ABdhPJwQIpKFObMCc8ia1BlvyYCeOcB3+iofnWS2JorNe065Bk+P85rDl3QiHz/L0kIPBi56mMyzOw==
X-Received: by 2002:a5d:45c9:: with SMTP id b9mr6722258wrs.365.1634219832217;
        Thu, 14 Oct 2021 06:57:12 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
        by smtp.gmail.com with ESMTPSA id d1sm2596480wrr.72.2021.10.14.06.57.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 06:57:11 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, fparent@baylibre.com,
        khilman@baylibre.com, Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 1/3] dt-bindings: thermal: mediatek: Add mt8365
Date:   Thu, 14 Oct 2021 15:56:34 +0200
Message-Id: <20211014135636.3644166-2-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211014135636.3644166-1-msp@baylibre.com>
References: <20211014135636.3644166-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This unit is present on the mt8365 SoC as well. But there is a
difference in the usage of an apmixed register.

This patch adds a distinct mt8365 to the list of compatibles.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 Documentation/devicetree/bindings/thermal/mediatek-thermal.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
index 5c7e7bdd029a..ba4ebffeade4 100644
--- a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
@@ -14,6 +14,7 @@ Required properties:
   - "mediatek,mt2712-thermal" : For MT2712 family of SoCs
   - "mediatek,mt7622-thermal" : For MT7622 SoC
   - "mediatek,mt8183-thermal" : For MT8183 family of SoCs
+  - "mediatek,mt8365-thermal" : For MT8365 family of SoCs
   - "mediatek,mt8516-thermal", "mediatek,mt2701-thermal : For MT8516 family of SoCs
 - reg: Address range of the thermal controller
 - interrupts: IRQ for the thermal controller
-- 
2.33.0

