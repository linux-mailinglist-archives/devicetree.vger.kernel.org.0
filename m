Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77E2F211F64
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2020 11:03:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727041AbgGBJDe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jul 2020 05:03:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726362AbgGBJDe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jul 2020 05:03:34 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C46EC08C5DC
        for <devicetree@vger.kernel.org>; Thu,  2 Jul 2020 02:03:34 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id d194so9782842pga.13
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2020 02:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YjUk73CIPNmxb/gdoNk6S5t7bf881nraTdpuxxoiTMI=;
        b=ON/Ul8j0o0JNHF2o/1DvmtpFLhAUE8RtMf1CyujbGLJ/IZ/TdWmSeyQpdm68wMyz88
         54AnCx5tqWP50x9DvQTOGkR2icvM5j4pw/hgMISV79yE7rngu6CkjpqgOyxWS0bf8aXd
         /zXU9/Wp7OpjxGbcYPW8lCUzedugMJxnhFBsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YjUk73CIPNmxb/gdoNk6S5t7bf881nraTdpuxxoiTMI=;
        b=AUP+L7eLRwZytGM0CD8jarTCOOUFf2NelpkpP9xqd9Y2ZBTchCF8GCwcC3cz9VSIIo
         4QKepR4TVRB/PPii4QV7K4eSEuX1sjLdDS/biHsBYVi3uRpfl4EPuRShTSmNgIqQ+4tO
         DlnRXAMqAd/GaUxhwtQwQLR+wgP2ZywAi9kY+zwJyAL7+TsgunQPTey5HFK2yNT4siH0
         KX01GKBMfhFvPrlB8DAMkW7OKuJw6LJ+EDbt2Vwcy1QYM9Bl9TNPOIn9ct0ji8gx2mp/
         Y03nPQpILtdA4HowE0rJW29SXM4jo77xNIOVIZfKjjlOkCPghbQo8eJH4ggzG6qGVIx4
         4hLw==
X-Gm-Message-State: AOAM531OsT+fE3KkkX5pKfViqOd5HlN9nh8bRfGYM02Fib6PxNy7ZIYV
        LxAwnTdruarhKyweBIbs722BBw==
X-Google-Smtp-Source: ABdhPJw6Koh/B5/rpA4HQqjMOhYVzJ/2d/c9CUB3NCC7j0V6gZGi+4cBT5v8CIzZQiKZ+68ySxna8A==
X-Received: by 2002:aa7:9a84:: with SMTP id w4mr16671552pfi.13.1593680613239;
        Thu, 02 Jul 2020 02:03:33 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:a961:9b2e:1b93:8ca7])
        by smtp.gmail.com with ESMTPSA id y7sm7594800pjy.21.2020.07.02.02.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 02:03:32 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        mylene.josserand@collabora.com
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        William Wu <william.wu@rock-chips.com>
Subject: [PATCH] ARM: dts: rockchip: Add usb host0 ohci node for rk3288
Date:   Thu,  2 Jul 2020 14:32:59 +0530
Message-Id: <20200702090259.36595-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

rk3288 and rk3288w have a usb host0 ohci controller.

Although rk3288 ohci doesn't actually work on hardware, but
rk3288w ohci can work well.

So add usb host0 ohci node in rk3288 dtsi and the quirk in
ohci platform driver will disable ohci on rk3288.

The bootloader must update the compatible in order to bypass
host0_ohci in legacy rk3288 platform.

Cc: William Wu <william.wu@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Note:
- U-Boot patch for compatible update
https://patchwork.ozlabs.org/project/uboot/patch/20200702084820.35942-1-jagan@amarulasolutions.com/

 arch/arm/boot/dts/rk3288.dtsi | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 0cd88774db95..fd0066d07dfc 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -614,7 +614,19 @@ usb_host0_ehci: usb@ff500000 {
 		status = "disabled";
 	};
 
-	/* NOTE: ohci@ff520000 doesn't actually work on hardware */
+	/**
+	 * NOTE: ohci@ff520000 doesn't actually work on hardware
+	 * hardware, but can work on rk3288w hardware.
+	 */
+	usb_host0_ohci: usb@ff520000 {
+		compatible = "generic-ohci";
+		reg = <0x0 0xff520000 0x0 0x100>;
+		interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_USBHOST0>;
+		phys = <&usbphy1>;
+		phy-names = "usb";
+		status = "disabled";
+	};
 
 	usb_host1: usb@ff540000 {
 		compatible = "rockchip,rk3288-usb", "rockchip,rk3066-usb",
-- 
2.25.1

