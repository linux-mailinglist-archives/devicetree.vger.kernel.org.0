Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84E0275E4A6
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 21:54:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229745AbjGWTya (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 15:54:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229727AbjGWTy3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 15:54:29 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA87AE43
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 12:54:25 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-52164adea19so4795538a12.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 12:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690142064; x=1690746864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a7kWdiSqFJTKuQHRXs3vhFK87H+vnaY3/IycndnUqqI=;
        b=oTZ0BWjuZ8PuYpNHHYuO5fYTr7vu8ba+A1eOdK4ZdKQwNuJu+ab8A9HgpP4DVij5f+
         +ESGGQM2IELZWKOq36D5d9OasEiktBCFX7+mmWntnSBttOdR1KyPxrUxL49Vok/PwgGk
         qMR6CYre2WHUq+vdZuIN9r7BLWxINnPhgihg25JfRrNgnAR2TX/q7RcJEd1o3enu3L16
         yRpmArJDynkJLzK5zQ6kJw7p6q5wlQJNaPxHWCOZeaegfloyes8cozC6P+ndDn3xXDly
         DKfswInffcJYywwLxrm2/x7Zcmb/eJjiAxB7C3neM0zaTEGgRR6whCfIVdXo1Yzk264D
         c7zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690142064; x=1690746864;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a7kWdiSqFJTKuQHRXs3vhFK87H+vnaY3/IycndnUqqI=;
        b=ltIP/Ax1UTKo5Xgk7Gl+50nkUh0i+ddfgDYS/sjeVypy8h5bawLAVGzatnaLVtdBTf
         izGBlflvINiPSjdRzblz1QMciSkT0tNmDSmAX3JM4xK1J6Xsn05jgOSk8Ohix/mOJ9yM
         bTt9QIWukwuNkM77wtjemXW1r+ZGoRIG9xMMQ3X+dVjJqSu7HCBtRjxA14fnj1AqyVgz
         9BhPZlKuNAxLk+HQl4mKwn3P1N2CXdCsESdHKAe1T8jTgPZDObIQ9fniJdvyGuIOoWeH
         Y0g+yCa2N0tM7zNsz3Mo8sFmF+LdK3NVyHC0v0Dp6bKWC/AtNbocipqPZrlYyt/TbxRG
         XNUA==
X-Gm-Message-State: ABy/qLZbM5GRWQv0xInFXyOn0s7JFbBiXtdjkaXWFzVr6CvO+me9hMpg
        JSiBk2gzalWiRQJC6sBsqE0=
X-Google-Smtp-Source: APBJJlFQqUrB0MCAv9jxgNx4K2lkk4ex9OxRiwzDOkuD3YOTUKP+nHcxf1kI8i3DCgB2wPo2dtv7Eg==
X-Received: by 2002:a17:907:75ef:b0:994:5350:5a2b with SMTP id jz15-20020a17090775ef00b0099453505a2bmr7371418ejc.62.1690142063766;
        Sun, 23 Jul 2023 12:54:23 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id pk4-20020a170906d7a400b00993004239a4sm5560046ejb.215.2023.07.23.12.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jul 2023 12:54:23 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/3] ARM: dts: BCM53573: Fix Tenda AC9 switch CPU port
Date:   Sun, 23 Jul 2023 21:54:14 +0200
Message-Id: <20230723195416.7831-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Primary Ethernet interface is connected to the port 8 (not 5).

Fixes: 64612828628c ("ARM: dts: BCM53573: Add Tenda AC9 switch ports")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm47189-tenda-ac9.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm47189-tenda-ac9.dts b/arch/arm/boot/dts/broadcom/bcm47189-tenda-ac9.dts
index dab2e5f63a72..06b1a582809c 100644
--- a/arch/arm/boot/dts/broadcom/bcm47189-tenda-ac9.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47189-tenda-ac9.dts
@@ -135,8 +135,8 @@ port@4 {
 			label = "lan4";
 		};
 
-		port@5 {
-			reg = <5>;
+		port@8 {
+			reg = <8>;
 			label = "cpu";
 			ethernet = <&gmac0>;
 		};
-- 
2.35.3

