Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8D8C27E308
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 21:08:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388418AbfHATII (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 15:08:08 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:41633 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388416AbfHATII (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 15:08:08 -0400
Received: by mail-pf1-f195.google.com with SMTP id m30so34617619pff.8
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 12:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=hx9o90A7y9Lqi0bsW+AYCfLx5zEgBR2s/MHaOJZ+Odg=;
        b=B4uOlTCntU3Vd6DbT7HMq33aP15Z6dAhQKsPtvLjqymcjYhhYFIzxmLKJ0GxUFlps5
         nSrfB6UE3ajVLcDoQjMzgJhgSJ+GrWpgdqH+FTHjP9TpDap99LhK22LbNrgAYbGJtL+K
         bsnQDJ0jjmmgT8N6b9OkR8UYlV7MNWZbH6tFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hx9o90A7y9Lqi0bsW+AYCfLx5zEgBR2s/MHaOJZ+Odg=;
        b=NVJlE66b3kvkUSWXoV++YxygWgzJlfyw0qRp5af5VBbixB3echMgnk9BHw3fTvhJQc
         gHJf3UhQ0Af8iSesvEq7PWEqyXEhUYNjywfkeumVK7IoIpff0VTkLK7vz9y6Du4MfNkx
         jRk4QLWFOzqkHwmvdTxovDjJKQPOspZAdTtHJOd5OKW1oMA2wvWIyZeYo4NdHfw/wpoL
         kKDZaWbUEX/lbtgsMKSNlcGMLr1T8vhQAFRSD5acngaQchstk/4Kq+k7DHHV33hemWbV
         4KMXop5vivLxpaKlJZl8jIDUzqxpfNJ3bJEt/OAUkgAMqIeXhonMyt7rqqSWdKPrqr8y
         Oxvg==
X-Gm-Message-State: APjAAAWU8mO4LZmIC74zl+2/St+TOW1MsU3vuwJV+1QO6YvvtRwnx7x5
        9jZHUAyWrIjAJZf2Znfe2aEfhw==
X-Google-Smtp-Source: APXvYqwRicFNmz4AgkUWxNKTeN7RdaR/ysKRKSpwCSZMzo2trQXy+pSb+B3RKJmiboxDVO/pWZO/3w==
X-Received: by 2002:a17:90a:b883:: with SMTP id o3mr331219pjr.50.1564686487466;
        Thu, 01 Aug 2019 12:08:07 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id p27sm108790378pfq.136.2019.08.01.12.08.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 12:08:07 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v4 3/4] net: phy: realtek: Add helpers for accessing RTL8211E extension pages
Date:   Thu,  1 Aug 2019 12:07:58 -0700
Message-Id: <20190801190759.28201-4-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
In-Reply-To: <20190801190759.28201-1-mka@chromium.org>
References: <20190801190759.28201-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RTL8211E has extension pages, which can be accessed after
selecting a page through a custom method. Add a function to
modify bits in a register of an extension page and a helper for
selecting an ext page. Use rtl8211e_modify_ext_paged() in
rtl8211e_config_init() instead of doing things 'manually'.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v4:
- don't add constant RTL8211E_EXT_PAGE, it's only used once,
  use a literal instead
- pass 'oldpage' to phy_restore_page() in rtl8211e_select_ext_page(),
  not 'page'
- return 'oldpage' in rtl8211e_select_ext_page()
- use __phy_modify() in rtl8211e_modify_ext_paged() instead of
  reimplementing __phy_modify_changed()
- in rtl8211e_modify_ext_paged() return directly when
  rtl8211e_select_ext_page() fails
---
 drivers/net/phy/realtek.c | 48 +++++++++++++++++++++++++++------------
 1 file changed, 34 insertions(+), 14 deletions(-)

diff --git a/drivers/net/phy/realtek.c b/drivers/net/phy/realtek.c
index a669945eb829..e09d3b0da2c7 100644
--- a/drivers/net/phy/realtek.c
+++ b/drivers/net/phy/realtek.c
@@ -53,6 +53,36 @@ static int rtl821x_write_page(struct phy_device *phydev, int page)
 	return __phy_write(phydev, RTL821x_PAGE_SELECT, page);
 }
 
+static int rtl8211e_select_ext_page(struct phy_device *phydev, int page)
+{
+	int ret, oldpage;
+
+	oldpage = phy_select_page(phydev, 7);
+	if (oldpage < 0)
+		return oldpage;
+
+	ret = __phy_write(phydev, RTL821x_EXT_PAGE_SELECT, page);
+	if (ret)
+		return phy_restore_page(phydev, oldpage, ret);
+
+	return oldpage;
+}
+
+static int rtl8211e_modify_ext_paged(struct phy_device *phydev, int page,
+				     u32 regnum, u16 mask, u16 set)
+{
+	int ret = 0;
+	int oldpage;
+
+	oldpage = rtl8211e_select_ext_page(phydev, page);
+	if (oldpage < 0)
+		return oldpage;
+
+	ret = __phy_modify(phydev, regnum, mask, set);
+
+	return phy_restore_page(phydev, oldpage, ret);
+}
+
 static int rtl8201_ack_interrupt(struct phy_device *phydev)
 {
 	int err;
@@ -184,7 +214,7 @@ static int rtl8211f_config_init(struct phy_device *phydev)
 
 static int rtl8211e_config_init(struct phy_device *phydev)
 {
-	int ret = 0, oldpage;
+	int ret;
 	u16 val;
 
 	/* enable TX/RX delay for rgmii-* modes, and disable them for rgmii. */
@@ -213,19 +243,9 @@ static int rtl8211e_config_init(struct phy_device *phydev)
 	 * 2 = RX Delay, 1 = TX Delay, 0 = SELRGV (see original PHY datasheet
 	 * for details).
 	 */
-	oldpage = phy_select_page(phydev, 0x7);
-	if (oldpage < 0)
-		goto err_restore_page;
-
-	ret = __phy_write(phydev, RTL821x_EXT_PAGE_SELECT, 0xa4);
-	if (ret)
-		goto err_restore_page;
-
-	ret = __phy_modify(phydev, 0x1c, RTL8211E_TX_DELAY | RTL8211E_RX_DELAY,
-			   val);
-
-err_restore_page:
-	return phy_restore_page(phydev, oldpage, ret);
+	return rtl8211e_modify_ext_paged(phydev, 0xa4, 0x1c,
+					 RTL8211E_TX_DELAY | RTL8211E_RX_DELAY,
+					 val);
 }
 
 static int rtl8211b_suspend(struct phy_device *phydev)
-- 
2.22.0.770.g0f2c4a37fd-goog

