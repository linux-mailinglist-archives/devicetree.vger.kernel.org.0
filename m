Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2C8964FF28
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 04:13:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726849AbfFXCNP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jun 2019 22:13:15 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:33955 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726477AbfFXCNP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jun 2019 22:13:15 -0400
Received: by mail-pf1-f194.google.com with SMTP id c85so6597495pfc.1
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2019 19:13:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ChVt30miqrq6hdHJLmOve2UejHOyLwveK0jMb9sby7o=;
        b=mGQ/EsEUutqXCRqMKY81s7qFd4/jCibh+c3/Proh6eiarhaz8H3N+hb1LwJ9o8oFnT
         /LuVigI06mZ49hcPZCANFjSzDILincsmsTH1elPINZGqlgYBm144lQVRPkCthRJAImva
         IsF0AmPLElELplxnBpB+oVZ9zBYNoUfk3Er/wck07jVacJHF3enlvxm4mpqzAiay2n7Q
         yqeqIabgsSON/mHxZyUAUpdKTIfkXianzfVfH/qFaW4UiYlRtU4FEV0ol6iKM0tvwxUI
         REoPy39lLuHklp6GtceVs3VO/y53RM35Priw3PGP5NGQa6KttHPGrk3fNwjLpTglik+r
         6eQw==
X-Gm-Message-State: APjAAAUMuof52r3TpE/5bNXKv4h67N6RLuOasUS5NBl8Tc+XndiSjs5m
        oJYA5Cpyos9f3+budFuZpzNVY3zLUrg=
X-Google-Smtp-Source: APXvYqxILNXnpuDyMqegwhRQ5nvmpoP75HUJHX/HXU5n41mvufnRskJlkIA3p/wOHe+JUPb79BVFVw==
X-Received: by 2002:a1f:a887:: with SMTP id r129mr957357vke.75.1561338732343;
        Sun, 23 Jun 2019 18:12:12 -0700 (PDT)
Received: from localhost (li1322-146.members.linode.com. [45.79.223.146])
        by smtp.gmail.com with ESMTPSA id v4sm3724663vsc.7.2019.06.23.18.12.11
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 23 Jun 2019 18:12:11 -0700 (PDT)
From:   Shawn Guo <shawnguo@kernel.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 1/2] arm64: dts: imx8qxp: sort alias alphabetically
Date:   Mon, 24 Jun 2019 09:12:02 +0800
Message-Id: <20190624011203.10711-1-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We prefer to sort alias entries alphabetically, so let's move serial0
to the right place.

Signed-off-by: Shawn Guo <shawnguo@kernel.org>
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index dcdbd86897ed..33bf0a53db9e 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -28,8 +28,8 @@
 		mmc0 = &usdhc1;
 		mmc1 = &usdhc2;
 		mmc2 = &usdhc3;
-		serial0 = &adma_lpuart0;
 		mu1 = &lsio_mu1;
+		serial0 = &adma_lpuart0;
 	};
 
 	cpus {
-- 
2.18.0

