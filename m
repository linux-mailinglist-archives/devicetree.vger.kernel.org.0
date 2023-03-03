Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9C1D6A998C
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 15:34:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230057AbjCCOey (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 09:34:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231362AbjCCOem (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 09:34:42 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 695871632F
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 06:34:28 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id u5so2835846plq.7
        for <devicetree@vger.kernel.org>; Fri, 03 Mar 2023 06:34:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1677854067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1mSCOEOZwzSe4923gv/lNmAI3ycw4GWSqU0gMJqiLLo=;
        b=AGaD40dojqpatUV6OK0VH7EFEQ2f8L7gm8KFO7t1tKybUfhbjsuAeBpCTIh0g8dX1C
         Vb8448kxRNXXDZ/M9E1FYhYlT7cdc5iKzb7INg3gHb9eEioavVt1NiNfi+h5YhGX7qMg
         no6zYPiori0O301ujrZ9lB+Fk/LUreDTAFyHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677854067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1mSCOEOZwzSe4923gv/lNmAI3ycw4GWSqU0gMJqiLLo=;
        b=KaUJBRlC9KqrPwGDAA1ztgCdFM2l6c0sw3sYCb/X/0lXzxEOYsV6cr012XU8Alus5Y
         EUia+JKiDoqlPbjWgASbUuSJbytf8QokF3eC62vZbXaNDT51SxUJqpxnYFoL8R0GqiQu
         X1n/+NZGeQpR5Z3p8UduO3UyEpNzSWrLUp3hRfUXFdTbhGwJOJy1Oks3GWceMNz9VuTt
         YzjwAlAYSR/UBbYikjOWgrKzApg0ngE4ubpydd974urG1+hhJI5h1wipf7mn02mG8vjQ
         P+ty5yqP+JylPQqy3ZIjO/Jvc2BTrB16CIWLR+7MzAaHqsYJ3grPuUYKTizeBEBlqrm2
         0uQw==
X-Gm-Message-State: AO0yUKU1zpfmDw0X3lqbEYj87/J9FBPYHk+AV65ZLJjoEuRkhsfC0BvG
        TRi4VQeAegovW98euuWrQcPnNQ==
X-Google-Smtp-Source: AK7set+pyUWzedW/NgMwm/VObu1a/KNPG+Slpi+Dwb1JCgHod2AcrWpNOV6WLtxyHsksdq3I4V1eXg==
X-Received: by 2002:a05:6a20:8f04:b0:cc:f27d:eb83 with SMTP id b4-20020a056a208f0400b000ccf27deb83mr2609226pzk.53.1677854067699;
        Fri, 03 Mar 2023 06:34:27 -0800 (PST)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:55e5:8423:31ee:83dd])
        by smtp.gmail.com with ESMTPSA id c18-20020aa781d2000000b005a8b4dcd21asm1767214pfn.15.2023.03.03.06.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Mar 2023 06:34:27 -0800 (PST)
From:   Pin-yen Lin <treapking@chromium.org>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Prashant Malani <pmalani@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>
Cc:     Xin Ji <xji@analogixsemi.com>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Lyude Paul <lyude@redhat.com>, linux-kernel@vger.kernel.org,
        Pin-yen Lin <treapking@chromium.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        chrome-platform@lists.linux.dev,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>, Marek Vasut <marex@denx.de>,
        Hsin-Yi Wang <hsinyi@chromium.org>, devicetree@vger.kernel.org,
        Allen Chen <allen.chen@ite.com.tw>,
        dri-devel@lists.freedesktop.org,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Stephen Boyd <swboyd@chromium.org>, linux-acpi@vger.kernel.org,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Subject: [PATCH v13 05/10] drm/bridge: anx7625: Check for Type-C during panel registration
Date:   Fri,  3 Mar 2023 22:33:45 +0800
Message-Id: <20230303143350.815623-6-treapking@chromium.org>
X-Mailer: git-send-email 2.40.0.rc0.216.gc4246ad0f0-goog
In-Reply-To: <20230303143350.815623-1-treapking@chromium.org>
References: <20230303143350.815623-1-treapking@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The output port endpoints can be connected to USB-C connectors.
Running drm_of_find_panel_or_bridge() with such endpoints leads to
a continuous return value of -EPROBE_DEFER, even though there is
no panel present.

To avoid this, check for the existence of a "mode-switch" property in
the port endpoint, and skip panel registration completely if so.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

Changes in v13:
- Use the new typec_mode_switch_node_count helper

Changes in v12:
- Updated to use fwnode_for_each_typec_mode_switch macro
- Dropped collected tags

Changes in v10:
- Collected Reviewed-by and Tested-by tags

Changes in v6:
- New in v6

 drivers/gpu/drm/bridge/analogix/anx7625.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
index 6846199a2ee1..3f6bf7674d32 100644
--- a/drivers/gpu/drm/bridge/analogix/anx7625.c
+++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
@@ -1648,7 +1648,8 @@ static int anx7625_get_swing_setting(struct device *dev,
 static int anx7625_parse_dt(struct device *dev,
 			    struct anx7625_platform_data *pdata)
 {
-	struct device_node *np = dev->of_node, *ep0;
+	struct device_node *np = dev->of_node, *ep0, *port_node;
+	unsigned int count;
 	int bus_type, mipi_lanes;
 
 	anx7625_get_swing_setting(dev, pdata);
@@ -1687,6 +1688,15 @@ static int anx7625_parse_dt(struct device *dev,
 	if (of_property_read_bool(np, "analogix,audio-enable"))
 		pdata->audio_en = 1;
 
+	/*
+	 * Don't bother finding a panel if a Type-C `mode-switch` property is
+	 * present in one of the endpoints in the output port.
+	 */
+	port_node = of_graph_get_port_by_id(np, 1);
+	count = typec_mode_switch_node_count(&port_node->fwnode);
+	if (count)
+		return 0;
+
 	pdata->panel_bridge = devm_drm_of_get_bridge(dev, np, 1, 0);
 	if (IS_ERR(pdata->panel_bridge)) {
 		if (PTR_ERR(pdata->panel_bridge) == -ENODEV) {
-- 
2.40.0.rc0.216.gc4246ad0f0-goog

