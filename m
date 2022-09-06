Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 709855AEEC5
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 17:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239771AbiIFP3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 11:29:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239816AbiIFP3B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 11:29:01 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDAC819C21
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 07:40:19 -0700 (PDT)
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id B9B1E6601F53;
        Tue,  6 Sep 2022 15:38:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1662475111;
        bh=rEJ+pNRgdZef5+wO4r54ejoJ7KJfO0P7doJa8eL6Wuw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=oG/1pdryq0W4USk2S0mao0jatNufCgOusiZAg6VoBMVR+ujICuGsiylHhqgMkz7Xe
         /26yXVX9fcgqxDQsi79d/L75bGAM4AiM4KuS2x+1DM7w9/R2ZjuH0jGL24zBGHyEVZ
         ZsSIKC5nFdXbfcGAZDV0897LiiGnKfpK5TU/I2Nhk/dme14i4qcHiARraVmStrS37x
         uWg5huBmHbPQP5mv+JlntqGXq8LRMN3DMhAkAoMxZGA91GBJZM7RhRZF43d8Ud04sp
         Hj3eREWKx0UVz50DLK3QNmOVneRUsMSZmmO3Qt/N//E+20bVEieJy0O2w1mNOfZYWz
         kCUbMl9O3PRDw==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 44902480170; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>, kernel@collabora.com,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv3 5/6] soc: rockchip: power-domain: do not enable PD
Date:   Tue,  6 Sep 2022 16:38:24 +0200
Message-Id: <20220906143825.199089-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906143825.199089-1-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Elaine Zhang <zhangqing@rock-chips.com>

It's not need to power on all pd when add pm domain. Instead
use PD's real status in pm_genpd_init().

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/soc/rockchip/pm_domains.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 89795abac951..a59aa3b89a72 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -595,14 +595,6 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 		}
 	}
 
-	error = rockchip_pd_power(pd, true);
-	if (error) {
-		dev_err(pmu->dev,
-			"failed to power on domain '%pOFn': %d\n",
-			node, error);
-		goto err_unprepare_clocks;
-	}
-
 	if (pd->info->name)
 		pd->genpd.name = pd->info->name;
 	else
@@ -614,7 +606,7 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 	pd->genpd.flags = GENPD_FLAG_PM_CLK;
 	if (pd_info->active_wakeup)
 		pd->genpd.flags |= GENPD_FLAG_ACTIVE_WAKEUP;
-	pm_genpd_init(&pd->genpd, NULL, false);
+	pm_genpd_init(&pd->genpd, NULL, !rockchip_pmu_domain_is_on(pd));
 
 	pmu->genpd_data.domains[id] = &pd->genpd;
 	return 0;
-- 
2.35.1

