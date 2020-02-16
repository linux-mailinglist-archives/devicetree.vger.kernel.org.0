Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C482016053E
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2020 19:15:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725993AbgBPSPn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Feb 2020 13:15:43 -0500
Received: from mail-lj1-f194.google.com ([209.85.208.194]:40906 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726245AbgBPSPn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Feb 2020 13:15:43 -0500
Received: by mail-lj1-f194.google.com with SMTP id n18so16218902ljo.7
        for <devicetree@vger.kernel.org>; Sun, 16 Feb 2020 10:15:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=33Aa2izxtwEPzYC7l4F31UmNGNdX0m2AsFxSYjTDFdc=;
        b=VIEjHHI8GF1zAkZEhcNK1OILEITDRWIAWCZYE27AteduhWEtrJVWPqwHhgd5WLmH7T
         qBzoVEW44FyCQ/+RAbo7B+re4yd8HysqwVHdtJPUDY146+hncNRhzFBKt7S3fhZ2SmxC
         J7bBo8lU1TJ37jDk+96vr9471ZZ1Zpzu8upJUrr6T6f+fv7TROV9itHTODLUwyXJFkmP
         tX5HLYcqtbeXqzwLmn4B+4JqDQazE3tpIGYjnRFr5QBNfxdvb93oJ49wn/VZrbLJ8tDL
         F2v9eA0nhhGGa0GuSKzWVpC+t39oR3X6HrZHB3iZtViIEEbErIMl59ab4Y3drSuTnyCI
         JE4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=33Aa2izxtwEPzYC7l4F31UmNGNdX0m2AsFxSYjTDFdc=;
        b=DbPv8s9cdhBmEH7VSFf+sEY8BRWbMRT5C57Uvn1kjcLP7aKnN90fTvf9eQ5mjMn6te
         1jB6aWBZ/vCDyBsOVXRCxx9bHxecHPWwT7BEwLiCsRNd3G0iHQwk3z3AQh8tvnQwg7jg
         eGDL4AkBPQ7cr/S55JUkcnw8uBsFsivulB36V0Jy97ppKMYPZcHOKLJajMqHKC97xL9v
         rN0NV1gjFOVl+qI7YrCZtfhuTfPLGxnNUUdpE7fiiZE+ggHo3VH3N9kkxJgPJwef8u4k
         RhnSXpHpd4TGzBM0CjBqAscx2vZdwR+Rw794t84ix97yBcnDsjWw3VAdj+sv4MOt6Yo5
         IREQ==
X-Gm-Message-State: APjAAAWEyjlUuBqehIvoM7wtv2ajULt1DqUr3aoCuwJ7ZT92GJEK35cp
        IbhOeFhjzfYI3GscezuG0g4=
X-Google-Smtp-Source: APXvYqxeygWCOpQcbzOwzQy0BronUvWVO6SPsimmaC8yUEs/L2dPBy7xSmyqFrBQk2fbKcWUp6e/nQ==
X-Received: by 2002:a2e:8952:: with SMTP id b18mr7510182ljk.280.1581876940282;
        Sun, 16 Feb 2020 10:15:40 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
        by smtp.gmail.com with ESMTPSA id u15sm6157431lfl.87.2020.02.16.10.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Feb 2020 10:15:39 -0800 (PST)
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Rob Herring <robh@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
        Maxime Ripard <mripard@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: [RFC PATCH v3 5/5] drm/panel: simple: add panel-dpi support
Date:   Sun, 16 Feb 2020 19:15:13 +0100
Message-Id: <20200216181513.28109-6-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200216181513.28109-1-sam@ravnborg.org>
References: <20200216181513.28109-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RFC only - not tested yet!

The panel-dpi compatible is a fallback that
allows the DT to specify the timing.

When matching panel-dpi expect the device tree to include the
timing information for the display-panel.

Background for this change:
There are a lot of panels and new models hits the market very often.
It is a lost cause trying to chase them all and users of new panels
will often find them in situations that the panel they ues are not
supported by the kernel.
On top of this a lot of panels are customized based on customer
specifications.

Including the panel timing in the device tree allows for a simple
way to describe the actual HW and use this description in a generic
way in the kernel.
This allows uses of proprietary panels, or panels which are not
included in the kernel, to specify the timing in the device tree
together with all the other HW descriptions.
And thus, using the device tree it is then easy to add support
for an otherwise unknown panel.

The current support expect panels that do not require any
delays for prepare/enable/disable/unprepare.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 74 +++++++++++++++++++++++++++-
 1 file changed, 72 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 82363d05bad4..188526637398 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -351,6 +351,65 @@ static const struct drm_panel_funcs panel_simple_funcs = {
 	.get_timings = panel_simple_get_timings,
 };
 
+static struct panel_desc panel_dpi;
+
+static int panel_dpi_probe(struct device *dev,
+			   struct panel_simple *panel)
+{
+	struct display_timing *timing;
+	const struct device_node *np;
+	struct panel_desc *desc;
+	unsigned int bus_flags;
+	struct videomode vm;
+	const char *mapping;
+	int ret;
+
+	np = dev->of_node;
+	desc = devm_kzalloc(dev, sizeof(*desc), GFP_KERNEL);
+	if (!desc)
+		return -ENOMEM;
+
+	timing = devm_kzalloc(dev, sizeof(*timing), GFP_KERNEL);
+	if (!timing)
+		return -ENOMEM;
+
+	ret = of_get_display_timing(np, "panel-timing", timing);
+	if (ret < 0) {
+		dev_err(dev, "%pOF: no panel-timing node found for \"panel-dpi\" binding\n",
+			np);
+		return ret;
+	}
+
+	desc->timings = timing;
+	desc->num_timings = 1;
+
+	of_property_read_u32(np, "width-mm", &desc->size.width);
+	of_property_read_u32(np, "height-mm", &desc->size.height);
+
+	of_property_read_string(np, "data-mapping", &mapping);
+	if (!strcmp(mapping, "rgb24"))
+		desc->bus_format = MEDIA_BUS_FMT_RGB888_1X24;
+	else if (!strcmp(mapping, "rgb565"))
+		desc->bus_format = MEDIA_BUS_FMT_RGB565_1X16;
+	else if (!strcmp(mapping, "bgr666"))
+		desc->bus_format = MEDIA_BUS_FMT_RGB666_1X18;
+	else if (!strcmp(mapping, "lvds666"))
+		desc->bus_format = MEDIA_BUS_FMT_RGB666_1X24_CPADHI;
+
+	/* Extract bus_flags from display_timing */
+	bus_flags = 0;
+	vm.flags = timing->flags;
+	drm_bus_flags_from_videomode(&vm, &bus_flags);
+	desc->bus_flags = bus_flags;
+
+	/* We do not know the connector for the DT node, so guess it */
+	desc->connector_type = DRM_MODE_CONNECTOR_DPI;
+
+	panel->desc = desc;
+
+	return 0;
+}
+
 #define PANEL_SIMPLE_BOUNDS_CHECK(to_check, bounds, field) \
 	(to_check->field.typ >= bounds->field.min && \
 	 to_check->field.typ <= bounds->field.max)
@@ -437,8 +496,15 @@ static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
 			return -EPROBE_DEFER;
 	}
 
-	if (!of_get_display_timing(dev->of_node, "panel-timing", &dt))
-		panel_simple_parse_panel_timing_node(dev, panel, &dt);
+	if (desc == &panel_dpi) {
+		/* Handle the generic panel-dpi binding */
+		err = panel_dpi_probe(dev, panel);
+		if (err)
+			goto free_ddc;
+	} else {
+		if (!of_get_display_timing(dev->of_node, "panel-timing", &dt))
+			panel_simple_parse_panel_timing_node(dev, panel, &dt);
+	}
 
 	drm_panel_init(&panel->base, dev, &panel_simple_funcs,
 		       desc->connector_type);
@@ -3688,6 +3754,10 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "winstar,wf35ltiacd",
 		.data = &winstar_wf35ltiacd,
+	}, {
+		/* Must be the last entry */
+		.compatible = "panel-dpi",
+		.data = &panel_dpi,
 	}, {
 		/* sentinel */
 	}
-- 
2.20.1

