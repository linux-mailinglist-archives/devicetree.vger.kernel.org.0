Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7456C58E5F3
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 06:05:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230439AbiHJEFm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 00:05:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230443AbiHJEFK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 00:05:10 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADC4C70E76
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 21:05:09 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id s199so10513519oie.3
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 21:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=xXPgGKwOMrjLyfAADDT/AWNmata1kzLm9fIfAkbzbZM=;
        b=qAnvnfMMVZYcYHicgKM2AGxF/A7jQubJZ6OJJyF+JPog16lBXI23vNPbgCFoIjKV9N
         4Cl/caJ3ga3MMWImjVlfrBNE8AEqNX02w0KwFtjyw4Rrgae2O5ZYXPbmBrXdF8XnzEAE
         E0LxPqYNeTJzuB3GSYudPHfnbXJsZRn8lG/wbs6UULyAws2d86RCR5AXgFZlLeF9RIhS
         ikZ0EteS7pAtqISbDgBtNFnni6qVbdq0Susrw5VKR/C6GjhC/xRrmpLd9VN6OIN5YkVl
         MXx8lDHSnvhZnm3MZiY7XwR7XrdxEiAzg14WB6XXdJba5dCGiAx7OTqQcWKqntya0X5Y
         XT1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=xXPgGKwOMrjLyfAADDT/AWNmata1kzLm9fIfAkbzbZM=;
        b=gf21djbFwVL5Pk0TboBpQPqty4PFrvfCP5+yUJXDzBPHX4jM3rvkkdAYp0Xb903rm+
         t+wgUdmLoWYmY2M8btA07NRqjFEj4bGAEQQKysc7SBI/3dDfko3lc/iIPYb+ctKm5dwN
         lVTWR9QxIATQQoGmQWyG8QiESEqcvYz3sYz93EY9TMrfrJ4S4lu0faB4BAuIX/mkF+mC
         kmg5U8gxhmZPyCRROfEyhoWNkhKjdyuryBO37oD3DxLpXCsjCEXRw73v6mDSzD2OFP/6
         SigWv9n/PMJyeIoslElg9vt5KgV3QIJKnGCg0B64cFs4G4HFMUdMlBmMiNPyhHoWli1y
         7juA==
X-Gm-Message-State: ACgBeo3N2h3LpsOyjLFH2EGC/dWsnCaCiR8qAu0mZ7AeL007nrbkbdkg
        YnHGIxkmZbSRatl4KI/1UWy3pg==
X-Google-Smtp-Source: AA6agR5RykGQceERY8ctKnJAYF2cVcM8MVRZuZecMttZYm7qy2ENEgWrTeNpmoGCS32W7HWPfwivPQ==
X-Received: by 2002:a05:6808:190f:b0:343:2fbd:9b62 with SMTP id bf15-20020a056808190f00b003432fbd9b62mr392751oib.176.1660104309089;
        Tue, 09 Aug 2022 21:05:09 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q6-20020a056830440600b00616dfd2c859sm449027otv.59.2022.08.09.21.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 21:05:08 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: phy: qcom-edp: Add SC8280XP PHY compatibles
Date:   Tue,  9 Aug 2022 21:07:41 -0700
Message-Id: <20220810040745.3582985-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm SC8280XP platform has both eDP and DP PHYs, add compatibles
for these.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index cf9e9b8011cb..1e104ae76ee6 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -19,6 +19,8 @@ properties:
     enum:
       - qcom,sc7280-edp-phy
       - qcom,sc8180x-edp-phy
+      - qcom,sc8280xp-dp-phy
+      - qcom,sc8280xp-edp-phy
 
   reg:
     items:
-- 
2.35.1

