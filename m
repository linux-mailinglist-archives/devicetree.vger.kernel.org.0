Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 36CA746491
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 18:43:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726164AbfFNQnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 12:43:50 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:33556 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725808AbfFNQnu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 12:43:50 -0400
Received: by mail-pf1-f193.google.com with SMTP id x15so1805861pfq.0
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 09:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kEKdnhKR+/dWWRVZjYYO+x5HGCPCoPobrZ4wln/DJzY=;
        b=pt+MCQrYrr1z9usf53hpmCyEdhtX35GU4v450sx+7ngZfUg9lOUJdWuFI9JOxl8RTp
         CHUPQOKAzK2NXpws6xY7rj+PcC18JYJtjwgryLTh5NTOOLOBJcHS6zygGc3tgYy1fJyE
         efXaUwOts0I1GtXTgS8qdMApryCG8QaDzqmMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kEKdnhKR+/dWWRVZjYYO+x5HGCPCoPobrZ4wln/DJzY=;
        b=LGPo+ov8S4dARhUqs/sMHBuVL3vOncc7IJuNfijWLYO7u5H4Ch1aLBbkjRMzfaKc7B
         HRl7SjtV1Pi9zWtar49lDmm2QhGDLKK1Od7oNRL9dYmoR4m7ul3l4CGnov+uXb073KNE
         n/s8v5igPL/y5W1zqt45L2zxhMzjgTOy+9w2c2vVYPT1pW9HJloqMyWdSyAzdeXZISw0
         XDM2QIboyzSEj58MxwxVw4MNYLmz5JuLChGE17HwTWQKbQQwfOtrU1y/lGbarBwdkfh7
         hrXswHqhM6dXKZTLh7XdhU2a0/mtgmiI+pDtcXFf/4byBmbqziNbH+Oot88rnBflXa9n
         iCiQ==
X-Gm-Message-State: APjAAAU9hT0XUPcpy6d9IKlonxMMkcZt3xypk+dwdYRjQ0GFw8bPiEp7
        FbQhivRB7rDcaZZKvGkgwvqGog==
X-Google-Smtp-Source: APXvYqxVZ/VBMdd1plRYRlRdBu2PAEOFwSdXMjHmnSt33jJGhQ4n+lhUW7eRWumCYAU2L0kC+eo4hA==
X-Received: by 2002:a63:6881:: with SMTP id d123mr11058424pgc.201.1560530628964;
        Fri, 14 Jun 2019 09:43:48 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
        by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.43.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Jun 2019 09:43:48 -0700 (PDT)
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
Subject: [PATCH v2 2/9] drm/sun4i: tcon: Add TCON LCD support for R40
Date:   Fri, 14 Jun 2019 22:13:17 +0530
Message-Id: <20190614164324.9427-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
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
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 9e9d08ee8387..9838913305a0 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -1471,6 +1471,13 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
 	.has_channel_1		= true,
 };
 
+static const struct sun4i_tcon_quirks sun8i_r40_lcd_quirks = {
+	.supports_lvds		= true,
+	.has_channel_0		= true,
+	/* TODO Need to support TCON output muxing via GPIO pins */
+	.set_mux		= sun8i_r40_tcon_tv_set_mux,
+};
+
 static const struct sun4i_tcon_quirks sun8i_r40_tv_quirks = {
 	.has_channel_1		= true,
 	.set_mux		= sun8i_r40_tcon_tv_set_mux,
@@ -1501,6 +1508,7 @@ const struct of_device_id sun4i_tcon_of_table[] = {
 	{ .compatible = "allwinner,sun8i-a33-tcon", .data = &sun8i_a33_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-lcd", .data = &sun8i_a83t_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-tv", .data = &sun8i_a83t_tv_quirks },
+	{ .compatible = "allwinner,sun8i-r40-tcon-lcd", .data = &sun8i_r40_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-r40-tcon-tv", .data = &sun8i_r40_tv_quirks },
 	{ .compatible = "allwinner,sun8i-v3s-tcon", .data = &sun8i_v3s_quirks },
 	{ .compatible = "allwinner,sun9i-a80-tcon-lcd", .data = &sun9i_a80_tcon_lcd_quirks },
-- 
2.18.0.321.gffc6fa0e3

