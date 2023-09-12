Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2611579C540
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 06:54:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229947AbjILEyT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 00:54:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjILEx2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 00:53:28 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBC851727
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 21:52:40 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9a9d6b98845so1230497466b.0
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 21:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1694494359; x=1695099159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c/QQ+pzGaKCLEtkSfzXPg0nfGWLMjKop4b6FhGuhCMU=;
        b=ZbOmYZW/JAfcdUR2SZj75Ay/9AF60BgUASOAoYifDrqIvxcJJ30D4uLEgk2OzYBs72
         yqKv3KS3oWBK+hLrTR9d0vA8J4F9YE/Ld3aZdaXPOYiocTyQoazMoPz6l2jkH6m4wz4w
         gWxkqY4bDI2ghVadVqRz+fesm5k5KbFi7TRXE90GNgqSQaCtELc6DJzq3ilm9kPiY9aw
         pRSbRbsLfh0qkZojV4HNuJWy8O7lKGio0NGbwlvY5TEsJ3QDsCpfdnsxtRSwRxVbW5EK
         218jukITXdoFqSPYB4qFCyc5hBrth8KZ19+34BKu1e9WrxxlSu7a9JIqKnPbVCZE5S/5
         0VTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694494359; x=1695099159;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c/QQ+pzGaKCLEtkSfzXPg0nfGWLMjKop4b6FhGuhCMU=;
        b=CH9lmIFb5XSWlRzT5cRaXw1yhFtnmx8hL1LvEQyymuK8NILsOhDvjaB7GTlJMZzYV+
         BPILWWEMAkHrKUG6NUvliNQQ0akvgYb2ZSmdzqjBFrrITzlkm3H50xYvYRVxg5lWkLzS
         quLkC+6/gumAXS/vMXTQXBPqsRSiod718aJpB750cv2SoiFR8sPzFv8E7lpGnMjnnzhF
         93ySgxU5IZdrMTh+yfTft4bLPFiSfaSooiJ6uE+WSRzMu0hokikprjcNcAmCjQ4dm9Sv
         rKvpvrsbH6dq6TVsiWkOWHlqMQ5T9Gq51365n59kbmaieLqWGjQ0qc6qdlnDCvVKjuDn
         pvYg==
X-Gm-Message-State: AOJu0YxRZMKTfH2F9+hGJaVEsuwK0xJcDEcqRtl/0tnaz83kk27SQz5l
        tQ0+cuWZCa2sY2GCJe0roQn7sQ==
X-Google-Smtp-Source: AGHT+IHOeFoaBGmGEVaMe9QVI6eGxLkERWdiTBlKcpER9LrrvOlg5Al5pU8Bs+zay+AHLcLZg1/wlQ==
X-Received: by 2002:a17:906:7311:b0:9aa:1dc9:1474 with SMTP id di17-20020a170906731100b009aa1dc91474mr2204329ejc.33.1694494359466;
        Mon, 11 Sep 2023 21:52:39 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id f21-20020a05640214d500b0051e22660835sm5422415edx.46.2023.09.11.21.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 21:52:39 -0700 (PDT)
From:   Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To:     geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, ulf.hansson@linaro.org,
        linus.walleij@linaro.org, gregkh@linuxfoundation.org,
        jirislaby@kernel.org, magnus.damm@gmail.com,
        catalin.marinas@arm.com, will@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        biju.das.jz@bp.renesas.com, quic_bjorande@quicinc.com,
        arnd@arndb.de, konrad.dybcio@linaro.org, neil.armstrong@linaro.org,
        nfraprado@collabora.com, rafal@milecki.pl,
        wsa+renesas@sang-engineering.com
Cc:     linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 11/37] clk: renesas: rzg2l: simplify a bit the logic in rzg2l_mod_clock_endisable()
Date:   Tue, 12 Sep 2023 07:51:31 +0300
Message-Id: <20230912045157.177966-12-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
References: <20230912045157.177966-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The bitmask << 16 is anyway set on both branches of if thus move it
before the if and set the lower bits of registers only in case clock is
enabled.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/rzg2l-cpg.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index 44226682db2c..6c289223a4e2 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -914,10 +914,9 @@ static int rzg2l_mod_clock_endisable(struct clk_hw *hw, bool enable)
 		enable ? "ON" : "OFF");
 	spin_lock_irqsave(&priv->rmw_lock, flags);
 
+	value = bitmask << 16;
 	if (enable)
-		value = (bitmask << 16) | bitmask;
-	else
-		value = bitmask << 16;
+		value |= bitmask;
 	writel(value, priv->base + CLK_ON_R(reg));
 
 	spin_unlock_irqrestore(&priv->rmw_lock, flags);
-- 
2.39.2

