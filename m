Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71A4631F4EA
	for <lists+devicetree@lfdr.de>; Fri, 19 Feb 2021 06:51:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbhBSFvd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 00:51:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbhBSFvd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Feb 2021 00:51:33 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 091EEC061756
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:50:53 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id k22so13583447ljg.3
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XXGHHo64cyBUan+me7a5OhaQ+4WhU9jcVjOaETko1d4=;
        b=cDiuCzYDUkiX5FCjJnJxWYp52eGG5ZX/VSnNNEj62kfGQoNq9qjoSFTil0XkshqBa3
         oncIjzwLAnl/IyDfNGAG5h+gRYkhTjs+MmuuQ3qhTttgikd2a3Hty11BlBNyCr594IJA
         cnYCF5L1EBng4f2ExYXfu/P7DmO+5RcFD44tZ6MBTJ4TPVm89rW7GAroRgwTbGubd3z+
         +1wJMkQFsfpXzkTjdEI2+P2o+us4YJG2rQGOJjBdhAKj4CZk4zV9CZKOKDkYUfElUQKK
         oMqouhihtjbOqUXSslBPHLV6QzoS98lXyJUeHpPhBGiXtcjwkxHm1C8OFF9CFoBHUJ6N
         VV4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XXGHHo64cyBUan+me7a5OhaQ+4WhU9jcVjOaETko1d4=;
        b=tp5itIrMy4fA3i+GtkaiODHtbf0TqWBvaBJ0dzZd+DgnAQKk/DNVExrLa6xXlTlsuZ
         YBZS3ezyCXWUPgECXRDMhclGjOZI0jC4PO2TfZ6LVyqzKHzRRsvC+6fIyXM4yk+5ZySK
         WCgATw0JpvyYK4TXBp9rbY+dIhSrXD65kHDIhILLZgKbp7xoRaxxWAjaY4MNo0eOfujZ
         bPYnlcWdy7rY4vAKsifqAITBbsA8gN+hfAvJOlifOr4Bd+zhfcRit1TWM1ACh7tPW6Yz
         HVNp/+1fEGJllPg9ac5NX6n7UoayuPE7m+wdOAHPYUIagrO0W0FiLL2/ym8ySrAqoMRZ
         7i1g==
X-Gm-Message-State: AOAM5322GgbMeM+AM31odg72RTGQ7bBv1k15AgVHDuI/tmLuWBZhGWRY
        TvIbrLDo6WnDl3KjHU7F7MU=
X-Google-Smtp-Source: ABdhPJzbnIcTp0dUUID69Sf5U6MuEjOwnv85itjeJc9E7UKA3bP6bO/IL1rjmvXNhc28KtmiGuWSNA==
X-Received: by 2002:a05:651c:552:: with SMTP id q18mr4714803ljp.278.1613713851521;
        Thu, 18 Feb 2021 21:50:51 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id n8sm819712lfe.276.2021.02.18.21.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 21:50:51 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 2/5] arm64: dts: broadcom: bcm4908: describe Ethernet controller
Date:   Fri, 19 Feb 2021 06:50:27 +0100
Message-Id: <20210219055030.3997-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210219055030.3997-1-zajec5@gmail.com>
References: <20210219055030.3997-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4908 SoCs have an integrated Ethernet controller.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Drop redundant brcm,use-bcm-hdr
---
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index 358958105337..bdbf94f3348a 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -112,6 +112,14 @@ soc {
 		#size-cells = <1>;
 		ranges = <0x00 0x00 0x80000000 0x281000>;
 
+		enet: ethernet@2000 {
+			compatible = "brcm,bcm4908-enet";
+			reg = <0x2000 0x1000>;
+
+			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "rx";
+		};
+
 		usb_phy: usb-phy@c200 {
 			compatible = "brcm,bcm4908-usb-phy";
 			reg = <0xc200 0x100>;
@@ -199,6 +207,17 @@ port@3 {
 						phy-mode = "internal";
 						phy-handle = <&phy11>;
 					};
+
+					port@8 {
+						reg = <8>;
+						phy-mode = "internal";
+						ethernet = <&enet>;
+
+						fixed-link {
+							speed = <1000>;
+							full-duplex;
+						};
+					};
 				};
 			};
 
-- 
2.26.2

