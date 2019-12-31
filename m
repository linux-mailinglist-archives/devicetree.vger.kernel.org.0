Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B550C12D8B9
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2019 14:06:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727145AbfLaNGD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Dec 2019 08:06:03 -0500
Received: from mail-pl1-f193.google.com ([209.85.214.193]:46874 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727130AbfLaNGD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Dec 2019 08:06:03 -0500
Received: by mail-pl1-f193.google.com with SMTP id y8so15878050pll.13
        for <devicetree@vger.kernel.org>; Tue, 31 Dec 2019 05:06:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BeM5/vE72SAcfQsVVuZ380ILSoWPQPjSG9XVgKrQqeI=;
        b=UH2yrbjYmgnQDGO/LNq2e0XhLJ1Ka6A1yR30mvYQH3aXQKLXFPBUb5SIjhCESRnJ4N
         +jlgWk0XPtyzUxlN+K9gw760vP/KchdsXJFwvvKE+J4XyW6+ZBplorJO+lQDgTeuW2Xo
         GVR+9y/PLF6sKT6oBzAf2P7OzaIPDoz5Vv91g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BeM5/vE72SAcfQsVVuZ380ILSoWPQPjSG9XVgKrQqeI=;
        b=S2q/IgGSo27iul0ZKSRqUYQsF9NTNPzWMtEBvAJwk3ZDuG/GTjhvNjyRVS7GY/HhtA
         SAp6Vof5fugCtmpaGwaeVYyZYoNmNiMw0BqD/5TlObS8yA8sg+LPntpw7RhWNvEuXyx8
         o6Rtirx9W/GOt1dYj8RugQc3GbEkqObvECdhIio0cxaXtRrnCuGEdCFyufpsFssMQ33Q
         /LxSoNH4J8YwhirFQg3fKBiiXHU0lwgL2E2H7Z0NTzGYFHCA128J0LOWbZIeOfKnXGpK
         g0jl+7J6LmQbz58/5bnODXwkt51bYbxbtCWteGf+1vCX8Kk4FqQqZYDzD0AvE55lLcj8
         DkKg==
X-Gm-Message-State: APjAAAUBlC9AwjvRaEfpQ3udRBcTNl9DJtLYEb3f1X+STkZNMzQgxBTN
        oVrwXFQNP1FESYLQM6+mxj6O8Q==
X-Google-Smtp-Source: APXvYqy5IX5WCJoCb/LEDCamEWRBDTmMw7gKLEU1Ln9QZTBxaTcQiP9kWA9CGOMXxEfx4WlBPy051g==
X-Received: by 2002:a17:902:b104:: with SMTP id q4mr64632455plr.132.1577797562596;
        Tue, 31 Dec 2019 05:06:02 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
        by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Dec 2019 05:06:02 -0800 (PST)
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
Subject: [PATCH v3 4/9] drm/sun4i: tcon_top: Use clock name index macros
Date:   Tue, 31 Dec 2019 18:35:23 +0530
Message-Id: <20191231130528.20669-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

TCON TOP mux blocks in R40 are registering clock using
tcon top clock index numbers.

Right now the code is using, real numbers start with 0, but
we have proper macros that defined these name index numbers.

Use the existing macros, instead of real numbers for more
code readability.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index 75d8e60c149d..e0b3c5330b9a 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -194,19 +194,22 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 	clk_data->hws[CLK_TCON_TOP_TV0] =
 		sun8i_tcon_top_register_gate(dev, "tcon-tv0", regs,
 					     &tcon_top->reg_lock,
-					     TCON_TOP_TCON_TV0_GATE, 0);
+					     TCON_TOP_TCON_TV0_GATE,
+					     CLK_TCON_TOP_TV0);
 
 	if (quirks->has_tcon_tv1)
 		clk_data->hws[CLK_TCON_TOP_TV1] =
 			sun8i_tcon_top_register_gate(dev, "tcon-tv1", regs,
 						     &tcon_top->reg_lock,
-						     TCON_TOP_TCON_TV1_GATE, 1);
+						     TCON_TOP_TCON_TV1_GATE,
+						     CLK_TCON_TOP_TV1);
 
 	if (quirks->has_dsi)
 		clk_data->hws[CLK_TCON_TOP_DSI] =
 			sun8i_tcon_top_register_gate(dev, "dsi", regs,
 						     &tcon_top->reg_lock,
-						     TCON_TOP_TCON_DSI_GATE, 2);
+						     TCON_TOP_TCON_DSI_GATE,
+						     CLK_TCON_TOP_DSI);
 
 	for (i = 0; i < CLK_NUM; i++)
 		if (IS_ERR(clk_data->hws[i])) {
-- 
2.18.0.321.gffc6fa0e3

