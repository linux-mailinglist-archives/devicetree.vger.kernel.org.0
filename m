Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4E0B612D8B2
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2019 14:05:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727109AbfLaNFx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Dec 2019 08:05:53 -0500
Received: from mail-pf1-f194.google.com ([209.85.210.194]:36873 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727107AbfLaNFx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Dec 2019 08:05:53 -0500
Received: by mail-pf1-f194.google.com with SMTP id p14so19724583pfn.4
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2019 05:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EOyi5tzl/4nxk9xqAyclAM+URcfve5OZPh7MV8YnBrQ=;
        b=C1XNMIIrb2O3OzCmOxnI3KLkToL36K1e3oVnIkwDhOb7qAi+rVBZHeA8Ow4beqvyc3
         OmRIH1tZbE4YUFbem4RfF1tsmO1bJxhPU7MzEGXb5kR6yPVL68dQrzwJzF/N+TayzcL9
         gRZfFtDZn4otpmgJFfnrf8tUKpSIthlspA4+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EOyi5tzl/4nxk9xqAyclAM+URcfve5OZPh7MV8YnBrQ=;
        b=Zn+SLIqOrFlkRw9PTKpfsHXVB/vuuUxZWllzfqdNtxdWpiGFjdME3krURS5FkaAGo2
         msFOT+d/qStnc7PTW78tB8Ewsz0y+zRiAR0GfPV9zbw+TM9Ko2X55Ww2GXJbfRSdW5lF
         Nooa4iLscCOAKnBVrBpExjCQgTprDocqaABli3jsutPo4mcpKCwHR3nWRN2msE99Sm2K
         XI3ZhEcHaziutbDRS5BfepMI29Qqf9sxO5I1obR6qImrpv2FXL2vLZA8lLbd0GsydkwY
         fkP/nV0+rvyY9naW9zStWjDaMc15lfHZ5wgsLhbhcvmt3smU3lK2hnNDGxGgDjV8lXWL
         Ie3Q==
X-Gm-Message-State: APjAAAXnb8dGMWDG1hON+MuUFwQsrBhZTYM+4DsVO33RXxFXySNh4fp5
        AQJJo/+rsyeUedoIOZgIMkx2Eg==
X-Google-Smtp-Source: APXvYqyYk9aV+EnROERG9fjC1KYiBt7tIzfsFrbzcVxWJhg/zyJNc52rgXItMppvEfsBzE5giSw/mg==
X-Received: by 2002:a62:ddd0:: with SMTP id w199mr75715315pff.1.1577797552360;
        Tue, 31 Dec 2019 05:05:52 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
        by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Dec 2019 05:05:51 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 2/9] drm/sun4i: tcon: Add TCON LCD support for R40
Date:   Tue, 31 Dec 2019 18:35:21 +0530
Message-Id: <20191231130528.20669-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
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
Changes for v3:
- none

 drivers/gpu/drm/sun4i/sun4i_tcon.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index fad72799b8df..69611d38c844 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -1470,6 +1470,13 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
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
@@ -1500,6 +1507,7 @@ const struct of_device_id sun4i_tcon_of_table[] = {
 	{ .compatible = "allwinner,sun8i-a33-tcon", .data = &sun8i_a33_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-lcd", .data = &sun8i_a83t_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-tv", .data = &sun8i_a83t_tv_quirks },
+	{ .compatible = "allwinner,sun8i-r40-tcon-lcd", .data = &sun8i_r40_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-r40-tcon-tv", .data = &sun8i_r40_tv_quirks },
 	{ .compatible = "allwinner,sun8i-v3s-tcon", .data = &sun8i_v3s_quirks },
 	{ .compatible = "allwinner,sun9i-a80-tcon-lcd", .data = &sun9i_a80_tcon_lcd_quirks },
-- 
2.18.0.321.gffc6fa0e3

