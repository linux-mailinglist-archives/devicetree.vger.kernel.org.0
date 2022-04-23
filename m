Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC0B950CAC2
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 15:41:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235940AbiDWNnY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 09:43:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235848AbiDWNmp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 09:42:45 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01BD31759EF
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 06:39:49 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id q185so3524189ljb.5
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 06:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X6WBUYEt3xorbdlyz+i4pBQ2N1Cgz5kH2giSC34i0K0=;
        b=GD3RuJRFAyipHDGx8MCln2dfVYp5XATckWhUNcOO1I6qc7HTcYDRkOPShQG/TgvkRP
         q/QokGDOwmTJzJw4tNFBQnsr16thEiHi8GQlyabk50Iq7CASxadEl6rLpdXtNzPTI641
         viZ9sHfLux2VZ1sBTQlgmOfF37+5fbR+944WODwW0pDULbInAE8651Ig48t6XSnQ3vj3
         6OvB6CZNtgG7IVn+cUVDFTMCIrhe/qaBU8gV6iJa9FjbT7IZgdReyXlLOJB8qo/ozd+t
         tYP0srh3bj+Z0RXEpGOu8I5TPNkuCcOnc9i44zs3sQAzIDvpCyeE6yz0GBUJ4WVxGo56
         4rjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X6WBUYEt3xorbdlyz+i4pBQ2N1Cgz5kH2giSC34i0K0=;
        b=JdvBb8VO8O+/B2l1iiO7pYvoZQI9E2op0QW4mDRzKvOCqDpBlvwfe8ERVJjilWEBfe
         VFZIhd5euPqSzrT+TuqJXYC+ZlgXVEoJ3gHxGwojfWXao4iQKrRujjy0S29UNbPu0/CP
         yImn+/qbNHb9PMbcYl2dT1OlXhTxjitwO47/SwUfoWT16pJTwRH7tWrie4S/q9j15tlr
         g09KwjBpVZkocm7FlA6b9n0qr3PDi+T7c+hCHO2HoAveNzey0GSZVLxSd83v8XDPBJma
         P7tlPIa5bPt7TP/zuj972SDEw4y9+/YRlgsU1NK3vhzG0Kt0xxw/1aEEWh2WbsyBJh2f
         b4gQ==
X-Gm-Message-State: AOAM531sDQ0TC437IS8Zu/veNAwIin8bnbLzvFXm5gfTmy9MTHVL9o1F
        tVs9y3d0EyjCv3uQcYb+SBBqjA==
X-Google-Smtp-Source: ABdhPJyfZE0L1IBdWglmpGHK1PZNMYwsLWTSMikeg9MrlIACpOflG+7binSEuM55Z81mYI3WNhi9LA==
X-Received: by 2002:a2e:bf1b:0:b0:247:d88b:2b05 with SMTP id c27-20020a2ebf1b000000b00247d88b2b05mr5625928ljr.515.1650721187213;
        Sat, 23 Apr 2022 06:39:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([94.25.228.223])
        by smtp.gmail.com with ESMTPSA id c21-20020a2ea795000000b0024ee0f8ef92sm544535ljf.36.2022.04.23.06.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Apr 2022 06:39:46 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 4/5] dt-bindings: pci/qcom,pcie: support additional MSI interrupts
Date:   Sat, 23 Apr 2022 16:39:38 +0300
Message-Id: <20220423133939.2123449-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220423133939.2123449-1-dmitry.baryshkov@linaro.org>
References: <20220423133939.2123449-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Qualcomm platforms each group of 32 MSI vectors is routed to the
separate GIC interrupt. Document mapping of additional interrupts.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml         | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 04fda2a4bb60..71b3be5570dd 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -49,11 +49,21 @@ properties:
         - atu # ATU address space (optional)
 
   interrupts:
-    maxItems: 1
+    minItems: 1
+    maxItems: 8
 
   interrupt-names:
+    minItems: 1
+    maxItems: 8
     items:
-      - const: "msi"
+      - const: msi
+      - const: msi2
+      - const: msi3
+      - const: msi4
+      - const: msi5
+      - const: msi6
+      - const: msi7
+      - const: msi8
 
   # Common definitions for clocks, clock-names and reset.
   # Platform constraints are described later.
-- 
2.35.1

