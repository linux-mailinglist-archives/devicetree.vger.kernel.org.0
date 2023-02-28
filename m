Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F8186A5B01
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 15:45:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229705AbjB1Opc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 09:45:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjB1Opa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 09:45:30 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A09B424107
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:45:29 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id s22so13513146lfi.9
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1qX3hwcRokdU3hinWHR32cKszj+OQJlUP6xOgQsDKuU=;
        b=G0PIV4YbsGCm2FmJtHapjEd8xztJVYNtQraB+KxSCyiHVSKEeGVIS2+jFuV9cmZVOU
         mWxYs/30HPC80vmUPwGtvBOD/tWNzYLfI8Y6NUfiienmQm5qb7iRG2SxqDJyrwaCJsyD
         7AIns8d87QMAO7z20Re3cM22SROtfw/uXL/YXuGkGDNIzYP/EbJMF2fl5LQIMmofHXVW
         MVR0khXnuZMi1BkqIh0euwBWdfk4eIaoPdIqTkwF2rmZm7C51/1yltFQTkrJoIr5qTLN
         y+iZNdWjelQB3VuFtEjbKsIMFUaUbM83Thjk5ETJehT1E3j5ejmNf7DiYXrmYp1XlyY+
         pFHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1qX3hwcRokdU3hinWHR32cKszj+OQJlUP6xOgQsDKuU=;
        b=H7+fRjRwiWMgqBr8MluMPZzPKvrYF651qlQxNpo8nkmQcOCEOZGoIGhdpJYx+VPN42
         7q3X+YGwiGw6K2/5rp2BK7bAdS0IjA+R3Uglf4SgoWpddT/hE3UuReZAXSXbKH/HjwNn
         vzkqlwyLdujXWZibQxzcw29psmmifbx0/yuAV507s2kBXdz4JIOIuP4RuVL6lV1MfvQy
         /LU9/mkVaEsVBl7TQdgu7azb15RyrUccHHQh65ID7GG++sWyts7gqyJ/JBT4SRLC2+iy
         YsSoP1AnX8+YasrxnLaMUO+vCqYMG5h1ERorw+ihcCS2I6Jzz2fJahFwd3Y/9KUE3cSb
         yQuA==
X-Gm-Message-State: AO0yUKUZcnuBw7hnKENtt/0jb0kBqrdvkv0DFr0i2fFIDTDLnW8nJUCW
        Eq+8AV328NxfnvTZC3ObQJ8=
X-Google-Smtp-Source: AK7set8fzBGACnGwldAdO66hDd5EWX06yExwxCYFvTBCLPG86ardOvWhoF+IMM7YSyYqCpriujSylg==
X-Received: by 2002:a19:7417:0:b0:4d8:5e8e:b138 with SMTP id v23-20020a197417000000b004d85e8eb138mr712480lfe.14.1677595527918;
        Tue, 28 Feb 2023 06:45:27 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id z23-20020ac24197000000b004ddef915fe4sm1360514lfh.274.2023.02.28.06.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 06:45:27 -0800 (PST)
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
Subject: [PATCH 3/3] arm64: dts: broadcom: bcmbca: bcm4908: add TP-Link C2300 USB LED triggers
Date:   Tue, 28 Feb 2023 15:45:20 +0100
Message-Id: <20230228144520.21816-3-zajec5@gmail.com>
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

While at it fix typo in USB LED name.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../dts/broadcom/bcmbca/bcm4906-tplink-archer-c2300-v1.dts  | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-tplink-archer-c2300-v1.dts b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-tplink-archer-c2300-v1.dts
index 296393d4aaab..fcf092c81b59 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-tplink-archer-c2300-v1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4906-tplink-archer-c2300-v1.dts
@@ -64,12 +64,16 @@ led-usb2 {
 			function = "usb2";
 			color = <LED_COLOR_ID_BLUE>;
 			gpios = <&gpio0 15 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&ohci_port1>, <&ehci_port1>;
+			linux,default-trigger = "usbport";
 		};
 
 		led-usb3 {
-			function = "usbd3";
+			function = "usb3";
 			color = <LED_COLOR_ID_BLUE>;
 			gpios = <&gpio0 17 GPIO_ACTIVE_LOW>;
+			trigger-sources = <&ohci_port2>, <&ehci_port2>, <&xhci_port2>;
+			linux,default-trigger = "usbport";
 		};
 
 		led-brightness {
-- 
2.34.1

