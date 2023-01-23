Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10B5F6784FB
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 19:34:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232095AbjAWSd7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 13:33:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230109AbjAWSd6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 13:33:58 -0500
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 225F41167D
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 10:33:58 -0800 (PST)
Received: by mail-pl1-x630.google.com with SMTP id k18so12319081pll.5
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 10:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KluKCAa6YX6SEiHCb+K0lwQ5ic13qC13jJxMxmSzcVI=;
        b=C4jpQxfSZ2yJHpLCVj+hAIMSrI8G2bP4HDxsiKHH2mhPlb5Qnr1iviECTqZm40OLHy
         ezBfDfzr18EBmIq9T9t27i0JJSbFiu0wM0N59v7EuBZGWulqDb4YDp4khewWVzFt6hee
         HAKSXPed8njQMqsB5tkiOe+Re9DRc2sPcTgqeIA9gWX6V+zxLaow9obF2oqLWKGuWgQ3
         AmiQIXvLrLOjPhMCzJknr8ClZn++nhJgBRu6zdGN+Xx/BmRV0u2suaReK4l4Gske6uoz
         Ph+0HntswzEzmVZhImQrY4ragWhlKvo/s/kXol7mZSkOCwoBPo0zQIKa9qEI+xfmzCOn
         EdCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KluKCAa6YX6SEiHCb+K0lwQ5ic13qC13jJxMxmSzcVI=;
        b=WaX4M4SsaHSeZ/IiG0q4/Bhb3OrlsGYugXkZuleO3N7G+B65dGteQk39qSgJ3j9b+Z
         GIoYyCeI37ZUkixXdjM/5Qn6F3nqxHHfl2t2NSpZZrbha364ir2IMgaAKo5f15GdddZX
         MNjkpRcMwCY+WbY4P0aScH/y0ttZFIZXvFKaHd5QaDj33Jcz6pXY4iaSJL7v4TWqGaBm
         5rF9KMdwU4Vx8B7cjauaJRU73eb8dBFUo6Z9r3Pj0DUrgbQKo9IKsaNg49DJDxt9Rkw3
         3lHPvl6TOWBvQs6G3UbNPuSEzfZXbxaQ+QN9BchJhklEnp/Vnib+R6oy38nYtrksYQYw
         nN1A==
X-Gm-Message-State: AFqh2koKnEEk1HuJT3CNsYIxI6J/ZS2jX+Et8pECKVY5DTiMnq9iReav
        WL8Hvljalngo0CBwWxghtgLr/Q==
X-Google-Smtp-Source: AMrXdXsz8iCNIh7gclEAQl+79GWJSSgoEJ4TK4DV8KJTxYei/oYceOEYfjXppbNgZ9OQu0T2BUaicQ==
X-Received: by 2002:a17:90b:3586:b0:229:772c:a00b with SMTP id mm6-20020a17090b358600b00229772ca00bmr26415107pjb.14.1674498837606;
        Mon, 23 Jan 2023 10:33:57 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:2279:f361:f93b:7971])
        by smtp.gmail.com with ESMTPSA id b11-20020a17090a800b00b002291295fc2dsm7008684pjn.17.2023.01.23.10.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 10:33:57 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 2/4] drm: panel: jd9365da-h3: Add Radxa Display 10HD
Date:   Tue, 24 Jan 2023 00:03:10 +0530
Message-Id: <20230123183312.436573-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123183312.436573-1-jagan@edgeble.ai>
References: <20230123183312.436573-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Radxa Display 10HD is a family of DSI panels from Radxa that
uses jd9365da-h3 IC.

Add panel support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- new patch

 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index 48c1702a863b..729a276e590c 100644
--- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
+++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
@@ -452,7 +452,14 @@ static void jadard_dsi_remove(struct mipi_dsi_device *dsi)
 }
 
 static const struct of_device_id jadard_of_match[] = {
-	{ .compatible = "chongzhou,cz101b4001", .data = &cz101b4001_desc },
+	{
+		.compatible = "chongzhou,cz101b4001",
+		.data = &cz101b4001_desc
+	},
+	{
+		.compatible = "radxa,display-10hd-ad001",
+		.data = &cz101b4001_desc
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, jadard_of_match);
-- 
2.25.1

