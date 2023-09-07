Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BD8379734E
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:23:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229660AbjIGPWb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:22:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjIGPVR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:21:17 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 174C8133
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:21:07 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-57328758a72so212306eaf.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694100030; x=1694704830; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OJEcegzR5UHDxKor0L6+gMkZ30v7+EE81c3Z0Y7eVe4=;
        b=BhqVyMsiLq6L0e8eZLn0XkT8iBQCnYfqGpW9ru/mdNuzmzEFgC7QtYQFRluysw4y2w
         DT+A+UBPC3+D/XriOgbM57IwfV0fXPXFKJnH+ii4KipYJYTiuvT3A6F6CrzTupo/dlET
         WsAKShtYXnE+aXj4FFVJiQOFrerTCqMM0lTdWWKlMSqFlffeltSgynbP79V6wREaoXVB
         qbkByh0TjNsxAe3/OEQdDDhf5mPNWYmHr5/J8ClC6VeosKyw63a3SqjxEIA2ZFJZMpLR
         BKixXDxW5ttrsjlrRWphcsYm1HTikdsbEBemR8KKJCG5kZb2TeN/uj8Jltqo4bK5tYKB
         G2WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694100030; x=1694704830;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OJEcegzR5UHDxKor0L6+gMkZ30v7+EE81c3Z0Y7eVe4=;
        b=bsFv1YYTtc8o79Ic92TVmuzJCLqlvsMJw38TwGUACINt7aTSToTNujoY8TKv1Dk1C0
         XBHoC53wGbmjABJpSBJwUmVdklt52Rm+Xj5/3sLPN87YEAcJ9/xJbtVAReMPmNIOBNC/
         hd6/b5klWlfYfiirmox4K2zElHeLYGG/+cxooMMgkSmDNnPB2mc1TSY5pdb5TtkzHjzD
         yMphEdmltd9ri/rXQjfOeuNlTlKUuQyV5e6gBtZSGsiPK0FEpNmqah7cEIIVpQV9lTUU
         8PtoN+bJx3eiK4VDcBSCZpQ0XHNrCb7n8+XOlmJBUF1hgAyTq1bBytlv0gtgh7zpbTsg
         aoVw==
X-Gm-Message-State: AOJu0YzTa0rp/mjp7e0NJxGKVV3DzYrZyxLlC6rgV2JO/wl/nEAwt4li
        aB8CVeBoBPLy/BHuJhvkSX1J/heu/do=
X-Google-Smtp-Source: AGHT+IGfErmcKUMKBhbOy0eLuFzF6g82THe0BfOkYdmOdPY1Wl0wdn1OTtaV3acFhVlZ7MrIg3ELYA==
X-Received: by 2002:a4a:de43:0:b0:573:2a32:6567 with SMTP id z3-20020a4ade43000000b005732a326567mr16691073oot.0.1694100030330;
        Thu, 07 Sep 2023 08:20:30 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9526:31f7:eabd:d5f9])
        by smtp.gmail.com with ESMTPSA id z199-20020a4a49d0000000b00565ebacf9cfsm7965047ooa.33.2023.09.07.08.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 08:20:29 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        conor+dt@kernel.org, alexander.stein@ew.tq-group.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 5/7] arm64: dts: imx8-ss-img: Move img_ipg_clk outside of soc
Date:   Thu,  7 Sep 2023 12:20:06 -0300
Message-Id: <20230907152008.491775-5-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230907152008.491775-1-festevam@gmail.com>
References: <20230907152008.491775-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The img_ipg_clk node does not have any register associated with it,
so it should be moved outside of soc to fix schema warning from
simple-bus.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi
index a90654155a88..a185f42486c6 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-img.dtsi
@@ -3,19 +3,19 @@
  * Copyright 2019-2021 NXP
  * Zhou Guoniu <guoniu.zhou@nxp.com>
  */
+img_ipg_clk: clock-img-ipg {
+	compatible = "fixed-clock";
+	#clock-cells = <0>;
+	clock-frequency = <200000000>;
+	clock-output-names = "img_ipg_clk";
+};
+
 img_subsys: bus@58000000 {
 	compatible = "simple-bus";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x58000000 0x0 0x58000000 0x1000000>;
 
-	img_ipg_clk: clock-img-ipg {
-		compatible = "fixed-clock";
-		#clock-cells = <0>;
-		clock-frequency = <200000000>;
-		clock-output-names = "img_ipg_clk";
-	};
-
 	jpegdec: jpegdec@58400000 {
 		reg = <0x58400000 0x00050000>;
 		interrupts = <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.34.1

