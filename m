Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0842F95EC8
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 14:35:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730066AbfHTMfS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 08:35:18 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:40084 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729850AbfHTMfS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 08:35:18 -0400
Received: by mail-wr1-f67.google.com with SMTP id c3so12229466wrd.7
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 05:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f0GMZ30YIFAvd4BpzkWj3t3CsrOU2xIx+D0MV3qKWwM=;
        b=HD7yEtENDDCyJ+cTYqoAme6M2J6NtjGhq3AGudkN57sTS1uopnxxw53ihlT7+XQbad
         G0b8SvorSPr4kQJuFsmCTOhR85ICveNvh11HAO9OU8S5Wz+/tkj/pS5wucxjNWbO88Xv
         Yy/G6oJj+9ZYe61x+QPhpQ80+3p6OoL/xE8cxWKtaDJaB68e+QF1hZhtTSPdP3ydrwHp
         qbcS9Xh6Pj06txoXkIAid4SNhHjSKQVwpdrYW13DD4UC3BoPvBECBdHoDc7qBUn6kf20
         O5H0+oA/DsxyyAYvX4QqjC2mr4tOQKHza0WP75F9hL3lbAnv0+v6csDHodJDSSqhP6/n
         SLeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f0GMZ30YIFAvd4BpzkWj3t3CsrOU2xIx+D0MV3qKWwM=;
        b=ugSKip7+Rcpuh1bKlO+W9mCj2r5wCt/DqMpoPb4uW379HdAfqUxJu63KoDDNl1Xa13
         l1elIt4IhDIPEaPJrqG9//3i3HIlIB8ssXpiUA48rzsZU0ZyHB7ht0RiVHpVmvTS8wqa
         l2U4At0peV6aMMsRCvaT41ZFu65m7TQMde3igY0WU0cC9PQOjVEkQvm6v4g9OyHfoRys
         fiW8EogalFVUlKiRMlDr6wB/hzKXa9YZuwo1SQE0VGxQrYED7bZ5IgHsZPXnbVUTJ7rK
         TTYooafYvtDtbCiN+OKEkgMTBbLDiTxCxlWsXnUJu+gYP/87XQ3CIbJDHzkY4AOlLQZf
         vWsg==
X-Gm-Message-State: APjAAAWP8wY4wiuphbr2BSYJU4g+kbFiWXxZWt+78/shRZ/XhzYViinX
        DBBGw3nJYkSPnw07GBbIQgcoTA==
X-Google-Smtp-Source: APXvYqx2gGA189ZOi44f1fTFmoVy+zzWIEPmaIN3RmlvE4ZjcSTl6+IoA4dhS0VzFiEIp/piWYqVWw==
X-Received: by 2002:a5d:610d:: with SMTP id v13mr7166603wrt.249.1566304516138;
        Tue, 20 Aug 2019 05:35:16 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id m23sm29661097wml.41.2019.08.20.05.35.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 05:35:15 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH] ASoC: meson: g12a-tohdmitx: require regmap mmio
Date:   Tue, 20 Aug 2019 14:35:10 +0200
Message-Id: <20190820123510.22491-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The tohdmitx glue uses regmap MMIO so it should require it.

Fixes: c8609f3870f7 ("ASoC: meson: add g12a tohdmitx control")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/meson/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/meson/Kconfig b/sound/soc/meson/Kconfig
index 63b38c123103..2e3676147cea 100644
--- a/sound/soc/meson/Kconfig
+++ b/sound/soc/meson/Kconfig
@@ -87,6 +87,7 @@ config SND_MESON_AXG_PDM
 
 config SND_MESON_G12A_TOHDMITX
 	tristate "Amlogic G12A To HDMI TX Control Support"
+	select REGMAP_MMIO
 	imply SND_SOC_HDMI_CODEC
 	help
 	  Select Y or M to add support for HDMI audio on the g12a SoC
-- 
2.21.0

