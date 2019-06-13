Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A64F643B2A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 17:26:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729282AbfFMP0k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 11:26:40 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:33121 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729113AbfFMLmn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 07:42:43 -0400
Received: by mail-wm1-f67.google.com with SMTP id h19so6429037wme.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 04:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wxfr2UqrJP7k7q7uBFspyYkIYB+P3tVp1PAw4xsHiNQ=;
        b=aIGGQGLj/J0XH6peWf/aEST4UK1CqwMrpUkQjobNWMtvBILe/l8TNhNg5Gzc41WnWL
         F4hhER2TzHu8OTkgAHyLHRi0LjDuY1KEpg2IqFxv/igN0L1QST+UPKkVOO+GzkHAd7sn
         e1cBnlrPNcVUOmgYhgm4ADGOlRHXukuC1YbQPIpd5si/3/GpQxqW8/lzKwooILMTP1gg
         Snh1Fa/jMuc54U8S27WXRam9qRpA8iIkVHWWGd00/2fyhA/4yJRJZ6wH7dcwSbw3b/PW
         QWEv9MpalZosI8UghJPlwZeX5KAmerfAuTq5rFurUSeyS/aRtX2aztvMj6zTHq/9r25V
         q4nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wxfr2UqrJP7k7q7uBFspyYkIYB+P3tVp1PAw4xsHiNQ=;
        b=tPuRpAP/kBKJaQtMbo6WZgJE/H2tTmv7SeOBypjo94iTYPK+Z5/4tFLnO3QPvOD+5T
         ZYm+LlZFGOBVWq1RiwZo2bHWLcmt6o5wpxLgt1JzdU09gEEvDS7NxgN9JW5N3mwi8rmU
         qXaZiPQVQiqaF/t9Tb7AWsPTooIql/Wf8okR/yh1HUqpPQkGd2rJX4Nk1RjAgDL2wk0+
         q+gJg1Acr4Dl6LerbOzznUio0Pag/3SY6ALIalrCbMJz1OirOxzxGkivEFGxuM4Ia29U
         XrKAIhW2FveL75gh7eX0tz7wnWpJVAZcIDn2z58sjVbGPcOThDKRi3cL6zmGI1PFb4qE
         BYtg==
X-Gm-Message-State: APjAAAW0B9PTvvaSOXNZVXhwu4rUtHmJk0zpt8UgxfKaRa/cpkSpy99R
        SrDuP4IS6kMFTdzawniM3WJXag==
X-Google-Smtp-Source: APXvYqw3l8gXPruJhWBk60j/WsaoYnaNmb1Oiya7p9axR4/l3hNwB1waenTIOkkffv+68dM5m29SWw==
X-Received: by 2002:a1c:4956:: with SMTP id w83mr3327094wma.67.1560426161191;
        Thu, 13 Jun 2019 04:42:41 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id b5sm2598490wru.69.2019.06.13.04.42.39
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 04:42:40 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH 2/4] ASoC: meson: axg-tdmout: right_j is not supported
Date:   Thu, 13 Jun 2019 13:42:31 +0200
Message-Id: <20190613114233.21130-3-jbrunet@baylibre.com>
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

Right justified format is actually not supported by the amlogic tdm output
encoder.

Fixes: c41c2a355b86 ("ASoC: meson: add tdm output driver")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/meson/axg-tdmout.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/sound/soc/meson/axg-tdmout.c b/sound/soc/meson/axg-tdmout.c
index 527bfc4487e0..86537fc0ecb5 100644
--- a/sound/soc/meson/axg-tdmout.c
+++ b/sound/soc/meson/axg-tdmout.c
@@ -137,7 +137,6 @@ static int axg_tdmout_prepare(struct regmap *map,
 		break;
 
 	case SND_SOC_DAIFMT_LEFT_J:
-	case SND_SOC_DAIFMT_RIGHT_J:
 	case SND_SOC_DAIFMT_DSP_B:
 		skew += 1;
 		break;
-- 
2.20.1

