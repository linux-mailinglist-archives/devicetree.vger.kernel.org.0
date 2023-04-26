Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0A4D6EF677
	for <lists+devicetree@lfdr.de>; Wed, 26 Apr 2023 16:32:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241171AbjDZOcd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Apr 2023 10:32:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240500AbjDZOcc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Apr 2023 10:32:32 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD1F03591
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 07:32:26 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6a5fe25d190so6881889a34.2
        for <devicetree@vger.kernel.org>; Wed, 26 Apr 2023 07:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682519546; x=1685111546;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=340VE8yyciE0VVNXRcAMeTlRfiO46LMQpmeQ1hUKh7g=;
        b=UJrS7ew6Y5c+2wzJDLja6RehbZbiME1vU2/NLKU5WkoLvX6WRcRycGBOfeDt3CSQdn
         Iq4XxcehcrfdoDJSALuQ0esDZ70xwkJge67LXUIuXtan1eipJ1XhbLso+Dkx61SwlCYk
         +CG105rYwicn9YAGSyH+GqhY3tcy1uMFB7jCtFkLORF9Yur/jLfaD9GEKXhOW3Ts3EZd
         sG3qPHTWUfktSOkVlzSaNzlfsrX6OdX6A/K8ZvvP7WHbvaGTnrsds126gaKmlOrt1BSX
         fqhgAtOsGWPMF18QIn9bfrYNEPTnFsLv68eXfc1RB1rEPMjGeQLbatcN7jNgJZ9JoxbQ
         Ckbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682519546; x=1685111546;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=340VE8yyciE0VVNXRcAMeTlRfiO46LMQpmeQ1hUKh7g=;
        b=P1/FNoqu0whSNI6Pq5xPwJodiP7g1bejIDbfsf0KJexqbGqt/p4Q8pjOp5RD5ir182
         di9MCEz5EXD2b1kEE6cjGD2Qz3TKtFzwij3id4L9nqagD19MrQ66uB0pyq7xHgQ2YfIw
         9d4bcbdgkviv1ixIYt4pR+yKpyAO7uDol4xKZgxAxc5auJie5I6q+48OvI/zCzF98eA0
         tzmzIzBCmO4E/acqEhdyx6D5QxL2WWN7OjYjhdjhwNuLtWZbWcyqCSvgFmS2WlHhlPoV
         jtp9duJinzX5i+k0Q555VQXtralHXh3sjALmGl31gqE0lVLeqK1Yg/obpZXfldBFmA9J
         Utpg==
X-Gm-Message-State: AAQBX9eiQFTTDnSVbWVdONfmiojkmVITaUFHrNLbWqNKP6WfdPpzA42h
        bPIM0sPpiKQXPoS0dvv5zXIoVFkm3Wg=
X-Google-Smtp-Source: AKy350Z1kM6FryOxsjjecboR7nQFlr53tk49FDbyoz6TRIZdc7AgHCX6l/VN3HYhWClMsv1CORwxWQ==
X-Received: by 2002:a9d:7cca:0:b0:6a6:52a4:5e49 with SMTP id r10-20020a9d7cca000000b006a652a45e49mr6231046otn.12.1682519546144;
        Wed, 26 Apr 2023 07:32:26 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z18-20020a05683010d200b006a32ba92994sm2613502oto.23.2023.04.26.07.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 07:32:25 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, neil.armstrong@linaro.org, megous@megous.com,
        kernel@puri.sm, agx@sigxcpu.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 2/3] drm/panel: st7703: Rename CMD_UNKNOWN_C6 to CMD_SETECO
Date:   Wed, 26 Apr 2023 09:32:12 -0500
Message-Id: <20230426143213.4178586-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230426143213.4178586-1-macroalpha82@gmail.com>
References: <20230426143213.4178586-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
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
index 6747ca237ced..fc55b5fbb67f 100644
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
@@ -249,8 +249,7 @@ static int xbd599_init_sequence(struct st7703 *ctx)
 				      * ESD_DET_TIME_SEL = 0 frames
 				      */);
 
-	/* Undocumented command. */
-	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_C6, 0x01, 0x00, 0xFF, 0xFF, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETECO, 0x01, 0x00, 0xFF, 0xFF, 0x00);
 
 	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER,
 			       0x74, /* VBTHS, VBTLS: VGH = 17V, VBL = -11V */
-- 
2.34.1

