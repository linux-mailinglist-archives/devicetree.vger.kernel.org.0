Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06CB0397BD6
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 23:44:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234671AbhFAVqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 17:46:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234656AbhFAVqR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 17:46:17 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B093C061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 14:44:34 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id x15so744181oic.13
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 14:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m2jSbDzFQxJVPkX9wWnQHslCI+0Vych+K1kXWHexGRU=;
        b=X+66xa1NeLwDoC6qBRhC7+OLEtu7IpItYVb0NJ4giS9dLIQEujX4cngkZALdCjjY8m
         zO9GaRSMPsYKJ5a1dYcPmynrW77warNWAyvM+QSODLLWpBePh7t8rTR42fLf1FDYJEV4
         wbt0VaSpuwLmNGfB9VYsre/vkJYs32/Zn/yi7Jc8eKcGlDWaniGqnBORwqb9SgKuK7HT
         lYiNYAF82+WhEqqPmO5Z8jTTZ0iaJGmXErWr9AV0bL66WlxMBP5LRzK+QfwFbQTwOqvt
         SNpYPbE90+uLbWAQbqN8fRfVnSt4i78at3085MvWk3wzrrXTkWKrbR9NX9AHHKlFrpkM
         YvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m2jSbDzFQxJVPkX9wWnQHslCI+0Vych+K1kXWHexGRU=;
        b=DuSQishZ6DJSja4Qsp0PWteifYPhNTIJ9FH1gVGnOTDZp6gXAq66jh278bXCPTm6VG
         Ak8E2lXZKh6KEdQU4QWEZcqVS3IfMVfl/9d22Q4rOpNNheBXbn5Ah2j1PzKviDBNzTU5
         JfJDUSkxQ4n9iF9yTv5F/k+Lxh3LZD3KHqtTP2J/qcdiv8EmvaF6+6P6bfw2WtrqTBQZ
         UE2SFTFsbNzcl0F+Ii/oacCUbA5AiQ+kOCXySSK4OB/uG57v+fcF+2HLCLX4rrLbxjf9
         2USlqEfl3duEupbbwYwyTq9z8IOgj5cJFbf0aOfBVai0Rv6Q0cuB255pVwAZcctlogGd
         ZXCw==
X-Gm-Message-State: AOAM532YjKFYSficeXUt1jNK4XhA93BGKc6U/6SfB0A6t8X4ZyEJdpt3
        9Cc5bHmp43Ad9YGxMcM2T3k=
X-Google-Smtp-Source: ABdhPJxM7zmpKF7WbOWcOrlqa4mViYf71xE3SF8omG87A3XfAN89dzaivJY8MDuzP8DEx4e1NlyfkA==
X-Received: by 2002:aca:4d07:: with SMTP id a7mr1487930oib.106.1622583873629;
        Tue, 01 Jun 2021 14:44:33 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id x14sm3737524oic.3.2021.06.01.14.44.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 14:44:32 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     lee.jones@linaro.org, broonie@kernel.org, lgirdwood@gmail.com,
        pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] ASoC: rk817: fix a warning in rk817_probe()
Date:   Tue,  1 Jun 2021 16:44:24 -0500
Message-Id: <20210601214424.23432-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The return value of snd_soc_component_write() is stored but not
evaluated and this results in a warning when W=1 is set. Stop storing
the return value to be consistent with all other calls of
snd_soc_component_write() and to remove the warning.

Fixes: 0d6a04da9b25 ("ASoC: Add Rockchip rk817 audio CODEC support")

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 sound/soc/codecs/rk817_codec.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/codecs/rk817_codec.c b/sound/soc/codecs/rk817_codec.c
index 17e672b85ee5..fd3a5ba034a9 100644
--- a/sound/soc/codecs/rk817_codec.c
+++ b/sound/soc/codecs/rk817_codec.c
@@ -415,12 +415,11 @@ static int rk817_probe(struct snd_soc_component *component)
 {
 	struct rk817_codec_priv *rk817 = snd_soc_component_get_drvdata(component);
 	struct rk808 *rk808 = dev_get_drvdata(component->dev->parent);
-	int ret;
 
 	snd_soc_component_init_regmap(component, rk808->regmap);
 	rk817->component = component;
 
-	ret = snd_soc_component_write(component, RK817_CODEC_DTOP_LPT_SRST, 0x40);
+	snd_soc_component_write(component, RK817_CODEC_DTOP_LPT_SRST, 0x40);
 
 	rk817_init(component);
 
-- 
2.25.1

