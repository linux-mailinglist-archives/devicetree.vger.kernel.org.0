Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 839CC595D7
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2019 10:17:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726519AbfF1IRO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jun 2019 04:17:14 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:34912 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726513AbfF1IRO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jun 2019 04:17:14 -0400
Received: by mail-wr1-f67.google.com with SMTP id f15so5306942wrp.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2019 01:17:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0iX4GoXUMjYo0yWAqnak7nWNu9SahWjJ+qIlyX2DjnA=;
        b=pqUrZZrHnpMwYQiyu/1jCW1Vn1dbIBUApoVZMhyhBwvnhvhfumKMpGn/HD06hkyLKV
         mAr70tgH1UWNF40M5i4Iu7TZyBCOF9E4DVrgXNhfgFoe68UERxt7W4BtnpD/aXQbHgrr
         KSKRFDsze0oQlGIrrEesEJEXxvjGoX7ByoMNidbjknRj4Bylt+bqRjjgIIVO6eX4pKnN
         1AmfDbD/NeC/4Z9WHyrLlNhDEE1EW62NsHUnaW1L+cOpLHwoL1tVmmD214BJEgmzEGJp
         UBCPbzQkK8BSlSG9gz7fGNCBlajjvLjh/2C21gkCh6AjXCuIST7i+hrq6mn684QyGZ60
         KhUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0iX4GoXUMjYo0yWAqnak7nWNu9SahWjJ+qIlyX2DjnA=;
        b=Vgk6i8bXa2dRZUzWVW1+KjXbKkpnJfxjUAaAT5b6gY8yW+HD/Lyv0goU7HrNo8ThuE
         9hIoo8Pe5uvQAXEC7hBvU0wEA5umMo1iTs5TC9ZEQ5CTVhwEWxidzHhotC10xfADo2Fx
         GByh4OlSslEXyQxrakh4qkiA9iMyQsSWoI/NYofGYJcH8NNVH4mN+52oMKSWDHSCl8Hj
         AFag2ULRlktGyo0+k7KVQ+xMkc+QgBDMF0wLiU1kvlIQsndT0SyWxIpn5GPEidRZuePd
         N6uQ4x/2uh4djdqhFQURZQWy9HO8FDTIiemilq+0/kVNCtOb7xZdDAUgoG2Sm+32BNy2
         EWIg==
X-Gm-Message-State: APjAAAXFb5aaGkrPpfxlwIFrU+4X5xk2SxLjGTHE4efFZtyagwR4PXhO
        6Ogt7fmtAhJmRhV7InCxtRFVzQ==
X-Google-Smtp-Source: APXvYqw+rkcyh3PTU9URJjuIKiu4kZ97NgtKOX3PAukWMiU12hf7kxkJIrnT5wyWxV6LyDzzRWcw8A==
X-Received: by 2002:a05:6000:124a:: with SMTP id j10mr6749454wrx.191.1561709832291;
        Fri, 28 Jun 2019 01:17:12 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id r5sm2819216wrg.10.2019.06.28.01.17.11
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 28 Jun 2019 01:17:11 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH] ASoC: meson: axg-card: remove useless check on codec
Date:   Fri, 28 Jun 2019 10:17:08 +0200
Message-Id: <20190628081708.22039-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While checking cpus before dereferencing the pointer is required, it is
not necessary for codecs. 'codec' can't possibly be NULL in the loop

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/meson/axg-card.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/meson/axg-card.c b/sound/soc/meson/axg-card.c
index 70bb0cbad233..14a8321744da 100644
--- a/sound/soc/meson/axg-card.c
+++ b/sound/soc/meson/axg-card.c
@@ -118,8 +118,7 @@ static void axg_card_clean_references(struct axg_card *priv)
 			if (link->cpus)
 				of_node_put(link->cpus->of_node);
 			for_each_link_codecs(link, j, codec)
-				if (codec)
-					of_node_put(codec->of_node);
+				of_node_put(codec->of_node);
 		}
 	}
 
-- 
2.21.0

