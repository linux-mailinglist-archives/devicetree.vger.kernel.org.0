Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D27C717240
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 02:03:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231488AbjEaADI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 20:03:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233818AbjEaADH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 20:03:07 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB29AF9
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 17:03:05 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f3b9c88af8so6062465e87.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 17:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685491384; x=1688083384;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3OEmXr21pqF/DhjjsNsj2jQ6ewL1wVXkcJUB2jONab0=;
        b=hZN+kfDdoHLAt9GaIgZHuFu6HKXzZ3Ktc6kJP8d49Cw/arvaoOyLntl3lVChaxWKSU
         WnyRHNtTlmbX/Ci+j5APLM7eM7uEFY7GktDA8loVPNYMEDJqTSpXMrL6GMnA+8ZP5i6p
         TJgpVij7aDHfAGjGO8wEnGN18G+4+p1gn/8+EJrsAx5aEKU9fSutn4y+33/icfXzsWYA
         KcsV2pwFMizAFnyhffeFoEUK9GOhFzORMy5guBrOB2evko0PNrC+PJFWYEuRPIQddLSn
         dWBZR4p6JZCXtH+Lfwd78UAr6lnvHcywtKO6TgeiD7KWl4j502ltQC9DuP20ZIBywgA/
         KaGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685491384; x=1688083384;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3OEmXr21pqF/DhjjsNsj2jQ6ewL1wVXkcJUB2jONab0=;
        b=DHxhilbAAZWusUC+UdPrLN10neQOFKoC4wJ690Uj/2klJMg5brr6ShfENtFToS48jB
         75JxjAYVoTmoBOnA/CUEt+oZ1WVnMAarQEWiUPeGWlbUWMvPF0Iib3OLozU95NaAuKwx
         cTJRd3Bk4fPoAzdtOj9uFNHk953mqhv/lUlZyPWHNgU1T7KIeJ7w+uuHStBS+ghkVqc2
         QkMZOUBfFyirGSBNFFD1OgjapC/U843T1dKIS2OCDMbglxTBAnSIbjll7HHfsprQSVn7
         TEnR3p4qjEjnFMyEetnmYLxxhajXZUGF010dJ4Js4L0IwNJdtdCaEtxAI0e7n+3OaPMF
         LuAQ==
X-Gm-Message-State: AC+VfDxql6wrt/R2dg/myzD0l1IXjQA1q9IUJ8d+qAtl837IcQelvNUe
        m8oCWHidM8CDjnsf7Ws3eU+haA==
X-Google-Smtp-Source: ACHHUZ7S8cGW6Oy5Se6ClqJ1RTus/DPNFHmu81b1xTiPY1WGRF6SQ9zHvno/ZAHf1nqswW6tYzBp7w==
X-Received: by 2002:ac2:5491:0:b0:4f2:579d:6867 with SMTP id t17-20020ac25491000000b004f2579d6867mr1546144lfk.20.1685491384301;
        Tue, 30 May 2023 17:03:04 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id d30-20020ac25ede000000b004f13eff5375sm490388lfq.45.2023.05.30.17.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 17:03:03 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v3 3/3] drm/bridge: display-connector: handle hdmi-pwr supply
Date:   Wed, 31 May 2023 03:02:59 +0300
Message-Id: <20230531000259.3758235-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531000259.3758235-1-dmitry.baryshkov@linaro.org>
References: <20230531000259.3758235-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On some devices the +5V Power pin of the HDMI connector and/or the ESD
protection logic is powered on by a separate regulator. Instead of
declaring this regulator as always-on, make hdmi-connector support the
additional hdmi-pwr supply.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/bridge/display-connector.c | 55 ++++++++++++----------
 1 file changed, 29 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/bridge/display-connector.c b/drivers/gpu/drm/bridge/display-connector.c
index cad3105ab186..f7f436cf96e0 100644
--- a/drivers/gpu/drm/bridge/display-connector.c
+++ b/drivers/gpu/drm/bridge/display-connector.c
@@ -191,6 +191,18 @@ static irqreturn_t display_connector_hpd_irq(int irq, void *arg)
 	return IRQ_HANDLED;
 }
 
+static int display_connector_get_supply(struct platform_device *pdev,
+					struct display_connector *conn,
+					const char *name)
+{
+	conn->supply = devm_regulator_get_optional(&pdev->dev, name);
+
+	if (conn->supply == ERR_PTR(-ENODEV))
+		conn->supply = NULL;
+
+	return PTR_ERR_OR_ZERO(conn->supply);
+}
+
 static int display_connector_probe(struct platform_device *pdev)
 {
 	struct display_connector *conn;
@@ -316,36 +328,15 @@ static int display_connector_probe(struct platform_device *pdev)
 	if (type == DRM_MODE_CONNECTOR_DisplayPort) {
 		int ret;
 
-		conn->supply = devm_regulator_get_optional(&pdev->dev, "dp-pwr");
-
-		if (IS_ERR(conn->supply)) {
-			ret = PTR_ERR(conn->supply);
-
-			switch (ret) {
-			case -ENODEV:
-				conn->supply = NULL;
-				break;
-
-			case -EPROBE_DEFER:
-				return -EPROBE_DEFER;
-
-			default:
-				dev_err(&pdev->dev, "failed to get DP PWR regulator: %d\n", ret);
-				return ret;
-			}
-		}
-
-		if (conn->supply) {
-			ret = regulator_enable(conn->supply);
-			if (ret) {
-				dev_err(&pdev->dev, "failed to enable DP PWR regulator: %d\n", ret);
-				return ret;
-			}
-		}
+		ret = display_connector_get_supply(pdev, conn, "dp-pwr");
+		if (ret < 0)
+			return dev_err_probe(&pdev->dev, ret, "failed to get DP PWR regulator\n");
 	}
 
 	/* enable DDC */
 	if (type == DRM_MODE_CONNECTOR_HDMIA) {
+		int ret;
+
 		conn->ddc_en = devm_gpiod_get_optional(&pdev->dev, "ddc-en",
 						       GPIOD_OUT_HIGH);
 
@@ -353,6 +344,18 @@ static int display_connector_probe(struct platform_device *pdev)
 			dev_err(&pdev->dev, "Couldn't get ddc-en gpio\n");
 			return PTR_ERR(conn->ddc_en);
 		}
+
+		ret = display_connector_get_supply(pdev, conn, "hdmi-pwr");
+		if (ret < 0)
+			return dev_err_probe(&pdev->dev, ret, "failed to get HDMI +5V Power regulator\n");
+	}
+
+	if (conn->supply) {
+		ret = regulator_enable(conn->supply);
+		if (ret) {
+			dev_err(&pdev->dev, "failed to enable PWR regulator: %d\n", ret);
+			return ret;
+		}
 	}
 
 	conn->bridge.funcs = &display_connector_bridge_funcs;
-- 
2.39.2

