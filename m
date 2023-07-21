Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D376175C0D9
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 10:08:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231418AbjGUIIT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 04:08:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231386AbjGUIIM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 04:08:12 -0400
Received: from mail-vk1-xa31.google.com (mail-vk1-xa31.google.com [IPv6:2607:f8b0:4864:20::a31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EABF72D46
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:08:10 -0700 (PDT)
Received: by mail-vk1-xa31.google.com with SMTP id 71dfb90a1353d-4812fc6b41dso720818e0c.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689926890; x=1690531690;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VIWYt/VUR+LWe3Ym6ggQYemB73LQMpv4Ia87+08eNu8=;
        b=mOqIIVg9BcpADuYEnhsJwNphrOGgsZ/jx0kH+3BSYoXkYKZWwTzoWjv28ReLmi9Hp5
         fu1Wwau6EMEiARv3e8CYbk+7qFAmYEI57cpZWbaGQn+h1+V3JoGukF52RG5fy7ltxenJ
         O1SF2oZuyLhxYpQ0yxCuGKxdEvMBZ1CGPiaN8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689926890; x=1690531690;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VIWYt/VUR+LWe3Ym6ggQYemB73LQMpv4Ia87+08eNu8=;
        b=Yc5j+qr6jF1r8Mx6Dgo2bRi4NOL0Qv2cDiG7t5oHkh6PkN0uvJRik51KNjV9CWL7Ko
         OT5aVMq5QPXCxbQGEEmu2hDY77F+QJ58zBnqFZjntDcF/ZJZVo7ju6Jzgj3FlpFhNbbe
         1+ND9wvklNi+bhI1j5NUSt1uaIb195z2QihyMHsvpJ8qtiol5sDwNQvEz6rsOwQAWwM7
         rsArRxsVv/2ko61O9aI8LU/HbUSb0sfGxdCLfCf59lwBQl/lft8/p5EhNQ5WEWdqsmKc
         HvzkMjWX37/+m7ZdPpbe9/suRfFt+Z9uPD+60DhKhJA2TIeIqTnZxroMcUfSNQe90TrI
         MIQA==
X-Gm-Message-State: ABy/qLaicf9Ula43GbVWbdrY3UYGsIjamNBkLwzMA9gm96jpv8LRCI/j
        ONvCPjE+p5YptC0d9tlBTdQWjw==
X-Google-Smtp-Source: APBJJlEC5hPJcYbZ0l3QzrR9QVptQ1VIfzlcV+K0dtYmvtmyBtq4fo5SPB+MiPVbfac4ByQiUkzN+Q==
X-Received: by 2002:a1f:3fc9:0:b0:471:cea:3d62 with SMTP id m192-20020a1f3fc9000000b004710cea3d62mr698570vka.2.1689926890023;
        Fri, 21 Jul 2023 01:08:10 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6d86:d21:714:abab])
        by smtp.gmail.com with ESMTPSA id o10-20020a170902bcca00b001b850c9af71sm2740294pls.285.2023.07.21.01.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 01:08:09 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/7] regulator: mt6358: Sync VCN33_* enable status after checking ID
Date:   Fri, 21 Jul 2023 16:07:43 +0800
Message-ID: <20230721080751.2012318-3-wenst@chromium.org>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
In-Reply-To: <20230721080751.2012318-1-wenst@chromium.org>
References: <20230721080751.2012318-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Syncing VCN33_* enable status should be done after checking the PMIC's
ID, to avoid setting random bits on other PMICs.

Suggested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Fixes: 65bae54e08c1 ("regulator: mt6358: Merge VCN33_* regulators")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/regulator/mt6358-regulator.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/regulator/mt6358-regulator.c b/drivers/regulator/mt6358-regulator.c
index 31a16fb28ecd..da6b40f947c4 100644
--- a/drivers/regulator/mt6358-regulator.c
+++ b/drivers/regulator/mt6358-regulator.c
@@ -676,10 +676,6 @@ static int mt6358_regulator_probe(struct platform_device *pdev)
 	const struct mt6358_regulator_info *mt6358_info;
 	int i, max_regulator, ret;
 
-	ret = mt6358_sync_vcn33_setting(&pdev->dev);
-	if (ret)
-		return ret;
-
 	if (mt6397->chip_id == MT6366_CHIP_ID) {
 		max_regulator = MT6366_MAX_REGULATOR;
 		mt6358_info = mt6366_regulators;
@@ -688,6 +684,10 @@ static int mt6358_regulator_probe(struct platform_device *pdev)
 		mt6358_info = mt6358_regulators;
 	}
 
+	ret = mt6358_sync_vcn33_setting(&pdev->dev);
+	if (ret)
+		return ret;
+
 	for (i = 0; i < max_regulator; i++) {
 		config.dev = &pdev->dev;
 		config.regmap = mt6397->regmap;
-- 
2.41.0.487.g6d72f3e995-goog

