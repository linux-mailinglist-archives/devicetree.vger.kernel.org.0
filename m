Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5DBB2FCC8A
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 09:17:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728215AbhATIQi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 03:16:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730349AbhATIJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 03:09:38 -0500
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46CFCC061793
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:15 -0800 (PST)
Received: by mail-yb1-xb4a.google.com with SMTP id 9so14509436ybj.16
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=SmiqRyWwl+9YuN8tC28z3cuRSiSYFs1m5Wjro9iC9Ms=;
        b=TT4sKjt+gSjbsCN6+pFJiq4W7jnq2vEr5ZAJoj4n+MV7aD/ZAb/7zSNbnUoihwfwaF
         RVRq5rGq6g0pqX7kIIWCWZdEFASqCVfUeJu54j1nUGEu+V7d5mLdTT5DBBpicnbtSypm
         GvrikyajuQosd5G1B4w2ngQnytrhBWzNs09TUt85mIL8K40uzw7mgrXkXBxFk9wFA+D5
         WHf33hEVZ0wwAJn3g2IFXtZsFyMwm0IFHcOSDsFa1I9etxi57K5X/U+UI1yhv3krXZDI
         idv5WEOoZtJSap8l0eN6uA3AhEGKRcNBz/gROaELrpWXBNq975Qw/C6zPTqtnQJjR1dL
         U7Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=SmiqRyWwl+9YuN8tC28z3cuRSiSYFs1m5Wjro9iC9Ms=;
        b=egOH5YF4Wq8Q0rJX5u7fog4waqbEzumavyBRFaxo0pi0a2AIZtLBiOVT/bu9jXgGpg
         OS8js1gBYciAVhd1fDmzjug+KaH7w3SO4aDrDEV8GRYckwIyOb9EGD9UqEbUDA1og3Jc
         +Za4bvk81FtPTtwbl2dVnP+3Se7YUpGpjNgYkckv7NaHp+tyA2/tZj+FPuSKJA+AegUG
         pn52KpBk7rmSVN6mySqXp4WPyXVwHm8HG21f+5LAFk42wYeKVE6YUoad4vASxVfApjmV
         OJtEL7ltA1G1d8GxuUsg2Wioj69S6RvoxNrhCyvaNTEvqGLzXObo/SfpusPQa6FnMX4n
         d3Dg==
X-Gm-Message-State: AOAM532c1USXvkh89cLZrGkAwtuaHfEh4HtGubYc4J3nltLoelQzjNd7
        /WBkDYlhzOtsDUk1/V9lWibGYAiepktU
X-Google-Smtp-Source: ABdhPJwgsQAWglOCEGtKoVUzqAnU2tsXXNDSVYHjY2bZzGFR74ahzBGi0FOePYDzZ4UL/6irz4aCUWlI3X8a
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:1164:8893:969a:b338])
 (user=tzungbi job=sendgmr) by 2002:a25:d84:: with SMTP id 126mr11341755ybn.145.1611130154567;
 Wed, 20 Jan 2021 00:09:14 -0800 (PST)
Date:   Wed, 20 Jan 2021 16:08:48 +0800
In-Reply-To: <20210120080850.699354-1-tzungbi@google.com>
Message-Id: <20210120080850.699354-4-tzungbi@google.com>
Mime-Version: 1.0
References: <20210120080850.699354-1-tzungbi@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH 3/5] ASoC: mediatek: mt8192: change mclk_multiple of TDM from
 128 to 512
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

mclk = rate * mclk_multiple
bclk = rate * channel * sample_width

If TDM outputs 8 channels and 32 bits, bclk will be greater than mclk.

Changes the ratio from 128 to 512.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/mediatek/mt8192/mt8192-dai-tdm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/mediatek/mt8192/mt8192-dai-tdm.c b/sound/soc/mediatek/mt8192/mt8192-dai-tdm.c
index 8383536b7ae0..f5de1d769679 100644
--- a/sound/soc/mediatek/mt8192/mt8192-dai-tdm.c
+++ b/sound/soc/mediatek/mt8192/mt8192-dai-tdm.c
@@ -738,7 +738,7 @@ static struct mtk_afe_tdm_priv *init_tdm_priv_data(struct mtk_base_afe *afe)
 	if (!tdm_priv)
 		return NULL;
 
-	tdm_priv->mclk_multiple = 128;
+	tdm_priv->mclk_multiple = 512;
 	tdm_priv->bck_id = MT8192_I2S4_BCK;
 	tdm_priv->mclk_id = MT8192_I2S4_MCK;
 	tdm_priv->id = MT8192_DAI_TDM;
-- 
2.30.0.284.gd98b1dd5eaa7-goog

