Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5CB6F43B27
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 17:26:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729221AbfFMP0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 11:26:39 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:54587 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729160AbfFMLmp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 07:42:45 -0400
Received: by mail-wm1-f66.google.com with SMTP id g135so9844488wme.4
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 04:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Tw+9nr0k/SQ4+6C+T7NQWdtgxVemIU5O6qgx24DY8vo=;
        b=Ok5DOoG/v42T5p/NULeH/QnUtOj3y3bgwt/tHoF5P/QfLizFjo2FteTJhShh/SJZlr
         Nmlqr3KRJRhMsWo6pVvAXVbul1OayENODZ5gcGgO5C7JDGHK9U+PzWdA/jg93WjfgrBX
         3aPLgeJJNFVLG2B/rgjiiSmhS+VPDiaQJtZu9Yj5qNZsnJJwZOWKrk3hKiDrwVwOJa46
         DJ8yGbCY355E06ytD2Ad5rB+zWuOJWxU5VFLulOd9U0WSoao+makMDcH1cw103nSXVwm
         WvwvNjZS5YfcP6dgfELXmWKxdmNFba7TWuBCTXVwsvhillQ7D9Jrl3egEbQtgmyPgiVH
         5Z9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Tw+9nr0k/SQ4+6C+T7NQWdtgxVemIU5O6qgx24DY8vo=;
        b=c675Xj8TdVn8dS9NQmQe83U4G4Hz/XdBXMNylUCOk8RBo0Q9voV0yXVQXz8gMmuZqZ
         L/DGBflDsWBS6ZWEY+fNeUE7YZjxmJEkdFdfjELraHCN/MGnxl4ds4q9e3iH4txrYtpA
         RBbqPK3Nle/tdItVcWNg66XvT9fQk20cWBjlTyX53wgRGKYvqtweHI4XkZU8gqjLFJ6V
         BbAnTWAFO+mW1OID9QYaSkatVT0ld6PzuSv528p8beDc6JMCDgR1HnrxS88UlS+OmGvu
         GDFrd5tCuygPtLM5KZ6z7fKue1mKs2mD7FbisXhnIZuJOKb/XMNQdCYZe4ulEho0ShZz
         hN/g==
X-Gm-Message-State: APjAAAVlUixTSkPXZ0UN3kfKoCOI9Xj8V34xlDeRcw4YmthI81DWZ0Ca
        INF/I1Kt85CGlt5SLBlRMmCllA==
X-Google-Smtp-Source: APXvYqzEpIcfbKY9VmOQOlh4gHR44pyPiRNjVhiHDFIUMTdcrq2NBX4iOv+SXfr3SjTejuF07/m1hA==
X-Received: by 2002:a1c:9cd1:: with SMTP id f200mr3280189wme.157.1560426163056;
        Thu, 13 Jun 2019 04:42:43 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id b5sm2598490wru.69.2019.06.13.04.42.42
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 04:42:42 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH 4/4] ASoC: meson: axg-tdm: consistently use SND_SOC_DAIFMT defines
Date:   Thu, 13 Jun 2019 13:42:33 +0200
Message-Id: <20190613114233.21130-5-jbrunet@baylibre.com>
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

There a mix of SND_SOC_DAIFMT_ and SND_SOC_DAI_FORMAT_ in
axg-tdm-interface.c. Even, if this is currently the same thing, lets use
the same group consistently.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/meson/axg-tdm-interface.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/meson/axg-tdm-interface.c b/sound/soc/meson/axg-tdm-interface.c
index 585ce030b79b..d51f3344be7c 100644
--- a/sound/soc/meson/axg-tdm-interface.c
+++ b/sound/soc/meson/axg-tdm-interface.c
@@ -306,8 +306,8 @@ static int axg_tdm_iface_hw_params(struct snd_pcm_substream *substream,
 		}
 		break;
 
-	case SND_SOC_DAI_FORMAT_DSP_A:
-	case SND_SOC_DAI_FORMAT_DSP_B:
+	case SND_SOC_DAIFMT_DSP_A:
+	case SND_SOC_DAIFMT_DSP_B:
 		break;
 
 	default:
-- 
2.20.1

