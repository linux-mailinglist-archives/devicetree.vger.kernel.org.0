Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A0EB677FD4
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:33:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231569AbjAWPd3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:33:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231724AbjAWPd3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:33:29 -0500
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52AA223C4D
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:33:28 -0800 (PST)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-15ff0a1f735so6094164fac.5
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:33:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RASwLuUQeThiSsPWu6gVcHRtrdGgei4NA5W2fbAqfS4=;
        b=MpkGkvAK8zg7raBn7JnAO94GpkuLzSuzhgW8dPuf69D5CpUqGcUJpiEqJiazUHuhvE
         VkLyEM3aaH1upUjucee7d8iGuquOshZPSukqf0jv0i1hHRaKks4gOkXL/mL32XTlXzdg
         txpl3ElPVgfRxJTdivlpyIDrQDnHlG1M65k/Ynie21K43or8wxhNArs8tQDLtbmebCWY
         DleOxoGE+1eEoGcLA/oOIeAOKZMONnGaRzn36JeTFIY1XeECgd6dDr+/ghbMmXOD1qp9
         togOKcMGg0BmXw3YP+3nOeBFOWmaVAgILiTg1OOsgVJIQ5VDlcXDct+aRcG7cSgiu3fh
         cAWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RASwLuUQeThiSsPWu6gVcHRtrdGgei4NA5W2fbAqfS4=;
        b=n/wmSQ6sY5WJtQo/qXUlsiPWbe4KuRr+baoJRnx0dEy2a4RBgLJ1DSnH5nSADyaZaP
         7AhTs+lU/CawGIbZROMwZOG0CWkGWw7M8VkXcm8XSNl9fAAJEJ3wxI9AbyX4eSmkA7iQ
         w+u/TXB3jOwGF6rhfFIDepD7ZKColAti6qFoJEgLSEbpe5hdCRGSkkh5izVAfW5oj/Jm
         RoDrpjzgGdTlc7e9xyILhv69AQoogDw0f3ny1rxRbIBGDd8zu0XOyVuMHNczlcyIQ+BA
         pzofN1b+pntlle9mvAZ0vS0wDD5BQaoZQAIHzNCryd6Uj/oj+4bI2ogFw7B7DAia1wjE
         WO4Q==
X-Gm-Message-State: AFqh2kpxwExQPs2Rhkm5MJAVLEicJvibfmyF5orPcb1rAXDCBy6QQPjE
        aiYwFjBOjYnUhcImOgGDMl8=
X-Google-Smtp-Source: AMrXdXsbM9F4wGlpe4aZwpMgO9ORzaHzEvZ9t+bcMptOS1cBAnRUwkKGfsjwVBC3v3rt9PszGonIwA==
X-Received: by 2002:a05:6870:6a8b:b0:150:21db:43ea with SMTP id mv11-20020a0568706a8b00b0015021db43eamr12483416oab.36.1674488007673;
        Mon, 23 Jan 2023 07:33:27 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v1-20020a056870708100b0013b9ee734dcsm25459182oae.35.2023.01.23.07.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:33:27 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com, megous@megous.com,
        kernel@puri.sm, agx@sigxcpu.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 2/3] drm/panel: st7703: Rename CMD_UNKNOWN_C6 to CMD_SETECO
Date:   Mon, 23 Jan 2023 09:33:20 -0600
Message-Id: <20230123153321.1314350-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123153321.1314350-1-macroalpha82@gmail.com>
References: <20230123153321.1314350-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

A later revision of the datasheet for the ST7703 refers to this command
as "SETECO".

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Guido Günther <agx@sigxcpu.org>
---
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index 86a472b01360..27049a1d9b3e 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -41,8 +41,8 @@
 #define ST7703_CMD_UNKNOWN_BF	 0xBF
 #define ST7703_CMD_SETSCR	 0xC0
 #define ST7703_CMD_SETPOWER	 0xC1
+#define ST7703_CMD_SETECO	 0xC6
 #define ST7703_CMD_SETPANEL	 0xCC
-#define ST7703_CMD_UNKNOWN_C6	 0xC6
 #define ST7703_CMD_SETGAMMA	 0xE0
 #define ST7703_CMD_SETEQ	 0xE3
 #define ST7703_CMD_SETGIP1	 0xE9
@@ -266,8 +266,7 @@ static int xbd599_init_sequence(struct st7703 *ctx)
 				 * ESD_DET_TIME_SEL = 0 frames
 				 */);
 
-	/* Undocumented command. */
-	dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_C6, 0x01, 0x00, 0xFF, 0xFF, 0x00);
+	dsi_dcs_write_seq(dsi, ST7703_CMD_SETECO, 0x01, 0x00, 0xFF, 0xFF, 0x00);
 
 	dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER,
 			  0x74, /* VBTHS, VBTLS: VGH = 17V, VBL = -11V */
-- 
2.34.1

