Return-Path: <devicetree+bounces-1152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3987A510A
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 19:33:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 462B91C20D48
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEF71266CD;
	Mon, 18 Sep 2023 17:33:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF62262AF
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 17:33:05 +0000 (UTC)
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9ED0102
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:33:04 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6beff322a97so3018415a34.3
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695058384; x=1695663184; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=23RWTA42oeiWyX/+9q0UPnX5CmGzLdzzX40DGM4ZYYo=;
        b=M95HgQTNv01tGUub8UvqvHK6HbVB+Ywx0l76k6muir+o2JhDY9HD2MRVZK2bdZraja
         Ipax7bQLAuhmnrSiFsUKTD5cdm7qBD+I9usTwddq/c2oDCNzAEb62JFDg38QgIt7HAGL
         hVHIwzpa4ZLMJrcVf9lXGqB+naAcanDnHUuTqHIumg52B8djazs1MNRKKISFHk0yTQFz
         Z+SHGFyg6V7lMxk0dEjKhNqr5pg6repnh3rJF310ZcAqL/yf+lZrRxw+yIPbsPeTxRZY
         3ZjfXZEcUnStoB60Z1YX37RnGjJ1+EnWmlgnHkzmzmrScDaTY7/Hdm+66lOKsJibSWxE
         FRGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695058384; x=1695663184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=23RWTA42oeiWyX/+9q0UPnX5CmGzLdzzX40DGM4ZYYo=;
        b=rfbCDmFAw7UAZc1OaKPtTf6PsMryQCoDokC0yEBuKH7YfuDd9XoJYblqyFWGiYPeJ/
         7biJXP0iRgEq6xxfdYKjzUm4VyPoYBYbtzPOLdh9y9xO4Cr6dnJcS5bahipeM6bYB/M9
         m52TSrpIWa6G61j1Sr/6ubjTICP+1MUUrxqg4o5uubSgZIIlXV+xGl6+BJwp6m1FPR0+
         s3O1jPXsdOZ7F7GKkgn9yArkr2e0VAZ4wU+e0W72tGPU2NvkjeokMATjlNF45JjmP8AX
         soDh7VnKyrH0y50e5q1tC2h0gJm/rcDGo85gtpOgeYxj97rIbQnSf/ANkzK3rD5idzU2
         AH0A==
X-Gm-Message-State: AOJu0Yx+FATrtwMcHmjzMnDPDnPJ5HhRI6Ttxy9QEtfhhxdU3D7Ni4ou
	y0Ebls5+QaBWYzLsrBrG8iSqqW/O5qc=
X-Google-Smtp-Source: AGHT+IFhyJPfr37KhtqJ3wZPBJSB4Q0J4LL+BiQBQ2krz+QLEZPpXFJVQeJuBoTMWVVYL6p0kMeSxA==
X-Received: by 2002:a9d:7dcb:0:b0:6bf:ef0:c69 with SMTP id k11-20020a9d7dcb000000b006bf0ef00c69mr9537847otn.34.1695058383965;
        Mon, 18 Sep 2023 10:33:03 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z5-20020a056830128500b006bf0f95f702sm4315755otp.64.2023.09.18.10.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Sep 2023 10:33:03 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/3] arm64: dts: rockchip: add USB2 to rk3588s-indiedroid
Date: Mon, 18 Sep 2023 12:32:54 -0500
Message-Id: <20230918173255.1325-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918173255.1325-1-macroalpha82@gmail.com>
References: <20230918173255.1325-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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


