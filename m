Return-Path: <devicetree+bounces-1151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C32B17A5109
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 19:33:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3F581C209AE
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:33:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAA39266C6;
	Mon, 18 Sep 2023 17:33:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BB24262A2
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 17:33:05 +0000 (UTC)
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D4E4FD
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:33:04 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6c0b40a13ebso2620400a34.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695058383; x=1695663183; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fOcE1gEVv8k+1mKB0BOnHrQMjIkGHZfrQmU9eoEzouw=;
        b=IXmNaA5gTl929v+KdTmEq3LgPIj60FWbmZEXfDbnTO8Cn5GKaIQX5WeufS3JTnvcc2
         6U3J2XlJ4TtJVEcLSp2i89+xWRyYLvno1Lwm3mf/ZC7av93zMyjnPbzwB3h42Xts2yTX
         c9Pe3ysK8tU23oARZ+EuHNz08kr1xd6IIKNvsKQn92MCrMtgMJR2IqkgScXsC6BSeqEJ
         cvRcRlc07v/IR1kY5GrIFNcjZGsyI5u/FCoGQRdLhiztf8efnrtUHhDA60BpEZOqDnWp
         Wd1HEHOs+w4HSq4yD3w9sIoxcIXcAtYESI7J2e7X9g6qY9UUE8QwJPH8mRKcIevqjX8Y
         9EJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695058383; x=1695663183;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fOcE1gEVv8k+1mKB0BOnHrQMjIkGHZfrQmU9eoEzouw=;
        b=VyQbXhgdBEyluqjEUXM8MLHU0zkjLyP90GH64dWraeaFs7oIWtzSmO0F66PsnyJDtl
         u8ILVL/kFEOBgN5YTkHxj1UbJTny67uoqw4jw+/Pixx5R+apUS6iAuQlDV7iFyzs7Zop
         Rqf+hghjJEYN2LI0OptaIbjB/9hUsEL9wYkZZiZZzd9+O/+QPKv4x/J75774mKH7jnFk
         H3Cchv/kKy0B4tcfKMrLj6FRuApHnlZo7kvWQALb0VKOOHQrRbOzKV54lO8qQ/zgqEQO
         KTdByzyD9rY4N3y1k+nXIP06y9HsRCG/2IYMxS4awzQr9SmeVXJrz1y1I7FiNjE3pbaT
         7Nnw==
X-Gm-Message-State: AOJu0Ywkgd2/62K6CZldzG9EuTAwfesIXClXliF5xs7jyuLxxGH7/msa
	YC/7agndCkpPqNp2jSBoGVjZGtxGJr0=
X-Google-Smtp-Source: AGHT+IHwJnfJ+vNpzCxFe1Y+gVZMxsNsok+2pobr3vm625PSwkZzk7Gd+IgfVNKsp37mzVgFeJHbdA==
X-Received: by 2002:a05:6830:3493:b0:6bd:8067:21ec with SMTP id c19-20020a056830349300b006bd806721ecmr256313otu.15.1695058383320;
        Mon, 18 Sep 2023 10:33:03 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z5-20020a056830128500b006bf0f95f702sm4315755otp.64.2023.09.18.10.33.02
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
Subject: [PATCH V2 1/3] arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
Date: Mon, 18 Sep 2023 12:32:53 -0500
Message-Id: <20230918173255.1325-2-macroalpha82@gmail.com>
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

Add the necessary nodes to the Indiedroid Nova to activate the PCI
express port that is used by the RTL8111 ethernet controller.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d1503a4b233a..646f49cc9e53 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -109,6 +109,10 @@ vcc5v0_usbdcin: vcc5v0-usbdcin-regulator {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -348,6 +352,12 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&pcie2x1l2 {
+	pinctrl-0 = <&rtl8111_perstb>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &pinctrl {
 	bluetooth-pins {
 		bt_reset: bt-reset {
@@ -366,6 +376,12 @@ bt_wake_host: bt-wake-host {
 		};
 	};
 
+	ethernet-pins {
+		rtl8111_perstb: rtl8111-perstb {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	hym8563 {
 
 		hym8563_int: hym8563-int {
-- 
2.34.1


