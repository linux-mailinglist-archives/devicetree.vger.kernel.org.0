Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE99A5BD571
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 21:56:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229865AbiIST4w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 15:56:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229827AbiIST4p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 15:56:45 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20A13491D1
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 12:56:42 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id bu5-20020a17090aee4500b00202e9ca2182so7379859pjb.0
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 12:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Egtl6lY/QkJHhCEBQPmUzTRwC9E0e4ABQZQp/efkHtc=;
        b=ARcAoURgdu9qMN2cmYmbqczA5RxFLWFryklOmo1Z8wty2Oj5AK/rUSlBPQd2LfwB7t
         e3ZtMCwOQ+dVCGIBVfxbHprPLBJyF2R3wWoGaDhiL9NTxvonkg7k6jsiZE5vVOSYCYuE
         PV0DOHikUEAwG8OM4V4RQPL/0pz8w1KeFaq8DNl+DnOxxQRmpCSJpabD193S92+fhaYp
         FqRJ33Jplakbq741PMl1ndElrAkMaQeJnUVzOTWuBBAfKR9jg0SJDwmbz0zNi5VA4DDk
         EFA2+vpaNwg9ImEltLqu8apAM4FRV42fOIUOyhb9Cdxbzj5Ow3H7UEWU/TWkntpuI4xi
         6nqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Egtl6lY/QkJHhCEBQPmUzTRwC9E0e4ABQZQp/efkHtc=;
        b=VorrGj4wJQsJP789yDSHupFQmyRKU2NtjZ7RAkJRR/EgYBuRr7mMAI8537iTMYDuIr
         PhNtoPoHZLXxXB0Gb81Dg2o3QYxU9Qyjshz4QBBsg6WKAVkXGPtNm3V92+nCSgjBGaDI
         pFxKfxv6ALWgcs8ce/YEgrGYJ5NP0SOknV9fWp1IVmnKAD47hOT+RwlIRDkv9K0Zi75U
         WOBJSxVgst7KGZPH06RQVjmga0wNJEx7Cu5edwDtBdwS5+PtNKGxxmyFwYakMPUrcgmk
         uZTEAid721feplmtXU1Cr7DD8tU3MIybxG0daaqFa3d462HT2J7I2VcmjT5qJhF/zSXl
         k51w==
X-Gm-Message-State: ACrzQf03U0yIKFoQNNe6jbn6Xb4l+otf0BpYdYdvUqACoND/KpmiCsvy
        jgD9WDvyTQbvrxaOcEUZU0yALQ==
X-Google-Smtp-Source: AMsMyM4BNxCkG2n9x/nNxJ+xHr81VW2eE/x8GKvo8nilIFVvnGb5Dq3/340llsJAPcN9xzCpBjFfug==
X-Received: by 2002:a17:90b:35cf:b0:202:6f3d:53a7 with SMTP id nb15-20020a17090b35cf00b002026f3d53a7mr22218503pjb.63.1663617400976;
        Mon, 19 Sep 2022 12:56:40 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c61:6535:ca5f:67d1:670d:e188])
        by smtp.gmail.com with ESMTPSA id a14-20020a17090a688e00b002032bda9a5dsm7071454pjd.41.2022.09.19.12.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 12:56:40 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, thara.gopinath@gmail.com,
        robh@kernel.org, krzysztof.kozlowski@linaro.org,
        andersson@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, Jordan Crouse <jorcrous@amazon.com>
Subject: [PATCH v6 3/4] dt-bindings: qcom-qce: Add 'iommus' to optional properties
Date:   Tue, 20 Sep 2022 01:26:17 +0530
Message-Id: <20220919195618.926227-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220919195618.926227-1-bhupesh.sharma@linaro.org>
References: <20220919195618.926227-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the missing optional property - 'iommus' to the
device-tree binding documentation for qcom-qce crypto IP.

This property describes the iommu streams for crypto pipes.

Cc: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Jordan Crouse <jorcrous@amazon.com>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index 94f96ebc5dac..4e00e7925fed 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -32,6 +32,12 @@ properties:
       - const: bus
       - const: core
 
+  iommus:
+    minItems: 1
+    maxItems: 8
+    description:
+      phandle to apps_smmu node with sid mask.
+
   interconnects:
     maxItems: 1
     description:
@@ -72,4 +78,8 @@ examples:
         clock-names = "iface", "bus", "core";
         dmas = <&cryptobam 2>, <&cryptobam 3>;
         dma-names = "rx", "tx";
+        iommus = <&apps_smmu 0x584 0x0011>,
+                 <&apps_smmu 0x586 0x0011>,
+                 <&apps_smmu 0x594 0x0011>,
+                 <&apps_smmu 0x596 0x0011>;
     };
-- 
2.37.1

