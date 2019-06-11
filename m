Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BCEF53C1E3
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 06:04:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390402AbfFKEEC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 00:04:02 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:45595 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389561AbfFKEEB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 00:04:01 -0400
Received: by mail-pg1-f195.google.com with SMTP id w34so6143015pga.12
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2019 21:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=M8dK47yPhynvSehskkuhR0uoKpp2uUP0x/D6+OPbrUg=;
        b=CcUYJwRYFPcbjY4eu0n/t203Kb6yWjUPmTkt3aooyO0UUZofpy4cpboC6TwF076Ios
         ZWILIMTCOWl4KnH2TWGccw1JJqig6+YYtxMUTrG3nlZqucwadYAgNXi6pGreSG31TIXb
         RJFX+AUwh7s4gdYWU+Ew7z54dQtjsrzL7NH6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=M8dK47yPhynvSehskkuhR0uoKpp2uUP0x/D6+OPbrUg=;
        b=dZ74xMwxCrtK539DZ83y4spLwlsvH5Xib/i/TFbp+HqZu1elOU7az7YupQcquuGfhQ
         r575H3ptlHFYbSRHRUSuG8Cw/c39Edd3yZNUEzcnr+vuIqLN7Fflnt6vpgFDT3n6l1CT
         3QX3pM3KZlSAuWnO43OfHdQxLUdy/90JCVaM7IFW4WjSf/FeFkIElyqhtpbPAhJRKA1E
         fzn2yLDHNTUCB4aArWDpCqhBrz7GmssHhv4JB4ZaOTLtocfQvxp9g/YvpfICBPB/2iur
         ZNJ2i7DPjBNO45QRw/a3CbCebjsHievh2SX37ltf8MvuB8o/1xV3VZ/zObvWUxT/srLH
         HHyw==
X-Gm-Message-State: APjAAAWpqHofaMpHa0ssTEp4djATqrkmXbU+4tI6l5pWCnO95TzZFVPy
        wIiliUZt9hgnmEK7CTuBgdUVNQ==
X-Google-Smtp-Source: APXvYqzfYIuckJzyOvuDvYV3JLxaoW5r0AK9O0deBBd8fMs6LODhYT7Aj2K7vKmQFzwpcjHKS1s46A==
X-Received: by 2002:aa7:804c:: with SMTP id y12mr76278547pfm.94.1560225841344;
        Mon, 10 Jun 2019 21:04:01 -0700 (PDT)
Received: from exogeni.mtv.corp.google.com ([2620:15c:202:1:5be8:f2a6:fd7b:7459])
        by smtp.gmail.com with ESMTPSA id y133sm13301185pfb.28.2019.06.10.21.04.00
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 10 Jun 2019 21:04:00 -0700 (PDT)
From:   Derek Basehore <dbasehore@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        CK Hu <ck.hu@mediatek.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        intel-gfx@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Derek Basehore <dbasehore@chromium.org>
Subject: [PATCH 5/5] drm/mtk: add panel orientation property
Date:   Mon, 10 Jun 2019 21:03:50 -0700
Message-Id: <20190611040350.90064-6-dbasehore@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611040350.90064-1-dbasehore@chromium.org>
References: <20190611040350.90064-1-dbasehore@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This inits the panel orientation property for the mediatek dsi driver
if the panel orientation (connector.display_info.panel_orientation) is
not DRM_MODE_PANEL_ORIENTATION_UNKNOWN.

Signed-off-by: Derek Basehore <dbasehore@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 4a0b9150a7bb..08ffdc7526dd 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -782,10 +782,18 @@ static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
 			DRM_ERROR("Failed to attach panel to drm\n");
 			goto err_connector_cleanup;
 		}
+
+		ret = drm_connector_init_panel_orientation_property(&dsi->conn);
+		if (ret) {
+			DRM_ERROR("Failed to init panel orientation\n");
+			goto err_panel_detach;
+		}
 	}
 
 	return 0;
 
+err_panel_detach:
+	drm_panel_detach(dsi->panel);
 err_connector_cleanup:
 	drm_connector_cleanup(&dsi->conn);
 	return ret;
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog

