Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 084B55BD574
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 21:57:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbiIST5D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 15:57:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229698AbiIST4v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 15:56:51 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 042EA481F8
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 12:56:45 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id y136so652236pfb.3
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 12:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=AuOntKkRGiT94FIUgQn4R1HFHExIoQrEAqGWMSUIfV4=;
        b=BwMIyIgIPvGV+trHHgrWie+p9NWZ+gxbFDznKtOZvMtFreUzCLfRJ13CUvYn9j4Bbc
         jHWMJNXFdTY3utq0YNOAoiS7El4tu2g5hihwe3c0L69yyn735hkBc51xybfZD8C+KTiE
         04MMYJ3q4JzW0fI/x/1dR93OhPhtJadcaCpu7o8gpE5/tWg5yNgBK9sqMfLuoI4rBHbl
         OS6Lh0KMvclpToor7DPXwn4EltMkTweAXTR0NSHa4USMaDhtig5k/1hbUZkAhLksVXxF
         HOmWBzrKYHc7EWdwM0RkkXKAlvO1vyaEEaNEziezyT2DBrNgP/HKQi29iQapLHUFvENP
         WKKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=AuOntKkRGiT94FIUgQn4R1HFHExIoQrEAqGWMSUIfV4=;
        b=UewtK9nXwrnP4/1yeWkhigdmX5ZC9oeoH5D0yFiJs2yhCj3Bk+asaAzRhQVxXsRGMw
         gp06YScI9qO4qtJeNZhui3ZJz5GnGNcRWnt1p8Uq03hjPqi3MbaMfSijNPmidtWrAxGu
         +DJsBeZBG86zhueDiXGyr9T3ac1hg9mmjOdOQIje7feyFOvLxqWPyddL7cjeJ8xDPj2v
         FVoxwy8S48aSTQoal0ukYETPmKX/UFkjEWJCTr2K2XKPQ/dbIg/knYoEs0IljJThKvvK
         WCNwQmrvAGYNbHm2lb4A0oXMkiSxlxlDBBGP3SCfmpt+p5F1/1bn7No8jhOUbejE1p5W
         aMRQ==
X-Gm-Message-State: ACrzQf03dENEHxgam6Put5CQJllS4wueLEl93E+n0i6+1LtRB3RikXMX
        PLXTsFCxz5EJ0gkZU7lT33JU1A==
X-Google-Smtp-Source: AMsMyM7ANG3NNssy4tKpSoU8TB+9pXpQnLjxi7OjOiJCK4RDGqoyYgViiGl9TrMQhRDzA1VR2cmrcg==
X-Received: by 2002:a65:6544:0:b0:439:b319:2422 with SMTP id a4-20020a656544000000b00439b3192422mr16804119pgw.114.1663617405350;
        Mon, 19 Sep 2022 12:56:45 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c61:6535:ca5f:67d1:670d:e188])
        by smtp.gmail.com with ESMTPSA id a14-20020a17090a688e00b002032bda9a5dsm7071454pjd.41.2022.09.19.12.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 12:56:44 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, thara.gopinath@gmail.com,
        robh@kernel.org, krzysztof.kozlowski@linaro.org,
        andersson@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, Jordan Crouse <jorcrous@amazon.com>
Subject: [PATCH v6 4/4] dt-bindings: qcom-qce: Add new SoC compatible strings in dt-binding doc
Date:   Tue, 20 Sep 2022 01:26:18 +0530
Message-Id: <20220919195618.926227-5-bhupesh.sharma@linaro.org>
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

Newer Qualcomm chips support newer versions of the qce crypto IP, so add
soc specific compatible strings for qcom-qce instead of using crypto
IP version specific ones.

Keep the old strings for backward-compatibility, but mark them as
deprecated.

Cc: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Jordan Crouse <jorcrous@amazon.com>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../devicetree/bindings/crypto/qcom-qce.yaml         | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index 4e00e7925fed..aa2f676f5382 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -15,7 +15,15 @@ description:
 
 properties:
   compatible:
-    const: qcom,crypto-v5.1
+    enum:
+      - qcom,crypto-v5.1 # Deprecated. Kept only for backward compatibility
+      - qcom,ipq6018-qce
+      - qcom,ipq8074-qce
+      - qcom,msm8996-qce
+      - qcom,sdm845-qce
+      - qcom,sm8150-qce
+      - qcom,sm8250-qce
+      - qcom,sm8350-qce
 
   reg:
     maxItems: 1
@@ -70,7 +78,7 @@ examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-apq8084.h>
     crypto-engine@fd45a000 {
-        compatible = "qcom,crypto-v5.1";
+        compatible = "qcom,ipq6018-qce";
         reg = <0xfd45a000 0x6000>;
         clocks = <&gcc GCC_CE2_AHB_CLK>,
                  <&gcc GCC_CE2_AXI_CLK>,
-- 
2.37.1

