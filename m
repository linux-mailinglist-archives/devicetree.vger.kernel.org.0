Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6FFA45E376
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 14:08:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726473AbfGCMH4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 08:07:56 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:54170 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725830AbfGCMH4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 08:07:56 -0400
Received: by mail-wm1-f66.google.com with SMTP id x15so1945507wmj.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 05:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=58+wQHNFY1FZ9kJxcysuLiIfPy4FWwdFF39AnxV0wiw=;
        b=tSLd8MxkTDIPty1ZVy45elawWaFPNF6Jg+TYasAX7ii2/0G5N+lecXsA1agJGG7Bzj
         jTwgdSonkOIGaHbx6jnquaosIGpfBZ8Y3e//zVbY0zxRQiJJgwt8IITWTL5c88nVfC79
         WBDfT9KGTVQa8fGWOmd4MBKFx6l+VbHJ2IGT5pmP3PjoObMo2ZTeVYFCIn0nc1Q4CqIl
         UsF+Gy+vE4kEyuI/oIs+GSQKgJzE1O/YBWZx91bBoZJFigDpLfKgZDYFgVLdI4ukLrAP
         cV2AyhrXuRbrYceJ473DrvMJmtIXCxj26Fqgt9cqpd9yZpFmRa7NWLlAz9XNF/2pPL7M
         ejdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=58+wQHNFY1FZ9kJxcysuLiIfPy4FWwdFF39AnxV0wiw=;
        b=BBBuTUzmx1oWxoJFmeTELE8F6FHqfwXSdnzLspOlQYHWxgsh5oGlqYMKrkbixbhBqn
         d3AijBg/PqWuMU6G4DfzDMhxAFzN3G/ZQJgYOX6ViVj5hPLfEKlHGUwTYv5YDbMt4tdM
         eTNK5g3THnvSf0OoOKLMd9CVtxqlrdQSVAPAkO/KgqTlO3YT42/aRCIHf1iSlPFrG5fN
         mpBAwdaq7YIGupGBMOKU+5KkG3tz8nx7B35WC3Y6BZXBR1lEYjnBS+vVvbA4iP2O9WDa
         Y+v5sQNJ1ZYUwwGormCxixaRz+7eXxP+PyiX878UOyNkqFTccl9ifbpjPQs/mf3hReTR
         HrCQ==
X-Gm-Message-State: APjAAAWxKxQILXKH2E/5DKuWbjii4YrGejXd9J4128xP5q58lQxuzrDe
        BX3kptsNYC3h59zcrFbgfasTlA==
X-Google-Smtp-Source: APXvYqyBMzzq4idwjAjHjTuoGLGjP+FyAOgZQbzeVCROJZPeqmJuXI+iq9gE/QUUnzONCZaeN9B1FQ==
X-Received: by 2002:a1c:96c7:: with SMTP id y190mr7250688wmd.87.1562155673832;
        Wed, 03 Jul 2019 05:07:53 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z126sm2767638wmb.32.2019.07.03.05.07.52
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 03 Jul 2019 05:07:53 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH 0/2] ASoC: meson: axg-tdm-formatter: add g12a reset
Date:   Wed,  3 Jul 2019 14:07:47 +0200
Message-Id: <20190703120749.32341-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset add the possibility to provide a reset to the tdm formatter.
Such reset is available on the g12a SoC family and helps solve a random
channel output shift when using more than one output lane.

Jerome Brunet (2):
  ASoC: meson: axg-tdm-formatter: add reset to the bindings
    documentation
  ASoC: meson: axg-tdm-formatter: add reset

 .../sound/amlogic,axg-tdm-formatters.txt      |  6 +++-
 sound/soc/meson/axg-tdm-formatter.c           | 29 +++++++++++++++++++
 2 files changed, 34 insertions(+), 1 deletion(-)

-- 
2.21.0

