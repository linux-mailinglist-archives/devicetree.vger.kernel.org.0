Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1DB4717241
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 02:03:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233816AbjEaADH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 20:03:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233828AbjEaADG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 20:03:06 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0048CD9
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 17:03:04 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f4b256a0c9so5725956e87.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 17:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685491383; x=1688083383;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ndSnEYa6LuA1WUrC19j/UvYoRdHNkWnuQlVQYWKx9U=;
        b=Whq/xMUjT6yPq+YCLB+EuBapvj/IuETp3Rbm7Lu3h0xBbJH/4mAMz8623PcEegc2e2
         zFHxVWgu6auHbYP5N2TBb2IozP0o8sIeXq//0GrXelKsdIm27EKT0pTpsFaa8/LtkLlm
         m5PRl1wZbzr6LgwIGzDClTtwTNoSA/YPmHnKS55DWhOTdQYpfI3uVRDFZUQ8fOLvEE7Z
         dA2HJaEdLOpgXiYgOzOJA6Un0RIqciX/BMeeXNPF6TXc/9OQqU88wIwb1HYvCcNF8IQw
         +lqdDcV3l2msQ24nXwzYdmku1d1fatyRgQoVFbFm9oRJIFqbAQm15U1NzbCFFNTkNAw+
         mehA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685491383; x=1688083383;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4ndSnEYa6LuA1WUrC19j/UvYoRdHNkWnuQlVQYWKx9U=;
        b=CxBW0RPi+TYbTnhz2OoY+Vf/S7IJccEQy81MYwnKB0faUBM7Be43/mLqHwcb7NLri0
         PU0W8D0vWTPmt3/ysfyRhEJGPdI1u3zgQ2ADn7HUFLtloAR73yKPOpUpO6Y6nQRGD8Gb
         GnGDuXR6O4aAciBNp1XsbIiyWTryM6/FfC7k0ftvSaDkebZMyZ+7GNKAmXUPOrVEZh4K
         xEuLofAfecRJ9zk7rzIY9PJBVH8d8ocry4XYD0+dYSOt/y57sXctz0ajOCQOmjJBLbCf
         XX4+hR30Z8bQLe2LadKiX992wcCFT/eU7GcgaLsUJakE+3kuNbZ7wfQOY8+XGpnGOSqr
         Txdg==
X-Gm-Message-State: AC+VfDyg2PaiiYRxavoor2TI2yh4vqZFlHfdkdsBnYFLV1JCyUst8c1w
        rq9RHnlb1qTsKDrs/yJ0WR0gcQ==
X-Google-Smtp-Source: ACHHUZ7ax9Ag9+No8JNb9aFjqLI3V7NHwlCsNbV20G9jaRilJ73e4gdRu5nvWYi9gfwhGWiQaazD7A==
X-Received: by 2002:a19:7514:0:b0:4f4:dbcc:54d3 with SMTP id y20-20020a197514000000b004f4dbcc54d3mr1750354lfe.53.1685491383396;
        Tue, 30 May 2023 17:03:03 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id d30-20020ac25ede000000b004f13eff5375sm490388lfq.45.2023.05.30.17.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 17:03:02 -0700 (PDT)
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
        freedreno@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v3 2/3] drm/bridge: display-connector: rename dp_pwr to connector_pwr
Date:   Wed, 31 May 2023 03:02:58 +0300
Message-Id: <20230531000259.3758235-3-dmitry.baryshkov@linaro.org>
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

In preparation to adding support for the hdmi_pwr supply, rename dp_pwr
structure field to the generic connector_pwr.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/bridge/display-connector.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/bridge/display-connector.c b/drivers/gpu/drm/bridge/display-connector.c
index 56ae511367b1..cad3105ab186 100644
--- a/drivers/gpu/drm/bridge/display-connector.c
+++ b/drivers/gpu/drm/bridge/display-connector.c
@@ -24,7 +24,7 @@ struct display_connector {
 	struct gpio_desc	*hpd_gpio;
 	int			hpd_irq;
 
-	struct regulator	*dp_pwr;
+	struct regulator	*supply;
 	struct gpio_desc	*ddc_en;
 };
 
@@ -316,14 +316,14 @@ static int display_connector_probe(struct platform_device *pdev)
 	if (type == DRM_MODE_CONNECTOR_DisplayPort) {
 		int ret;
 
-		conn->dp_pwr = devm_regulator_get_optional(&pdev->dev, "dp-pwr");
+		conn->supply = devm_regulator_get_optional(&pdev->dev, "dp-pwr");
 
-		if (IS_ERR(conn->dp_pwr)) {
-			ret = PTR_ERR(conn->dp_pwr);
+		if (IS_ERR(conn->supply)) {
+			ret = PTR_ERR(conn->supply);
 
 			switch (ret) {
 			case -ENODEV:
-				conn->dp_pwr = NULL;
+				conn->supply = NULL;
 				break;
 
 			case -EPROBE_DEFER:
@@ -335,8 +335,8 @@ static int display_connector_probe(struct platform_device *pdev)
 			}
 		}
 
-		if (conn->dp_pwr) {
-			ret = regulator_enable(conn->dp_pwr);
+		if (conn->supply) {
+			ret = regulator_enable(conn->supply);
 			if (ret) {
 				dev_err(&pdev->dev, "failed to enable DP PWR regulator: %d\n", ret);
 				return ret;
@@ -386,8 +386,8 @@ static void display_connector_remove(struct platform_device *pdev)
 	if (conn->ddc_en)
 		gpiod_set_value(conn->ddc_en, 0);
 
-	if (conn->dp_pwr)
-		regulator_disable(conn->dp_pwr);
+	if (conn->supply)
+		regulator_disable(conn->supply);
 
 	drm_bridge_remove(&conn->bridge);
 
-- 
2.39.2

