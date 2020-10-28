Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8AEB29DBA3
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 01:09:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726073AbgJ2AJb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 20:09:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390681AbgJ2AJ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 20:09:27 -0400
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82537C0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 17:09:27 -0700 (PDT)
Received: by mail-qv1-xf30.google.com with SMTP id d1so64635qvl.6
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 17:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eVyqGjvfohdsbrYhdD/p8pzCpzKljI3AzNSUpTK32Wo=;
        b=a3f/43froPNpVcVXZ6k1VnyH1sem1ux4I7smr6NCTtzZfcNGHHGRF6DID+ixtzNnKt
         DBWpxCf9XycFS4Fqtf2I4R8RjVVMJUJqyhHSi0bfLLxWzwgsvi+2kpcIylLYoxTT98H+
         Guonng2LHV7BASnrcuugFBuBuhWG1eMR9YvTtSZfayqa/KMGXQr0hVLtOIFD8YqKZeSO
         yPKzTS7ms6xxBDHHpZ4lElpGJ7DO3FmnxgTvEGVt+ezAEr2wD+Hcz2z3Hs+U+vqgPLeS
         HVw3sdg5YmK2QqaOdYTwbllL+JCcxdhf+t9dI1D4YKZsH3R5N81SZN/cciBshopC8vjK
         6bJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eVyqGjvfohdsbrYhdD/p8pzCpzKljI3AzNSUpTK32Wo=;
        b=jV4KJjHos+IkrrKZHeY6H2PdY5Th6iyMJu7ujP09etBibZ2wn8d8rcwLVLw36BHfhc
         +aeLHR7dzJDLWhmauQ72iv6NWA3xIFZ8Ix8cx4LpbPEj5Pg7CPmARwgYyBifqkaqyWrl
         w1uVmvFaIhBIDhuAi2FKvAUnztFu/AN2j6RDz894w7bDG/Bz1U9ZwAC6gT1n7rmtAuE9
         ql2nTcT316YVZJ05gdw5Zpprs6EJfVmkgTj9gP2/DgbR5Dn9NOJgB7RyZJDQUUxX4Hyl
         aIVF9OstLtX5JjbUKSmQetvQOSqy5iFmtwKvKvUIqq1C+ZuFBpMZM3aAM3mHCt0vpGgy
         NcRQ==
X-Gm-Message-State: AOAM530XOZjaoQjJpKGHi0dDGpya/6gYbZHgcCuYP9djEQvr+ml8kcfd
        EFXWQrfzvQ5FmPmhmHeAxAS2v3atWI7f
X-Google-Smtp-Source: ABdhPJzZQsPZCrT9I8dKOJrQcceX296IYhD6o42iY3UR6M0j3Ecp49oF0iQ7ke9WBgq6ATTs6M9vcg==
X-Received: by 2002:a17:902:b7c5:b029:d6:1158:99af with SMTP id v5-20020a170902b7c5b02900d6115899afmr6209912plz.26.1603870991742;
        Wed, 28 Oct 2020 00:43:11 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.gmail.com with ESMTPSA id e7sm4289579pgj.19.2020.10.28.00.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 00:43:11 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] dt-bindings: clock: Introduce RPMHCC bindings for SDX55
Date:   Wed, 28 Oct 2020 13:12:31 +0530
Message-Id: <20201028074232.22922-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201028074232.22922-1-manivannan.sadhasivam@linaro.org>
References: <20201028074232.22922-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vinod Koul <vkoul@kernel.org>

Add compatible for SDX55 RPMHCC and DT include.

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 include/dt-bindings/clock/qcom,rpmh.h                    | 1 +
 2 files changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index a46a3a799a70..a54930f111ba 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - qcom,sc7180-rpmh-clk
       - qcom,sdm845-rpmh-clk
+      - qcom,sdx55-rpmh-clk
       - qcom,sm8150-rpmh-clk
       - qcom,sm8250-rpmh-clk
 
diff --git a/include/dt-bindings/clock/qcom,rpmh.h b/include/dt-bindings/clock/qcom,rpmh.h
index 2e6c54e65455..cd806eccb7dd 100644
--- a/include/dt-bindings/clock/qcom,rpmh.h
+++ b/include/dt-bindings/clock/qcom,rpmh.h
@@ -21,5 +21,6 @@
 #define RPMH_IPA_CLK				12
 #define RPMH_LN_BB_CLK1				13
 #define RPMH_LN_BB_CLK1_A			14
+#define RPMH_QPIC_CLK				15
 
 #endif
-- 
2.17.1

