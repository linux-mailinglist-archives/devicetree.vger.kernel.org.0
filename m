Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26D4F57FB1C
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 10:19:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233514AbiGYITY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 04:19:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232065AbiGYITM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 04:19:12 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60E0313CEF
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 01:19:10 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id w8-20020a05600c014800b003a32e89bc4eso5864735wmm.5
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 01:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1uBINhkXj5CiEZH5/8Pm1Qj/TstsEH9+dcozESvLJgY=;
        b=4VWKR6bZmkYqrWq3HipPRaTMH3acCvx2/KBXfW0kxl0JLH2/QaFB5eScM72+FYuodm
         1Ps0q3GVeNhtTBshvFoBo3Tg+luJAwRx41Xw2WtnWBJxDGW50QVjM//ZZ7wJvEAAosnM
         +Cpv9WmVQCiCmjmJ29j2Y2wEiCmig/9I5iyCVcpCZU1JQbrbcqLFkcPaZk6vTFVvSO4k
         r8HNjXFoAY4onmMo4mvQFeERGQPpAGzZMSpw4mwbD9NsJwuInYdD0TxA5EmnAe/IvGxy
         VFPQIIeLE0FjcUp5Z8aNVQnik0SGEXiA3bBapqYfkjetq4LhdY5qx9raqdGyxVn92K0p
         hIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1uBINhkXj5CiEZH5/8Pm1Qj/TstsEH9+dcozESvLJgY=;
        b=GiIh5hBLcpXVCeyCoooBvd1VeVEZnp/A/8bkN2+80COfZL8feX1/e9AIeVT9KbhBuk
         /+2FLgmm/6tl7m6hv56n6qqLbKZ031tX6m51ewpgBpR7kVSvcIliBxemNOzgQzpmRT3d
         u2nzsgxy9TdULbZIJ/PFL7z5t0k/avQxZuQT2ZWTR7GzxbmGID+eqm1WCSn5oeSlX0dI
         XBeRV+g48oo+h7fQu75BmJ6arfB612TaPUZyXRvflApQ1WjSt5jJe2E6F6yKE3cGnw61
         wcVDu1fcX6quZKpFPJ/hLG2ZNe7G7T0Hd+KL2u2XnFUxTGuPaEi62DKCIoRJuqfL+BZ8
         BPhg==
X-Gm-Message-State: AJIora/WkuyivzLIypnhMlIBQ07IF6vA7Mg71glH9GwCfY1a4X9K1vow
        HzYssG5iugGLm5uYb5H9ofjuRA==
X-Google-Smtp-Source: AGRyM1vVJst7/Aus6G68zbPeB5sjlhQjFaxS3scwhOLz5W4CplCDcGNlIQKvOud+yzBrYFf/TaeraA==
X-Received: by 2002:a7b:c851:0:b0:3a3:19df:2673 with SMTP id c17-20020a7bc851000000b003a319df2673mr7533079wml.75.1658737148896;
        Mon, 25 Jul 2022 01:19:08 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4090:a243:806e:25e7:daa:8208:ceb])
        by smtp.gmail.com with ESMTPSA id x3-20020a05600c420300b003a3200bc788sm16695264wmh.33.2022.07.25.01.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 01:19:08 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Cc:     Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>,
        Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v2 1/4] dt-bindings: power: Add MT8365 power domains
Date:   Mon, 25 Jul 2022 10:18:50 +0200
Message-Id: <20220725081853.1636444-2-msp@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220725081853.1636444-1-msp@baylibre.com>
References: <20220725081853.1636444-1-msp@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabien Parent <fparent@baylibre.com>

Add power domains dt-bindings for MT8365.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---

Notes:
    Changes in v2:
    - Made include/dt-bindings/power/mt8365-power.h dual-license.

 .../power/mediatek,power-controller.yaml      |  2 ++
 include/dt-bindings/power/mt8365-power.h      | 19 +++++++++++++++++++
 2 files changed, 21 insertions(+)
 create mode 100644 include/dt-bindings/power/mt8365-power.h

diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
index 135c6f722091..2c6d3e4246b2 100644
--- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
@@ -29,6 +29,7 @@ properties:
       - mediatek,mt8186-power-controller
       - mediatek,mt8192-power-controller
       - mediatek,mt8195-power-controller
+      - mediatek,mt8365-power-controller
 
   '#power-domain-cells':
     const: 1
@@ -67,6 +68,7 @@ patternProperties:
               "include/dt-bindings/power/mt8183-power.h" - for MT8183 type power domain.
               "include/dt-bindings/power/mt8192-power.h" - for MT8192 type power domain.
               "include/dt-bindings/power/mt8195-power.h" - for MT8195 type power domain.
+              "include/dt-bindings/power/mt8365-power.h" - for MT8365 type power domain.
         maxItems: 1
 
       clocks:
diff --git a/include/dt-bindings/power/mt8365-power.h b/include/dt-bindings/power/mt8365-power.h
new file mode 100644
index 000000000000..e6cfd0ec7871
--- /dev/null
+++ b/include/dt-bindings/power/mt8365-power.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+/*
+ * Copyright (c) 2022 MediaTek Inc.
+ */
+
+#ifndef _DT_BINDINGS_POWER_MT8365_POWER_H
+#define _DT_BINDINGS_POWER_MT8365_POWER_H
+
+#define MT8365_POWER_DOMAIN_MM		0
+#define MT8365_POWER_DOMAIN_CONN	1
+#define MT8365_POWER_DOMAIN_MFG		2
+#define MT8365_POWER_DOMAIN_AUDIO	3
+#define MT8365_POWER_DOMAIN_CAM		4
+#define MT8365_POWER_DOMAIN_DSP		5
+#define MT8365_POWER_DOMAIN_VDEC	6
+#define MT8365_POWER_DOMAIN_VENC	7
+#define MT8365_POWER_DOMAIN_APU		8
+
+#endif /* _DT_BINDINGS_POWER_MT8365_POWER_H */
-- 
2.36.1

