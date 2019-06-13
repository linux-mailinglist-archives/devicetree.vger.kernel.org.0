Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C67F443B28
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 17:26:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729247AbfFMP0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 11:26:39 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:34019 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729138AbfFMLmo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 07:42:44 -0400
Received: by mail-wr1-f68.google.com with SMTP id k11so2234978wrl.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 04:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TExrEtVR1Qp+m2eA960X7wRJwZP76vaDnZqCemHrZMo=;
        b=ARq6OKiJiNJ8rcawe7B7CKa+kO25GegV4OLzlT2aC16bZB7ZbGOeh4KfbetAfkiOk3
         YmtzX9XOJh2s/leNI5KQNSwKtxxkdQjzpdv8KAotEvXsQ7oqgwqaUX6IhwnhwJULiEzw
         HQINex/o0ZH99njmn2fOFSgGPlL6gLGHjJxPe1kpQMtpPZAoo0d79nsOVRjthp0VlL/6
         exoH2sc5NANWn1mm4wVjEwCcQknz0R7B57hFUlVQDaYC8nALkbz73efD7CqPRVL9NhQ1
         XRALVm86xKQJFghDjinxQgkadLhBSdqqAw2EQXBtQw/hKgK7S1lvbkzlqzbIo6KxT59B
         aS9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TExrEtVR1Qp+m2eA960X7wRJwZP76vaDnZqCemHrZMo=;
        b=PN0zOOh6h2vorf5igylqdQIVZXW59ZQN/k9/7YVVMhz7FgGvZq9bXgUgIr2aaxApmZ
         FjiTyWVpUDD6pezBgV8UHi4i7Wwo+8pOVHkJ96DGF77rSj5qkBaMcydQyhzDjJCLebbk
         hZfoH4JPLyvgph2lSMxyp/vwwHrHhaoC8+FTk2FoRPVTiWlKT3pBIVKSK9W/GyHOngb/
         VO+5innL6fXOyMXnUSlYMUCeArF4+niWzwebSGjKjMfrnRnLrZC1BtWYnjlYNt4gKMHO
         jPsvhmFgTvwon6HP+WN45Z9vCZ8f8OYftubV6mD4PB8UpbovbYq4IjAVAoBBt27VZZfl
         BqeA==
X-Gm-Message-State: APjAAAVxhbABIMliXM7eDoQn4nPI9HYS4aj7fdmpiO0aFCDz+supuyfQ
        tYC78ej7zpkwQNUIWk/DzJ+eKkWe43k=
X-Google-Smtp-Source: APXvYqz/BTbpTahJKuFfHLaXnGe/ye7zKjSH9AReM7p3t9Gmxi21Yj4MpRdaVoBmNQqviV7TOcVAMQ==
X-Received: by 2002:adf:eb09:: with SMTP id s9mr57922277wrn.127.1560426162128;
        Thu, 13 Jun 2019 04:42:42 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id b5sm2598490wru.69.2019.06.13.04.42.41
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 04:42:41 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH 3/4] ASoC: meson: axg-tdm: fix sample clock inversion
Date:   Thu, 13 Jun 2019 13:42:32 +0200
Message-Id: <20190613114233.21130-4-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613114233.21130-1-jbrunet@baylibre.com>
References: <20190613114233.21130-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The content of SND_SOC_DAIFMT_FORMAT_MASK is a number, not a bitfield,
so the test to check if the format is i2s is wrong. Because of this the
clock setting may be wrong. For example, the sample clock gets inverted
in DSP B mode, when it should not.

Fix the lrclk invert helper function

Fixes: 1a11d88f499c ("ASoC: meson: add tdm formatter base driver")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/meson/axg-tdm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/meson/axg-tdm.h b/sound/soc/meson/axg-tdm.h
index e578b6f40a07..5774ce0916d4 100644
--- a/sound/soc/meson/axg-tdm.h
+++ b/sound/soc/meson/axg-tdm.h
@@ -40,7 +40,7 @@ struct axg_tdm_iface {
 
 static inline bool axg_tdm_lrclk_invert(unsigned int fmt)
 {
-	return (fmt & SND_SOC_DAIFMT_I2S) ^
+	return ((fmt & SND_SOC_DAIFMT_FORMAT_MASK) == SND_SOC_DAIFMT_I2S) ^
 		!!(fmt & (SND_SOC_DAIFMT_IB_IF | SND_SOC_DAIFMT_NB_IF));
 }
 
-- 
2.20.1

