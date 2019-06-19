Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7A7214B440
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2019 10:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731315AbfFSIlR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jun 2019 04:41:17 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:42516 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731420AbfFSIlR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jun 2019 04:41:17 -0400
Received: by mail-pl1-f195.google.com with SMTP id ay6so4672275plb.9
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2019 01:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BWIJ70WdMFz/jeDhTRhrtAoXxvSpe0pNQVvoG+VQFGs=;
        b=V3DLSpcc2BoFCHxAAvQsfeLbwdXQmBLILrr2FyXVeHflkQFjO8MlCFjfjILAXx9onD
         kYm4223Ihq9K+9AhIfjwfaFfbcmhqtbirbRPHGu9oAo9SfzMRr33Gu3MmmvswDx9qlsl
         4JB7RSkQ0Ok1+M9tEDTe0Aah5pzM3hA/2pVes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BWIJ70WdMFz/jeDhTRhrtAoXxvSpe0pNQVvoG+VQFGs=;
        b=UKSPmdPV22qJvJEGgudy1wXQlTgouDmttTnVYzFKKvMPrH93199jIxjP34EcduaK4v
         sQRbuR0Ah8rSPU8zr1zZFpKaAfU7PIEcUVKCeiDkMpAJFORjExTchxXSMcLiAAl2Kin4
         KRbA4FpNqRIN8jd7hEA2xf4fZj6CFM4wIuNiu8yVazgZrP1as/PyUxvMwrZXrKe9czDD
         nzQv/4bbD7Yq72zGqP67/Io3oqflUUk6fnw6hZnHr6Z3R0jGkspPaojMpLYYTNOE1TTe
         YBgf7WX2JQCUlCmOflNg26snjLZUV5dLXgEp4alJhq6+J9MB0fPMVIHBkjqIhrq9eYec
         dYMA==
X-Gm-Message-State: APjAAAUJqvJIWXfHOjU6uxAAd2j0J/ebVivQNES3RaUbz9sDBBRGmzdI
        LrY73Udgw2N7RYQmeNhdmkH2jg==
X-Google-Smtp-Source: APXvYqx3LtOKFswTlOGlz+oX432Dger3vKl7izXCzOJ/ObMFcZZuAgPUtI8T4Fhrvhv/tOEfWMeWzQ==
X-Received: by 2002:a17:902:54f:: with SMTP id 73mr116106684plf.246.1560933676451;
        Wed, 19 Jun 2019 01:41:16 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
        by smtp.gmail.com with ESMTPSA id s129sm17177724pfb.186.2019.06.19.01.41.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Jun 2019 01:41:15 -0700 (PDT)
From:   Claire Chang <tientzu@chromium.org>
To:     robh+dt@kernel.org
Cc:     gregkh@linuxfoundation.org, mark.rutland@arm.com,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        drinkcat@chromium.org, changqi.hu@mediatek.com,
        linux-mediatek@lists.infradead.org,
        Claire Chang <tientzu@chromium.org>
Subject: [PATCH v2] dt-bindings: serial: add documentation for Rx in-band wakeup support
Date:   Wed, 19 Jun 2019 16:41:10 +0800
Message-Id: <20190619084110.136713-1-tientzu@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To support Rx in-band wakeup, one must create an interrupt specifier with
edge sensitivity on Rx pin and an addtional pinctrl to reconfigure Rx pin
to normal GPIO in sleep state. Driver will switch to sleep mode pinctrl and
enable irq wake before suspend and restore to default settings when
resuming.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
changes in v2:
just document 'interrupts' instead of 'interrupts-extended'

 .../devicetree/bindings/serial/mtk-uart.txt         | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/mtk-uart.txt b/Documentation/devicetree/bindings/serial/mtk-uart.txt
index bcfb13194f16..36b760c25ee3 100644
--- a/Documentation/devicetree/bindings/serial/mtk-uart.txt
+++ b/Documentation/devicetree/bindings/serial/mtk-uart.txt
@@ -21,7 +21,12 @@ Required properties:
 
 - reg: The base address of the UART register bank.
 
-- interrupts: A single interrupt specifier.
+- interrupts:
+  index 0: an interrupt specifier for the UART controller itself
+  index 1: optional, an interrupt specifier with edge sensitivity on Rx pin to
+           support Rx in-band wake up. If one would like to use this feature,
+           one must create an addtional pinctrl to reconfigure Rx pin to normal
+           GPIO before suspend.
 
 - clocks : Must contain an entry for each entry in clock-names.
   See ../clocks/clock-bindings.txt for details.
@@ -37,7 +42,11 @@ Example:
 	uart0: serial@11006000 {
 		compatible = "mediatek,mt6589-uart", "mediatek,mt6577-uart";
 		reg = <0x11006000 0x400>;
-		interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 52 IRQ_TYPE_EDGE_FALLING>;
 		clocks = <&uart_clk>, <&bus_clk>;
 		clock-names = "baud", "bus";
+		pinctrl-names = "default", "sleep";
+		pinctrl-0 = <&uart_pin>;
+		pinctrl-1 = <&uart_pin_sleep>;
 	};
-- 
2.22.0.410.gd8fdbe21b5-goog

