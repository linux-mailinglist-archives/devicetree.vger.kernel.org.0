Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BB1728083C
	for <lists+devicetree@lfdr.de>; Thu,  1 Oct 2020 22:09:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729993AbgJAUJr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Oct 2020 16:09:47 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:36061 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726606AbgJAUJr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Oct 2020 16:09:47 -0400
Received: by mail-ot1-f66.google.com with SMTP id 60so6785782otw.3
        for <devicetree@vger.kernel.org>; Thu, 01 Oct 2020 13:09:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rWzXvDIyMZ/AHOVz8so/thsP9/reM59YnZj9GB1RRUw=;
        b=mJlrM0wCZIFfyt8ryrrIleZypbs8YOM+LHpofAFy6ZDghyNTF0B7M+ySIC0+iJnVa1
         j3G3JQGoFZT4XkZEC50EzJaoNDMbHkZfI9TDdjdAsMPGftp0m4Atn7H3R1n2eEH/IKss
         zFGxCAhWhJQVdReDTR4iJywjGEs+i4EkRQKmDWd/T4WTFTTirGkQgYFV+GyFDZlGoJD5
         JkoKL5GTmoPL+HjHMRYuHbNpkS0rfzVW7yxbgRRD9XL93omENJUi89PWnFa3ZzBslyZP
         eVlmJsWVIPHQEqZVK2jv+ee1afm4lKinGWy1Z1qybj7wjhkaGLEuKji6QA04lUSwfdIg
         hdrA==
X-Gm-Message-State: AOAM531sG43soAGChxQkvLSI6N/SyICQrt/O/HNVzjAk0yKJTnIbCC13
        FofraDeCZX/VdjB3WJ5P9Xg44th1anby
X-Google-Smtp-Source: ABdhPJxMRE6lESD3YZC/zX28n+0tNDI9Q76sI/23ldILUcom8ZN4Tuq8zc0mRHN4pzFdjz5Lc6QKpA==
X-Received: by 2002:a9d:3787:: with SMTP id x7mr6198801otb.165.1601582984543;
        Thu, 01 Oct 2020 13:09:44 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id e22sm1373057oib.18.2020.10.01.13.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 13:09:44 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Baruch Siach <baruch@tkos.co.il>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Anders Berg <anders.berg@lsi.com>
Subject: [PATCH] dt-bindings: arm: Add missing root node constraint for board/SoC bindings
Date:   Thu,  1 Oct 2020 15:09:43 -0500
Message-Id: <20201001200943.1193870-1-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Board/SoC top-level compatible bindings should be constrained to the root
node. Add the missing constraints that the node name must be "/".

Cc: "Andreas Färber" <afaerber@suse.de>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Baruch Siach <baruch@tkos.co.il>
Cc: Linus Walleij <linusw@kernel.org>
Cc: Imre Kaloz <kaloz@openwrt.org>
Cc: Krzysztof Halasa <khalasa@piap.pl>
Cc: Andy Gross <agross@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Jonathan Hunter <jonathanh@nvidia.com>
Cc: Dinh Nguyen <dinguyen@kernel.org>
Cc: Anders Berg <anders.berg@lsi.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/actions.yaml      | 2 ++
 Documentation/devicetree/bindings/arm/altera.yaml       | 2 ++
 Documentation/devicetree/bindings/arm/axxia.yaml        | 2 ++
 Documentation/devicetree/bindings/arm/bitmain.yaml      | 2 ++
 Documentation/devicetree/bindings/arm/digicolor.yaml    | 2 ++
 Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml | 2 ++
 Documentation/devicetree/bindings/arm/qcom.yaml         | 2 ++
 Documentation/devicetree/bindings/arm/rda.yaml          | 2 ++
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml  | 2 ++
 Documentation/devicetree/bindings/arm/tegra.yaml        | 2 ++
 10 files changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/actions.yaml b/Documentation/devicetree/bindings/arm/actions.yaml
index ace3fdaa8396..14023f0a8552 100644
--- a/Documentation/devicetree/bindings/arm/actions.yaml
+++ b/Documentation/devicetree/bindings/arm/actions.yaml
@@ -11,6 +11,8 @@ maintainers:
   - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 
 properties:
+  $nodename:
+    const: "/"
   compatible:
     oneOf:
       # The Actions Semi S500 is a quad-core ARM Cortex-A9 SoC.
diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index b388c5aa7984..0bc5020b7539 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -10,6 +10,8 @@ maintainers:
   - Dinh Nguyen <dinguyen@kernel.org>
 
 properties:
+  $nodename:
+    const: "/"
   compatible:
     items:
       - enum:
diff --git a/Documentation/devicetree/bindings/arm/axxia.yaml b/Documentation/devicetree/bindings/arm/axxia.yaml
index 98780a569f22..3ea5f2fdcd96 100644
--- a/Documentation/devicetree/bindings/arm/axxia.yaml
+++ b/Documentation/devicetree/bindings/arm/axxia.yaml
@@ -10,6 +10,8 @@ maintainers:
   - Anders Berg <anders.berg@lsi.com>
 
 properties:
+  $nodename:
+    const: "/"
   compatible:
     description: LSI AXM5516 Validation board (Amarillo)
     items:
diff --git a/Documentation/devicetree/bindings/arm/bitmain.yaml b/Documentation/devicetree/bindings/arm/bitmain.yaml
index 5cd5b36cff2d..5880083ab8d0 100644
--- a/Documentation/devicetree/bindings/arm/bitmain.yaml
+++ b/Documentation/devicetree/bindings/arm/bitmain.yaml
@@ -10,6 +10,8 @@ maintainers:
   - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 
 properties:
+  $nodename:
+    const: "/"
   compatible:
     items:
       - enum:
diff --git a/Documentation/devicetree/bindings/arm/digicolor.yaml b/Documentation/devicetree/bindings/arm/digicolor.yaml
index d9c80b827e9b..849e20518339 100644
--- a/Documentation/devicetree/bindings/arm/digicolor.yaml
+++ b/Documentation/devicetree/bindings/arm/digicolor.yaml
@@ -10,6 +10,8 @@ maintainers:
   - Baruch Siach <baruch@tkos.co.il>
 
 properties:
+  $nodename:
+    const: "/"
   compatible:
     const: cnxt,cx92755
 
diff --git a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
index f4f7451e5e8a..f18302efb90e 100644
--- a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
+++ b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
@@ -10,6 +10,8 @@ maintainers:
   - Linus Walleij <linus.walleij@linaro.org>
 
 properties:
+  $nodename:
+    const: "/"
   compatible:
     oneOf:
       - items:
diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 6031aee0f5a8..ae6284be9fef 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -73,6 +73,8 @@ description: |
   foundry 2.
 
 properties:
+  $nodename:
+    const: "/"
   compatible:
     oneOf:
       - items:
diff --git a/Documentation/devicetree/bindings/arm/rda.yaml b/Documentation/devicetree/bindings/arm/rda.yaml
index 51cec2b63b04..9672aa0c760d 100644
--- a/Documentation/devicetree/bindings/arm/rda.yaml
+++ b/Documentation/devicetree/bindings/arm/rda.yaml
@@ -10,6 +10,8 @@ maintainers:
   - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 
 properties:
+  $nodename:
+    const: "/"
   compatible:
     items:
       - enum:
diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 790e6dd48e34..696a0101ebcc 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -10,6 +10,8 @@ maintainers:
   - Alexandre Torgue <alexandre.torgue@st.com>
 
 properties:
+  $nodename:
+    const: "/"
   compatible:
     oneOf:
       - items:
diff --git a/Documentation/devicetree/bindings/arm/tegra.yaml b/Documentation/devicetree/bindings/arm/tegra.yaml
index e0b3debaee9e..b4d53290c5f0 100644
--- a/Documentation/devicetree/bindings/arm/tegra.yaml
+++ b/Documentation/devicetree/bindings/arm/tegra.yaml
@@ -11,6 +11,8 @@ maintainers:
   - Jonathan Hunter <jonathanh@nvidia.com>
 
 properties:
+  $nodename:
+    const: "/"
   compatible:
     oneOf:
       - items:
-- 
2.25.1

