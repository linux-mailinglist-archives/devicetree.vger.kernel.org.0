Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BADD8559838
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 12:53:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbiFXKxr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 06:53:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230264AbiFXKxp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 06:53:45 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2029F42A38
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 03:53:45 -0700 (PDT)
Received: from hq-00021.holoplot.net (unknown [176.126.217.202])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 7E57F50457B;
        Fri, 24 Jun 2022 10:47:25 +0000 (UTC)
From:   Daniel Mack <daniel@zonque.org>
To:     broonie@kernel.org, ryan.lee.analog@gmail.com
Cc:     robh+dt@kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Daniel Mack <daniel@zonque.org>
Subject: [PATCH 7/8] ASoC: max98396: Implement DSP speaker monitor
Date:   Fri, 24 Jun 2022 12:47:11 +0200
Message-Id: <20220624104712.1934484-8-daniel@zonque.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220624104712.1934484-1-daniel@zonque.org>
References: <20220624104712.1934484-1-daniel@zonque.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow the selection of the TDM slot that is used to send back speaker
monitor data. The DT property adi,spkfb-slot-no can be used to configure
this setting which defaults to 2.

Signed-off-by: Daniel Mack <daniel@zonque.org>
---
 sound/soc/codecs/max98396.c | 8 ++++++++
 sound/soc/codecs/max98396.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/sound/soc/codecs/max98396.c b/sound/soc/codecs/max98396.c
index 0a1d98279a3e..f28831f4e74b 100644
--- a/sound/soc/codecs/max98396.c
+++ b/sound/soc/codecs/max98396.c
@@ -1377,6 +1377,9 @@ static int max98396_probe(struct snd_soc_component *component)
 	regmap_write(max98396->regmap,
 		     MAX98396_R2045_PCM_TX_CTRL_2,
 		     max98396->i_slot);
+	regmap_write(max98396->regmap,
+		     MAX98396_R204A_PCM_TX_CTRL_7,
+		     max98396->spkfb_slot);
 
 	if (max98396->v_slot < 8)
 		if (max98396->device_id == CODEC_TYPE_MAX98396)
@@ -1552,6 +1555,11 @@ static void max98396_read_device_property(struct device *dev,
 	else
 		max98396->i_slot = 1;
 
+	if (!device_property_read_u32(dev, "adi,spkfb-slot-no", &value))
+		max98396->spkfb_slot = value & 0xF;
+	else
+		max98396->spkfb_slot = 2;
+
 	if (!device_property_read_u32(dev, "adi,bypass-slot-no", &value))
 		max98396->bypass_slot = value & 0xF;
 	else
diff --git a/sound/soc/codecs/max98396.h b/sound/soc/codecs/max98396.h
index 8fa081f5d2d3..ff330ef61568 100644
--- a/sound/soc/codecs/max98396.h
+++ b/sound/soc/codecs/max98396.h
@@ -303,6 +303,7 @@ struct max98396_priv {
 	struct regulator *pvdd, *vbat;
 	unsigned int v_slot;
 	unsigned int i_slot;
+	unsigned int spkfb_slot;
 	unsigned int bypass_slot;
 	bool interleave_mode;
 	unsigned int ch_size;
-- 
2.36.1

