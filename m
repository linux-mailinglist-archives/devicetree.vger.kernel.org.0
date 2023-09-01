Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A970978FBF6
	for <lists+devicetree@lfdr.de>; Fri,  1 Sep 2023 12:56:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232274AbjIAK4C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Sep 2023 06:56:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232796AbjIAK4C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Sep 2023 06:56:02 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9323510CF
        for <devicetree@vger.kernel.org>; Fri,  1 Sep 2023 03:55:59 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-500bdef7167so3642599e87.0
        for <devicetree@vger.kernel.org>; Fri, 01 Sep 2023 03:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693565758; x=1694170558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U8a+xA7GL0/faKKo3smbV13PcsHnv4aKVFRIta6OWlg=;
        b=ZgkQm5nrhwTBSH9VuWF8BhaKg2EdrtgmFUiK3GGuXgkigrYQb/kXco/nPh0yX3KSqg
         pO+NdstZMOHVnudfMYQfP6Gkts/10eowV0+93UP+qvpURvH2/M/LsJhV+tpmDZ6637zw
         ESi0iRQXsuX/cHhit/vYS2CfMK+nvuf3YKPmA7Giw4IeK7Ts7h5cwC35YapU7ZdqHGsZ
         RO7JMrOi+7KbvGxdHV5UO/GCgcs8IKLZXkfZF1982Ua6JyX2/Qb2EjlU1Y2niP/05pGR
         bMy8HIrlaeMCw2ruPvwL2KwBt7swbSJsiNUivaMNCsrbsKAHjQux80I6l1XvEQqXEZZ6
         lB3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693565758; x=1694170558;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U8a+xA7GL0/faKKo3smbV13PcsHnv4aKVFRIta6OWlg=;
        b=OZXmFI3wobeNzAK4FvZCc8TvHVM78BXTG6jhRgTWj7n9vBAFcGoY9+1qcnO3A3IwTl
         ClyQ4NpI0rzeT03b0pInmRWrXf5OrMy3j3aISEYdDsvW78voTbdfpRMASpCh6xGllMGn
         NCZ3NlZnDqBrWiwDYt+kkYnK316erIJ1J/g7GezfIuaoQIDYm7HM7PAMDemLIdBKXhy2
         0PstaQ+GVlBDtNg8g48FQ/YR4x+/TUQsfOpNTzuYUs0WWOhHhj5Zbm1wHO0pxZPRB9zZ
         fbVHbjcK2hVBThjXb8gbsZt6JmGrqpT4nK5mJ5E0bt8I9MkXnkSTN/ipuX9209B69kkn
         g9BQ==
X-Gm-Message-State: AOJu0YxhUKTeeg3EyRhwkhOjPUJBdmc4mm5+T7vQj6QU6C+/elfTuPnN
        aXnLzl08WTNFDEVc97iD2klA1lgzmtA=
X-Google-Smtp-Source: AGHT+IEDpxiit9wGzGHbu83b4Rg0Rj+hBTxcZG/AllA5FNxDk24WDeeSSjGh3EGbCkYuEZw0RPihxg==
X-Received: by 2002:a05:6512:b97:b0:4ff:78b6:2ea0 with SMTP id b23-20020a0565120b9700b004ff78b62ea0mr832587lfv.34.1693565757442;
        Fri, 01 Sep 2023 03:55:57 -0700 (PDT)
Received: from localhost.lan ([31.11.218.106])
        by smtp.gmail.com with ESMTPSA id l9-20020ac24309000000b004fe202a5c7csm615448lfh.135.2023.09.01.03.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Sep 2023 03:55:56 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Set MACs for D-Link DIR-885L
Date:   Fri,  1 Sep 2023 12:55:49 +0200
Message-Id: <20230901105549.7076-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Rafał Miłecki <rafal@milecki.pl>

Specify NVRAM access and use its "et2macaddr" NVMEM cell.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../dts/broadcom/bcm47094-dlink-dir-885l.dts     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-885l.dts b/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-885l.dts
index c914569ddd5e..abe0cb245c7e 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-885l.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-dlink-dir-885l.dts
@@ -25,6 +25,15 @@ memory@0 {
 		      <0x88000000 0x08000000>;
 	};
 
+	nvram@1e3f0000 {
+		compatible = "brcm,nvram";
+		reg = <0x1e3f0000 0x10000>;
+
+		et2macaddr: et2macaddr {
+			#nvmem-cell-cells = <1>;
+		};
+	};
+
 	nand_controller: nand-controller@18028000 {
 		nand@0 {
 			partitions {
@@ -112,6 +121,11 @@ &usb3 {
 	vcc-gpio = <&chipcommon 18 GPIO_ACTIVE_HIGH>;
 };
 
+&gmac0 {
+	nvmem-cells = <&et2macaddr 0>;
+	nvmem-cell-names = "mac-address";
+};
+
 &spi_nor {
 	status = "okay";
 };
@@ -142,6 +156,8 @@ port@3 {
 
 		port@4 {
 			label = "wan";
+			nvmem-cells = <&et2macaddr 3>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@8 {
-- 
2.35.3

