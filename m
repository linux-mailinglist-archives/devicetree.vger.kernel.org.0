Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87268744DCE
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 15:43:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbjGBNn3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 09:43:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229984AbjGBNn2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 09:43:28 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20BB3E68
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 06:43:27 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b6a662b9adso52413491fa.2
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 06:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688305405; x=1690897405;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FS4tS46Wt2bF/A6aYMT37LuXJaPlC2jK1TxmIfbaIXc=;
        b=X30ZYndFhc8pFjbfI5fFep2k4+vIdwN0xfExy+bcOxdxInGFwOcrq2Zc6f1fh5DIeO
         1Gu1TIue3N1mkERyEIPq0Wv81dLrOEdQ6rdUCgRTZBiNpzcOAn0TuaoMhec9/ucDn4Tc
         nv96MU+bhdGN5yr3T38H38pkEjEZs7E3C15aP2To1IhyWXkuATLygz7fubeKcxFaFE4m
         WdbJrzjux9xxfQlxcqTrNub3WFVpEEcjIr4GHfEIrw9TCi45KW6CGjrSht0njYd7RnHk
         U59Si7hUOe0bLBm+b46ayeJ7oVHS7kNjHtyF5oJXhiUNncvfmCmHcL8FJd3KLEseX3fg
         Dfnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688305405; x=1690897405;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FS4tS46Wt2bF/A6aYMT37LuXJaPlC2jK1TxmIfbaIXc=;
        b=QAxCnUyqsDxVZRu2PELhaSXrPglFxU02QrvY6+GQHppMdsju1YQZX2odQYSVyz9s5X
         wZ+xN6vPMlsgZ73brzAUhyfUQqLx/gRtB2pifsHrEcEwWDth13ag9nZ240C0n5gYJbg2
         KpY2OtdVtHVxCupHuKKG9tT1KHx+/Bbifko8funnc3+L+2ThN2Xs8efQ5TXi5weofuYy
         RhWDsfgmWYNt8w+Bkr/vWjBh6G5hBmxOKf3TPfzpPhP8+veibOWbNTa7pvohFPjP3+zm
         ieVHWNku7A7vDRWGS2If73Zh8yVPYGClhAmZwnUN3SZW6w2bEYxQ3TlVw5AjBdLq2iBV
         Bs7w==
X-Gm-Message-State: ABy/qLbHZ/9j115u2fwjK67svLmkF4WHweVndd50ouBu1/5hI2AFmHVR
        eFP4VlOVBK8WVdkKGEqW3QafRw==
X-Google-Smtp-Source: APBJJlHocc5hEVIqBsA0reFFT+YMlohkXM+fyWObkzVPmZLjG1MLa/tzIB9LSp6ssDp8gYYDtBWMqQ==
X-Received: by 2002:a2e:7a0e:0:b0:2b6:ad79:a4fb with SMTP id v14-20020a2e7a0e000000b002b6ad79a4fbmr4170016ljc.1.1688305405477;
        Sun, 02 Jul 2023 06:43:25 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d9-20020a2e96c9000000b002b6988ca476sm4310650ljj.101.2023.07.02.06.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 06:43:25 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 05/27] ARM: dts: qcom: mdm9615-wp8548-mangoh-green: group include clauses
Date:   Sun,  2 Jul 2023 16:42:58 +0300
Message-Id: <20230702134320.98831-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
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

Group file inclusion to follow contemporary practice.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548-mangoh-green.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548-mangoh-green.dts b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548-mangoh-green.dts
index b269fdca1460..e3b4b93c3d38 100644
--- a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548-mangoh-green.dts
+++ b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548-mangoh-green.dts
@@ -6,11 +6,11 @@
  * Author : Neil Armstrong <narmstrong@baylibre.com>
  */
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 
 #include "qcom-mdm9615-wp8548.dtsi"
-#include <dt-bindings/interrupt-controller/irq.h>
-#include <dt-bindings/gpio/gpio.h>
 
 / {
 	model = "MangOH Green with WP8548 Module";
-- 
2.39.2

