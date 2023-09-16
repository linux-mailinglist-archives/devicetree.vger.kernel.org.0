Return-Path: <devicetree+bounces-745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFB37A2EDB
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 10:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 93B591C20BFB
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 08:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3137E11CA8;
	Sat, 16 Sep 2023 08:31:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 975807E
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 08:31:13 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D601197
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 01:31:11 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2bfc1d8f2d2so34694681fa.0
        for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 01:31:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694853070; x=1695457870; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5LGYWdB0DEixM6I5ZcVz5gZM0npJ3BPYjJVK1vjDgg0=;
        b=MA3vWfGycraBzv9feHVmay/sW6ewXYDIRovBniIL/IskzM6OcjiqbgXmseT7aZ7/n2
         CLhozTOk/nWqo2ED+apAAPbeqOdi5E330upQ1m9ZL0inhM/zNyd9CrpfJGB3UA6BZF+4
         zFCRuismXDH/Xs93iBkdMsUkr1GQn4e/0gZeVyqQr73jS3sthrKKDPwt9nU1nYR+Zsj0
         YrQS8kyMxqDYpKQHslGl7jkkz92YQtzztsRv/7ttHripVpJNZ4JpxnjfH8rrsMRbLqE5
         ETjJZtLcyMoxnnPh3v9OMqCks7LVWaMXUoWIQoi5XID70TPxC1mmm1XdtcvRHPmm5yhK
         Mtcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694853070; x=1695457870;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5LGYWdB0DEixM6I5ZcVz5gZM0npJ3BPYjJVK1vjDgg0=;
        b=nUGZL2F4QRymlhkV+ckE9rApSKrNB63SMRm1JWFJEhdsXJw6RnUlPCzqAbT6tVpzqY
         aWvwLwOYjq4nfbZZz5xKPd2SeFGGEIa+RrXuvaPdu0UKv2T7cnSzo07UuASSUDfFtcGx
         YkhNbDGNr9be9hYOCMAK3qJxLBzlUej6sjsesI25g8WSGvPjWnlIqHwLfIJ4Use6ndaS
         FerR238dG80FucCxPKsm7nmL/TZe5fw0ZUEwdTqkAZfzqVhjN3o+TTJZZp70zu6XDw5o
         wxOQkYtKaHekQX0miAAnlAaVAZU8QxoNPxIphJduxmUl5cQ+cMO5xdzMdrM4fsvI09Lj
         TOoQ==
X-Gm-Message-State: AOJu0YylxG+u+bjqMvs1LHnJc2lxhXJvN1vecLGrzWSi2sErvHt+jyWW
	FseYxOWG1KPJYwZX6F3jyAg=
X-Google-Smtp-Source: AGHT+IFeh2Tb0/CZmyVB8jlMqM01qQ3nX9Qp2zY5TBQ+AGZHmfYMsTgFbGUummMX51uR/nxk3jlJ2g==
X-Received: by 2002:a05:651c:19ab:b0:2bf:f348:9f96 with SMTP id bx43-20020a05651c19ab00b002bff3489f96mr251848ljb.8.1694853069479;
        Sat, 16 Sep 2023 01:31:09 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id o10-20020a2e0c4a000000b002b962ee0c14sm1059188ljd.23.2023.09.16.01.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Sep 2023 01:31:09 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Felix Fietkau <nbd@nbd.name>
Subject: [PATCH] ARM: dts: BCM5301X: Relicense Felix's code to the GPL 2.0+ / MIT
Date: Sat, 16 Sep 2023 10:30:57 +0200
Message-Id: <20230916083057.10458-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Rafał Miłecki <rafal@milecki.pl>

Move code added by Felix to the bcm-ns.dtsi which uses dual licensing.
That syncs more Northstar code to be based on the same licensing schema.

This code was added in the commit 1ff80363524c ("ARM: BCM5301X: Add
profiling support").

Cc: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Felix: can I get your Acked-by for this, please?

I managed to cleanup most of Northstar licensing already.
---
 arch/arm/boot/dts/broadcom/bcm-ns.dtsi   | 7 +++++++
 arch/arm/boot/dts/broadcom/bcm5301x.dtsi | 7 -------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
index 88fda18af1f8..f0f3a718c413 100644
--- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
@@ -14,6 +14,13 @@ / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
+	pmu {
+		compatible = "arm,cortex-a9-pmu";
+		interrupts =
+			<GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+			<GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
 	chipcommon-a-bus@18000000 {
 		compatible = "simple-bus";
 		ranges = <0x00000000 0x18000000 0x00001000>;
diff --git a/arch/arm/boot/dts/broadcom/bcm5301x.dtsi b/arch/arm/boot/dts/broadcom/bcm5301x.dtsi
index 600a1b54f2ae..de46dbd5b876 100644
--- a/arch/arm/boot/dts/broadcom/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm5301x.dtsi
@@ -26,13 +26,6 @@ watchdog@20620 {
 		};
 	};
 
-	pmu {
-		compatible = "arm,cortex-a9-pmu";
-		interrupts =
-			<GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
-			<GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
-	};
-
 	clocks {
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.35.3


