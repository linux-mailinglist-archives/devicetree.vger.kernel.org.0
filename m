Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE69A798AC5
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 18:42:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231775AbjIHQmK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 12:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240246AbjIHQmK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 12:42:10 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E171FCD
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 09:42:06 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3a5a7e7cd61so1168307b6e.0
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 09:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694191325; x=1694796125; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=23RWTA42oeiWyX/+9q0UPnX5CmGzLdzzX40DGM4ZYYo=;
        b=qNxzfRsKpvftRnKgaYgcLtm+NeQgMHQb4lrguGK+y/oAffYLKfYCWD9P+zaJZx1q9f
         Q+51jmL0T6KImlm0g9ibmnxQTxGn+F2maDzXwQSLIUFLOjWKONsU6tt7GsLDR/ppBbzD
         pRIMOPUjh90zchql/7msLR5KBTgk/fCdGzFqSa3mBFxV+sQkkTz+01A4CkcfN3JTlaK/
         FAgEVhDMmZis066g4wspQ2PkSTXcXW/RQDipIEAbOaolmGCIt3Oj3lXxYn31d2YaWfwX
         /kBbuklUgcU7/eZZtNfwy5XwggX6SsF2Nq3ukcQgsIcJEdKandQvPpwm/jg/CgkgYtG+
         GG+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694191325; x=1694796125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=23RWTA42oeiWyX/+9q0UPnX5CmGzLdzzX40DGM4ZYYo=;
        b=FK2b2BVm9Bkzeg02hlD0vfnHDElMMBGJGKtkZFBXofHgfkyNHtE072eznAe9x6isos
         P8BJfVI5TxU1jha06dz99i0tDCn/S92H0a8+zToKqnioTehe0geTd9ZPH5Kb2ETKvBdu
         cG45PnzeuBpaMhxZuRU8nTPFuxJLrrV+rcyzXlDgJOIitsKMTb7QODbxqlbD4VIVrThJ
         FO6WApSIB/1f3h9gtbsdjHkD6I6Apyof5EQ9n7KvCJ0fKTWQuwUcJZFb7URJeaGFpBJS
         DRdSuH+ERdtw5ZrFKeaBzO0Pwv4XQxjTMl3C1wcJCktO1RNLBo9uQRSt217+XUCpHvsm
         gjyw==
X-Gm-Message-State: AOJu0Yy7MMfEcW0hWgJDYLjJAJP8zAGYhaY6hBeDRXK+/HMi39h1NIp1
        /mrNdyUKx+XKTMLsY8F7gYYhr0v47ZmtWw==
X-Google-Smtp-Source: AGHT+IF6Lpd+NS4yfIzJuWjERArKjnYsYK+0QZitLPztEyoOHyum17h8Irht+MCMyWQc4JRyZ3htig==
X-Received: by 2002:a05:6808:152b:b0:3ab:7142:a5f2 with SMTP id u43-20020a056808152b00b003ab7142a5f2mr949103oiw.25.1694191325406;
        Fri, 08 Sep 2023 09:42:05 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d14-20020a05683018ee00b006b8c277be12sm839485otf.8.2023.09.08.09.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 09:42:05 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, jagan@edgeble.ai,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: add USB2 to rk3588s-indiedroid
Date:   Fri,  8 Sep 2023 11:41:55 -0500
Message-Id: <20230908164156.2846-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230908164156.2846-1-macroalpha82@gmail.com>
References: <20230908164156.2846-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Enable USB2 (EHCI and OCHI mode) support for the Indiedroid Nova. This
adds support for USB for the 4 full size USB-A ports. Note that USB 3
(the two blue full-size USB-A ports) is still outstanding, as is
support for USB on the USB-C ports. The controller is not yet supported
for these ports.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 646f49cc9e53..1e2336d3065b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -751,6 +751,24 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	phy-supply = <&vcc5v0_usb>;
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_usb>;
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
@@ -775,3 +793,19 @@ bluetooth {
 		pinctrl-names = "default";
 	};
 };
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
-- 
2.34.1

