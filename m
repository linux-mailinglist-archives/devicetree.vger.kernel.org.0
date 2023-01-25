Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC47567AECF
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 10:51:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235432AbjAYJvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 04:51:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235406AbjAYJvI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 04:51:08 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AD7E3A88
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 01:51:07 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so844903wmb.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 01:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iFVYW1O2xATTJriM1RmoRREy/G+c337SmUDoCitpzco=;
        b=kHYJJNAhyMxJs8rkZvXLxWwfNTqjAfmgeTQtNCp+pVmtiHt3Btxu1d51Qr9n5mnFP4
         AEVq9BdfmEOyr2Z5LFxjbteGEHhVu39IkOS1Js+eLiU15JOQEQvVPQcpih8Tq4VZ9Buy
         AxTyr9W6afzaSmaZhNSSNJRXlamcFEi92QU9UrWUd7O0Sd+7+CRkV7WgTMw4HdtcgWHB
         DlmkE1v+nySG8zIJ3ISUVWqIFgTQSzd/1OgGNclv/5bld3QHriKJ+oJ9BtuUg6VED7Ac
         A3VmR0eflI6+PAGi51W9ERZtd/1qH5k26oAfqdgM3RoHATBOnm2cyxoSJejkRUdcHQWd
         nGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iFVYW1O2xATTJriM1RmoRREy/G+c337SmUDoCitpzco=;
        b=rATgkomgbXoz9fkfqKmQQPMiW757zWjQrzsO3iGuLkV303RFFpPFnqhiv+XL9B7FqS
         e1n5OOiUImEoA+0oaO+l2w8K/OBkt3Uyuhj4kbscnQVeDof5lyZii74TQ+WaE4aYi1H+
         GUCH7rc0kdwZ4xs+y7KeJMfMPUeuBTKdz0vhUApunhTdG/iZ9g90w5pe+ooNblx9uZ5x
         dzdQKUtoAhSDKFV632FhtVIaWZTmslX3yfZjzO5APsyptBEmxczCrIvR/j/oO5bZPnQH
         dtIkBGlhhqiVDVg62Gvzi/rArHxtunr647mf4YG6KeVskZ0RszTOUkq1lby6gaQW5d1c
         KE6Q==
X-Gm-Message-State: AFqh2koSGAnya9lDUlLNcvAZpT+i8m7KVB3E+mjWAHdg6AFatvRcNJLD
        Y/IfL7ssEunSLm8YWCSPB8BG0A==
X-Google-Smtp-Source: AMrXdXtA0Nn0nf947A5sN2hj321whK94v/6tvKmmHq+k8ZtS0NuCX+YbPAErtq0itIP8sXDcBvF2eQ==
X-Received: by 2002:a05:600c:3d8d:b0:3d2:bca5:10a2 with SMTP id bi13-20020a05600c3d8d00b003d2bca510a2mr30621063wmb.22.1674640265478;
        Wed, 25 Jan 2023 01:51:05 -0800 (PST)
Received: from [127.0.1.1] (62.213.132.195.rev.sfr.net. [195.132.213.62])
        by smtp.googlemail.com with ESMTPSA id j26-20020a5d453a000000b002bdf3809f59sm3955072wra.38.2023.01.25.01.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 01:51:05 -0800 (PST)
From:   Amjad Ouled-Ameur <aouledameur@baylibre.com>
Date:   Wed, 25 Jan 2023 10:50:32 +0100
Subject: [PATCH v8 4/5] thermal: mediatek: add callback for raw to mcelsius conversion
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20221018-up-i350-thermal-bringup-v8-4-23e8fbb08837@baylibre.com>
References: <20221018-up-i350-thermal-bringup-v8-0-23e8fbb08837@baylibre.com>
In-Reply-To: <20221018-up-i350-thermal-bringup-v8-0-23e8fbb08837@baylibre.com>
To:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Rob Herring <robh@kernel.org>,
        Markus Schneider-Pargmann <msp@baylibre.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        Michael Kao <michael.kao@mediatek.com>
X-Mailer: b4 0.11.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1674640259; l=1727;
 i=aouledameur@baylibre.com; s=20220920; h=from:subject:message-id;
 bh=oneS0GOcwyJu/jpresdHeaeVd8flLXASRISr19OSr48=;
 b=ZV5aCgX9PkZJa0Sypvo2hM4krEb1MLQZDO4q5TsQiehLB9e0NmzlMDH9KDCXcuqTkcNTPHu0QxdJ
 +O/VpQoWAYxYvRvjtEkQUXuX7tCJB33JiSrJaQOk25Vd5W+U1S1h
X-Developer-Key: i=aouledameur@baylibre.com; a=ed25519;
 pk=HgYWawSL4qLGPx+RzJ+Cuu+V8Pi/KQnDDm1wjWPMOFE=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set a callback at probe time instead of checking the version at
each get_sensor_temp().

Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/thermal/mtk_thermal.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index 3a5df1440822..b8e06f6c7c42 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -307,6 +307,8 @@ struct mtk_thermal {
 
 	const struct mtk_thermal_data *conf;
 	struct mtk_thermal_bank banks[MAX_NUM_ZONES];
+
+	int (*raw_to_mcelsius)(struct mtk_thermal *mt, int sensno, s32 raw);
 };
 
 /* MT8183 thermal sensor data */
@@ -726,13 +728,7 @@ static int mtk_thermal_bank_temperature(struct mtk_thermal_bank *bank)
 	for (i = 0; i < conf->bank_data[bank->id].num_sensors; i++) {
 		raw = readl(mt->thermal_base + conf->msr[i]);
 
-		if (mt->conf->version == MTK_THERMAL_V1) {
-			temp = raw_to_mcelsius_v1(
-				mt, conf->bank_data[bank->id].sensors[i], raw);
-		} else {
-			temp = raw_to_mcelsius_v2(
-				mt, conf->bank_data[bank->id].sensors[i], raw);
-		}
+		temp = mt->raw_to_mcelsius(mt, i, raw);
 
 		/*
 		 * The first read of a sensor often contains very high bogus
@@ -1150,6 +1146,9 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 
 	mtk_thermal_turn_on_buffer(mt, apmixed_base);
 
+	mt->raw_to_mcelsius = (mt->conf->version == MTK_THERMAL_V1) ?
+				raw_to_mcelsius_v1 : raw_to_mcelsius_v2;
+
 	if (mt->conf->version == MTK_THERMAL_V2) {
 		mtk_thermal_release_periodic_ts(mt, auxadc_base);
 	}

-- 
2.39.1
