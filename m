Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 592834649C
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 18:44:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726297AbfFNQn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 12:43:58 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:39082 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726296AbfFNQn6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 12:43:58 -0400
Received: by mail-pl1-f196.google.com with SMTP id b7so1239135pls.6
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 09:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nMcHhUCCSqrQ8w5r0SBOHVWgQpyokTTOxyC10sE/a4o=;
        b=J8Xp1Wt+5I1Gk1+MvTX47WWZdXOHu/eA8HUtP8XrZIbLeH3QH5ChGzKZ/+Lk0j7X+F
         V8guvVzYksa4ijBm/m24OaE53k64yUpEFhyMxUSWfN/OX9yhzdD/HrIUIkdztBzUyZor
         tVj5UEVaiSYmpYHiQulYUu+OfiruHFD1rF2Lg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nMcHhUCCSqrQ8w5r0SBOHVWgQpyokTTOxyC10sE/a4o=;
        b=AZxOE+Zzpr/qbrdLysmxl4xy/SLSfXFuCcQQbPU3RF1xrHtdl2EObw8l+BEs91Zw5j
         nlnmz45O/T60Zw7rOrLpRC6kS8ei+HL78Zc6Rst8J558aYJiUQoYGOBsT4ZljcwsBSju
         RlfAlhF/8+fJb2Vm/0agukI3DECBD0WTX2Vm63QRbNqjqJMRSRQIyj7rSN6nlBhdnPbL
         RBLu3JczN56cN90e9iGFunHtawGEa0hNXYoZC7CEPJQTQZhDKR0j0E3fXVs40wNZfgbq
         vGyJkLTT/wN9/f3FFZDnciY/9E/WvuyV1jD5LEZ71KkSZshfzgE1xGo9pN+icZM3QiPU
         45yg==
X-Gm-Message-State: APjAAAXCtwPxI+d9h/i6jCLaBAow7hoqKwGLgPwfpRbBTX27ADxU0uy0
        dR4EmaVswNgwo+UXj8+kHcJTjQ==
X-Google-Smtp-Source: APXvYqyFy8nCAnBwgIJRSJDDpBab+N09/m7BqSCnT6KVMvRVAN91roqAIbiRAuIW+l+mzB70c4EWpQ==
X-Received: by 2002:a17:902:fa2:: with SMTP id 31mr70064172plz.38.1560530637426;
        Fri, 14 Jun 2019 09:43:57 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
        by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.43.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Jun 2019 09:43:57 -0700 (PDT)
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
Subject: [PATCH v2 4/9] drm/sun4i: tcon_top: Use clock name index macros
Date:   Fri, 14 Jun 2019 22:13:19 +0530
Message-Id: <20190614164324.9427-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
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
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index 3267d0f9b9b2..465e9b0cdfee 100644
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

