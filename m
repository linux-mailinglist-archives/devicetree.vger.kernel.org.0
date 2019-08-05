Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8798B8148D
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 10:59:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726880AbfHEI7J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 04:59:09 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:46909 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726423AbfHEI7I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Aug 2019 04:59:08 -0400
Received: by mail-lj1-f196.google.com with SMTP id v24so78766841ljg.13
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 01:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EXkqTVhXO6MuFFjVCLi4lBLWx6BlFlZJVWVgTuZAEY4=;
        b=Ba7QAWM2Evl4Pc4fPtC/POrJ4FhEhiepLZMIk4k/Jf6H4nfgT+MI5OG45ZGSdcv755
         H2P3RmWgBKtQhwYQ83e0djlFVDjf4wxYMObX9mcMV2fBTv5n1rjVivL+60qap0XXNSU6
         /LgzC00XNxT/HS6mPk5/AEuqQHVpVdfDX8ra02QjPmCSIEtANfRQs9zrhxEeAjfLDt1q
         tBJjnis5YTgkKttRZvNl1dQoNstj3Pm17uZEEqNaHeF7jj3fN1Un4hVybpPdobQRc/sc
         yS3L6Q+6afMC1lCyqmzXa64ipIj1SNVbp9s6M2955b2Csb4HkNKQAPkvqOPwTZ5yK6Mz
         oWLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EXkqTVhXO6MuFFjVCLi4lBLWx6BlFlZJVWVgTuZAEY4=;
        b=Fzgv46N31EQVzKEhAjVaGj1a0MykNx2Dz9zDY01zuzZ+o9CE24Od+iYvEWknkneCzH
         /IzvOtVGDTcGRImHARSfFk82UIuYu+y95bo36LPE0ypiVkpsnb9PyoNiTuZCrQyVDRxs
         SsM5W7TZvQlzItEO53NjeiS0RxC/GCtAcGa24FWX83YwNVO/N+lLEqxkFhVb6R3QAvia
         QvdPaVB/BVICbBlosqJ0IqzLb1v9uHO88pymSJ7/U7scI8R+j499EJWezvCWA8XGuojU
         XBURJS4mp2jZ/uc/q/kc2vzoescuBm0NNt7r0JPsRg+fyUjQ6AQolgWtIH5/mrFpLcQF
         HsnQ==
X-Gm-Message-State: APjAAAU8LN6Bcdsr3yaNTaNq1B2cdbcBJDzna+OwowiUx7awnpl/0END
        irIhueb1xfoNR6opQT0P9msudg==
X-Google-Smtp-Source: APXvYqwbuwVFOcYZ+tW4JlcKxLgpwbyuG/DAzlJI56u1tKKPW2NO6e7CH6quIqpkbqZgdu0KsK69jg==
X-Received: by 2002:a2e:534a:: with SMTP id t10mr38483547ljd.109.1564995546767;
        Mon, 05 Aug 2019 01:59:06 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id b20sm234500lfc.17.2019.08.05.01.59.05
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 05 Aug 2019 01:59:05 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Daniel Tang <dt.tangr@gmail.com>,
        Fabian Vogt <fabian@ritter-vogt.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/4 v2] drm/panel: simple: Add TI nspire panel bindings
Date:   Mon,  5 Aug 2019 10:58:45 +0200
Message-Id: <20190805085847.25554-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805085847.25554-1-linus.walleij@linaro.org>
References: <20190805085847.25554-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the TI NSPIRE simple display panels.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- New patch as bindings are required
- Let's use YAML
---
 .../bindings/display/panel/ti,nspire.yaml     | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ti,nspire.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
new file mode 100644
index 000000000000..fa81602a922a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR X11)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ti,nspire.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments NSPIRE Display Panels
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - ti,nspire-cx-lcd-panel
+              - ti,nspire-classic-lcd-panel
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    panel {
+        compatible = "ti,nspire-cx-lcd-panel";
+        ports {
+    	    port {
+                panel_in: endpoint {
+                    remote-endpoint = <&pads>;
+                };
+            };
+        };
+    };
-- 
2.21.0

