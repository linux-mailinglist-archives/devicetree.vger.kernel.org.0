Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1C0F6E4BAA
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 16:39:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230461AbjDQOjZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 10:39:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230190AbjDQOjR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 10:39:17 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D5425FC4
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:39:15 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id by8so26518125ljb.13
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681742353; x=1684334353;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vfZDVg8acR2SKXDmnGE2uGGT4RT4YcuN/C99IcV99uQ=;
        b=wiuTpFK+nWG3951r1qdKkM3efc1mIO0xc7L3tK1Rs7ECSqy5Wt3rrpaotfOfz5CJDK
         D41+M3aHs+cUv1SIa4rt/ubzWSAjrOjvIcyk9BT0kOiNmapG9P48KAGxl9av9mwWZQwG
         /MOMRiqPhsf6EnnkABW1UdHlaOceRhuiti+y7IvtJjruZKUzGA92drD+gUiEAEWUYI41
         DV844hjjFtBamUAMbd+JusbFvq4IWI0BfLntwCbxKsuAR0u7LgcxlS6lWUoM/tOZlzgz
         Jq5lyiu3iUCjpVHOgm+iRDM47+12IxDtAEyARnW06F4PRHz9vZMy5FQQ972O/LbLLm2h
         WUFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681742353; x=1684334353;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vfZDVg8acR2SKXDmnGE2uGGT4RT4YcuN/C99IcV99uQ=;
        b=XbTP/F1sRz81XgRgrl9bw+kYhN1oysWhYZtgQv9Hv3obVV5lO6zh8PbDuD/FoUwcou
         J4JbYEnC8mKqiJPNVX41Xv5b8K3wJSj37sLUx2x+irM62LH9wQN92uSHjbIq1LFBSu4X
         HAaaMRxwVPjIB7WHTMzhKdExJ0b05VASqn4Q2gccJTT10yD1HEHgI1SthaxeKYYox75c
         pY3c2mmy6ap032mOGvelHOPYXgp1Yb0z86HpKTrqB37AFsDqvZplW8YTrl53k+KGUYyR
         v0W8epFn5OZ2zje6mCw0yr75m/gUdnZ1jwxCU8+EEeYh9RWm0unLxJ0X2NSrl/Qe4E9A
         4nCg==
X-Gm-Message-State: AAQBX9cuSwrDaOj99CjWazedF6NaCguI1RIvwP+UV/xyZ3dWIZQij3wr
        lhyaYfv9c3rGdparkZZGwoI+GnsbaHCTr5H/XVs=
X-Google-Smtp-Source: AKy350ZwJrsG8n19CsEttEydK+XkaaRhRbNiFoxesa/6Fz8OsxOddCHQZw63KQJPJlg9+X0bQL+7Jg==
X-Received: by 2002:a2e:b16e:0:b0:2a7:a59c:8ad0 with SMTP id a14-20020a2eb16e000000b002a7a59c8ad0mr4192846ljm.2.1681742353572;
        Mon, 17 Apr 2023 07:39:13 -0700 (PDT)
Received: from [192.168.1.101] (abyk99.neoplus.adsl.tpnet.pl. [83.9.30.99])
        by smtp.gmail.com with ESMTPSA id 2-20020a2eb282000000b002a76b9e4058sm2235785ljx.43.2023.04.17.07.39.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 07:39:13 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 17 Apr 2023 16:39:05 +0200
Subject: [PATCH v3 3/4] drm/panel: nt36523: Get orientation from OF
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230412-topic-lenovopanel-v3-3-bcf9ba4de46f@linaro.org>
References: <20230412-topic-lenovopanel-v3-0-bcf9ba4de46f@linaro.org>
In-Reply-To: <20230412-topic-lenovopanel-v3-0-bcf9ba4de46f@linaro.org>
To:     Jianhua Lu <lujianhua000@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1681742347; l=2068;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=pdWLeHccDvo0CLmZJATdV9aHqMgeBmhMVIeYiCuYKCc=;
 b=LUrTUaEn8X0twowhoCQRfIeIIMED6UchNvHwT4QrNhD6Vj+l42sWFzkIdE1jAYJGhdjTiiovJuiA
 fxUs8DR1CFaJIdN88iO7ynlRGQvMKmRLweI9zyKkaTC4X63lPAm7
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some bright vendors mount their display panels upside down. Add the
required pieces to allow for accounting for that.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Jianhua Lu <lujianhua000@gmail.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/panel/panel-novatek-nt36523.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-novatek-nt36523.c b/drivers/gpu/drm/panel/panel-novatek-nt36523.c
index b0466abae812..2c5712ac3037 100644
--- a/drivers/gpu/drm/panel/panel-novatek-nt36523.c
+++ b/drivers/gpu/drm/panel/panel-novatek-nt36523.c
@@ -31,6 +31,7 @@ struct panel_info {
 	struct drm_panel panel;
 	struct mipi_dsi_device *dsi[2];
 	const struct panel_desc *desc;
+	enum drm_panel_orientation orientation;
 
 	struct gpio_desc *reset_gpio;
 	struct backlight_device *backlight;
@@ -674,11 +675,19 @@ static int nt36523_get_modes(struct drm_panel *panel,
 	return pinfo->desc->num_modes;
 }
 
+static enum drm_panel_orientation nt36523_get_orientation(struct drm_panel *panel)
+{
+	struct panel_info *pinfo = to_panel_info(panel);
+
+	return pinfo->orientation;
+}
+
 static const struct drm_panel_funcs nt36523_panel_funcs = {
 	.disable = nt36523_disable,
 	.prepare = nt36523_prepare,
 	.unprepare = nt36523_unprepare,
 	.get_modes = nt36523_get_modes,
+	.get_orientation = nt36523_get_orientation,
 };
 
 static int nt36523_bl_update_status(struct backlight_device *bl)
@@ -785,6 +794,12 @@ static int nt36523_probe(struct mipi_dsi_device *dsi)
 	mipi_dsi_set_drvdata(dsi, pinfo);
 	drm_panel_init(&pinfo->panel, dev, &nt36523_panel_funcs, DRM_MODE_CONNECTOR_DSI);
 
+	ret = of_drm_get_panel_orientation(dev->of_node, &pinfo->orientation);
+	if (ret < 0) {
+		dev_err(dev, "%pOF: failed to get orientation %d\n", dev->of_node, ret);
+		return ret;
+	}
+
 	if (pinfo->desc->has_dcs_backlight) {
 		pinfo->panel.backlight = nt36523_create_backlight(dsi);
 		if (IS_ERR(pinfo->panel.backlight))

-- 
2.40.0

