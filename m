Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57C217687D4
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 22:18:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230009AbjG3USv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 16:18:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229752AbjG3USo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 16:18:44 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 102B2191
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 13:18:43 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99bf1f632b8so368190966b.1
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 13:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690748321; x=1691353121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxhyfb9b6r+ILlCqox+06L7O4WmZ3Hats0OpcMu4s50=;
        b=YepRCYQAwQdrVTDwU7YVpyPnL7NUxDA+DobhsTWMKIIwA2gO6FYhbuDWQMJu7picnV
         gy/Q0/Rlol83kBrb9fgsavYXr05RES9yl/4dlvM3QW8i4ntQYGRqTadzMbKIdIknAjxg
         vmImxA4gCJGkc9aKab0lkOau7E0nYhj8wwx7arVtxHzjhbqHRg9KpKCjC3oFgiWgY+9k
         eLfrK2THa3I7oS47S4boREa4BsUIKLKCGnp9nroSxYjEIGpxr1WOS+2d7TM2xoA0NbyQ
         CcQ+9Yxim8xq1swBTOWQXNhHwDd/1c5WdkXISuZPm0OHYZ1vKRMzayHrWamZbqopiSdc
         avYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690748321; x=1691353121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oxhyfb9b6r+ILlCqox+06L7O4WmZ3Hats0OpcMu4s50=;
        b=C9GvPOG+2m3eE3j/oIbU+zPSAFA/jyIDmK/g1yrk8gLKZqN1PSzaj3XoYiYxGHrsiX
         45Z0jJz7gMUSxjQ8n3OoqKwCXQhE5oSxtVrvsoJvWi+h5NVYXgOXzQSKG4xoKgdJZFhE
         x5gyemj/zGYymJAtwELM8AC+Kj0m+uuoTBhWF3aiW/KNQkq7FfiIpSXrT8s5LCOJWyuW
         vkQRxaWIu0SFXE0gYymbBcDTYiPuT0w4ghZauysTbcK2IvCe8BtoKz8kXGM9k1yhgSig
         5xiGWg5rFMa8u+yu6/k3pnTFLWMk45Aa3NeUwV2wQAc1jnX9ibBaomMPbHxR/pZ5EY2J
         U3TQ==
X-Gm-Message-State: ABy/qLaIQHcN/gvYz+l408PamBFNZjDPIpG5eXnBsKVyFd7DyVLWdn1q
        gwtlYYvONFCeDrY1HK7zT/wJpQ==
X-Google-Smtp-Source: APBJJlHbOz+/n4AI/6SYfqrEB8zYSBe7Knxn3NRarnbhGtG2M1XiPE2Af2V+juzo5GvzhjS+BVrB6A==
X-Received: by 2002:a17:906:77d0:b0:99b:ef9c:e634 with SMTP id m16-20020a17090677d000b0099bef9ce634mr5124535ejn.65.1690748321625;
        Sun, 30 Jul 2023 13:18:41 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id va16-20020a17090711d000b0099bc0daf3d7sm5115533ejb.182.2023.07.30.13.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 13:18:41 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Ryan Lee <ryans.lee@maximintegrated.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/3] ASoC: codecs: max9892x: Unify interleave mode OF property
Date:   Sun, 30 Jul 2023 22:18:25 +0200
Message-Id: <20230730201826.70453-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230730201826.70453-1-krzysztof.kozlowski@linaro.org>
References: <20230730201826.70453-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MAX98926 and MAX98927 are quite similar and use the same bindings,
although drivers were not implementing them in the same way:
MAX98926 has boolean "interleave-mode" but MAX98927 has uint32
"interleave_mode".  Unify them under maxim,interleave-mode, already used
in other Maxim device.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. New patch
---
 sound/soc/codecs/max98926.c |  3 ++-
 sound/soc/codecs/max98927.c | 16 ++++++++--------
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/sound/soc/codecs/max98926.c b/sound/soc/codecs/max98926.c
index bdc508e23e59..922ce0dc4e60 100644
--- a/sound/soc/codecs/max98926.c
+++ b/sound/soc/codecs/max98926.c
@@ -528,7 +528,8 @@ static int max98926_i2c_probe(struct i2c_client *i2c)
 				"Failed to allocate regmap: %d\n", ret);
 		goto err_out;
 	}
-	if (of_property_read_bool(i2c->dev.of_node, "interleave-mode"))
+	if (of_property_read_bool(i2c->dev.of_node, "maxim,interleave-mode") ||
+	    of_property_read_bool(i2c->dev.of_node, "interleave-mode"))
 		max98926->interleave_mode = true;
 
 	if (!of_property_read_u32(i2c->dev.of_node, "vmon-slot-no", &value)) {
diff --git a/sound/soc/codecs/max98927.c b/sound/soc/codecs/max98927.c
index 0aaf2e6ae78d..e20aa5b1bce9 100644
--- a/sound/soc/codecs/max98927.c
+++ b/sound/soc/codecs/max98927.c
@@ -879,14 +879,14 @@ static int max98927_i2c_probe(struct i2c_client *i2c)
 	i2c_set_clientdata(i2c, max98927);
 
 	/* update interleave mode info */
-	if (!of_property_read_u32(i2c->dev.of_node,
-		"interleave_mode", &value)) {
-		if (value > 0)
-			max98927->interleave_mode = true;
-		else
-			max98927->interleave_mode = false;
-	} else
-		max98927->interleave_mode = false;
+	if (of_property_read_bool(i2c->dev.of_node, "maxim,interleave-mode")) {
+		max98927->interleave_mode = true;
+	} else {
+		if (!of_property_read_u32(i2c->dev.of_node, "interleave_mode",
+					  &value))
+			if (value > 0)
+				max98927->interleave_mode = true;
+	}
 
 	/* regmap initialization */
 	max98927->regmap
-- 
2.34.1

