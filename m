Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 693526F9B49
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 22:12:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231644AbjEGUM0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 16:12:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231654AbjEGUMZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 16:12:25 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB6F72130
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 13:12:23 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ac78bb48eeso42325951fa.1
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 13:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683490342; x=1686082342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=92Z832aMBC33/Bfq4zZaoBxYDVdvd+BYhXisQliMM1w=;
        b=LqrDriwjwo8e3FhHxwRi6zW6yQmmotVBbQob+58IhXiHrr0A5YFpaITYvd4lMUNerM
         noKx6dD2Qz4TG6tNrtwEJzhV8KAdEo+awr/9yk89xLqJVIkcuPnxdCMQNBBnAAGIxTer
         uEJnkGainOSUvRSETKNHLvimu3cYIepJr3DPOYTX05ABxVTk4VRGKY68wHQRoHkffaT+
         11/NP4s1DXZ2clFrp32kLy2WQsB9HrmUjr2/aKHSQRGt8olE69GNzgViXi9Flwsemvie
         L3Vct9egyiAIamaGjESbiPpn8NRdip4M63HV+9RujAywT/ZxP+bhQKcN7l/w2+7iKs2e
         7UIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683490342; x=1686082342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=92Z832aMBC33/Bfq4zZaoBxYDVdvd+BYhXisQliMM1w=;
        b=EabGhti8aymIQziaovE5uYv4yN6P6BJ5G8Yw0zyuG3PW2Z6r7pyscC3BJx3TbWWHwe
         8ZgbigkMiUw0gsNrwEuTE3BbHSuLwo/2nRRfqRMSXO/07C0kXSFphAOH24/QDNmxmX5p
         APnnzLKtj/gVFbFH7oNMyFXbrXXrtAip5O9106vJq7BCChe0T3FLF1GL7eyWVzL7QOIL
         de7RdqH38wWFPzQXOw1QOidV9J2OdHLQMReLriomHpsOBDU4aEZE4Fo1w69cbORVhXbx
         nkCbnVSHqZ1ezupG0QE2XzAXDRalO3eMvf7VlfyzkswZgGMscnsHS3l9bK8uumEYx2gf
         cHtA==
X-Gm-Message-State: AC+VfDxEgI1v75FvGX+QAgxFUnnj/k7IxL2J8+FFHp4WW1onHo4odqHN
        e6f4zLUO9YyheTwm6oagR4m2PQ==
X-Google-Smtp-Source: ACHHUZ7r6qt3TaSWm4LhzF/81gZ5OK/0uOnM2ZCXJvJX/0kOufF46BJDlTje8RYxybzOErdmGQLC9Q==
X-Received: by 2002:a2e:908c:0:b0:2a8:eee0:59f3 with SMTP id l12-20020a2e908c000000b002a8eee059f3mr2123188ljg.41.1683490341899;
        Sun, 07 May 2023 13:12:21 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id f5-20020a2e3805000000b002ac74f5f022sm916522lja.0.2023.05.07.13.12.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 13:12:21 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 3/3] drm/bridge: display-connector: handle hdmi-pwr supply
Date:   Sun,  7 May 2023 23:12:18 +0300
Message-Id: <20230507201218.2339014-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
References: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
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

On some devices the 5V pin of the HDMI connector and/or the ESD
protection logic is powered on by a separate regulator. Instead of
declaring this regulator as always-on, make hdmi-connector support the
additional hdmi-pwr supply.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/bridge/display-connector.c | 37 +++++++++++++++++-----
 1 file changed, 29 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/bridge/display-connector.c b/drivers/gpu/drm/bridge/display-connector.c
index 0d94e6edea50..037ba2eb5a2f 100644
--- a/drivers/gpu/drm/bridge/display-connector.c
+++ b/drivers/gpu/drm/bridge/display-connector.c
@@ -337,18 +337,12 @@ static int display_connector_probe(struct platform_device *pdev)
 				return ret;
 			}
 		}
-
-		if (conn->connector_pwr) {
-			ret = regulator_enable(conn->connector_pwr);
-			if (ret) {
-				dev_err(&pdev->dev, "failed to enable DP PWR regulator: %d\n", ret);
-				return ret;
-			}
-		}
 	}
 
 	/* enable DDC */
 	if (type == DRM_MODE_CONNECTOR_HDMIA) {
+		int ret;
+
 		conn->ddc_en = devm_gpiod_get_optional(&pdev->dev, "ddc-en",
 						       GPIOD_OUT_HIGH);
 
@@ -356,6 +350,33 @@ static int display_connector_probe(struct platform_device *pdev)
 			dev_err(&pdev->dev, "Couldn't get ddc-en gpio\n");
 			return PTR_ERR(conn->ddc_en);
 		}
+
+		conn->connector_pwr = devm_regulator_get_optional(&pdev->dev, "hdmi-pwr");
+
+		if (IS_ERR(conn->connector_pwr)) {
+			ret = PTR_ERR(conn->connector_pwr);
+
+			switch (ret) {
+			case -ENODEV:
+				conn->connector_pwr = NULL;
+				break;
+
+			case -EPROBE_DEFER:
+				return -EPROBE_DEFER;
+
+			default:
+				dev_err(&pdev->dev, "failed to get HDMI PWR regulator: %d\n", ret);
+				return ret;
+			}
+		}
+	}
+
+	if (conn->connector_pwr) {
+		ret = regulator_enable(conn->connector_pwr);
+		if (ret) {
+			dev_err(&pdev->dev, "failed to enable DP PWR regulator: %d\n", ret);
+			return ret;
+		}
 	}
 
 	conn->bridge.funcs = &display_connector_bridge_funcs;
-- 
2.39.2

