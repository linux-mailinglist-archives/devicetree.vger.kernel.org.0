Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C97CA769339
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229872AbjGaKgU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:36:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230222AbjGaKgT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:36:19 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98072116
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:18 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-68706b39c4cso2272887b3a.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799778; x=1691404578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DioTasdys/OXmMLgOafZ0sLUPs2ereraMNozwT0ZB+A=;
        b=O8yw416rDQmRoqq5bQ13jt8/lTK5CR3edCZtMjn7eHFOvdfiK46iwYh+TJKVtitvGj
         7U9CucDU21LyFootDCq4vVHu1q7RD4HFtfUGMiMmq3Yp/EzsBTg9hCkvEoZgndTkVHub
         kuIIB6PnpVCnoiII3Qb1Y3mWYt/0jeZBwoNJvVaOqSPaYTaTSt8R9uuvkAsFAIASR5om
         t+iCr64CzvjayzM1hBUdZpOh0tkbL4JZO3522SfKy6vUYq8NWnjCECD5Aplrofa6xQfT
         7AzS0IeJT2wI5NBP0XHsM1n626j5vEOw4L03SfMWJXk/6EvLRogR2Hrieb7YQLt2tfUJ
         8yLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799778; x=1691404578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DioTasdys/OXmMLgOafZ0sLUPs2ereraMNozwT0ZB+A=;
        b=hX6g7v9ot/3wavIFx4Jyih3Af55jWF+sTkqJBNN+JKo6Hqa55cwAMfGDAaEQMTghWz
         c3BGjSX3/k9f40AXJs1M4bDbtxQVJacVZ+JPrf1Ly6HT9M4xcqBhkANx/m2SYQJR4pS7
         7n6BgyDZW85WRgwXYUYuRhas3WK8Fz5751Lf+4Fi/AifFBO3izW3a0j6VAKsWvJTQmbR
         3DzrbeJDtOxivvXFy73w2r15E7c+NG5m5n4t6Pq6YcQsUVJxaugCtM8V/3mKTiRf8ZQQ
         0J6kW8z2+T4OxBc7RL7hbIOdI95CXYQD8jU8V6ZGFAqPzqeUkxDgn5rPe0NKozGJ8Rhg
         65dw==
X-Gm-Message-State: ABy/qLa9gmROFwdf2Zj40g3KkCmWbclbNSjCY9gU2B78QeO4uWBC8VCt
        y8itllRbNOuijP+ooCUHT40C3A==
X-Google-Smtp-Source: APBJJlE5MlJ+FgJj9kFGmyEg+iQJdeInkOsMRld/t+dbgm9A5XGIKfQ7skcTBPFIppCYfSlJeOJHyA==
X-Received: by 2002:a05:6a20:4409:b0:134:9b83:9888 with SMTP id ce9-20020a056a20440900b001349b839888mr11126070pzb.0.1690799778061;
        Mon, 31 Jul 2023 03:36:18 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:17 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 09/13] ARM: dts: rv1126: Enable pwm fan for edgeble-neu2
Date:   Mon, 31 Jul 2023 16:05:14 +0530
Message-Id: <20230731103518.2906147-10-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Edgeble Neu2 IO board Fan connected to PWM11.

Enable the pwm fan for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
index 3340fc3f0739..bbc1cd50a1f6 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts
@@ -59,6 +59,10 @@ eth_phy_rst: eth-phy-rst {
 	};
 };
 
+&pwm11 {
+	status = "okay";
+};
+
 &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
-- 
2.25.1

