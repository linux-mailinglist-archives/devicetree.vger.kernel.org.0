Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DC2F6A5B00
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 15:45:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229672AbjB1Op3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 09:45:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjB1Op1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 09:45:27 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7D3ACA29
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:45:26 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id m7so13511543lfj.8
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j/YjeKurA278JscginyGCXaDA9SlVP0u9hae3pg88+I=;
        b=ZXKwlBSkkVo4Rq6MxvWXA5ksqK38eOsof1t7417TJu/O8a8fuuEMOxahqzXA/G4zMJ
         0q9MxgMQJu4lsSXxwkPO5LGpk2U2LMCHvGd2F7fHZw7a+vYjZH5hGnWOWh5+SUyEcMqt
         jP9qDiRbK3NdA6ARH6YYiESqLikMbGjabgHlc8BdhOfEGYIQH+ytN/3lzmuukbPt8+IC
         UzMsnSaurRTegYL2t0wB8D58ORargatUvPBEeyRFPTHRb1YiJsYNw346+P5lpCW/uuiA
         jPURzJuP3TqdBKQXtSWUdhZTKuInDoYzloF5XjEXs1LrczrlnqBeJhCvp8KDez0c+RzW
         PwGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j/YjeKurA278JscginyGCXaDA9SlVP0u9hae3pg88+I=;
        b=xBsTfcejD9flLbvyxkkGq0/ypOGxEg998ViBdkur/+IPwufSTNKPqWurVoPSj8ziAJ
         99fWobi9BK83XUxTBvw9+2tWrckRQoB1nX58pa/jIr+dLnR4qBdAGqaC7m4Qi61ph/aX
         7Lskr2q5B1edQxiiAQFmg68H5Q1QdBTDJcneyUpv5vxaHtcw7gmUwFflUIGBaHC0pXjI
         LGdFazXmPRJ+N8Y+7bBOYiTpy4SmWhDylE+vrs3u3JX9lG2H6zENAJk7n9o/i4pNsuP5
         egz++C/SEj2ub1Bn42LcGKeyGRYJu23bNOF5zgQ7usWKXWHkmRMuhvhn7JAMbq7JU7qF
         8Kvg==
X-Gm-Message-State: AO0yUKUjQSkL5jk7grfPupTq6Yet/UAHZCJUfqwd9tSnQHIohnQsgrOK
        n5dzSFlUvmp1ZdC4RAZNR08=
X-Google-Smtp-Source: AK7set/AVuNxrHFJ7mLwwmc2vChFwRn7yCmoZZxsBv73Tctrjj84PxJabGHy2eXYB87L+wdPu2wByQ==
X-Received: by 2002:ac2:53a7:0:b0:4dd:9139:6371 with SMTP id j7-20020ac253a7000000b004dd91396371mr752214lfh.5.1677595525213;
        Tue, 28 Feb 2023 06:45:25 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id z23-20020ac24197000000b004ddef915fe4sm1360514lfh.274.2023.02.28.06.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 06:45:24 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/3] arm64: dts: broadcom: bcmbca: bcm4908: add Netgear R8000P USB LED triggers
Date:   Tue, 28 Feb 2023 15:45:19 +0100
Message-Id: <20230228144520.21816-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230228144520.21816-1-zajec5@gmail.com>
References: <20230228144520.21816-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This device has 2 USB LEDs meant to be triggered by devices in relevant
USB ports.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../arm64/boot/dts/broadcom/bcmbca/bcm4906-netgear-r8000p.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-netgear-r8000p.dts b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-netgear-r8000p.dts
index d8b60575eb4f..78204d71ecd2 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-netgear-r8000p.dts
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-netgear-r8000p.dts
@@ -58,12 +58,16 @@ led-usb2 {
 			function = "usb2";
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&gpio0 17 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&ohci_port1>, <&ehci_port1>;
+			linux,default-trigger = "usbport";
 		};
 
 		led-usb3 {
 			function = "usb3";
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&gpio0 18 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&ohci_port2>, <&ehci_port2>, <&xhci_port2>;
+			linux,default-trigger = "usbport";
 		};
 
 		led-wifi {
-- 
2.34.1

