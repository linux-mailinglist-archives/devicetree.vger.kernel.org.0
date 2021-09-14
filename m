Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFB2040B8FF
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 22:22:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233875AbhINUXk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 16:23:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233856AbhINUXi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 16:23:38 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 977DEC061764
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 13:22:20 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id m21-20020a17090a859500b00197688449c4so562588pjn.0
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 13:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1eq1EhU+zYDo9mJHJDkG29Ky8UkHJSuUomIxtnQFNyU=;
        b=DbJEGg0xGwg+a49SFAxYOlo+UGjg3cC7kW+wHLhkk+opC8xZLjO4mXNmBmLN/sgtz4
         3hCnSMgXi69PYfleT76+M+3GA9R2GRilBRHJLtDCgx3qOIWsMo+XJolkbO5j0Tp9AmyK
         AAfrHllQnojGW3KNEsEIKeY2DW5KA104z4sII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1eq1EhU+zYDo9mJHJDkG29Ky8UkHJSuUomIxtnQFNyU=;
        b=PjONBWQ3UkG8eqZQ9W0Fp+PH2/AXcbgODrLTCGSOZ+pYPs0CjkS4d+Gmd3lpQHQHK3
         8sdb9jYaEmMEnI0MN+BhIWrl5l3iPwIrWCFVXd+1JDhNRhDHClP50OTHNRnCP4U90IP7
         afX93/23Vk5rZQrjd9wNaAk2XzzTaN6f+NnYKLYtjJ1+yq+ZhapBEkGtI2nYEqMUCGO2
         Xq0JuoptsHew1mWaueCSoZjq3/5G5XOoXdKcB6CANWjnuvuceEeRjh1rhToCSOINfBuj
         cUkZnFtHvNWc9Gnd5boSupd8WM+J9SgoJ7y55VWoyz8WCeesy8E14TDjNR2+nVPQBMZB
         ossw==
X-Gm-Message-State: AOAM533IX8iij9no+I1ED+4ExJwGawuC7+867Gv//+Wwir/SGtrSG7r5
        8kJKeP0VOkUyAZITd1dZYfGTXg==
X-Google-Smtp-Source: ABdhPJxZGuqeY7vVGYlZZdjz3TXxrq4Z8aVX1sSURyw7T47gpo2DGYj+w1EEfxevLORoECmy387ikA==
X-Received: by 2002:a17:90b:3ec6:: with SMTP id rm6mr4119831pjb.68.1631650940174;
        Tue, 14 Sep 2021 13:22:20 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:f38f:9d0f:3eba:f8c4])
        by smtp.gmail.com with ESMTPSA id 141sm12185393pgg.16.2021.09.14.13.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 13:22:19 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, Steev Klimaszewski <steev@kali.org>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Linus W <linus.walleij@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Jani Nikula <jani.nikula@intel.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v5 02/15] drm/edid: Break out reading block 0 of the EDID
Date:   Tue, 14 Sep 2021 13:21:49 -0700
Message-Id: <20210914132020.v5.2.I62e76a034ac78c994d40a23cd4ec5aeee56fa77c@changeid>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
In-Reply-To: <20210914202202.1702601-1-dianders@chromium.org>
References: <20210914202202.1702601-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A future change wants to be able to read just block 0 of the EDID, so
break it out of drm_do_get_edid() into a sub-function.

This is intended to be a no-op change--just code movement.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---

(no changes since v4)

Changes in v4:
- "u8 *edid" => "void *edid" to avoid cast.
- Don't put kmalloc() in the "if" test even if the old code did.
- drm_do_get_edid_blk0() => drm_do_get_edid_base_block()

 drivers/gpu/drm/drm_edid.c | 63 +++++++++++++++++++++++++++-----------
 1 file changed, 45 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 6325877c5fd6..520fe1391769 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1905,6 +1905,44 @@ int drm_add_override_edid_modes(struct drm_connector *connector)
 }
 EXPORT_SYMBOL(drm_add_override_edid_modes);
 
+static struct edid *drm_do_get_edid_base_block(
+	int (*get_edid_block)(void *data, u8 *buf, unsigned int block,
+			      size_t len),
+	void *data, bool *edid_corrupt, int *null_edid_counter)
+{
+	int i;
+	void *edid;
+
+	edid = kmalloc(EDID_LENGTH, GFP_KERNEL);
+	if (edid == NULL)
+		return NULL;
+
+	/* base block fetch */
+	for (i = 0; i < 4; i++) {
+		if (get_edid_block(data, edid, 0, EDID_LENGTH))
+			goto out;
+		if (drm_edid_block_valid(edid, 0, false, edid_corrupt))
+			break;
+		if (i == 0 && drm_edid_is_zero(edid, EDID_LENGTH)) {
+			if (null_edid_counter)
+				(*null_edid_counter)++;
+			goto carp;
+		}
+	}
+	if (i == 4)
+		goto carp;
+
+	return edid;
+
+carp:
+	kfree(edid);
+	return ERR_PTR(-EINVAL);
+
+out:
+	kfree(edid);
+	return NULL;
+}
+
 /**
  * drm_do_get_edid - get EDID data using a custom EDID block read function
  * @connector: connector we're probing
@@ -1938,25 +1976,16 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 	if (override)
 		return override;
 
-	if ((edid = kmalloc(EDID_LENGTH, GFP_KERNEL)) == NULL)
+	edid = (u8 *)drm_do_get_edid_base_block(get_edid_block, data,
+						&connector->edid_corrupt,
+						&connector->null_edid_counter);
+	if (IS_ERR_OR_NULL(edid)) {
+		if (IS_ERR(edid))
+			connector_bad_edid(connector, edid, 1);
 		return NULL;
-
-	/* base block fetch */
-	for (i = 0; i < 4; i++) {
-		if (get_edid_block(data, edid, 0, EDID_LENGTH))
-			goto out;
-		if (drm_edid_block_valid(edid, 0, false,
-					 &connector->edid_corrupt))
-			break;
-		if (i == 0 && drm_edid_is_zero(edid, EDID_LENGTH)) {
-			connector->null_edid_counter++;
-			goto carp;
-		}
 	}
-	if (i == 4)
-		goto carp;
 
-	/* if there's no extensions, we're done */
+	/* if there's no extensions or no connector, we're done */
 	valid_extensions = edid[0x7e];
 	if (valid_extensions == 0)
 		return (struct edid *)edid;
@@ -2010,8 +2039,6 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 
 	return (struct edid *)edid;
 
-carp:
-	connector_bad_edid(connector, edid, 1);
 out:
 	kfree(edid);
 	return NULL;
-- 
2.33.0.309.g3052b89438-goog

