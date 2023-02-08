Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 607DE68F2C2
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 17:04:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230295AbjBHQEl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 11:04:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230440AbjBHQEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 11:04:40 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 194344B764
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 08:04:17 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id z13so6193515wmp.2
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 08:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l+m3F3iCUC+jLles+DVcgXooXwK7NZCMV3ti5i6vKFM=;
        b=ejg/jsd4afdTbrNvBe+FF55hHfpxJn0Y/8BT6NTXpa/o4Tk6z8yZyt/vz39+oG+2+d
         PxCaODODZoI4mKRsEmQovjsVgfCdoel8z3aH25CRr79ZnKKzV+ocWnG4fmSpgqSvgN1V
         kyLmiiXRfkDvyu0FgrxULi5nAFcKHE5Ucv9EE0jPwGGhLlkDSCuHJi/T0o4wvE/FDFO8
         TbOwMdSbGSkTHCEhnw3oBjACwBimx0cXyI2SJXcrKJpTeNvmf5MVDYMRCY/VSfWSqgns
         gkcvhd1um6HaImYSyg13JStrCNKEIsLtC3qj2uY8ZUiRuou2hbkFTRDAcpRjZMYrVTDn
         +KhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l+m3F3iCUC+jLles+DVcgXooXwK7NZCMV3ti5i6vKFM=;
        b=vo4+R5KIrSPGGZT6zgxfnad+r3auLhgLYJalRvM3K6SCIFrnL/KZ0lq3z/bxv5kSr2
         vW+6qaCUon+VoewXzVQWSsSMbgiQyUX2rDxMT2CSlnfw8Qow7/6hPgxteLPOHxK68XfJ
         TE7wBLmadft12dWfQk0cz6aRHN1vDVzh1yf+5Kc15A2eWNXOs4wrEi/P+MECd3rm4WTa
         I0y9Jt7rTGESN+nMqg0zzMNOKoKdDMgBaiSiDHWpNihh62iIKnd9fWfrw6fSHB1zfs6d
         HeudJ5yPfqxusZKE7PdH8dxXtCARhoNAvmqM5EL/iNlvQKgK2Fy4agk2r5ApPFPrlrCL
         DStQ==
X-Gm-Message-State: AO0yUKV6MEHOoDPufSq28A+E1NWfllbMWO8/8gSAYjj+wbw+LwHChR0C
        o7AcdXZhcVtILv3Fh3bS6Vo8iA==
X-Google-Smtp-Source: AK7set8omr9IactH1otM+Cqkk1aEQpSRxG3aPP3qUBcBsscAJnAoRkNQlMhTD7TwqkYrWkA0yvIJgw==
X-Received: by 2002:a05:600c:998:b0:3dc:59ee:7978 with SMTP id w24-20020a05600c099800b003dc59ee7978mr6967187wmp.38.1675872254623;
        Wed, 08 Feb 2023 08:04:14 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o18-20020a05600c2e1200b003dd1b00bd9asm2169890wmf.32.2023.02.08.08.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 08:04:14 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ASoC: codecs: max98090: simplify snd_soc_dai_driver
Date:   Wed,  8 Feb 2023 17:04:10 +0100
Message-Id: <20230208160410.371609-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230208160410.371609-1-krzysztof.kozlowski@linaro.org>
References: <20230208160410.371609-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The max98090 has only one DAI, so snd_soc_dai_driver does not have to be
an array.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/codecs/max98090.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/sound/soc/codecs/max98090.c b/sound/soc/codecs/max98090.c
index 06ed2a938108..b419c49e1e08 100644
--- a/sound/soc/codecs/max98090.c
+++ b/sound/soc/codecs/max98090.c
@@ -2356,8 +2356,7 @@ static const struct snd_soc_dai_ops max98090_dai_ops = {
 	.no_capture_mute = 1,
 };
 
-static struct snd_soc_dai_driver max98090_dai[] = {
-{
+static struct snd_soc_dai_driver max98090_dai = {
 	.name = "HiFi",
 	.playback = {
 		.stream_name = "HiFi Playback",
@@ -2374,7 +2373,6 @@ static struct snd_soc_dai_driver max98090_dai[] = {
 		.formats = MAX98090_FORMATS,
 	},
 	 .ops = &max98090_dai_ops,
-}
 };
 
 static int max98090_probe(struct snd_soc_component *component)
@@ -2594,8 +2592,8 @@ static int max98090_i2c_probe(struct i2c_client *i2c)
 	}
 
 	ret = devm_snd_soc_register_component(&i2c->dev,
-			&soc_component_dev_max98090, max98090_dai,
-			ARRAY_SIZE(max98090_dai));
+					      &soc_component_dev_max98090,
+					      &max98090_dai, 1);
 err_enable:
 	return ret;
 }
-- 
2.34.1

