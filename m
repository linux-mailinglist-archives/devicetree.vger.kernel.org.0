Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7FBBD9714D
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 06:57:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727022AbfHUE5E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 00:57:04 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:33457 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727134AbfHUE5E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 00:57:04 -0400
Received: by mail-pg1-f195.google.com with SMTP id n190so605708pgn.0
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 21:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F3L4II85eG5+Ju0PiHDYgaOg83dmrN2U4zsjrFTvtVk=;
        b=kML78E9Z1HY+LqS0ocE+R+cMN1dL8FMwBoo6lyCPnO9Z8D3Vqpq3umvLjFElQSBX1v
         AYAwJhVbDwa25PuCimdjnsdS5F1lmRkJXeCxFei+Xxhz/TrP2PJR9uqmL5b4Gb4ZTmCk
         Muxur/MJCO3cRCQuZBH8aZvAZ4n65gNk2uXUTfGFWIBHISVH5fsXguZMxuiFzI6m75+F
         ogQ/QXu9tj0aFF4lIxy8tvIF7r4r5OzIXgUtUTbc3nP0wd9PWeod4szuBj/Une4ahb2J
         M4gxvM0CweUIKFRiG3yr3pg837YWTKOCxx6zasTO7tcd0b8xXnKfqTZ7NFp92IqMbflB
         nc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=F3L4II85eG5+Ju0PiHDYgaOg83dmrN2U4zsjrFTvtVk=;
        b=LKuPRcSWxrLFZotIjfv22h938wFGNamW8DAJutxUUr7ctRSU1ukcl2h38OcCHnT+bE
         QRmrjjQ0zUtINEj+GXk5aDltGAu7sybD4bT1uD0Pf4M74c9mMzHjkc+CAI4LJ0XsGL1e
         6Va/V0XmiWck8fgo+OFgWO1x7RPY1nlxA9HcKRmu0+sJ+DBllg81XsZEOabI7HFxk5BE
         uuSF9Q63iJifMx0KSMSaA1ewGa8U0O8gYT/6NYfJu/4ZUhpsLhlYUbQQXyxe4enH+Vkk
         F+uyxzQHmSc7T2nzGIONbVhlSMCa5Tqz0Yy7B0M/XYh/flTEADd4gZkNnkDXgU4bfU0A
         wk7A==
X-Gm-Message-State: APjAAAXh2Mazcp0kLkj5vtiUqmPAaNAjRo0iVPpHsXic8us8oqg7enA/
        SF1pM+J44c/YObESYR9LptrYQZ/T
X-Google-Smtp-Source: APXvYqzSOY46Y5UrW2/vAhHHp3XzP2p/mtKr9xpqX2YfPZx41r5z1RlkJxKGMekNLx4bEdSyXmD22w==
X-Received: by 2002:aa7:9477:: with SMTP id t23mr34247104pfq.29.1566363423580;
        Tue, 20 Aug 2019 21:57:03 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
        by smtp.gmail.com with ESMTPSA id x16sm12279629pff.99.2019.08.20.21.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 21:57:03 -0700 (PDT)
From:   Joel Stanley <joel@jms.id.au>
To:     Andrew Jeffery <andrew@aj.id.au>, Adriana Kobylak <anoo@us.ibm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: aspeed: swift: Add eMMC device
Date:   Wed, 21 Aug 2019 14:26:55 +0930
Message-Id: <20190821045655.21752-1-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Swift contains an eMMC device attached to the second SDHCI controller.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-opp-swift.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
index f14f745b34ca..25bc0e1bbced 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-swift.dts
@@ -963,4 +963,15 @@
 	status = "okay";
 };
 
+&sdmmc {
+       status = "okay";
+};
+
+&sdhci1 {
+       status = "okay";
+
+       pinctrl-names = "default";
+       pinctrl-0 = <&pinctrl_sd2_default>;
+};
+
 #include "ibm-power9-dual.dtsi"
-- 
2.23.0.rc1

