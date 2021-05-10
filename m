Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0A5937993E
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 23:37:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232481AbhEJVic (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 17:38:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232082AbhEJVib (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 17:38:31 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74AEBC061574
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 14:37:25 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id o16so22630877ljp.3
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 14:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CUvl66hkrXjCfS0+MBNd5h698LfIk3X/AE2d1CppJVM=;
        b=dID648OqvC6fpie5hQioI8+BavivqlqN/iNII27m9wwegXP/fBT4072x9hLy3uheNZ
         Akb5f9TqDODDJATz4d4J69ahd/nnqkbveL5jhMhJ1sxubL/xnqz2GxrdSbVDjneff+Zc
         bgmTpI+CJl6O6N39Iyj/olaT6kqY+L3lLzRCOUKz506ZhSDBESm1OUT5BbInTSIkJ2L8
         +MbyeIezWVuAYYloHmQnPEfjhQYK5EKcQq2ltvzLjTIrI4NsSIhNE882WX9bR9zW7xRl
         TDE/IUx4DrHnHVWcLgu0jyzgvgNiXmU+W4ZlEDa+Tq+AAIoiA0HeIT2gr03b8AebJcDL
         Hz9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CUvl66hkrXjCfS0+MBNd5h698LfIk3X/AE2d1CppJVM=;
        b=Qf/TwJFwywvEirVQRMvr1/OsJk0xPxfaUGS7rFig4AVOG8hsQW83Tyq2j6OPi9OsT8
         hqP8xSr9aXUxdHQ2AnQZF2fPolAnyvbO9nVzhyVnqhPfMI7GN0OQigAhWx9wF755vX4r
         YtEDPP9pvT2rpihZ4L6RYuUyf22B0FLCSFXDwNEbyiIS7es8NgVy6GvVnlqc4H53yBwa
         1hHFR3AQsaxzep2IkRLXm4qlOGPc/hfEZDOSWArr9g/43gCHnyBfTaETeg1IujVO0jlb
         2jKp8aqX9jGMBnf3c/ejxAmbBS5UVu3oYgfPk4255UCaOmm7aNZxEmiV8wT/Jsde+UZ4
         tHqw==
X-Gm-Message-State: AOAM533kJYCBBtNMfG7okAJRPWWoqXVSLtPWnqAk5JU0kJEn5sKu63d3
        BHKnhc6X+BehXH5Rd/UoyKnPTw==
X-Google-Smtp-Source: ABdhPJztyPIQuhm88sYU82lPmNBi5JTeQ9tTCbuESFnM9KRry16gs7IhDgtCmSJQBXwLzA3c+zmPJQ==
X-Received: by 2002:a2e:8797:: with SMTP id n23mr2063883lji.248.1620682643921;
        Mon, 10 May 2021 14:37:23 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id q19sm1091660lff.16.2021.05.10.14.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 14:37:22 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     linux-crypto@vger.kernel.org,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S . Miller" <davem@davemloft.net>
Cc:     linux-arm-kernel@lists.infradead.org,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/3] crypto: ixp4xx: Add DT bindings
Date:   Mon, 10 May 2021 23:36:33 +0200
Message-Id: <20210510213634.600866-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210510213634.600866-1-linus.walleij@linaro.org>
References: <20210510213634.600866-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for the ixp4xx crypto engine.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Herbert, David: This can be applied separately once we are
happy with the bindings, alternatively it can be merged
with the support code into ARM SoC.
---
 .../bindings/crypto/intel,ixp4xx-crypto.yaml  | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml

diff --git a/Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml b/Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml
new file mode 100644
index 000000000000..28d75f4f9a76
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/intel,ixp4xx-crypto.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2018 Linaro Ltd.
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/crypto/intel,ixp4xx-crypto.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Intel IXP4xx cryptographic engine
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  The Intel IXP4xx cryptographic engine makes use of the IXP4xx NPE
+  (Network Processing Engine). Since it is not a device on its own
+  it is defined as a subnode of the NPE, if crypto support is
+  available on the platform.
+
+properties:
+  compatible:
+    const: intel,ixp4xx-crypto
+
+  intel,npe-handle:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    description: phandle to the NPE this ethernet instance is using
+      and the instance to use in the second cell
+
+  queue-rx:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    description: phandle to the RX queue on the NPE
+
+  queue-txready:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    maxItems: 1
+    description: phandle to the TX READY queue on the NPE
+
+required:
+  - compatible
+  - intel,npe-handle
+  - queue-rx
+  - queue-txready
+
+additionalProperties: false
+
+examples:
+  - |
+    npe: npe@c8006000 {
+         compatible = "intel,ixp4xx-network-processing-engine";
+         reg = <0xc8006000 0x1000>, <0xc8007000 0x1000>, <0xc8008000 0x1000>;
+
+         crypto {
+             compatible = "intel,ixp4xx-crypto";
+             intel,npe-handle = <&npe 2>;
+             queue-rx = <&qmgr 30>;
+             queue-txready = <&qmgr 29>;
+         };
+    };
-- 
2.30.2

