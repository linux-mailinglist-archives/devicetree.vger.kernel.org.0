Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97F9E7775AF
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 12:23:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234511AbjHJKX2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 06:23:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234645AbjHJKXZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 06:23:25 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66307F2
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 03:23:16 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-98377c5d53eso108819566b.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 03:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1691662995; x=1692267795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=um8MO7uPnnXIaR6QV1vbD17IVqwYCkfV7F+BYJelfvc=;
        b=CIyyOGBVd3dPpwudO2oLW6FbAmEhnw8R0TMFLI/d3nGYX5LbjNHZxQUZjD6fN6Z9U1
         MeaWuykzmy50fDOXB64zejdli4KlLbFE+wnlkCV0/oHUoJQmDi4PaC4ixJRarAFeqf7j
         /0Wgvts50nLiy3TJuniRUHHDCPIQRNZ4LB5MKei3RoIRex2CodLhpZ95bZm2AD+ZklbY
         gjFip45Rz626cSwwEKAwNwCtPcap57fxxJvXikAZZ5T9AojuYu3192zhadSzXgxmKL+z
         A7E4oUDyuPPe4TB7eSQg5r4p7R7borDq6y87yzeCB4xkRrcoAQ3Gt/JP4hwKlLADTk37
         rwgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691662995; x=1692267795;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=um8MO7uPnnXIaR6QV1vbD17IVqwYCkfV7F+BYJelfvc=;
        b=IuWyRFqp0XvhPYIi2sW4nyhY0+yZJk9AHR6+xVidndt8mZFxnGt4EwnUkDGkz4TrLq
         1qoVHgh9PWG7wZcvVOMWs9qWju+/KuFWMdF+oBo7fDhOXI/Opevp4d21RsbJCNr00uCm
         gdiQdb9oR1KHyuyR6meM51j3lDv9JxzC0LAJlKihqXxqSKokuOnPJRZVSd267WrcHxbt
         W54vxnTziVIElTTZNs5fl+6yskeyniy9JKJ4i7tZnLpfEEA30Cvr6ecnLGWKZKFGDQL9
         +GPws930qJpuYEYZMaobUDUw2+12XLR6UT3FASec8xHtPnwaCmYGbUdin2KQ0XAzbShV
         giYA==
X-Gm-Message-State: AOJu0Yx+JrobmUj8UJMmu2zTz8QViAPHhI/YfJ7crm3m5VHfXSMYPFYK
        3tjciqIwQKY9B/beacp93cHfUg==
X-Google-Smtp-Source: AGHT+IEVL2RURdHpRlzqUowVNKqkzPmCFH4mMPoZLCiKDWvu4pQ5EySTuy9UyWCGMNBIlaApTFXWmw==
X-Received: by 2002:a17:907:762d:b0:99c:461e:2369 with SMTP id jy13-20020a170907762d00b0099c461e2369mr1601608ejc.42.1691662995005;
        Thu, 10 Aug 2023 03:23:15 -0700 (PDT)
Received: from fedora.. ([88.207.97.255])
        by smtp.googlemail.com with ESMTPSA id kg23-20020a17090776f700b0099cfd0b2437sm734576ejc.99.2023.08.10.03.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 03:23:14 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     luka.perkov@sartura.hr, Gabor Juhos <j4g8y7@gmail.com>,
        Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH net-next 2/2] net: phy: Introduce PSGMII PHY interface mode
Date:   Thu, 10 Aug 2023 12:22:55 +0200
Message-ID: <20230810102309.223183-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230810102309.223183-1-robert.marko@sartura.hr>
References: <20230810102309.223183-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,T_SPF_TEMPERROR autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Gabor Juhos <j4g8y7@gmail.com>

The PSGMII interface is similar to QSGMII. The main difference
is that the PSGMII interface combines five SGMII lines into a
single link while in QSGMII only four lines are combined.

Similarly to the QSGMII, this interface mode might also needs
special handling within the MAC driver.

It is commonly used by Qualcomm with their QCA807x PHY series and
modern WiSoC-s.

Add definitions for the PHY layer to allow to express this type
of connection between the MAC and PHY.

Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 drivers/net/phy/phy-core.c | 2 ++
 drivers/net/phy/phylink.c  | 3 +++
 include/linux/phy.h        | 3 +++
 3 files changed, 8 insertions(+)

diff --git a/drivers/net/phy/phy-core.c b/drivers/net/phy/phy-core.c
index a64186dc53f8..966c93cbe616 100644
--- a/drivers/net/phy/phy-core.c
+++ b/drivers/net/phy/phy-core.c
@@ -142,6 +142,8 @@ int phy_interface_num_ports(phy_interface_t interface)
 	case PHY_INTERFACE_MODE_QSGMII:
 	case PHY_INTERFACE_MODE_QUSGMII:
 		return 4;
+	case PHY_INTERFACE_MODE_PSGMII:
+		return 5;
 	case PHY_INTERFACE_MODE_MAX:
 		WARN_ONCE(1, "PHY_INTERFACE_MODE_MAX isn't a valid interface mode");
 		return 0;
diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index 4f1c8bb199e9..160bce608c34 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -210,6 +210,7 @@ static int phylink_interface_max_speed(phy_interface_t interface)
 	case PHY_INTERFACE_MODE_RGMII_RXID:
 	case PHY_INTERFACE_MODE_RGMII_ID:
 	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_PSGMII:
 	case PHY_INTERFACE_MODE_QSGMII:
 	case PHY_INTERFACE_MODE_QUSGMII:
 	case PHY_INTERFACE_MODE_SGMII:
@@ -475,6 +476,7 @@ unsigned long phylink_get_capabilities(phy_interface_t interface,
 	case PHY_INTERFACE_MODE_RGMII_RXID:
 	case PHY_INTERFACE_MODE_RGMII_ID:
 	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_PSGMII:
 	case PHY_INTERFACE_MODE_QSGMII:
 	case PHY_INTERFACE_MODE_QUSGMII:
 	case PHY_INTERFACE_MODE_SGMII:
@@ -868,6 +870,7 @@ static int phylink_parse_mode(struct phylink *pl,
 
 		switch (pl->link_config.interface) {
 		case PHY_INTERFACE_MODE_SGMII:
+		case PHY_INTERFACE_MODE_PSGMII:
 		case PHY_INTERFACE_MODE_QSGMII:
 		case PHY_INTERFACE_MODE_QUSGMII:
 		case PHY_INTERFACE_MODE_RGMII:
diff --git a/include/linux/phy.h b/include/linux/phy.h
index ba08b0e60279..23756a10d40b 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -147,6 +147,7 @@ typedef enum {
 	PHY_INTERFACE_MODE_XGMII,
 	PHY_INTERFACE_MODE_XLGMII,
 	PHY_INTERFACE_MODE_MOCA,
+	PHY_INTERFACE_MODE_PSGMII,
 	PHY_INTERFACE_MODE_QSGMII,
 	PHY_INTERFACE_MODE_TRGMII,
 	PHY_INTERFACE_MODE_100BASEX,
@@ -254,6 +255,8 @@ static inline const char *phy_modes(phy_interface_t interface)
 		return "xlgmii";
 	case PHY_INTERFACE_MODE_MOCA:
 		return "moca";
+	case PHY_INTERFACE_MODE_PSGMII:
+		return "psgmii";
 	case PHY_INTERFACE_MODE_QSGMII:
 		return "qsgmii";
 	case PHY_INTERFACE_MODE_TRGMII:
-- 
2.41.0

