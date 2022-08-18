Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41F1A598347
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:43:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244588AbiHRMlx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:41:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244545AbiHRMlv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:41:51 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E7A8B1B8F
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:51 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id x19so1404844plc.5
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=HNe8OjtuDLj5v9aJsCXWAHFoyP90hwZE71BrK38QUl4=;
        b=PBEVfS6VsCV3HMXg3O4fwDnT3BDnD0hhGS2WfTotDq4+NpqhKf6WaWx1xoeMsZytY2
         tWAkhCeELCZD+wtrQKDZS5U/o3PTeMaUCPzoHpxHcLMfO+S02kJ85T/mBtjHqpHYN8Me
         kK5GQig70ioDRCzvsA1lDnRZvPtooqu0JrDluXHxk7L5IfqkPG8JoIPq4vWSnGuQGeMG
         QmJvuPyeSUSg9xsVf3SZJVlkccjHMRStnTnyM6zXAkI7EakWNkmLxjy1wa/MmWUQnc+H
         bZI70j3KbdC3lXQl6Z6MhiON5mIPrH/y0nA/UtTdtNlcGDG2YKriiLsoi0GF0zXUmXsl
         rjZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=HNe8OjtuDLj5v9aJsCXWAHFoyP90hwZE71BrK38QUl4=;
        b=l01LlHsbTSGru/quPMtPGGWPtrOqKifEdQTo3jWfN6l5uozrBml5IQT12Wt0RLwbhh
         B9Yk4MDVich1/ZiN2zX1zK8zLsdGyUcvcUMTsGojUnqs18XAw8DVpRZCZ7TpbyIeEz8U
         Svrx/ICYHVKTyTRdvZ6hR7qZ93t+dCKPx+hWu6M42onVrcsOrdtgrQkqTd4506JDb9NF
         KGpu59cJCJCl6a2/UDGMlIkFYhh7uvL639JveY6QH0f02y5160DhOs5bZ4wk/hdloDja
         zDCUlzWIg1Z/Og/CZhM1/oWQYa1IalFmVLnVHthqfiNnvznIv/XA5Irs+ya211BMycHD
         zjug==
X-Gm-Message-State: ACgBeo1lkSD7iuLQIcZFfHOqMfeOiKFY1lnzY+LXItveADP4FeuPxcXf
        Hz3J7StkYpEY2UB40AycIWjwcg==
X-Google-Smtp-Source: AA6agR5zkWAePmMjjHCcIQYEfFLMf8eAwSpeQl2HICBulyh0PEGjsJxTciTIS8uxmKepNNc4glShMA==
X-Received: by 2002:a17:902:b114:b0:16e:f1e0:51da with SMTP id q20-20020a170902b11400b0016ef1e051damr2462836plr.0.1660826510285;
        Thu, 18 Aug 2022 05:41:50 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:41:50 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v3 03/19] soc: rockchip: power-domain: Add RV1126 power domains
Date:   Thu, 18 Aug 2022 18:11:16 +0530
Message-Id: <20220818124132.125304-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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
Changes for v3:
- update the header
Changes for v2:
- none

 drivers/soc/rockchip/pm_domains.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 89795abac951..3aaadab2716e 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -19,6 +19,7 @@
 #include <linux/mfd/syscon.h>
 #include <soc/rockchip/pm_domains.h>
 #include <dt-bindings/power/px30-power.h>
+#include <dt-bindings/power/rockchip,rv1126-power.h>
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

