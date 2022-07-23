Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2036857F160
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:44:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233098AbiGWUoJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:44:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiGWUoH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:44:07 -0400
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA06E1B7BF
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:44:06 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id gn24so7085612pjb.3
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=64pgKx4gTKqbvk0tVFVnPPkGf1f8XpMAffnkrXNtI54=;
        b=76D90K8AYk10KKQ+CdlR3fqSeQODGSZuQu0JbTpkpgrwxOWu+6jDeDjYDmjPCwlX7+
         P+JDEJ0PclIx1dd032eniUXnlwnQc514Y2eTFJebPZmt6vvgBkG43q/D1Hv3xU0RfPY2
         Uk3dvddAHWO+YzOWXn6BsTw7yr5J8Q2utJp2TUjIgbnK23epW+Jg3cJZg1jRCvyi6ER6
         c6SObazWgveIa+AH95TLwtuMqdaIzvLxNRl5LhqDxUg81xfp7vz/LBCNJ8zCQ+q8wfe0
         7W+CNQudFsA+6nByIg6XqctPaIhSz4bPihxVBrNUQCvz9CjpnyWl07wCkbKFo8WyewZt
         mkjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=64pgKx4gTKqbvk0tVFVnPPkGf1f8XpMAffnkrXNtI54=;
        b=SKScYWR1D+y9Ob06+g6JziYOMQSn0XCgsRVrbpzSbCKewIyG3Ykx6FHEzGRQB2NNW4
         kUloEPbY3o1kIQHk/T5dXMc2Ca/5oNgBb29aw8UVD0GVDINqZgLnABkfvrz42pH1mrSr
         mCiQO7GkYeA6A76AGLB8v/Z2WFAj4rJS9LZ/skbpPYFyIag1AIiqntOIbdC13dAanZdp
         wLCbCzcbVJm/l4EIWmOI0grSNMnzDlv9FPYt2hiLaUVskTGKVWPgVGRbEzr6JUck98a2
         89rE/rRZtCGaDi8KD1L49Kvt5yntv6jzLWQEmz+ZOx/P5CbIkmmnaps+IeAuxqyoOvHI
         Drdg==
X-Gm-Message-State: AJIora/yXOOkRiEMqNwrXj04U39VNvcZIYaWOmDxQwehHxvfQ74/PcdZ
        qLCKlKeX47r+ZrX2KIjqKPRLog==
X-Google-Smtp-Source: AGRyM1u5lxOiYbG6s/cvQC70UHHrVI03aTwlGxwo1J4SZEWvPUeOXRvxB/0xV8cFdchN8INmLvn+aA==
X-Received: by 2002:a17:902:ab16:b0:16d:aa5:9fd with SMTP id ik22-20020a170902ab1600b0016d0aa509fdmr5463531plb.164.1658609046149;
        Sat, 23 Jul 2022 13:44:06 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:05 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH 03/22] soc: rockchip: power-domain: Add RV1126 power domains
Date:   Sun, 24 Jul 2022 02:13:16 +0530
Message-Id: <20220723204335.750095-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
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

