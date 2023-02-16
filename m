Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40513699562
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 14:15:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230324AbjBPNOv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 08:14:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbjBPNOl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 08:14:41 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73CDE53552
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 05:14:39 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id y19so1882989ljq.7
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 05:14:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1676553277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/cQTcEdA6/1Tvp2AynCxy/uYQRIV6AL4re0IqB5Qt5w=;
        b=WmHCiNh1iOAGvg0WxMM6/09R1KCZOunBt55vRYlh0THdC+EEcwtAZrCFydLjYWzAqV
         q+jUdR8UQQacgj7YhjbMOaKLu9MjXh8BSMVsUl28k2xwQL0RjitNnZ01vsDVPA6Eb5gd
         7o3fbI1YDpLObiv3GXDN7WPFTULmeBzv8EzsrVrfnyobbH3TS1olRauACGoTPgwfLKqB
         wffsdlJEmYwNZMk39zOEdS77i9Md9o79LU80EKMOurXIU2XNOJvBB1rRqAW06MsHdaIf
         qvvHGnQ7EhsCF6UCyYPIe68twPwgFuRCNxHsexfOTYXvu1YV6v23zbMKf5ItztUR1rQj
         HXkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676553277;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/cQTcEdA6/1Tvp2AynCxy/uYQRIV6AL4re0IqB5Qt5w=;
        b=arBTZNabWhVl5nnQ/to1LC0+iJd/trf/QeUUlrIlluPMxjhHLtLWT0LIDX+jZNHS/Q
         Uz+OhFa/VxNO46Yzz2ZpyN8PBxExfIvWd+q9yRSsdX8wcS3L3PHTRJtV3wd5TET/Fbhl
         1rG0iJBMDaFr8npZJVHrfzHgGjDWZGOnA4VxsyeeV5FQoL6z+2WQaqtjbB1tZ1GdVgAX
         KcPLDpJrqbxhkhZ9e4J3g68Xn8ukcoQHC1fprGYzJZSyExcfjBnt9g0a2MkYHxUnZ2/t
         /LBUmHg64ioKtABRdPbllkk4HnG9VE9aJnbsKf4oCULPSC3/+b6do+EwqTupKeSbXNI9
         HdFQ==
X-Gm-Message-State: AO0yUKVpLB/U4mKf57HwlVfRtdjFfNyXOGWox/28rWVu7iL9bSt34kB6
        qK2CG8EoeFiLvsn3JsE61NPY5Q==
X-Google-Smtp-Source: AK7set+OX9qZ5I3ZoqUDUICHns/n6P882LYTlqlnCMY04ZjXaBimoEsaLOpZ+WCEG25hZQrjdGcEiQ==
X-Received: by 2002:a05:651c:2115:b0:292:b368:3483 with SMTP id a21-20020a05651c211500b00292b3683483mr1824607ljq.1.1676553277636;
        Thu, 16 Feb 2023 05:14:37 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id j8-20020a2e8248000000b00293500280e5sm194345ljh.111.2023.02.16.05.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Feb 2023 05:14:37 -0800 (PST)
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
Subject: [PATCH v10 03/10] dt-bindings: qcom-qce: Add 'interconnects' and 'interconnect-names'
Date:   Thu, 16 Feb 2023 15:14:23 +0200
Message-Id: <20230216131430.3107308-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230216131430.3107308-1-vladimir.zapolskiy@linaro.org>
References: <20230216131430.3107308-1-vladimir.zapolskiy@linaro.org>
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

Add 'interconnects' and 'interconnect-names' as optional properties
to the device-tree binding documentation for Qualcomm crypto IP.

These properties describe the interconnect path between crypto and main
memory and the interconnect type respectively.

Cc: Bjorn Andersson <andersson@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
Tested-by: Jordan Crouse <jorcrous@amazon.com>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index 8df47e8513b8..94f96ebc5dac 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -32,6 +32,14 @@ properties:
       - const: bus
       - const: core
 
+  interconnects:
+    maxItems: 1
+    description:
+      Interconnect path between qce crypto and main memory.
+
+  interconnect-names:
+    const: memory
+
   dmas:
     items:
       - description: DMA specifiers for rx dma channel.
-- 
2.33.0

