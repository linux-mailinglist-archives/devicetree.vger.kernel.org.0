Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51C697697B1
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 15:34:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229935AbjGaNef (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 09:34:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbjGaNee (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 09:34:34 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 239A21708
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 06:34:34 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6b9da57da6bso498399a34.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 06:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690810473; x=1691415273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KshR7HWMSbuCSMCUVNiESzXZo72NeDEXMY5byYWj2ys=;
        b=j9w3Qj/q5tFM3UlR1audRQyz7PyvuR4h5kra1sDzLUjsyqPF8rA8HoyhxF5/q7rpd7
         a03iqryRgDBGa81t0/A232cXxcX4olztKzshtgvuNsDlEsTiIR2bfdbhfsDMvcURK0qT
         Vw4r6pX14Tg8+oPjluXhOytWBoqrtvgCsD4WUKmfXsPoIgYM9N5t3m5sk3o7nACxdW84
         xRPLZD6wbI63odQE2KcDP1jjJguzWQbybgpik00od8jgXS+cauI07yqDHIsjdjqk5QmG
         bk0nUJf/p33yJ22bsbtQP5LB8SNH0NiwVPCITYqqJuabU+VQl+EBGabUT4kNdYEm62e/
         cLUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690810473; x=1691415273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KshR7HWMSbuCSMCUVNiESzXZo72NeDEXMY5byYWj2ys=;
        b=X/hA/m6oyUX00qCJMCo9VtwNl5onkSYARRiFy1Hb5j0MjStfdqi6WP8AnmAo/EtO0G
         FOljlRtouLdvvRxnwWmQ8q8YGXBGDsvawVB1VLgFjq3RVN0AFcBS/hp/FzakX3Yj4sgd
         hdfFcI+V3ZlL48lKnoyWbS+Ie0cJpmxJCiKqlAiXq+gPsOtGxB0JcjVh3REQB3sMFf63
         PZKzlCoxio2FZKEzNwgY1iHivRmBTSUPsHgTrpszk4ETQqpWTLMvpHgg2V1GLNZMlhXW
         cHuAyXWzGcN8ZepHa+/o5YUYEiixyrMOtw2HPTZrgIL0wO5fXMGVC/OiTxtUV538cfC4
         Kvlw==
X-Gm-Message-State: ABy/qLYSivtMRBvP2EcCOIoT41TbBgAqFQaRR5S0+Nx6IX/y8sLkzwh3
        BJLe6tFFHJhuYkvtWD54UNg=
X-Google-Smtp-Source: APBJJlHHPVR/H4yFiruEHzKd1upg5L6c+phgXyXkYNQatM0byalubIunrsZX+bGkB8gNSyXsNH0QPQ==
X-Received: by 2002:a05:6830:6608:b0:6b9:f192:1f91 with SMTP id cp8-20020a056830660800b006b9f1921f91mr7881944otb.2.1690810473388;
        Mon, 31 Jul 2023 06:34:33 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:fb3f:fd5:45fe:5e7a])
        by smtp.gmail.com with ESMTPSA id t1-20020a9d66c1000000b006bc30d47673sm4059459otm.17.2023.07.31.06.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 06:34:32 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/3] ARM: dts: imx53-smd: Remove invalid SPI flash entry
Date:   Mon, 31 Jul 2023 10:34:21 -0300
Message-Id: <20230731133421.1499992-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230731133421.1499992-1-festevam@gmail.com>
References: <20230731133421.1499992-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

"st,m25p" is not a valid compatible according to jedec,spi-nor.yaml.

Remove it.

Also, node names should be generic, so use 'flash' as the SPI NOR flash
node name.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx53-smd.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx53-smd.dts b/arch/arm/boot/dts/nxp/imx/imx53-smd.dts
index f8d17967a67e..55435dfdff8a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx53-smd.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx53-smd.dts
@@ -67,10 +67,10 @@ zigbee: mc1323@0 {
 		reg = <0>;
 	};
 
-	flash: m25p32@1 {
+	flash: flash@1 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "st,m25p32", "st,m25p", "jedec,spi-nor";
+		compatible = "st,m25p32", "jedec,spi-nor";
 		spi-max-frequency = <20000000>;
 		reg = <1>;
 
-- 
2.34.1

