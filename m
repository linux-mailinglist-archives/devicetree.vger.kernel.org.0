Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B160841E5B
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 09:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731527AbfFLHzQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 03:55:16 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:44922 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726095AbfFLHzQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 03:55:16 -0400
Received: by mail-pl1-f196.google.com with SMTP id t7so3673793plr.11
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 00:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ddmyf9yTEwlfHCzubut1+DzdJc/PcrZsJL5uTZc4yfE=;
        b=naECvcLA5b+ikhmyDk1YLXvhPLPCup9xIr0OEPfNZq/YqaOQKD1US6XtcnKca3PyrX
         bS4UZiBYiQmNmGgQ0PHd0Pc5zsJFZJte92oiMsouZ/6hZL5caUyz5JVsLCSMfcMwekA5
         W8GFIeuttEZGufRFlCDfOWDY6meAbjQfHmhtnqmKMl97G8fpOsIGpMdAr2Sx2or9umrH
         HGKJLY2DI7pkC2v9OSawkWU+Q8oq9CyE39MCKWWLqQEW17vncFA7PjIeEAyeF5vORafF
         +eTbVWyCkWrnw7G2YeduVn3IGEasK2w9lxkHgo8d5n/wtLwv0f3frqGhWVK86HxSmRZ0
         UgzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ddmyf9yTEwlfHCzubut1+DzdJc/PcrZsJL5uTZc4yfE=;
        b=VU6FrOGwzfAyrNbH1jmSJG7aDFVt7EbIwaMkRtjPBBZoNad/CKngcvCg59w/1gx1nl
         YnkwP01FJiFkKaoGHd1/WEr3guRtPRVDVDo18LxJOtdL2fwAPaq93Caqm7kJfcEwn0i7
         NiaUQeqyrs/q1Dkk+1hQ23pWtiGhADTUUQ5r+fE7tcD3GK555TwnT3wkMIj+e5wEPvVK
         MEp3YHmYAv8vSB42WLM0SApd2MCqLO1+ktYsVqRHH5NPZWXuYVJMj+MVFViALvfemdcD
         y0gxcNxNXXSue8MYlJw+gEIzVMZ04DhcSaLUjF/bP+aZjP6bSuJ6ZslH/x8HoJNzpDh0
         UUpQ==
X-Gm-Message-State: APjAAAW8Piy/RRCkD1U3Up6f2VOC4eSUcAMmtWFOhMWFKvJYZ46G7hSt
        nSskXgnVovPQrQUQnBZQfrag
X-Google-Smtp-Source: APXvYqx7tmatLIV5lw0AoibaBm7aPYmU16s1G88Rxa+htlmSOMrfzpqbjFDCivcdIqj+XjXUxs362Q==
X-Received: by 2002:a17:902:b905:: with SMTP id bf5mr80896870plb.155.1560326114920;
        Wed, 12 Jun 2019 00:55:14 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:894:d456:15b5:9ca9:e3ec:c06a])
        by smtp.gmail.com with ESMTPSA id b15sm16846399pfi.141.2019.06.12.00.55.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Jun 2019 00:55:14 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
        robh+dt@kernel.org
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 2/4] dt-bindings: arm: stm32: Convert STM32 SoC bindings to DT schema
Date:   Wed, 12 Jun 2019 13:24:49 +0530
Message-Id: <20190612075451.8643-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
References: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit converts STM32 SoC bindings to DT schema using jsonschema.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/arm/stm32/stm32.txt   | 10 -------
 .../devicetree/bindings/arm/stm32/stm32.yaml  | 29 +++++++++++++++++++
 2 files changed, 29 insertions(+), 10 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/stm32/stm32.txt
 create mode 100644 Documentation/devicetree/bindings/arm/stm32/stm32.yaml

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.txt b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
deleted file mode 100644
index 6808ed9ddfd5..000000000000
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.txt
+++ /dev/null
@@ -1,10 +0,0 @@
-STMicroelectronics STM32 Platforms Device Tree Bindings
-
-Each device tree must specify which STM32 SoC it uses,
-using one of the following compatible strings:
-
-  st,stm32f429
-  st,stm32f469
-  st,stm32f746
-  st,stm32h743
-  st,stm32mp157
diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
new file mode 100644
index 000000000000..f53dc0f2d7b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -0,0 +1,29 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/stm32/stm32.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Platforms Device Tree Bindings
+
+maintainers:
+  - Alexandre Torgue <alexandre.torgue@st.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: st,stm32f429
+
+      - items:
+          - const: st,stm32f469
+
+      - items:
+          - const: st,stm32f746
+
+      - items:
+          - const: st,stm32h743
+
+      - items:
+          - const: st,stm32mp157
+...
-- 
2.17.1

