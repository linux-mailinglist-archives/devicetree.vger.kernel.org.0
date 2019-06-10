Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 335BA3B542
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2019 14:53:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389740AbfFJMxz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jun 2019 08:53:55 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:43028 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389441AbfFJMxz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jun 2019 08:53:55 -0400
Received: by mail-wr1-f65.google.com with SMTP id r18so9054522wrm.10
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2019 05:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8T69aUvAi+maIZ8yBvTWOJzaeXiOR3Dqg9+a+MoRXDA=;
        b=n3Fu5kN6wdtGKh9YWexo8ZjfsnSBwADVRCC+C4XPOPSXHT5eKEAqT5i79KL9bKa4wd
         c0hqIJpI7gTWCxibbx6XId2oyRuITeCfXqD/vuxY73kQof26ZidBERPABjLwlljWAlZv
         /RaBmnpuINADHE0WgkCb9CXCUgwj4Yxvz2Ql+sdrVda1v3DhaMUlSuiQFVX9hxE2M59c
         2v8lzULQ5grpGHh307iNtaYcW5R1JoPcHlI5ob+LjUqV8Yn8AMYEPWaBB5TBDRQZQhyb
         tXVbYg6wQvy59GmMAsTdVK+sHPTjGUCBNjYtFOVx9d4p2BBvJ5leqMnY4TuY0XvTNUme
         i8Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8T69aUvAi+maIZ8yBvTWOJzaeXiOR3Dqg9+a+MoRXDA=;
        b=gBk+1K6k8odfJuFlnEZz343MyCAFPk6rKLiRl4qzLcLlsEmGI41Pba6YpDtKQ5vOg9
         gd/xPuqDIdOw/hiJ9V8V1S9ZgFSmTwtiyoEYNxlAvuS3DXqx2wJJbyzBiCvXE3s1CEF/
         RR6onf7DTK88lnWqy+F+0WZBQpjpKEpFFfBzpiopYJTgI61MeHCxXKUZTEe9TuKJSxZP
         hTv83OhgoKovtrD5df6sx3mz13Ui2zBX44CwoChhdlqB+E9Ymp1g0O2Q8BercADhajkd
         HYHEuH6US5CzZCWLENddQijjXlP4ftKSe5ntDdLoke/ce/eWzE0HwNBPCNB8BwaWY032
         erHw==
X-Gm-Message-State: APjAAAXP7IceKBtk20WGWViXR3meRv4hQa79BA4PUCN5HlmWmh0G0whc
        NsXYlU68JaGFebFaBtehWvCMlA==
X-Google-Smtp-Source: APXvYqyF38CXjmJlFWQvmC/4HOPRMLGbV8IW7oGgE73werPfKioCG3d1XJdAyRcyyO0juNIRqqCB+Q==
X-Received: by 2002:adf:9267:: with SMTP id 94mr22877356wrj.338.1560171233499;
        Mon, 10 Jun 2019 05:53:53 -0700 (PDT)
Received: from boomer.local ([2a01:e34:eeb6:4690:106b:bae3:31ed:7561])
        by smtp.googlemail.com with ESMTPSA id 135sm11871603wmb.28.2019.06.10.05.53.52
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 10 Jun 2019 05:53:53 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH] ASoC: meson: axg-card: fix null pointer dereference in clean up
Date:   Mon, 10 Jun 2019 14:53:44 +0200
Message-Id: <20190610125344.18221-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When using modern dai_link style, we must first make sure the
struct snd_soc_dai_link_component exists before accessing its members.

In case of early probe deferral, some of the '.cpus' or '.codecs' may not
have been allocated yet. Check this before calling of_node_put() on the
structure member.

Fixes: c84836d7f650 ("ASoC: meson: axg-card: use modern dai_link style")
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/meson/axg-card.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/sound/soc/meson/axg-card.c b/sound/soc/meson/axg-card.c
index fb03258d00ae..70bb0cbad233 100644
--- a/sound/soc/meson/axg-card.c
+++ b/sound/soc/meson/axg-card.c
@@ -115,9 +115,11 @@ static void axg_card_clean_references(struct axg_card *priv)
 
 	if (card->dai_link) {
 		for_each_card_prelinks(card, i, link) {
-			of_node_put(link->cpus->of_node);
+			if (link->cpus)
+				of_node_put(link->cpus->of_node);
 			for_each_link_codecs(link, j, codec)
-				of_node_put(codec->of_node);
+				if (codec)
+					of_node_put(codec->of_node);
 		}
 	}
 
-- 
2.20.1

