Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C417A2A174D
	for <lists+devicetree@lfdr.de>; Sat, 31 Oct 2020 13:22:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727252AbgJaMWv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Oct 2020 08:22:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726935AbgJaMWv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Oct 2020 08:22:51 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDC42C0613D5
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 05:22:50 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id a9so9250680wrg.12
        for <devicetree@vger.kernel.org>; Sat, 31 Oct 2020 05:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YMfchJ7P76DwH5DNS2F93sb17oYWRZh49eDAnHjA7P0=;
        b=ro87S9k9eMRXDQgBKqj0a3AblSSFWLO5FnmHyOLznhcZEJnR0avwL2vSoJF3PBmhxs
         udK6VZBR1nQb2efJQTQKrZvC+f33YKGHvpM21GPLbh0idoFI+G+H//B9OxJlSZHEM1pP
         FytrqOmvN6m77Vl+3zECS6Ng58fU397qNfWhTTmCL++jj0k+B6520ec021VmtjQFW5D2
         YK/mM3qU9vV0aP3OdhglPe3qsQykJnSzyh0iXBaezs9eEN+fye4YO1FJNjmoOVyFpjX+
         ELIq4MvWyt3zRjT4F5PHZBjr3nvWE/4D0mPdT4w7Aa1mCi9sG1hxN6qWrZn+d0+BkgYN
         qxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YMfchJ7P76DwH5DNS2F93sb17oYWRZh49eDAnHjA7P0=;
        b=A0jm9fVeA8G6z8OjPBn2nZSRLwTnLMjVrtRkVmYiosCKzQN+Sp81PklqmlUi14Gs/r
         A4Yx2ak3g5Ekg0CXUXtS10ae0nRDtGnv8heWUpwQv7IRzbjUPMiodT2UroSYqQfRDjkq
         Cb/bBNoP5obIo7en+T+ggtRREGbKny1kW68DrBs2L95rT9veZ723BhxB1klfGord+Iqf
         YxlJ6nEsAZAerVTZbX66NLINikt0869rAvUW87xw7/teNtdwVfHYdlAolevVEr6J3XSZ
         8m6eoZS8nej1qAx2pmFqtb+h5SyW1QcyIrJlsCQ3fosELTxp6My1zqvtxXx01qg1ezJN
         1Pwg==
X-Gm-Message-State: AOAM5333ZYLvUstuzxN3yIqgyilA6DK0quu+qhhty+cSP3WHHopa6llT
        5vwUOPdpJveR7zMVYIN/LsO/sICQHELolA==
X-Google-Smtp-Source: ABdhPJwSA/sCKlBvNf90LEyWl4oUlKPTQ6HqQbnbNrtDJifG3Y079c5h4DKPimnEDn9SbNu2b7YCLQ==
X-Received: by 2002:adf:e685:: with SMTP id r5mr9780483wrm.340.1604146969549;
        Sat, 31 Oct 2020 05:22:49 -0700 (PDT)
Received: from localhost.localdomain (14.red-83-46-194.dynamicip.rima-tde.net. [83.46.194.14])
        by smtp.gmail.com with ESMTPSA id f7sm15299199wrx.64.2020.10.31.05.22.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2020 05:22:49 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     kishon@ti.com
Cc:     vkoul@kernel.org, robh+dt@kernel.org, gregkh@linuxfoundation.org,
        devicetree@vger.kernel.org, devel@driverdev.osuosl.org,
        neil@brown.name
Subject: [PATCH v4 1/4] dt-bindings: phy: Add binding for Mediatek MT7621 PCIe PHY
Date:   Sat, 31 Oct 2020 13:22:43 +0100
Message-Id: <20201031122246.16497-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings to describe Mediatek MT7621 PCIe PHY.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../bindings/phy/mediatek,mt7621-pci-phy.yaml | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
new file mode 100644
index 000000000000..cf32bbc45b5d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/mediatek,mt7621-pci-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Mediatek Mt7621 PCIe PHY Device Tree Bindings
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+properties:
+  compatible:
+    const: mediatek,mt7621-pci-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 1
+    description: selects if the phy is dual-ported
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    pcie0_phy: pcie-phy@1e149000 {
+      compatible = "mediatek,mt7621-pci-phy";
+      reg = <0x1e149000 0x0700>;
+      #phy-cells = <1>;
+    };
-- 
2.25.1

