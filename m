Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 57C8214520D
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2020 11:05:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729384AbgAVKFA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jan 2020 05:05:00 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:44166 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729188AbgAVKE7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jan 2020 05:04:59 -0500
Received: by mail-wr1-f67.google.com with SMTP id q10so6542229wrm.11
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2020 02:04:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7EsxL6C1QaWZO5YV1g8AfkfzamDmOw7cbiAGc+fHfTo=;
        b=o+3Vk0s0yRvbDk8FGNIcjD0ORinjobLcUwca5TOaa+Vk2NK2aV+GJ635Er+i1meq7S
         TjCN+8tS0B0GLMnT6e0GHQf9GMn3LTjXXFKTuUx0YmwRzXbVFH+z5qGOlUsnAYyjWLKN
         OoCPuaZXdglUSc5SQh6JGLv9Gi0+Kp8RCiZ7WB7GJDZvAGZAIJdNAspnUPnHbwEGhtwT
         XkIlUUqCZOxGDCenbZYb2MTEraNK0XvWLV6KO1ZmPgOFDsJyP8PdsOPTam/klQLBpeiT
         D17kQKvx4F/Ow/KnUVrBSkM9cpFiuAe7HyFUGWJlC3pCuItMO/03wjcv+nYBBp78L0ya
         wIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7EsxL6C1QaWZO5YV1g8AfkfzamDmOw7cbiAGc+fHfTo=;
        b=owar8AgaYQc9U/8d+VQAEypS0bTdrmRjC9szlVBHSPwT5ly2Mx16HeNjmIG1rhBMEh
         HUWzunqLNJWk/4cpJ9ydXe7KRIzFWWcsuwAYMPy7pM8euHqUhCxcJl2tkAkQUFA1eQ36
         pKfJ4MQO4ivtE3vlTltoyHvwTetZGk0gIqu+NY2tYaxfkhqvSpcoZDqqKbrRH+J8AKuA
         79WreO2Lss0MjjsSQQ9NIR7CCPwyhdXqHh/NYFBJ4GMdv07SJLPFtoPnX7yZ06tT5Hib
         YzgU7izcs2GtnwllKamuAmFFzwBm1A2fUE7FWvJxU0Jc+Z5lZHGA4FeJYYkUY7jcPuP8
         GhVQ==
X-Gm-Message-State: APjAAAUG32AFU6isIQqKh9UWMi3NqFGber5trKMrrfC9PFmDs9WVP8Mo
        MOdLwxut6W3QkcjBxD6yOTGsCg==
X-Google-Smtp-Source: APXvYqzf8R/tcxr8h0NkYRv9GZBG8hmVDFPP208Nms6g3AWJ3OacQIHJO+ph/Msiq4KQd8Zgbp/rFA==
X-Received: by 2002:a5d:4d0e:: with SMTP id z14mr10414650wrt.208.1579687497726;
        Wed, 22 Jan 2020 02:04:57 -0800 (PST)
Received: from starbuck.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id l3sm52237648wrt.29.2020.01.22.02.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2020 02:04:57 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Neil Armstrong <narmstrong@baylibre.com>, linux-clk@vger.kernel.org
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] clk: meson: gxbb: set audio output clock hierarchy
Date:   Wed, 22 Jan 2020 11:04:51 +0100
Message-Id: <20200122100451.2443153-4-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122100451.2443153-1-jbrunet@baylibre.com>
References: <20200122100451.2443153-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The aiu devices peripheral clocks needs the aiu and aiu_glue clocks to
operate. Reflect this hierarchy in the gxbb clock tree.

Fixes: 738f66d3211d ("clk: gxbb: add AmLogic GXBB clk controller driver")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 drivers/clk/meson/gxbb.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/meson/gxbb.c b/drivers/clk/meson/gxbb.c
index 47916c4f1700..5fd6a574f8c3 100644
--- a/drivers/clk/meson/gxbb.c
+++ b/drivers/clk/meson/gxbb.c
@@ -2619,14 +2619,6 @@ static MESON_GATE(gxbb_spi, HHI_GCLK_MPEG0, 30);
 static MESON_GATE(gxbb_i2s_spdif, HHI_GCLK_MPEG1, 2);
 static MESON_GATE(gxbb_eth, HHI_GCLK_MPEG1, 3);
 static MESON_GATE(gxbb_demux, HHI_GCLK_MPEG1, 4);
-static MESON_GATE(gxbb_aiu_glue, HHI_GCLK_MPEG1, 6);
-static MESON_GATE(gxbb_iec958, HHI_GCLK_MPEG1, 7);
-static MESON_GATE(gxbb_i2s_out, HHI_GCLK_MPEG1, 8);
-static MESON_GATE(gxbb_amclk, HHI_GCLK_MPEG1, 9);
-static MESON_GATE(gxbb_aififo2, HHI_GCLK_MPEG1, 10);
-static MESON_GATE(gxbb_mixer, HHI_GCLK_MPEG1, 11);
-static MESON_GATE(gxbb_mixer_iface, HHI_GCLK_MPEG1, 12);
-static MESON_GATE(gxbb_adc, HHI_GCLK_MPEG1, 13);
 static MESON_GATE(gxbb_blkmv, HHI_GCLK_MPEG1, 14);
 static MESON_GATE(gxbb_aiu, HHI_GCLK_MPEG1, 15);
 static MESON_GATE(gxbb_uart1, HHI_GCLK_MPEG1, 16);
@@ -2681,6 +2673,16 @@ static MESON_GATE(gxbb_ao_ahb_bus, HHI_GCLK_AO, 2);
 static MESON_GATE(gxbb_ao_iface, HHI_GCLK_AO, 3);
 static MESON_GATE(gxbb_ao_i2c, HHI_GCLK_AO, 4);
 
+/* AIU gates */
+static MESON_PCLK(gxbb_aiu_glue, HHI_GCLK_MPEG1, 6, &gxbb_aiu.hw);
+static MESON_PCLK(gxbb_iec958, HHI_GCLK_MPEG1, 7, &gxbb_aiu_glue.hw);
+static MESON_PCLK(gxbb_i2s_out, HHI_GCLK_MPEG1, 8, &gxbb_aiu_glue.hw);
+static MESON_PCLK(gxbb_amclk, HHI_GCLK_MPEG1, 9, &gxbb_aiu_glue.hw);
+static MESON_PCLK(gxbb_aififo2, HHI_GCLK_MPEG1, 10, &gxbb_aiu_glue.hw);
+static MESON_PCLK(gxbb_mixer, HHI_GCLK_MPEG1, 11, &gxbb_aiu_glue.hw);
+static MESON_PCLK(gxbb_mixer_iface, HHI_GCLK_MPEG1, 12, &gxbb_aiu_glue.hw);
+static MESON_PCLK(gxbb_adc, HHI_GCLK_MPEG1, 13, &gxbb_aiu_glue.hw);
+
 /* Array of all clocks provided by this provider */
 
 static struct clk_hw_onecell_data gxbb_hw_onecell_data = {
-- 
2.24.1

