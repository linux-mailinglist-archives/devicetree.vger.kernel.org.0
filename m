Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D36F02DB26
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 12:57:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726828AbfE2K5A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 06:57:00 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:45631 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726518AbfE2K5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 06:57:00 -0400
Received: by mail-pf1-f193.google.com with SMTP id s11so1373655pfm.12
        for <devicetree@vger.kernel.org>; Wed, 29 May 2019 03:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iSfl8JfPaQ3eWtHD/XH3XcXi2ZhQvwGTja3e/CsvDhE=;
        b=BqMnNZJPVSyBNKhXZnG6jfq6xiFnuJvAVG5+M7y4c5sF/jqrlNUUSyuZGwy9Ue1GAl
         /ZCmlEhIuIZTCKvvoYUcUillYwzG0xAmYGy4+fzPByhP8dxCPBpbm0pgxJ2zppZ+Te2Y
         BZ4uWoRTtZDRHvbsNoPw0gJh6BQWkj2hEe6LM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iSfl8JfPaQ3eWtHD/XH3XcXi2ZhQvwGTja3e/CsvDhE=;
        b=YO/xtbZP0ewwbzQ7/theRkxXTPCUlodorEdRan0txMmKiVZ/m4dWd7OEQ50aM7EzNG
         OQmliRx1I2cTozfg9JV1ZTUGykid908XDZKpfk61pV+a/tQNtY4NgmIT5aIzG5jYhE7e
         rlARLYlT5b8l/3Xbb6rs2hkzcmcQ79/bWf3cGWOZ0LWc9CdY7ShdYrVzNGTS6Meq0RBU
         sbNMkUUnizt7sLCI5XCQYhRT0VRBNQTGXui9n8hZU5sZbcViWDIgDFU+UFjDqkzlPYr3
         AR/4miifLai1gF6o5Kd2krYaBUSHLP2l7YVpKZjBjNyTunxotYYeDfPRxmPJL6o6TvrK
         gsYg==
X-Gm-Message-State: APjAAAVQqPaxO+mJ7LNI4w2yzk2+3v71dL/6qNnpYt3u/2VYNOakUTuE
        qAwZbA834O9gjiGYb+hMR8jO3w==
X-Google-Smtp-Source: APXvYqwjQXmck+YR2a+RbiuBNeM9299Ahq/O4xsRX52B+BRoeJVrH63dlJOqwyKqlbylxBRGMHiCMQ==
X-Received: by 2002:a17:90a:240c:: with SMTP id h12mr11640162pje.12.1559127419415;
        Wed, 29 May 2019 03:56:59 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
        by smtp.gmail.com with ESMTPSA id 184sm18974479pfa.48.2019.05.29.03.56.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 May 2019 03:56:58 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
        linux-amarula@amarulasolutions.com,
        Sergey Suloev <ssuloev@orpaltech.com>,
        Ryan Pannell <ryan@osukl.com>, bshah@mykolab.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v9 4/9] drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
Date:   Wed, 29 May 2019 16:26:10 +0530
Message-Id: <20190529105615.14027-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190529105615.14027-1-jagan@amarulasolutions.com>
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MIPI DSI controller in Allwinner A64 is similar to A33.

But unlike A33, A64 doesn't have DSI_SCLK gating so add compatible
for Allwinner A64 with uninitialized has_mod_clk driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index ef878175a79b..dd68fd0888c9 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1304,11 +1304,18 @@ static const struct sun6i_dsi_variant sun6i_a31_mipi_dsi = {
 	.has_mod_clk = true,
 };
 
+static const struct sun6i_dsi_variant sun50i_a64_mipi_dsi = {
+};
+
 static const struct of_device_id sun6i_dsi_of_table[] = {
 	{
 		.compatible = "allwinner,sun6i-a31-mipi-dsi",
 		.data = &sun6i_a31_mipi_dsi,
 	},
+	{
+		.compatible = "allwinner,sun50i-a64-mipi-dsi",
+		.data = &sun50i_a64_mipi_dsi,
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, sun6i_dsi_of_table);
-- 
2.18.0.321.gffc6fa0e3

