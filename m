Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCFA073F064
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 03:24:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230112AbjF0BYb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 21:24:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230145AbjF0BYa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 21:24:30 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14BD1173C
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 18:24:29 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4fb7769f15aso2171542e87.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 18:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687829067; x=1690421067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P9iUFVXv6SP8DLaDVGDdvPuKeMFvvYsBL7YquF2yLgM=;
        b=mvkruC7fkXwQ8ShWao/ln8n6fDGiY3jPvev+l7/nLbWCyEcB+UfcJ02Qt9VVYhiwy0
         zEpInHPbmUjQ2Ze3USZ4zcWUeS+Tp+Vv9k01MsviAbeC7M0s0XfONtTXcBM2RA+AEtFq
         L5KrrpJ52C4ZxNWwYtBWpuZMu1IQSf7mJB8zdLpX+xLOI4iJgIvJM0kfX+UosTY9fD8O
         rJQDk2+zF9Q4Z2S4YZ+aPhmjWGvbeZxBZ7SRcqBsUUqABviASHV3Pth/vwRU6uJvJC3o
         33IBn0FvWMddETE+t9C2yTWr8cOKUMqP+IW01M2wHxlJt5p7MntPq8dVF7IVRseqNKF6
         QJfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687829067; x=1690421067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P9iUFVXv6SP8DLaDVGDdvPuKeMFvvYsBL7YquF2yLgM=;
        b=EP0jkAnr6xdbIYKrVEzUypIND5gshQ/KCjOdteYb9GWWAiL81l2pc4vXCT5XASGsct
         GJDOZT9DRid7TBla5TwQbGNEGI8clvx0QOEGiV1K7v5b78bMR9TCRu/h9+K1t13Dl++f
         X0kmRzzVSkwiYWTXfPqRBDxibkUPBlwQU4DbVfMILP9FRPBHtreRr4wLNEJQ/tJU/FoO
         ABQ+OGAQm7VCg5hVYr69iEtEmGH2OGO9u9ZMnjSZvQX6Iraa8BiQRVIax85NDPk3+Wm3
         o2DplMonOK9vJtRqsE+x3ZNXocq43LhrXRvoD5mgh0HuM9iUo66/NYpTVJbwjIT6UZ+y
         m96Q==
X-Gm-Message-State: AC+VfDwXVpx2W0QTnK7JXnJBJagrPZQnu7uzZUEgIwWQw/GwpNPsWfXn
        0ckc5Rv9BbvpHnZ13oBDc7mhnw==
X-Google-Smtp-Source: ACHHUZ5uGtzqtRWvltLARA4Fx22X1q501cTnAsJ41/5xIskLQrnmOQQORsTPuUn3L1+BTwVZITx3tQ==
X-Received: by 2002:a05:6512:224d:b0:4f9:5d3b:6a2a with SMTP id i13-20020a056512224d00b004f95d3b6a2amr11723478lfu.58.1687829067427;
        Mon, 26 Jun 2023 18:24:27 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z7-20020ac24187000000b004cc9042c9cfsm1331301lfh.158.2023.06.26.18.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 18:24:26 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 05/15] ARM: dts: qcom: mdm9615-wp8548-mangoh-green: group include clauses
Date:   Tue, 27 Jun 2023 04:24:12 +0300
Message-Id: <20230627012422.206077-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
References: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Group file inclusion to follow contemporary practice.

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

