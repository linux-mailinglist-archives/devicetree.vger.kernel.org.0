Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 295C64AEF25
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 11:20:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231996AbiBIKTa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 05:19:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiBIKTX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 05:19:23 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94F09E11C092
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 02:14:58 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id v12so3162096wrv.2
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 02:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wEmAB87KMbVXGW4TeiDbnHla5i/2RYZ8JKZYPOxYxM4=;
        b=A22Hjm1O16aNiblpsnqP4S74IQqpmkmrJ2/Tvku63VUaNefjjlWnqXrg9q3CYaUZ2B
         VsZnXSOHEGku6MOWDYzMiFOvefV3LNjND7BIA+KohE8+UlX8KJpFRIjE8HyuPgBKwXSP
         vMVzvlxB3226dkyPjTVBoLcnbr2NochaepR4nz6rcEtnl0cl5mrnVlv6CLFtWz1hXxxL
         RAPhXkF3jsIiS5DQCeXgSGsmwCHreDWDlnd3z1kLYhATYALgp6wvNBTygZcuObUvivgL
         QK3d/e8ApLYN/OFKA3+MOfpPe+zcy17e/dcPRMBNsSqIdKfwfcNB9du1HC8BoMm1gsqp
         e3LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wEmAB87KMbVXGW4TeiDbnHla5i/2RYZ8JKZYPOxYxM4=;
        b=clg8ShHvJufS5gWV45D7GTfEiasyqzDBnZy+FgM1/9aIZMwp1V42fgMlDMheTFkZ+W
         s40UsEb6K42Yjqe4V4GsRltsmIiepZhRvrwXh4t9jXYbBcXY2o5WQ1la/r13eTqynUUl
         4PkWxz6aa8dgTMy5ntFp80yqTZpkq0sSCaZf5t8vXWxxXEDSTQI8uAMjZgE0aEYx1Fa5
         bTDnk3fux2bEvj2jEnVMLxG+4c1ny6eWAM3Xai9dATvOOEk3ZhOcGVj5G1uofYR2FolY
         FDGiKt4Ww6xKfiWuetEdSNmoPwBtj6FrHkI+YXeyLAOdFuMe8Xl555unsjhO4yzdbEPw
         K1XA==
X-Gm-Message-State: AOAM533QTkvlo06/9wvi/diaPnR0TIH5VILFAF31kSaFiIKJcUqcTAiq
        oTz9LhV6GBCqzN5ouU7IoP1Viw==
X-Google-Smtp-Source: ABdhPJwGwENAzy1WqFgY/9tZR9RFHwO/d1Okh9TcSAYmWbkzZUEC5+LR0BXgK8mp/VxUuaMZlnhBqg==
X-Received: by 2002:adf:f64e:: with SMTP id x14mr1411705wrp.698.1644401685588;
        Wed, 09 Feb 2022 02:14:45 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id f20sm5881067wmg.2.2022.02.09.02.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 02:14:45 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, krzysztof.kozlowski@canonical.com,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] ARM: dts: rk3288: fix a typo on crypto-controller
Date:   Wed,  9 Feb 2022 10:14:39 +0000
Message-Id: <20220209101439.1657557-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

crypto-controller had a typo, fix it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index aaaa61875701..a0d29de3acf7 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -971,7 +971,7 @@ i2s: i2s@ff890000 {
 		status = "disabled";
 	};
 
-	crypto: cypto-controller@ff8a0000 {
+	crypto: crypto-controller@ff8a0000 {
 		compatible = "rockchip,rk3288-crypto";
 		reg = <0x0 0xff8a0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1

