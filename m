Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AD864BFB5D
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 15:59:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233018AbiBVPAK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 10:00:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232993AbiBVPAJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 10:00:09 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9948110DA5A
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 06:59:43 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8110B3FCAE
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 14:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645541982;
        bh=S4dRVCvOCJBf/TgKU+SSH97N+njRRxFUmbUfADNYkMQ=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=tutXKflI6CrBnmxvsXIvLlXU1L62TQ6A7AytQc3LQ1J6OKnuFgmF3lsENv1PqDuW5
         Kk8kokRYQcoFAPBZLuEzEVy7bN51bXJI2Q49geo2sNTUiiUjVQ4LKKb8HZbTj/YFV9
         oPvy59NaHSczDcd1Fnr94rvYrpOirBn88FXaItUqMFjRmt8QjPWVY8dhZA4+t3QC1I
         6W6ibS0916GDoiRahtkRdqp+UtDTk6E8JEO6BW6hakFd9Avx5iMWDYlLE3Kal2awPf
         Rr+g9uYtAc/Y0a3DUPcoWi1kpAol8gMUcD2xCiS6NNh6aUfGRezPVrnCU8AvhFyHb6
         Umf1RFxbmPBqA==
Received: by mail-ed1-f72.google.com with SMTP id r9-20020a05640251c900b00412d54ea618so6361580edd.3
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 06:59:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S4dRVCvOCJBf/TgKU+SSH97N+njRRxFUmbUfADNYkMQ=;
        b=lokJDrS3fcUs91ZMr3LFB247GOlZLnbUD9yAwPCUOA8JPngynLMuxm4LgrVdWfhGuc
         t3kES7hKcX5utuMt38RbmJ6Q0QOOJk175+TqnvQa6w4o2uhqYC27Vlm8UX25g15lO2Se
         UqRemiNHIrUfWKrlE7332aOfFCNEvtm4TI3IHF2H4LVfMyT1xhumV/b1P79Fq1VItmN8
         2K8koxA/17TfjQTG/hLPYm89O78jHaiH9vl5+3+l7mMCPy1sSffoMYmB9MFf71qqqxp5
         CkqvmohkSPuFGXZmPwOIbRYJJt1omxVf7x5Q16Y7yuDkheVjZm6eDkBAuxK1HK3LlgKd
         A/EQ==
X-Gm-Message-State: AOAM532qfO48c6ZXW8qsHR1X74AwNy4BZofpdebZ+1Tsh5PHGqod21JQ
        ViTVpQiBHPlvv85aZtAwyEwAOiKOoO0yGPl8jAJil4/Va5gMJsm7WcYGKVW9T2eDhFfos+s6nq5
        SXjQk5WMjiGBfZ1ZJgW82FBJPsQNKvwKpTjHELKA=
X-Received: by 2002:a17:906:cc8d:b0:6c9:6df1:7c55 with SMTP id oq13-20020a170906cc8d00b006c96df17c55mr19473154ejb.317.1645541982087;
        Tue, 22 Feb 2022 06:59:42 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxIhq541BP8xUfNXZfL1fB9MquqPsLmy1uzBQ8P2KwTPXTxvLGRbz9RKniac/wyFeuTOl8HKA==
X-Received: by 2002:a17:906:cc8d:b0:6c9:6df1:7c55 with SMTP id oq13-20020a170906cc8d00b006c96df17c55mr19473139ejb.317.1645541981833;
        Tue, 22 Feb 2022 06:59:41 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id m2sm2467960ejb.20.2022.02.22.06.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 06:59:41 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Wei Xu <xuwei5@hisilicon.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Jan Kotas <jank@cadence.com>, Li Wei <liwei213@huawei.com>,
        Stanley Chu <stanley.chu@mediatek.com>,
        Yaniv Gardi <ygardi@codeaurora.org>,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 01/15] dt-bindings: ufs: add common platform bindings
Date:   Tue, 22 Feb 2022 15:58:40 +0100
Message-Id: <20220222145854.358646-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220222145854.358646-1-krzysztof.kozlowski@canonical.com>
References: <20220222145854.358646-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for common parts (platform) of Universal Flash Storage
(UFS) Host Controllers in dtschema format.

The 'freq-table-hz' is not correct in dtschema, because '-hz' suffix
defines uint32 type, not an array.  Therefore deprecate 'freq-table-hz'
and use 'freq-table' instead.

Include also the bindings directory in UFS maintainers entry.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/ufs/ti,j721e-ufs.yaml |  2 +-
 .../devicetree/bindings/ufs/ufs-common.yaml   | 88 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 3 files changed, 90 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/ufs/ufs-common.yaml

diff --git a/Documentation/devicetree/bindings/ufs/ti,j721e-ufs.yaml b/Documentation/devicetree/bindings/ufs/ti,j721e-ufs.yaml
index 4d13e6bc1c50..dc93fe2d3458 100644
--- a/Documentation/devicetree/bindings/ufs/ti,j721e-ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/ti,j721e-ufs.yaml
@@ -80,7 +80,7 @@ examples:
                 compatible = "cdns,ufshc-m31-16nm", "jedec,ufs-2.0";
                 reg = <0x0 0x4000 0x0 0x10000>;
                 interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
-                freq-table-hz = <19200000 19200000>;
+                freq-table = <19200000 19200000>;
                 power-domains = <&k3_pds 277>;
                 clocks = <&k3_clks 277 1>;
                 assigned-clocks = <&k3_clks 277 1>;
diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
new file mode 100644
index 000000000000..85c73d2853e9
--- /dev/null
+++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
@@ -0,0 +1,88 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/ufs/ufs-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common properties for Universal Flash Storage (UFS) Host Controllers
+
+maintainers:
+  - Alim Akhtar <alim.akhtar@samsung.com>
+  - Avri Altman <avri.altman@wdc.com>
+
+properties:
+  clocks: true
+
+  clock-names: true
+
+  freq-table-hz:
+    deprecated: true
+    description:
+      Use freq-table.
+
+  freq-table:
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+    items:
+      items:
+        - description: Minimum frequency for given clock
+        - description: Maximum frequency for given clock
+    description: |
+      Array of <min max> operating frequencies in Hz stored in the same order
+      as the clocks property. If this property is not defined or a value in the
+      array is "0" then it is assumed that the frequency is set by the parent
+      clock or a fixed rate clock source.
+
+  interrupts:
+    maxItems: 1
+
+  lanes-per-direction:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [1, 2]
+    default: 2
+    description:
+      Number of lanes available per direction.  Note that it is assume same
+      number of lanes is used both directions at once.
+
+  vdd-hba-supply:
+    description:
+      Phandle to UFS host controller supply regulator node.
+
+  vcc-supply:
+    description:
+      Phandle to VCC supply regulator node.
+
+  vccq-supply:
+    description:
+      Phandle to VCCQ supply regulator node.
+
+  vccq2-supply:
+    description:
+      Phandle to VCCQ2 supply regulator node.
+
+  vcc-supply-1p8:
+    type: boolean
+    description:
+      For embedded UFS devices, valid VCC range is 1.7-1.95V or 2.7-3.6V. This
+      boolean property when set, specifies to use low voltage range of
+      1.7-1.95V. Note for external UFS cards this property is invalid and valid
+      VCC range is always 2.7-3.6V.
+
+  vcc-max-microamp:
+    description:
+      Specifies max. load that can be drawn from VCC supply.
+
+  vccq-max-microamp:
+    description:
+      Specifies max. load that can be drawn from VCCQ supply.
+
+  vccq2-max-microamp:
+    description:
+      Specifies max. load that can be drawn from VCCQ2 supply.
+
+dependencies:
+  freq-table: [ 'clocks' ]
+
+required:
+  - interrupts
+
+additionalProperties: true
diff --git a/MAINTAINERS b/MAINTAINERS
index aa0f6cbb634e..c2cff57d32f8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20015,6 +20015,7 @@ R:	Alim Akhtar <alim.akhtar@samsung.com>
 R:	Avri Altman <avri.altman@wdc.com>
 L:	linux-scsi@vger.kernel.org
 S:	Supported
+F:	Documentation/devicetree/bindings/ufs/
 F:	Documentation/scsi/ufs.rst
 F:	drivers/scsi/ufs/
 
-- 
2.32.0

