Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82FC158602A
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:47:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231146AbiGaRrv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:47:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbiGaRrv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:47:51 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AE59DFDA
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:50 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id u133so2001233pfc.10
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=q7vWi4mlIn/BmbczTttlIzlGAwuHH2auenHoK8SAs7Y=;
        b=GR3zSsncgMnPJ2406LkUhYS6kYW0bSwIKoVr9YHAan2vmtz7tfijIS7p30s9vmkj6Q
         4KEswdKzsVNiSHJZHXjWKffS4rdER06qtVBwfOfQn20+5OFC6qgSwWMON8uoSrOFpINK
         CK7IZy5XLcuixWTGliMGOauXcT5DIGK/09fffpipkhR/8QeSo1nl1ElLXPMDbsCIWL4l
         2yvHJxeQ+aWf45eDWSOm53JW/DMHMyYKbzXEP8YmzVM62gCKzcwfTHUcUhUpzA8dUnoe
         i/kkb9tP8ZsjPTLkGxoBMuOvLyeNUhHxuF/CJ9vl0Ir+o83MijMrca5YkIsCqA8Q1Ffa
         ufyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=q7vWi4mlIn/BmbczTttlIzlGAwuHH2auenHoK8SAs7Y=;
        b=E5nqimK6ZD3Q2WpOpEhxZRj7WrwKBYLucCirtG09pzRFytMopDssqvDfJQHUahvzSk
         vmK2DRpUzWISl3cnbB6uMbbPEhi8zA4cAHP0pDroeDoIZMN72gLj5h5GayKuOxsOo7B/
         a+fyiyYveG+tQQrNlhpxTTJ5FOb1IlMXVS59T5yfImhaVy/rqUAbc7ToeTAE4n7gDxSe
         QHKrVJLuZegwnoJEsjtkHm15q1c+BXF4cpIRX97o1xQlhqYwOFW9pfxJAJj9JEkym6Gl
         Tedk8wF2mCwS5sBV/Dx9FkxHo+/KeyIOuO1FVcFTjZ+MiTrVo39LcYu8MwVJwEoaJW6L
         699A==
X-Gm-Message-State: AJIora+2yI+o2TpY2V9WOPK6lBWxqq3Lk9Kgyda1w5IfCvlirvgS+IwT
        SkTWakjSATrBI3RO5NYACkfQzA==
X-Google-Smtp-Source: AGRyM1s3DSS2R4x3T2yOQQOsfwugfrpo6GYuWtahEmBq1vorIM+iU+QlWy6KGH3OuKWnNTQxnHT7PA==
X-Received: by 2002:a63:fc41:0:b0:41b:4714:ac78 with SMTP id r1-20020a63fc41000000b0041b4714ac78mr10630911pgk.319.1659289669889;
        Sun, 31 Jul 2022 10:47:49 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:49 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v2 03/20] soc: rockchip: power-domain: Add RV1126 power domains
Date:   Sun, 31 Jul 2022 23:17:09 +0530
Message-Id: <20220731174726.72631-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add power domains support for RV1126 SoC.

Cypto, VO and NPU domains will add it future patches.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 drivers/soc/rockchip/pm_domains.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 89795abac951..7b41cd19f013 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -19,6 +19,7 @@
 #include <linux/mfd/syscon.h>
 #include <soc/rockchip/pm_domains.h>
 #include <dt-bindings/power/px30-power.h>
+#include <dt-bindings/power/rv1126-power.h>
 #include <dt-bindings/power/rk3036-power.h>
 #include <dt-bindings/power/rk3066-power.h>
 #include <dt-bindings/power/rk3128-power.h>
@@ -126,6 +127,9 @@ struct rockchip_pmu {
 #define DOMAIN_PX30(name, pwr, status, req, wakeup)		\
 	DOMAIN_M(name, pwr, status, req, (req) << 16, req, wakeup)
 
+#define DOMAIN_RV1126(name, pwr, req, idle, wakeup)		\
+	DOMAIN_M(name, pwr, pwr, req, idle, idle, wakeup)
+
 #define DOMAIN_RK3288(name, pwr, status, req, wakeup)		\
 	DOMAIN(name, pwr, status, req, req, (req) << 16, wakeup)
 
@@ -855,6 +859,16 @@ static const struct rockchip_domain_info px30_pm_domains[] = {
 	[PX30_PD_GPU]		= DOMAIN_PX30("gpu",      BIT(15), BIT(15), BIT(2),  false),
 };
 
+static const struct rockchip_domain_info rv1126_pm_domains[] = {
+	[RV1126_PD_VEPU]	= DOMAIN_RV1126("vepu", BIT(2),  BIT(9),  BIT(9), false),
+	[RV1126_PD_VI]		= DOMAIN_RV1126("vi", BIT(4),  BIT(6),  BIT(6),  false),
+	[RV1126_PD_ISPP]	= DOMAIN_RV1126("ispp", BIT(1), BIT(8), BIT(8),  false),
+	[RV1126_PD_VDPU]	= DOMAIN_RV1126("vdpu", BIT(3), BIT(10), BIT(10), false),
+	[RV1126_PD_NVM]		= DOMAIN_RV1126("nvm", BIT(7), BIT(11), BIT(11),  false),
+	[RV1126_PD_SDIO]	= DOMAIN_RV1126("sdio", BIT(8), BIT(13), BIT(13),  false),
+	[RV1126_PD_USB]		= DOMAIN_RV1126("usb", BIT(9), BIT(15), BIT(15),  false),
+};
+
 static const struct rockchip_domain_info rk3036_pm_domains[] = {
 	[RK3036_PD_MSCH]	= DOMAIN_RK3036("msch", BIT(14), BIT(23), BIT(30), true),
 	[RK3036_PD_CORE]	= DOMAIN_RK3036("core", BIT(13), BIT(17), BIT(24), false),
@@ -1128,6 +1142,17 @@ static const struct rockchip_pmu_info rk3568_pmu = {
 	.domain_info = rk3568_pm_domains,
 };
 
+static const struct rockchip_pmu_info rv1126_pmu = {
+	.pwr_offset = 0x110,
+	.status_offset = 0x108,
+	.req_offset = 0xc0,
+	.idle_offset = 0xd8,
+	.ack_offset = 0xd0,
+
+	.num_domains = ARRAY_SIZE(rv1126_pm_domains),
+	.domain_info = rv1126_pm_domains,
+};
+
 static const struct of_device_id rockchip_pm_domain_dt_match[] = {
 	{
 		.compatible = "rockchip,px30-power-controller",
@@ -1177,6 +1202,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
 		.compatible = "rockchip,rk3568-power-controller",
 		.data = (void *)&rk3568_pmu,
 	},
+	{
+		.compatible = "rockchip,rv1126-power-controller",
+		.data = (void *)&rv1126_pmu,
+	},
 	{ /* sentinel */ },
 };
 
-- 
2.25.1

