Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2596A687F2E
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 14:51:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232149AbjBBNvF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 08:51:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231726AbjBBNuu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 08:50:50 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE3AC8F250
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 05:50:48 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id p26so6013589ejx.13
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 05:50:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+zPdqAVNJI8VFw+E8thVrlhFODN9g8GlhI24Q34QDNM=;
        b=xkt5fSFaBJho8h7UG9vENvhjDy171tUIop7AB7aQ7RVX2ee4jmyR6xnIml9wyQrUDn
         o8SLo2Jm3RBREBi7Gx+jHqLbcX4/AjAVpO3j7dHcVr9yMHln5M5eCOlLLoFqqUobKbgF
         gxoj4DMKM2VXJ+M1YarDK/CGCkiYlMemrh/8b8DciYJh9ieHtDjOC40dHOtCzXrP19wV
         cjlqQ82JoZAl2dOUEe04emqhjMmTnnz1cpPJwqrLhRf199F33aq/qojZK0vrKS0iLySA
         izdixL3D4xrf4ekXQTqb/IT6Bvc0sZu3sfH7tTOY4MWbKpPfjAE+N6NFJ6Bz94vasuqF
         VO3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+zPdqAVNJI8VFw+E8thVrlhFODN9g8GlhI24Q34QDNM=;
        b=hhnIDqgtHcm0DOfwPVL+ynt72Qz3NBQYE1bDURsToWtaaJQVSPYTKXcfZSlUoI5wQ5
         kowY8zgxXxysIPRjaybxYDuRlwgy5Iamg9H8RpXHAnC03QL2pSzGESi3tmr2hstXHrzq
         ViVxoXbVbRPCCEOV1PTv3uJ5gT0UfRMQTu2PoFvX0SyriT256me46hNiyTvha3/eK/Jl
         X2w/wDz2jjK0MgMb4YwZ5RSiXffLxbp+W6kkWVSngDUzmBqD6kz4zs7vq9Cqp6Tr1+fy
         jG9J/NllRVVdbgaFkj9zjrP8Lq8FxNkndZE1gRK1RWqV25LbjykzBSVvtb5bHpGmWHfD
         pwfg==
X-Gm-Message-State: AO0yUKWTJl4EOvZlURn23KOYm1N5Z8mirzoJqiFLAIy5frcJbQRFrvY4
        j+DMxtsp3XDXLJMQE7D0rPBpyQ==
X-Google-Smtp-Source: AK7set+d+HsZwHjXohQNciwKLGCx2roMBm0KGC3YJNl/uSvLOKbPupalGTRAJvFqIPKknMC9zIH/xg==
X-Received: by 2002:a17:907:cc25:b0:7c0:d7af:fce3 with SMTP id uo37-20020a170907cc2500b007c0d7affce3mr4819110ejc.1.1675345847460;
        Thu, 02 Feb 2023 05:50:47 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id r23-20020aa7c157000000b0049e1f167956sm7596332edp.9.2023.02.02.05.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:50:46 -0800 (PST)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Jordan Crouse <jorcrous@amazon.com>
Subject: [PATCH v8 4/9] dt-bindings: qcom-qce: Add 'iommus' to optional properties
Date:   Thu,  2 Feb 2023 15:50:31 +0200
Message-Id: <20230202135036.2635376-5-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230202135036.2635376-1-vladimir.zapolskiy@linaro.org>
References: <20230202135036.2635376-1-vladimir.zapolskiy@linaro.org>
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

From: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Add the missing optional property - 'iommus' to the
device-tree binding documentation for qcom-qce crypto IP.

This property describes the phandle(s) to apps_smmu node with sid mask.

Cc: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Jordan Crouse <jorcrous@amazon.com>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
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
2.33.0

