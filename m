Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17CF8769336
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230367AbjGaKgL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:36:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbjGaKgK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:36:10 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78A5BE46
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:09 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-686b91c2744so3049621b3a.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799769; x=1691404569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sPRT5kECbC/GYO7wPZNg3h793p47hsYwG18RkdRFC5s=;
        b=0mZHzneQyOPl4IvidRtx9cb0tl8Am90dF5U/VRSBIInINoctdwgqiwp+sUxbxYA16c
         7C9FF9tc3MFhgVI8NdzJuHnHz/EO1A/Y89whDB8GgIrps4l2sT4a58+kueX9ej6IprN+
         NjOm+NVQ1EZc+d+q6yPu8a6pPML1OhvpuFEzIRZg9tXxjAOhG6TcrMH8MTtFQi70LxMu
         QIdsekQKJs0mNes/n3YhPduOb5W85TRD9zlls4jG1DMvJ8qZS9Nx2/QA9H3IlQpxholn
         5aHTVmw7OZQfcKN2b5AW3SxiiOQXGOf2BPKStoSG9GujevArX8rLJ/iUzlkyEeQM+fy7
         dxnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799769; x=1691404569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sPRT5kECbC/GYO7wPZNg3h793p47hsYwG18RkdRFC5s=;
        b=l2xSfVieCDYmvwgGVnIKpstBSUa8lHD/t+aScxkXcgwfvYMiZxFBC6IAUtIcPzN1JX
         2Oq5aa6SBPnIUnq5Gh3pj4EOH0S7AkfqcIX1/3JaYDV2dTkQzUqmx/rRcbkb+3Gev/2T
         UAvF9PFPAZKV6vNRQrnrWXIKxzLGKdjsckRKGe8Z7Dr/PrXyF/3mPE9eCs0JcpBX0JZH
         t7Zc6vgytkbbyQDnqVI29ZeGQSVZt6xLH3q6VM9YdgL16Pu1mWbRF+UYvSguNapOEWT9
         0550jMfUkrII8WBLivIt3kmedtxrGKKWvXHRHJQIzvvHIrdZT/eTWr5Norq0bhh31Jqg
         UxlA==
X-Gm-Message-State: ABy/qLaHUMkc5yYm1+wSkg223EKOgnpLOTGJYggjdRVSyPKe1tGHaoAF
        Az6ee+CChsehHb4AV6Xpdv59Zg==
X-Google-Smtp-Source: APBJJlEbgSS3pzx245CBih2CuZkilJ9yX1wKWhYaHqSa4Yzn7BPhgI5X++bksUnwET0dxRC/N/9aAQ==
X-Received: by 2002:aa7:88cf:0:b0:687:4277:4060 with SMTP id k15-20020aa788cf000000b0068742774060mr1272707pff.25.1690799768924;
        Mon, 31 Jul 2023 03:36:08 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:08 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 06/13] ARM: dts: rockchip: rv1126: Add SFC node
Date:   Mon, 31 Jul 2023 16:05:11 +0530
Message-Id: <20230731103518.2906147-7-jagan@edgeble.ai>
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

Add Rockchip SFC controller node for rv1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 86b560dc3b64..afa5a68f766f 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -441,6 +441,18 @@ sdio: mmc@ffc70000 {
 		status = "disabled";
 	};
 
+	sfc: spi@ffc90000  {
+		compatible = "rockchip,sfc";
+		reg = <0xffc90000 0x4000>;
+		interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru SCLK_SFC>;
+		assigned-clock-rates = <80000000>;
+		clock-names = "clk_sfc", "hclk_sfc";
+		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
+		power-domains = <&power RV1126_PD_NVM>;
+		status = "disabled";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rv1126-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.25.1

