Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBD9D700FE7
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 22:46:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239262AbjELUqm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 16:46:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230020AbjELUqm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 16:46:42 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 806A826AE
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 13:46:37 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bc0117683so18382050a12.1
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 13:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1683924396; x=1686516396;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lcjWTk1T4XoiqrZaDVI+PdfbY7gi2RnunHmm8wXBMYE=;
        b=R2RM/CzzL7zpIvh84IqwWk6gh+2UdUBDWuUHluxzShQdD0gKcpUbGY/SlPTA2NrT8E
         adXDxPmmBR0mGRr/aOPkL1jYWU4N8tuzfuAup0EW+ZG0W3rnEXRFap+Q9vaEI3fXmfv4
         xpcyCcolCQ4hl+po2rNv5++3w8NpOYPwMxLms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683924396; x=1686516396;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lcjWTk1T4XoiqrZaDVI+PdfbY7gi2RnunHmm8wXBMYE=;
        b=Cw2QGzsjo+EVDVwIMFgfwiame4054RjeDVU6kvHfVYCtS70HznZ4fUCvNGaqix9SW7
         eN+ne/3oeZ6dKBT+LBXpZUnkAhY1HY+qxLu2C9x6c//gJHfMSGmlWjYB2sXMKyzisglP
         KlN5GWE4Pk8YP38uAndsE/R8QL8XxJLqg2i13kTXHp7mtLzfvH8bRkdnpN84dsYuR0uS
         WV73BeAkbP37cg97duSPdpV2HsPK2TgejDRMNLXqG32JfVcZ72C4Yaa1JjWOpXfZlh+S
         OGOaNyBB+xCkrCEl3gwI8L725Q1UV+b+d0sFCIVG2M1LA8vPJu7i+ZunhX/68CM6gMvb
         KyLQ==
X-Gm-Message-State: AC+VfDzoW+60Mh2gOD6VTiTCEAm02bWuAw7vR1SU1kB6e39Vdn0UCCW9
        F6rLlDaLRBOZOS+JIRskESk8Bw==
X-Google-Smtp-Source: ACHHUZ53LyeCky78G4YfBhbDS8Cbq7ZmD6DWel+64d5vtgpOP03ktRG1vGzNAxDl7Z0wOHloJfpI6w==
X-Received: by 2002:a17:906:794e:b0:968:2bb1:f392 with SMTP id l14-20020a170906794e00b009682bb1f392mr17554038ejo.27.1683924395945;
        Fri, 12 May 2023 13:46:35 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-40-97-5.business.telecomitalia.it. [79.40.97.5])
        by smtp.gmail.com with ESMTPSA id p3-20020a170906140300b0095850aef138sm5758786ejc.6.2023.05.12.13.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 13:46:35 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: imx8mq-mnt-reform2: drop simple-panel compatible
Date:   Fri, 12 May 2023 22:46:27 +0200
Message-Id: <20230512204627.3304342-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "simple-panel" compatible is not documented and nothing in Linux
kernel binds to it.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
index 200268660518..3ae3824be027 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts
@@ -26,7 +26,7 @@ backlight: backlight {
 	};
 
 	panel {
-		compatible = "innolux,n125hce-gn1", "simple-panel";
+		compatible = "innolux,n125hce-gn1";
 		power-supply = <&reg_main_3v3>;
 		backlight = <&backlight>;
 		no-hpd;
-- 
2.32.0

