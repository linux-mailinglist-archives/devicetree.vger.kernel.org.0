Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81A4278FD6F
	for <lists+devicetree@lfdr.de>; Fri,  1 Sep 2023 14:43:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230509AbjIAMnW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Sep 2023 08:43:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232970AbjIAMnW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Sep 2023 08:43:22 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A780CE7F
        for <devicetree@vger.kernel.org>; Fri,  1 Sep 2023 05:43:17 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5008d16cc36so3436206e87.2
        for <devicetree@vger.kernel.org>; Fri, 01 Sep 2023 05:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693572196; x=1694176996; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+a+iz9wBM/RnkGSUCsFhA72uNvdIJyLIqk+nxrMTVAc=;
        b=SdHozke5YfHPd7ZBSb8pSMnJaNZ1U8mpYr/xF1sP6+MamJysJpzeEJFtUok6C2TFAx
         Muvx1lRTmgLRwKPWPUPCsUTZeYmMXGVg2TbEs91BIayxseD149mbshg1TyHnQok2gK9e
         v/7y/AjnjBzfL00kTk6KX+WJ9naipRuRmqzFtFSGwR3hH4Gau4GebPFBI3sKvKPlrP3U
         Uh8Zre6jWQfgiqHTETXCStb9VeCmUTLf2UNpWenEDUqFO2np8CWJ5ABmdk2qdpkLEUVF
         YRc7rBystEjqGTnT65VCtCtz8U7ZDFQpsmi1f0aAx4Qera8XL4ikbzrZ6HrAs0JGohE/
         nfAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693572196; x=1694176996;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+a+iz9wBM/RnkGSUCsFhA72uNvdIJyLIqk+nxrMTVAc=;
        b=hwllNcAl8QOuRFmElmbQCqVwpY52QfWQDKe9RPpeF3kMtIG90l0xyu2CqapKOGu+CN
         UjEgens2eU9Jpqxi7h8WehzPoocncyIH4RbzjSkkMSvAMrGd+pgZ8RjC1A1bjqaKfQ87
         u841xmH4fX3QvllhgNcSiiHfZ6wkgMyhFhVry8NdsGOmUX+C2I49mOLAgxH0P8J4ASZi
         X0rk/YxQhNgDYS4Hxsvti+Ch1+FBk1lG7hV1muL4v3SvYvL0u0skRTY4ghEhUjnblImc
         I+w1x3A9LHFIJsRh9drhkh0G//zyN4Qc4N//CSIc0WsgosZAHRWs2alK6PPCscF9KhZs
         hQlg==
X-Gm-Message-State: AOJu0YzrfNTdAkQZNXF/MKcGxqU954sLwwpeKH7VAtVKeCqfcjqyA5zs
        xT6ZjWi7gZ/jFPG44eJYv7s=
X-Google-Smtp-Source: AGHT+IGGiaOuqRWPq7jbGOlYBFKYVS97u9RbEcWV2zVY8mHCwEl+SgnwYibEvBfmfgZQOaq5OVOY/Q==
X-Received: by 2002:a05:6512:1053:b0:500:a41d:354c with SMTP id c19-20020a056512105300b00500a41d354cmr2070291lfb.28.1693572195590;
        Fri, 01 Sep 2023 05:43:15 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id l22-20020a19c216000000b004fdbb36a677sm640599lfc.288.2023.09.01.05.43.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Sep 2023 05:43:15 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM5301X: Set MAC addresss for Asus RT-AC87U
Date:   Fri,  1 Sep 2023 14:43:11 +0200
Message-Id: <20230901124311.31156-1-zajec5@gmail.com>
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

Specify NVRAM access and use its "et1macaddr" NVMEM cell.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/broadcom/bcm4709-asus-rt-ac87u.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-asus-rt-ac87u.dts b/arch/arm/boot/dts/broadcom/bcm4709-asus-rt-ac87u.dts
index 4f44cb4df704..59400217f8c3 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-asus-rt-ac87u.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-asus-rt-ac87u.dts
@@ -25,6 +25,12 @@ memory@0 {
 		      <0x88000000 0x08000000>;
 	};
 
+	nvram@1c080000 {
+		et1macaddr: et1macaddr {
+			#nvmem-cell-cells = <1>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -62,6 +68,11 @@ button-restart {
 	};
 };
 
+&gmac0 {
+	nvmem-cells = <&et1macaddr 0>;
+	nvmem-cell-names = "mac-address";
+};
+
 &usb3_phy {
 	status = "okay";
 };
-- 
2.35.3

