Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 218D344B3B
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 20:54:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729650AbfFMSx6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 14:53:58 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:38958 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729462AbfFMSx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 14:53:57 -0400
Received: by mail-pg1-f196.google.com with SMTP id 196so31650pgc.6
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 11:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Z0BqE/PvwTCOuDfT7ziZnBtJoPRweQQwkvxwrMq6Xa0=;
        b=aiVm+Ij7KcL3D/0YWJ8nXlH+dgfcDlsdPwTvVK7cZVI0JKLrd/YYhm2+Cq76YkYLL5
         +phoUjSXOTIFC6r/5BNh/LSGecRqCp5OmsC+IYPu1fqgZLYit3+9HgiLNkwfgHCj0V7q
         RmkSuKtICHPNKPfeEpAIaKJAo9jVsCTYxn+ek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Z0BqE/PvwTCOuDfT7ziZnBtJoPRweQQwkvxwrMq6Xa0=;
        b=KgX+/qL4rqePT7YrPJ+hKadDxdl7VKvcCe2vs7LhKRQAbp63y950kcuomhKPPRUqt8
         t74sSJxGsbqx+YYPWSeaMuoN8UOyn/j+fNzsE0L0OMV7haCh+VKif5Hq6Kr39bItbuKS
         DVoBiYnxvJopLTPYLYUKs4uyROcSjr/+NnVUJ+8ULFV7fMcs2ZLdXC3VUGZqjxwXP18d
         LJ7rz8rRr1W0IErRD3gbEumpDFmP0RgeIpXkGMIAhex/5u2SmDp2eKnOjHmjQIHIxZ+B
         5hNLkV4/oVaHw1bDN63rs2mZh51ETZQnF6ctEPUDcNM8oB3bWXni40LnfiEcMfR1Wtvp
         EjTA==
X-Gm-Message-State: APjAAAWCRKwol5kEUdBqS/D/3U0GBpZKIjZTBXwtpmOBOguvoSTc9Yoe
        djfhTbOwQ0FEF2Uz4K+MsjEfqQ==
X-Google-Smtp-Source: APXvYqwjcj/D4tJfxviPJ3DAP+ga6noWng4Pb876f1LgU512Tm5hDPwAQYW1f6WUhPSgbRzbYQRvtw==
X-Received: by 2002:a17:90a:a10f:: with SMTP id s15mr7164601pjp.30.1560452036899;
        Thu, 13 Jun 2019 11:53:56 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
        by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.53.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 11:53:56 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 2/9] drm/sun4i: tcon: Add TCON LCD support for R40
Date:   Fri, 14 Jun 2019 00:22:34 +0530
Message-Id: <20190613185241.22800-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

TCON LCD0, LCD1 in allwinner R40, are used for managing
LCD interfaces like RGB, LVDS and DSI.

Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
tcon top.

Add support for it, in tcon driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 9e9d08ee8387..8553066e7bed 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -1471,6 +1471,12 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
 	.has_channel_1		= true,
 };
 
+static const struct sun4i_tcon_quirks sun8i_r40_lcd_quirks = {
+	.supports_lvds		= true,
+	.has_channel_0		= true,
+	.set_mux		= sun8i_r40_tcon_tv_set_mux,
+};
+
 static const struct sun4i_tcon_quirks sun8i_r40_tv_quirks = {
 	.has_channel_1		= true,
 	.set_mux		= sun8i_r40_tcon_tv_set_mux,
@@ -1501,6 +1507,7 @@ const struct of_device_id sun4i_tcon_of_table[] = {
 	{ .compatible = "allwinner,sun8i-a33-tcon", .data = &sun8i_a33_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-lcd", .data = &sun8i_a83t_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-tv", .data = &sun8i_a83t_tv_quirks },
+	{ .compatible = "allwinner,sun8i-r40-tcon-lcd", .data = &sun8i_r40_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-r40-tcon-tv", .data = &sun8i_r40_tv_quirks },
 	{ .compatible = "allwinner,sun8i-v3s-tcon", .data = &sun8i_v3s_quirks },
 	{ .compatible = "allwinner,sun9i-a80-tcon-lcd", .data = &sun9i_a80_tcon_lcd_quirks },
-- 
2.18.0.321.gffc6fa0e3

