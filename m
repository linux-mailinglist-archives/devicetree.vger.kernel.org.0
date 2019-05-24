Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7FE4829998
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 16:03:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403876AbfEXODY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 10:03:24 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:46752 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403843AbfEXODY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 10:03:24 -0400
Received: by mail-wr1-f65.google.com with SMTP id r7so10138159wrr.13
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 07:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qAiP1kaATrLVhsYQVSGC57biP0RGHD32g8QSytysdio=;
        b=aDrFvuyRej7ZnCiuZ8EMAXzGNtl2fX4SmiUratwoNSiduKV5rOtpWZJxwj4yn/Y5yo
         O62Q5PrqQYB+nD0GdJKHqX+dZIwoezbHMQeJTUgK1gEUAazt8uf48hUnjXEwuegoBJRe
         xWGXStyAO3z91VrLk0sMwzlXcaRgVrW07FRBPtK4KkE2iVWmKBEjcBNYr96v2aJcPKAE
         jNUGuZcvouYDc4QcDqFzZcbpjfxz1M19bK1LJNd+9FLrREWQh1JHTJaGxE3WIJIcsFxF
         WQ1bcNgkR2xpJlN/2pokPxqssd0oDICj2uMCERSYBj3nUfgwLzQQ3qArQJHYMIuFRRcR
         PFpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qAiP1kaATrLVhsYQVSGC57biP0RGHD32g8QSytysdio=;
        b=mbyeEzZh8Ltlw7GvX8VLlZYwgMo/GAQ4lHTl75ve969rwrBiA/3fzNBSMLEsxrnVsw
         cAF+Fk+De2DdS9ygKKSfHF+Ts+UzMsoZj2wGOTA5tcWr8j6C3K43+lNVF5vw0QGxKsy9
         M7w8xK09wXQJyn84uBUXcWXyRGrSs5nWJmgkzZUr8xNh0QHvzy8J6BRcMzR0t5FsAtEc
         1MNP+dlkPUWAkSpqiz83yw175kJyqJV5q6lZfhWzeD5UtgQJJeu3D/g6Srn2dkDz7IVp
         NujplSTwDNpyxNiKL+WgLQ+ND8XPP4fSD+xuB1tNAWE8YdFvCBln+9NIqA8ZWCVEbAq8
         5C3w==
X-Gm-Message-State: APjAAAXG37asNyEMnEckzuxDl31kAnn9WYjODAjJf4nNd9Uu6fmOFbrw
        P7LIIpFGmmyiAYQqNTDVCNXLHQ==
X-Google-Smtp-Source: APXvYqzBVrbGf9H8H0xE3Tl8a6MHqOc8mGvBDzjxj+XxAWfcZRIriICIOhEBQ7bqUBsJ4PCl2qfiUA==
X-Received: by 2002:adf:f6c4:: with SMTP id y4mr37904326wrp.37.1558706602884;
        Fri, 24 May 2019 07:03:22 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id t7sm2797114wrq.76.2019.05.24.07.03.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 24 May 2019 07:03:22 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: meson: sei510: add sound card
Date:   Fri, 24 May 2019 16:03:16 +0200
Message-Id: <20190524140318.17608-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds the sound card of sei510 board.

Note #1:
The patchset (build) depends on the tohdmitx ASoC patch [0] for the dt
bindings of the tohdmitx glue. It also (run) depends on the mpll clock
series [1] to get a correct clock sources.

Note #2:
I would normaly prefer to use the HIFI pll dedicated to audio to provide
the base rate for the 48kHz audio family. HIFI pll rate precision is a
little bit better than the MPLL. However, the HIFI pll may sometimes,
rarely, take a long time to report a lock. I'm still debugging this.
In the mean time, let's use MPLL2 instead.

[0]: e35f5ad6a965 ("ASoC: meson: add tohdmitx DT bindings")
[1]: https://lkml.kernel.org/r/20190513123115.18145-1-jbrunet@baylibre.com

Jerome Brunet (1):
  arm64: dts: meson: sei510: add sound card

Maxime Jourdan (1):
  arm64: dts: meson: sei510: add max98357a DAC

 .../boot/dts/amlogic/meson-g12a-sei510.dts    | 207 ++++++++++++++++++
 1 file changed, 207 insertions(+)

-- 
2.20.1

