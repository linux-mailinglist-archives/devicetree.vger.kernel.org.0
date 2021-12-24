Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 478A347EB8F
	for <lists+devicetree@lfdr.de>; Fri, 24 Dec 2021 06:23:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351294AbhLXFXn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Dec 2021 00:23:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350349AbhLXFXm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Dec 2021 00:23:42 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2744DC061757
        for <devicetree@vger.kernel.org>; Thu, 23 Dec 2021 21:23:42 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id x21so16901122lfa.5
        for <devicetree@vger.kernel.org>; Thu, 23 Dec 2021 21:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3vLn3V8hakrMnbWh9eTJX5Ws7e/fiZzoe10eOrTOCq8=;
        b=FHrkXdgcVJ6I4Cr7CEfnkrWcfzhb5v4om4TFV9enflli5haSp9odJBhecbmC0B6AxC
         KhnWcCb5UIRr97Mz8M9vGJrPmONYz1N/M5slOOb13NiXTQ3Y1NDq8kz2GYav6Q2dl6Gh
         Swfa1I2I1CGrFdWpDd4mghTZ4OrSM+NwvmWs4kl7dX8smza3jVzszNAsyxLzCfAZCc7R
         wSmZg0Vao3qr3XblzmeDyVm0Z/ziLWxLk1zdXJEzkqIOoZczP/ePCMKYCokEz+xI6Zw8
         BhSJggBkaTjwZqLz44xkUebaHLarLYH5rAncMhcVLfSk5+2aEny3N/Rm9VMP/bCC9jz4
         ZD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3vLn3V8hakrMnbWh9eTJX5Ws7e/fiZzoe10eOrTOCq8=;
        b=099q99V8awEw3n9b60ExqZ9oEuUAKAdDMCB/OTEuJL3ugx7mc20WjvPVGZjfcsE1Gf
         fvthsT8p3EVVX54wg1WV2jNj8feE5/bbfnQ2BVVOQNP88kH93wDE9+b0in3sFJ/s08U2
         ixxZYpHjdxCORQ2cwE8R0v+Tx8hYJNadoZ+0ObPs3siBAsGRaTh4QCCMwvWs0t/c8R6t
         8nqJ8529p7RTjFo++HgqI0QsdjCjdgbIopvG9naPMfUuLOSBfbrwyS876UfWJTbPfKBa
         p0ib2gXZKPY1gDrBlfQf22ZhK98TA8Wnnho2npQSQlyCgtIXPbLlhYVUj9WVYx01JA/p
         Alrg==
X-Gm-Message-State: AOAM530A2cg1eh/kTvZsr6uGUokwByMy8gbx8vVh8uON4wn3hoLjZAej
        RfLSOSy80jFYXynLWKM23kA+Zg==
X-Google-Smtp-Source: ABdhPJycx87ictKT8G0oaGXYgKX3KGQb93rTh2lVD1X1vPRpPeQuD1GsvVvaBwhKLFj/JYCBabnhFw==
X-Received: by 2002:a19:f241:: with SMTP id d1mr3883660lfk.131.1640323420407;
        Thu, 23 Dec 2021 21:23:40 -0800 (PST)
Received: from cobook.home (nikaet.starlink.ru. [94.141.168.29])
        by smtp.gmail.com with ESMTPSA id e13sm702858lfs.306.2021.12.23.21.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Dec 2021 21:23:40 -0800 (PST)
From:   Nikita Yushchenko <nikita.yoush@cogentembedded.com>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Subject: [PATCH 1/3] drm: rcar-du: lvds: Add r8a77961 support
Date:   Fri, 24 Dec 2021 08:23:07 +0300
Message-Id: <20211224052309.1997096-2-nikita.yoush@cogentembedded.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211224052309.1997096-1-nikita.yoush@cogentembedded.com>
References: <20211224052309.1997096-1-nikita.yoush@cogentembedded.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The M3-W+ SoC has the same LVDS encoder as other R-Car Gen3 chips.
Add support for M3-W+ (R8A77961) SoC to the LVDS encoder driver.

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 drivers/gpu/drm/rcar-du/rcar_lvds.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rcar-du/rcar_lvds.c b/drivers/gpu/drm/rcar-du/rcar_lvds.c
index 72a272cfc11e..8dbfbbd3cad1 100644
--- a/drivers/gpu/drm/rcar-du/rcar_lvds.c
+++ b/drivers/gpu/drm/rcar-du/rcar_lvds.c
@@ -901,6 +901,7 @@ static const struct of_device_id rcar_lvds_of_table[] = {
 	{ .compatible = "renesas,r8a7793-lvds", .data = &rcar_lvds_gen2_info },
 	{ .compatible = "renesas,r8a7795-lvds", .data = &rcar_lvds_gen3_info },
 	{ .compatible = "renesas,r8a7796-lvds", .data = &rcar_lvds_gen3_info },
+	{ .compatible = "renesas,r8a77961-lvds", .data = &rcar_lvds_gen3_info },
 	{ .compatible = "renesas,r8a77965-lvds", .data = &rcar_lvds_gen3_info },
 	{ .compatible = "renesas,r8a77970-lvds", .data = &rcar_lvds_r8a77970_info },
 	{ .compatible = "renesas,r8a77980-lvds", .data = &rcar_lvds_gen3_info },
-- 
2.30.2

