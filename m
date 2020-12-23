Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B9AC2E1BAD
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 12:13:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728329AbgLWLJO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 06:09:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728284AbgLWLJO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 06:09:14 -0500
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC4C6C0613D6
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 03:08:33 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id f17so10401873pge.6
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 03:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gRczQcEVREVIHP/xCIGe+pHjWpZBhd9/8Bmyk1xi1h0=;
        b=Tdm+aRo5fz3I6o6oofiQYP4Dg5J+sA3cDlWHv8d/4XsG4r8Eylj/i+aIK+XiBTRHb/
         XIY8Y3JA71pVKMxR8MSTEUeKDtuyefm1g9aCi74H4BU1zKeNNbE4lh2RqvES7a/p42Y4
         EOp0tEPBR3XlgULoCOO+Df6derhRdWd/w/kRc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gRczQcEVREVIHP/xCIGe+pHjWpZBhd9/8Bmyk1xi1h0=;
        b=f94MCPe9j/u8gwWl3tLYk+xz2FHRPj09m3h8WMugDldMT7nRpBXslWml7OeUuSI03a
         Yn61hrClWOGvwcDRLCBhx5hFV6VS7ahGWEHh4VakJXysEocdR4C6nxXiEHeNNONhV4BS
         cLsK74ApxRu+uHTTc4IO+vDsIFgucZybM+l928MAQ6jpz4GjU3SAVQO/hBrt5mianLdL
         q39Ms34cuOsFM/RG/mEkZj6PWwkt0yfA+f/n5icKOvpOD0E1tmonhE4srZZ1iZ3BEXY3
         GHOfzh7y5I3tODx3jREY48Fef9GfX/DmnUYrcWXZKfMatjoqBL34T0O0NbDd+9QhaeAx
         MtKA==
X-Gm-Message-State: AOAM533KZfefEu55kivwSiOyIdNkPnDCtXcxmSMNzIH26/v7Gk+3+E6u
        mYNMNFes7rAuhJLCPcrzrxpqWQ==
X-Google-Smtp-Source: ABdhPJxI0lVlTeQudtwo04v0ZQt+J5cepsKS4VBuncWNGWBA6WddhHvJkit9Q34ifSZGrmUAvmjknQ==
X-Received: by 2002:a63:4746:: with SMTP id w6mr563080pgk.377.1608721713343;
        Wed, 23 Dec 2020 03:08:33 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:eca4:40c1:8784:571c])
        by smtp.gmail.com with ESMTPSA id d4sm23031093pfo.127.2020.12.23.03.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 03:08:32 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH] ARM: dts: stm32: Add STM32MP1 I2C6 SDA/SCL pinmux
Date:   Wed, 23 Dec 2020 16:37:57 +0530
Message-Id: <20201223110757.126937-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SDA/SCL pinmux lines for I2C6 on STM32MP1.

This support adds both in default and sleep states.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 20a59e8f7a33..2036c1d0d798 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -2018,6 +2018,23 @@ pins {
 		};
 	};
 
+	i2c6_pins_a: i2c6-0 {
+		pins {
+			pinmux = <STM32_PINMUX('Z', 6, AF2)>, /* I2C6_SCL */
+				 <STM32_PINMUX('Z', 7, AF2)>; /* I2C6_SDA */
+			bias-disable;
+			drive-open-drain;
+			slew-rate = <0>;
+		};
+	};
+
+	i2c6_sleep_pins_a: i2c6-sleep-0 {
+		pins {
+			pinmux = <STM32_PINMUX('Z', 6, ANALOG)>, /* I2C6_SCL */
+				 <STM32_PINMUX('Z', 7, ANALOG)>; /* I2C6_SDA */
+		};
+	};
+
 	spi1_pins_a: spi1-0 {
 		pins1 {
 			pinmux = <STM32_PINMUX('Z', 0, AF5)>, /* SPI1_SCK */
-- 
2.25.1

