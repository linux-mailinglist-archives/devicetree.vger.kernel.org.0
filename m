Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9E804F9A70
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 18:22:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230194AbiDHQYr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 12:24:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230173AbiDHQYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 12:24:45 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 982F9EE4EE
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 09:22:41 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id p8so8774722pfh.8
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 09:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cgQ5H26dXpBSM4rzqEEf72CNZpQ5iTR6sOekInJL9nA=;
        b=qGFgE8d/FspNS34svbsGDyPnuRy9Upu/mTr9Ef8Tu5CYyNTpw+nZ6ggmcKV9shfu8n
         s3q0yl1yl7qKniYUx5mx1k1WfO9anF/XSdxeQFVA9YAUf4vn5cpxhjeEufXsuvyRD+MA
         JZWNKWs0OXIjG/HYBwYGi875S7zRkHwDKx8Qs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cgQ5H26dXpBSM4rzqEEf72CNZpQ5iTR6sOekInJL9nA=;
        b=YJLID356JiD1SKM6MdfXX9j2sPZ3NTv10Ek9Vr8qvN3IFuRemt3jMtHryIntuBhg6A
         kmsqOY87seCjATxiNrhqFRLYGJE3W65uUfldv+9CLBR1CcmuqtHtxB2xTDshz8Fn4h9c
         ocmhLBOra2HroS2fhLwjIBALfM+coK/EdwN3qScipTbiaEkiAEvlWDkCr8dOJE+qnier
         c+YP9MEl85Hw+9oo+mprW1QITemyjKGjFES7CHlXLl/xQh+soysK48poRxbVWyv8rZ2J
         mysxhiYDbWqX/WlBdloVKP0A2ewUCX5kvmgcxUzWUI+fo3LqsJfhu1Uf+b9uPlqztBYk
         yrqA==
X-Gm-Message-State: AOAM533OGd6osCeBBbWwczFEdAkaBVodPWMVHmG9JCWiYnSEfnLiQrkI
        SmCBfPtqNqR1PXySFqs+Uy5Nwg==
X-Google-Smtp-Source: ABdhPJz7BYgkTc1Jr7yE94AtJvsLtYwfoFOJxo6erKU4BeLpwnKWJwOinWC2GIqbOH2+0zjtoftLRw==
X-Received: by 2002:a63:c00e:0:b0:398:a2b7:be6 with SMTP id h14-20020a63c00e000000b00398a2b70be6mr1775772pgg.214.1649434961113;
        Fri, 08 Apr 2022 09:22:41 -0700 (PDT)
Received: from j-ThinkPad-E14-Gen-2.domain.name ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id n18-20020a056a0007d200b004fdac35672fsm24929863pfu.68.2022.04.08.09.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 09:22:40 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Inki Dae <inki.dae@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Joonyoung Shim <jy0922.shim@samsung.com>,
        Seung-Woo Kim <sw0312.kim@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Fancy Fang <chen.fang@nxp.com>,
        Tim Harvey <tharvey@gateworks.com>,
        Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
        Adam Ford <aford173@gmail.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 04/11] drm: bridge: samsung-dsim: Add DSI init in bridge pre_enable()
Date:   Fri,  8 Apr 2022 21:51:01 +0530
Message-Id: <20220408162108.184583-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408162108.184583-1-jagan@amarulasolutions.com>
References: <20220408162108.184583-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Host transfer() in DSI master will invoke only when the DSI commands
are sent from DSI devices like DSI Panel or DSI bridges and this
host transfer wouldn't invoke for I2C-based-DSI bridge drivers.

Handling DSI host initialization in transfer calls misses the
controller setup for I2C configured DSI bridges.

This patch adds the DSI initialization from transfer to bridge
pre_enable as the bridge pre_enable API is invoked by core as
it is common across all classes of DSI device drivers.

v1:
* keep DSI init in host transfer

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/bridge/samsung-dsim.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/bridge/samsung-dsim.c b/drivers/gpu/drm/bridge/samsung-dsim.c
index ff05c8e01cff..3e12b469dfa8 100644
--- a/drivers/gpu/drm/bridge/samsung-dsim.c
+++ b/drivers/gpu/drm/bridge/samsung-dsim.c
@@ -1290,6 +1290,13 @@ static void samsung_dsim_atomic_pre_enable(struct drm_bridge *bridge,
 	}
 
 	dsi->state |= DSIM_STATE_ENABLED;
+
+	if (!(dsi->state & DSIM_STATE_INITIALIZED)) {
+		ret = samsung_dsim_init(dsi);
+		if (ret)
+			return;
+		dsi->state |= DSIM_STATE_INITIALIZED;
+	}
 }
 
 static void samsung_dsim_atomic_enable(struct drm_bridge *bridge,
-- 
2.25.1

