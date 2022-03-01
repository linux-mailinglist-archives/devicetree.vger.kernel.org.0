Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D0E24C84F0
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 08:25:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231935AbiCAH0P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 02:26:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232026AbiCAH0P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 02:26:15 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1D0E7B558
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 23:25:34 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id o26so13051323pgb.8
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 23:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=g11sci1g7elBgDqwDkIww3iURlfsGrxIIuaKlSKDbrU=;
        b=jHhGcs4nFH8qWADu8iQt40Vllw5BFzNZlpiPQpMa/UoK53aBCZqVB3s9n2sRbJajcN
         iyKujCVNxu7MVFVKONVRBbsEo5Ay6m8xuGr91NB9b+GkCRX7OaZDNia6MXr2aZqMATV9
         XWdPFXhofUAM2lT44glK/gwytAlAExGjpOQZWJ0bfE0VFqVbMV0SbG3tOM2h8cF+XCJ5
         9EdhSq45lbnDq1OGfPzZPAFMH7Fk7vatSCxaT3ZFsaGB1eTk0O3b3/WUjWlQiTwP1NYX
         y9Ur5v4NXANoH1ayeyFqEmCUogHblm2gYgjKpwnMoBdr6xiFMvJ9uiaw8JUvU360P7eh
         1jrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=g11sci1g7elBgDqwDkIww3iURlfsGrxIIuaKlSKDbrU=;
        b=Nyf1C0/YfZ/uBYOuzhasZL/XQ2GwA1zME0i7loah6McMq/KCayO2C4VGMz4u2SJg7z
         sk6aq49g0mok6TUzg444bQgzaQzypBnYgnmm/sRfjQL3UDncPz6f3+2OKLI2FLtIAu4X
         WD8BV166mseLN6HwLw9nJ+QJPgZ+MQMP08BcSsrMck7E2w3zjX0MKoGewC70Ut+gNWea
         FLNgJRCloskzZ/vhoBSVePu7W0yAAfiiI0RIw4HpnG3ChWNCcQa6STa3P9EGdCAzAOxi
         +1yGNf6c7D4tNX5l3JcAM2OX3SNuUsh6d7PIrKxnZMoOZiynOyTWR49PQ8wWjKN+hZWR
         creA==
X-Gm-Message-State: AOAM532ZxWUdxxLwMSZfYQdAcnS12/D8EKBbGo9WWCDxiVX6VAmeMmix
        4IHPaJ8XfV7EjIQO12j8iSOj0g==
X-Google-Smtp-Source: ABdhPJwxYEg5uUYRktayPGS8GnGvJFHSCeQqTElNTBaLnBCTZyuadouKt1II6X9JEH5aSUhglt0d7g==
X-Received: by 2002:a05:6a00:21c7:b0:4e1:dba1:a3a6 with SMTP id t7-20020a056a0021c700b004e1dba1a3a6mr25983616pfj.59.1646119534480;
        Mon, 28 Feb 2022 23:25:34 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
        by smtp.gmail.com with ESMTPSA id m6-20020a62f206000000b004e152bc0527sm15680445pfh.153.2022.02.28.23.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Feb 2022 23:25:34 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        lorenzo.pieralisi@arm.com, agross@kernel.org,
        bjorn.andersson@linaro.org, svarbanov@mm-sol.com,
        bhelgaas@google.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
        linux-clk@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/7] dt-bindings: pci: qcom: Document PCIe bindings for SM8150 SoC
Date:   Tue,  1 Mar 2022 12:55:05 +0530
Message-Id: <20220301072511.117818-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220301072511.117818-1-bhupesh.sharma@linaro.org>
References: <20220301072511.117818-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the PCIe DT bindings for SM8150 SoC. The PCIe IP is similar to
the one used on SM8250.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
index a0ae024c2d0c..a023f97daf84 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
@@ -14,6 +14,7 @@
 			- "qcom,pcie-qcs404" for qcs404
 			- "qcom,pcie-sc8180x" for sc8180x
 			- "qcom,pcie-sdm845" for sdm845
+			- "qcom,pcie-sm8150" for sm8150
 			- "qcom,pcie-sm8250" for sm8250
 			- "qcom,pcie-ipq6018" for ipq6018
 
@@ -157,7 +158,7 @@
 			- "pipe"	PIPE clock
 
 - clock-names:
-	Usage: required for sc8180x and sm8250
+	Usage: required for sc8180x, sm8150 and sm8250
 	Value type: <stringlist>
 	Definition: Should contain the following entries
 			- "aux"		Auxiliary clock
@@ -246,7 +247,7 @@
 			- "ahb"			AHB reset
 
 - reset-names:
-	Usage: required for sc8180x, sdm845 and sm8250
+	Usage: required for sc8180x, sdm845, sm8150 and sm8250
 	Value type: <stringlist>
 	Definition: Should contain the following entries
 			- "pci"			PCIe core reset
-- 
2.35.1

