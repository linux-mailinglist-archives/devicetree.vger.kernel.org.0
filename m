Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D8912FCC75
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 09:13:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730182AbhATILW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 03:11:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730348AbhATIJ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 03:09:59 -0500
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com [IPv6:2607:f8b0:4864:20::1049])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 356C8C061786
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:11 -0800 (PST)
Received: by mail-pj1-x1049.google.com with SMTP id e10so2003990pjj.8
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=BhiRI9BtJk/FQ656s3vJH/ppgffKgcRGDy0obhFDdNo=;
        b=l0gmTUjJG0/1eeSZ2hYlKBdOm49eF6glOT1dYrlAKtXy2Ztbah28WKnB0nZOl/lrC9
         qd2BoGDcx4VzWJBPgFF1ieIqU8Epmt5faO3C3VKvE7pLpjZnyafAcPB9TJ1IUgx3TRGe
         4F2+FMPRG8RHQCEOJfEMWqrP5sedjtWvS7m44fMpivSDgsUWseZFsz48w2mda2iuMvSy
         WW7747r2l6Siy45+uRn6x+tqvgGSRLERDrjistJqMCQ+cVWPBzKkrXiCC5ch+4AsIZaE
         Cp8fXxugUCSnw2DiTLTBzyc1fAspKqh8bU0qOMs7jHf1GmsW+p2S/ABeslRiwEe4UZMq
         dMTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=BhiRI9BtJk/FQ656s3vJH/ppgffKgcRGDy0obhFDdNo=;
        b=gKGvJYvSExC5JVonDSz57ghVBgrrCfKyn2RBjn+bysYjckYPjSp1FHroRY06DDBTaT
         XcrrJdHCYhwalCQRdqMu7HLA9gOC+EYt9BE46shXTxiimJiCF+nBM54HC2VM7ZiYs78K
         we3wUmTfLgwlSzwf/OiUz62upP+x3ZwDDO3Bkexnp+pviLhhgkgUCHbtuK2N8DeaB0qY
         P52bQiHlrMpqWI7X8lk4zP/iiHGvUjxB+94hBJ6lz57ZlagDjDoE3fAGBDxwa/sQ8Bli
         phzUeykHzE0+15Yq8Rt1P+uKX5JP0o21hJjg78SKSKeDty+cxtWPlvhu9e1rcWZKCsmw
         +PnA==
X-Gm-Message-State: AOAM5327PSRSY0rYVMvFBSZLbFHl1O3wDvGv4KXkU5+bg6B5oCSlD6nM
        FiMgf3p96fbGs3OlJxMUhUbPv4Kvi/Ki
X-Google-Smtp-Source: ABdhPJzM/v09y2w61XJdhUUXgy2b587avNFy+mm2IIXkVPOvDqVZECqnXYZ3McyNCmwltBZD7Kj/GA1yxcZ9
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:1164:8893:969a:b338])
 (user=tzungbi job=sendgmr) by 2002:a17:902:e887:b029:de:7863:19b0 with SMTP
 id w7-20020a170902e887b02900de786319b0mr8873005plg.42.1611130150733; Wed, 20
 Jan 2021 00:09:10 -0800 (PST)
Date:   Wed, 20 Jan 2021 16:08:47 +0800
In-Reply-To: <20210120080850.699354-1-tzungbi@google.com>
Message-Id: <20210120080850.699354-3-tzungbi@google.com>
Mime-Version: 1.0
References: <20210120080850.699354-1-tzungbi@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH 2/5] ASoC: mediatek: mt8192-mt6359: simplify mt8192_rt5682_init
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Returns snd_soc_component_set_jack() directly in mt8192_rt5682_init.
No need to have another block to check the return value.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
index 72d337fc8534..8ea24b32a535 100644
--- a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
+++ b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
@@ -326,13 +326,7 @@ static int mt8192_rt5682_init(struct snd_soc_pcm_runtime *rtd)
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_2, KEY_VOLUMEUP);
 	snd_jack_set_key(jack->jack, SND_JACK_BTN_3, KEY_VOLUMEDOWN);
 
-	ret = snd_soc_component_set_jack(cmpnt_codec, jack, NULL);
-	if (ret) {
-		dev_err(rtd->dev, "Headset Jack set failed: %d\n", ret);
-		return ret;
-	}
-
-	return 0;
+	return snd_soc_component_set_jack(cmpnt_codec, jack, NULL);
 };
 
 static int mt8192_i2s_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
-- 
2.30.0.284.gd98b1dd5eaa7-goog

