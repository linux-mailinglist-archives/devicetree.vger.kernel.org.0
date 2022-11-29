Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20D3763C30E
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 15:47:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235622AbiK2OrV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 09:47:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233660AbiK2OrM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 09:47:12 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C35875A6CD
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:47:09 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id t1so11088712wmi.4
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 06:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w96//s+DKsR2vwyM7MoWsFHf/kzUOoVxQJ2TCTp4km0=;
        b=yZJdU9OOS10xuzdTBDJAB1arlFacY86knILTzyQTIuV1zhEy/8aqVq2PPZ+zDL1bI/
         Lav85J5Up9GG5X/zW2+6jO7CYYfMLr5yT972WiefBMCs5dwvIcq8aN+ngUN1kixVpbAU
         OiigE/mvpX39zvEUgb2X+OcSCD0gvQB/E7bq6xp3VNxi8Uw8/Id2A1na6fiKaP1LNG4V
         QBOcrcFuDCCAC3wEHhmz6B/zZ6YNE3VNc92WBzD2Uvte+04NUKixesOqoY/US+ld6I1w
         YJTWaWU0lXeFpTdoz8/X+BxxJ6CChveUS6e0Lvdc2k8Mjj/2ph+B8zf+rCxnmRqcQAO5
         /vHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w96//s+DKsR2vwyM7MoWsFHf/kzUOoVxQJ2TCTp4km0=;
        b=xXcupQkhoDdu742BeTxMe3V3nrc+aCs9K572F1JP23FYT1R1/CK+mwPBkXvYjYrZiU
         goDGQn3OScVZVIEwbrBiKz/t7Tq9Cx2MTzHTPt7azJRtfYXJ+zGHccxYWfaL3gjNxL8H
         EwKc2hHhrQHZFPDSlpB5eIhZUj7fSvmEKFE4HZpsYFCqTYqXcq3uZXrUGCDRyPGs51iZ
         9q8shqF3DJgk3KmD49urz/rSCgQwe0L9Hwe/yYffKZtOJzUFeuNSVerJT3HshkEZ4qoy
         RYNLCaue66burUjyO0GyBB4t4JJx4YQ3SiLal0pv8bY13z0CkeINE2klP5SDqDUugyKM
         z6iw==
X-Gm-Message-State: ANoB5pkP3WXx/HcHMfI+AJwHYCTR0/PWSeLbdF8yeh9WQC1IOpFxOosz
        xfLpOpovUwQM8FQh2rsE8RkoCA==
X-Google-Smtp-Source: AA0mqf65YCv6tYbHaZxuQ7jBOY87eTUd4c3oTjMIGAQFqjwxUy5tR1kBl6jtFQtEZ0MWf/GgspX2ZQ==
X-Received: by 2002:a05:600c:348d:b0:3cf:88e7:f808 with SMTP id a13-20020a05600c348d00b003cf88e7f808mr27769285wmq.200.1669733228387;
        Tue, 29 Nov 2022 06:47:08 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id b10-20020adfee8a000000b00241dec4ad16sm13717792wro.96.2022.11.29.06.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 06:47:08 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 29 Nov 2022 15:47:06 +0100
Subject: [PATCH v3 6/6] i2c: qcom-geni: add support for I2C Master Hub variant
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20221114-narmstrong-sm8550-upstream-i2c-master-hub-v3-6-f6a20dc9996e@linaro.org>
References: <20221114-narmstrong-sm8550-upstream-i2c-master-hub-v3-0-f6a20dc9996e@linaro.org>
In-Reply-To: <20221114-narmstrong-sm8550-upstream-i2c-master-hub-v3-0-f6a20dc9996e@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The I2C Master Hub is a stripped down version of the GENI Serial Engine
QUP Wrapper Controller but only supporting I2C serial engines without
DMA support.

Add the I2C Master Hub serial engine compatible along the specific
requirements in a new desc struct passed through the device match data.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/i2c/busses/i2c-qcom-geni.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
index 75dd0718c5a1..bfe75038bc14 100644
--- a/drivers/i2c/busses/i2c-qcom-geni.c
+++ b/drivers/i2c/busses/i2c-qcom-geni.c
@@ -1026,8 +1026,16 @@ static const struct dev_pm_ops geni_i2c_pm_ops = {
 									NULL)
 };
 
+const struct geni_i2c_desc i2c_master_hub = {
+	.has_core_clk = true,
+	.icc_ddr = NULL,
+	.no_dma_support = true,
+	.tx_fifo_depth = 16,
+};
+
 static const struct of_device_id geni_i2c_dt_match[] = {
 	{ .compatible = "qcom,geni-i2c" },
+	{ .compatible = "qcom,geni-i2c-master-hub", .data = &i2c_master_hub },
 	{}
 };
 MODULE_DEVICE_TABLE(of, geni_i2c_dt_match);

-- 
b4 0.10.1
