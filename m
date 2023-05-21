Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 170EC70B00B
	for <lists+devicetree@lfdr.de>; Sun, 21 May 2023 21:54:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbjEUTyg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 May 2023 15:54:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230394AbjEUTyd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 May 2023 15:54:33 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51CEEE9
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 12:54:25 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-96f9cfa7eddso275371266b.2
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 12:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684698864; x=1687290864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aL6CSlS9Q6UUnnjwqpxYTCJ6oS+R2HPG/MBYegldI0Q=;
        b=PYVQayaMrknSNy1L3z+ByIwbFLBz1hd1cH/4nXupZnE42OgwNifA03+xAc9ArHYN01
         CHfQOVwPIAXcEiXby7Mqi9Oiw7OZoOhy5NU6r62nty3hdlvogbniEznhe05qG8zUvTmS
         lM/5lzwQ7eLJL8T7kLLOo1/HMu3Bomfv6seFzG7ybgKBQw0n+/iemSiUi5oydr2jbH8u
         +pcvgtYWH/+ICaVQPO9XHghbdRm4UNOCAqwcaaBEQTqt+tb/lipfZbgUYt0nEyg72NKW
         uz8dQcC//KgDQfvaoh5aqxeohaIWZQveTyp5Wh8hmkHelEdRWOaBVtvHGhgt5Pk1BShI
         G5dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684698864; x=1687290864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aL6CSlS9Q6UUnnjwqpxYTCJ6oS+R2HPG/MBYegldI0Q=;
        b=VT1oOBIN14IeXzYG4SjisiytpC1AUZO2QTUUXkXQ0PL/cAKFobKtmhF4qSCOvKSM0U
         e0twL8WfsfyQmYqYiuLHFuqCIiqTLJJTPYALUnDd0+JWcDrpUQiXCPWUUuD1SOlPB3ri
         K/VnFGKqb6U+KgwUhHOygqnUIKxxjVXMRQbOGbWphRPqQk0TxlxsTRmZVXOXw0zp5R0P
         wiDMNUZogehs7CEbFz4Gy0pDXNzE+De5VVlathhzpwWi1veKA2OGJr8wGZilH2bpFko1
         KmYN0KzIv8iC9cpNo+TQafX2j5y04JwYrdfA6r14ELJgVlzSKijnkjR9jGFJ0/dwWTzd
         URhg==
X-Gm-Message-State: AC+VfDz5hVpLOIX+iOZdraHJ8kfsxDqUCfmPkTQF2qjUsLi+0Q2L4AUb
        xVAjQuwVPUDvgmM7ejm+Yj1gBg==
X-Google-Smtp-Source: ACHHUZ5EGU3eZWmNTs+xQoFdCS04NQ0rd1X9vfnxlGYEs7u+t0FhoTcvnUIEtFsMw/nxh3dvSpe3bA==
X-Received: by 2002:a17:906:ef0d:b0:966:6035:c81e with SMTP id f13-20020a170906ef0d00b009666035c81emr7634824ejs.52.1684698863818;
        Sun, 21 May 2023 12:54:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 16-20020a170906101000b00965ffb8407asm2187107ejm.87.2023.05.21.12.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:54:23 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [RESEND PATCH v2 2/5] phy: qcom-qmp-combo: add support for the USB+DP PHY on SM8150 platform
Date:   Sun, 21 May 2023 22:54:17 +0300
Message-Id: <20230521195420.12454-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
References: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
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

SM8150 and SC8180X are close relatives. Reuse sc8180x data to support
USB+DP combo PHY on SM8150 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 33cc99d9c77d..2bff1bbb8610 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3614,6 +3614,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sm6350-qmp-usb3-dp-phy",
 		.data = &sm6350_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sm8150-qmp-usb3-dp-phy",
+		.data = &sc8180x_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
 		.data = &sm8250_usb3dpphy_cfg,
-- 
2.39.2

