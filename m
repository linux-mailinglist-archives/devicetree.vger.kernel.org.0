Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD3E562BC13
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:35:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238831AbiKPLf2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:35:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238531AbiKPLe5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:34:57 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70B9A3E0A2
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:24:49 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id t1so11670132wmi.4
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eaZIGmhlSt4bb2PboaWPrcqCkWnS6+lutvhxb6emR9k=;
        b=Ddw5NydZXQcX0NwfPyAZKsm9oOttqr5A2ScRh37JywbX9olE69Bxsonkl9EvgDG+DC
         pkdFZZbBbqfAcCXHYPYQyUTysbnJdV8wiLngWdFUHBTdEeR/YHbkYvSnMvl7AwxJlRUU
         5w8wvjnveQ0TszAInpBo9frD63uuqtgIrRbboGGxx218caRExsuoAgrzH8Lgfs/fY1IV
         6c9qVtLoAWXiKmPTcfiitZtUj2NEXB3HdxnhvjJdX4HYjc6wgyzap0D8eoxUTc0GfBGX
         s5CboNuOn/f9sxW55/QEgdvVsiygwfc0/zhfGhKGjQQd+ibn6tPVIhT2uhc/RgoTZPh0
         QXfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eaZIGmhlSt4bb2PboaWPrcqCkWnS6+lutvhxb6emR9k=;
        b=yBrgUcCA9s6s5800lbciclKEnv8c7IDbwk0c0V9gJ4abajklTifOaPP0L6fKfnYSur
         ytTnxh1bs0RPRPVtodzKdWCKnM/5i2G1WB2EsMR1OM6VV8KHaQOiUQbrDb//4v33LV8o
         9RXQ45Mu7V5oQpPbSPdQ6+uYR+rzI98AWfayb67L4/TkRtNRg+95A9Fzt2PXoS8m9q2j
         YKzWVuZmgMxEJhMo/ouuIitcfo5qv9lCBTYeUiFe0UwLC551+QWwJL/AwFsmr6HJwyCp
         xJAf4+Xx0kkZlWP8u8UOOqVxkfx6qEFFhWb7pra4NFvyYxhE4rZ181IHHMwrkxy/yPbp
         JQQw==
X-Gm-Message-State: ANoB5pmYgkEhm1LqeY6PZ6RX50LF3BP0FPdfx9CrnMwbNxUssB9yONRb
        dWKA5g0ku9RGX+KxOE/l1WF4Tg==
X-Google-Smtp-Source: AA0mqf5XIDgzmTuMe/8E7z2fjEPelfVyRq3S+4AhFI47N98ODFGwgTy7tmBGfAaAlJGxOK+FWJFbUA==
X-Received: by 2002:a05:600c:792:b0:3cf:6a83:bd19 with SMTP id z18-20020a05600c079200b003cf6a83bd19mr1825745wmo.29.1668597887979;
        Wed, 16 Nov 2022 03:24:47 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id h12-20020a05600c350c00b003c6bd91caa5sm1988806wmq.17.2022.11.16.03.24.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 03:24:47 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH] soc: qcom: socinfo: Add SM8550 ID
Date:   Wed, 16 Nov 2022 13:24:38 +0200
Message-Id: <20221116112438.2643607-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the ID for the Qualcomm SM8550 SoC.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/soc/qcom/socinfo.c         | 1 +
 include/dt-bindings/arm/qcom,ids.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 545934aead43..bf8d4e7dd7fc 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -335,6 +335,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(IPQ6005) },
 	{ qcom_board_id(QRB5165) },
 	{ qcom_board_id(SM8450) },
+	{ qcom_board_id(SM8550) },
 	{ qcom_board_id(SM7225) },
 	{ qcom_board_id(SA8295P) },
 	{ qcom_board_id(SA8540P) },
diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
index 8b1a0f43bd93..c2f7593c4fbb 100644
--- a/include/dt-bindings/arm/qcom,ids.h
+++ b/include/dt-bindings/arm/qcom,ids.h
@@ -140,6 +140,7 @@
 #define QCOM_ID_SC7280			487
 #define QCOM_ID_SC7180P			495
 #define QCOM_ID_SM6375			507
+#define QCOM_ID_SM8550			519
 #define QCOM_ID_QRU1000			539
 #define QCOM_ID_QDU1000			545
 #define QCOM_ID_QDU1010			587
-- 
2.34.1

