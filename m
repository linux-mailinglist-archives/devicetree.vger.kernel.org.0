Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81A172928EA
	for <lists+devicetree@lfdr.de>; Mon, 19 Oct 2020 16:07:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729340AbgJSOHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Oct 2020 10:07:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729199AbgJSOHQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Oct 2020 10:07:16 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28F04C0613CE
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 07:07:16 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id b127so13032412wmb.3
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 07:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=D3Li+sQUwDiy01vgvmIIRdUEc3y1uDj2ZfggKxaTpm0=;
        b=My2XOU4Mc8Cjt3OIle3OjrmpttFQr8rNVInWtvQtF+8kSYnHcmu2f2TFy0T7sTUTzJ
         r5Q/sMW0rTXS2e9tnAQbRnMZAFFvAutWsJuGbZcljXuF94Pq6s4NmiLXygDZvVfraUYT
         FXtY8tj/QWjkupNCk1YGt8AzHU6Do+owEM5yC+ywMTb45HOziqqGDd5vDuVJlT2RIqLj
         GvWGx+tWNSz8801aG5t7p6mHKDO6sjrknJzEjg27MCQ6aWlhSUzn9TNNB2NWiiqLjmdf
         y0UjJbLvZYAWGUHdXzzOnaB/CHmOZTbi2XiZ4KwD2ZMpTxVwIV1AaOlKxDm4qF2DT35A
         ZktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=D3Li+sQUwDiy01vgvmIIRdUEc3y1uDj2ZfggKxaTpm0=;
        b=DLXE6KmZfJhyFEXt9gg3iEwODr3td34txAjZn5MyZRZyyx2llYxL9ILp9c3TMtZxBc
         iKihK/I2KePEsNahPGkggXLgkMEXaluvJMd0ktIAodLbCQIvE3oDda6tmeS+6I+GAqC9
         4KXoq2Aj7iKvu9XleqGxC6yWucKGfwURAXxNlNfnWJ2axwJ/GyqEgM5/ISlfBUxOBw5P
         mZRlBsnwKMAyKrOpblMspfv3DknEsqZgIQOVdoxJeT5s7VOjFLkAYjlDDdrOYhb6RdJ8
         oTPj6e+Rh0WdkuwZXKyyWhnr5xpT/pxZqqPrPTU2gjQsLuoOLJ4eYciZdNZ/sShIUKte
         bbfQ==
X-Gm-Message-State: AOAM532hfyQW3BW6RgFKKuY//LTb2v5/uZ5BV+ervEaaPM7/JSDXthhO
        UJC0qctRf+kh5eKujM3AxlPOIA==
X-Google-Smtp-Source: ABdhPJxTtRwa45FbRqYGWLXbhD/Wmp3nnFk48uFyq7/Acm7NbdVSp0yBk/ZY5MwmW5FwS/KYQkZoBw==
X-Received: by 2002:a7b:c242:: with SMTP id b2mr3032645wmj.25.1603116434905;
        Mon, 19 Oct 2020 07:07:14 -0700 (PDT)
Received: from localhost.localdomain (26.167.185.81.rev.sfr.net. [81.185.167.26])
        by smtp.gmail.com with ESMTPSA id a3sm114182wmb.46.2020.10.19.07.07.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 07:07:14 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pwm@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, lee.jones@linaro.org,
        u.kleine-koenig@pengutronix.de, thierry.reding@gmail.com,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 3/5] pwm: pwm-mediatek: Add MT8183 SoC support
Date:   Mon, 19 Oct 2020 16:07:03 +0200
Message-Id: <20201019140705.1518822-4-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201019140705.1518822-1-fparent@baylibre.com>
References: <20201019140705.1518822-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add PWM support for the MT8183 SoC

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/pwm/pwm-mediatek.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
index 108881619aea..9052b500b8f0 100644
--- a/drivers/pwm/pwm-mediatek.c
+++ b/drivers/pwm/pwm-mediatek.c
@@ -314,6 +314,12 @@ static const struct pwm_mediatek_of_data mt7629_pwm_data = {
 	.has_ck_26m_sel = false,
 };
 
+static const struct pwm_mediatek_of_data mt8183_pwm_data = {
+	.num_pwms = 4,
+	.pwm45_fixup = false,
+	.has_ck_26m_sel = true,
+};
+
 static const struct pwm_mediatek_of_data mt8516_pwm_data = {
 	.num_pwms = 5,
 	.pwm45_fixup = false,
@@ -326,6 +332,7 @@ static const struct of_device_id pwm_mediatek_of_match[] = {
 	{ .compatible = "mediatek,mt7623-pwm", .data = &mt7623_pwm_data },
 	{ .compatible = "mediatek,mt7628-pwm", .data = &mt7628_pwm_data },
 	{ .compatible = "mediatek,mt7629-pwm", .data = &mt7629_pwm_data },
+	{ .compatible = "mediatek,mt8183-pwm", .data = &mt8183_pwm_data },
 	{ .compatible = "mediatek,mt8516-pwm", .data = &mt8516_pwm_data },
 	{ },
 };
-- 
2.28.0

