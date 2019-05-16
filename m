Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 43B1A20005
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 09:14:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726703AbfEPHOE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 03:14:04 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:41188 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726277AbfEPHOE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 03:14:04 -0400
Received: by mail-wr1-f67.google.com with SMTP id g12so1775952wro.8
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 00:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VfCCJLVSfHmoPDAPoxVwjeh8RznaZsaWhre6aDFNPIM=;
        b=hIzpxAqGm2mhKRJYGO+YsjXJtG3/Y3HV1euq2BEEfoOJk4PDOeGY/qCyeApBn8Ueq0
         V7kJVjFDtawFjNmvTzpxqx1rbpRxVdsqbNJ4cC3WcC6pzlKnLht0aS1u8/PMjDvJnCeK
         nfzR9L6tlulhvTKK9hFXNqtrubFaHwYa0BhMwPzRgdUFY8HASnBcI9uy1IZLcZJ5NAHp
         o5lqypEEXV96kU4+iefo6p+9eXh5YLnFPiZRwzx5/06TL77E9tJozgTquElaAF6VA3/S
         RA9kg3I6agdjesBqj4Is+osqQ9hLHrzxTcs6N5hsuGH3dixd4Mf4NVgIEip32AHIpJ74
         rVGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VfCCJLVSfHmoPDAPoxVwjeh8RznaZsaWhre6aDFNPIM=;
        b=iuoRZEc7/H9bSoV5M7N+ms/OgGi0bC/os1+1+wAqNT0b6OJvMwBdsdXQV5HtTFF8Jj
         3Uxdq57+GihuStZtUtJAvaDqlBWQ/Tn1zQiAViHdG4wHQ5XBtZ1mXkSTLVP5j2Hfb+6B
         v+CTx4Ec3ehMz7ytzKtkbSSLV8VsmTcEHWUyy7zNxO9d0a1rdETNYhXG2kG3zXV23LUF
         SwBRxO24klNb3MtSxTys2qDec+o1m+U7NF42ClSwVzUD/CusXVSgEX8+CtCYVn2dTGVo
         WDQSkft/r341cMR/bDyfUGoaGE1lkB0DeFNdiW4/mf5DTm46AZg60+YNz5wfoCBPjsW8
         hCJw==
X-Gm-Message-State: APjAAAW7g2oFzaL8GR1gzVBSlJHTqvaBEl39Z57/aReRE8ouscF9Jns0
        kTBK6REqwmiPb0oQ/aE5mheU4n5O2wI=
X-Google-Smtp-Source: APXvYqy6tYfmy3A5aGFSOaSVHlYWAwVjpgeh4xahSE6WzNjqgCYsJB/OQVjBgZAzXUNEhgfdt/0vEQ==
X-Received: by 2002:a5d:49d0:: with SMTP id t16mr19217158wrs.324.1557990842582;
        Thu, 16 May 2019 00:14:02 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x187sm5454331wmb.33.2019.05.16.00.14.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 16 May 2019 00:14:02 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: sei510: add bluetooth supplies
Date:   Thu, 16 May 2019 09:13:55 +0200
Message-Id: <20190516071355.26938-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bluetooth vbat and vddio power supplies

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index 61fb30047d7f..dbfbd50359e5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -170,6 +170,8 @@
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		shutdown-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		vbat-supply = <&vddao_3v3>;
+		vddio-supply = <&vddio_ao1v8>;
 	};
 };
 
-- 
2.20.1

