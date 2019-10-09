Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 63964D09C7
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2019 10:27:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729761AbfJII1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Oct 2019 04:27:20 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:52759 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729942AbfJII1U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Oct 2019 04:27:20 -0400
Received: by mail-wm1-f68.google.com with SMTP id r19so1431032wmh.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2019 01:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3ETtimywo0QHOEXACD3eWpss97piVMA8Q9apqqhkw9s=;
        b=EXTxIiipvuSRt3WpixN9cmSOd/S6uza/iZhQU2JhNUziPV1RMySYp2fvsj53vsagey
         zR5fa6oQJP1MdHdhhpIYr7fFNG7AhLum4c8Ium/fG1aZPc3Oq54lnZYraX3DloaWyK/a
         +qbVxpyw30HziDNPNyJBd8LlBqJN+tGxqQ2QN9orrpm36i+jQrOs/MIZQMAuxA/dMgTA
         7G58AUOSO1CkiagedmeVWfVNr3fRYqxybl6tCJIzt9uDVStjjd/s5xbFs2ZI1adR1YJX
         37hkNEz7DoTTo07GyJr1LNXzFw74IcIDpUrsm6UxzQPd+tIeTXz/arf3ZcHvhvEIVo54
         0W3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3ETtimywo0QHOEXACD3eWpss97piVMA8Q9apqqhkw9s=;
        b=U6ECMQ7XQuUGkU74rQu88aMJlp4PzWjHXM+x/71RhL4yxhLImv5cpta0Et9lEEFZcn
         iESGRIDVyRl1CAKSLMBrR4EkfOF7FdwV4d6iULWqjAqNrxI9b9oRtqjJjszdAg3EwHkn
         4vI1wCzqBBkV5kIt8Q/R54pGUF4aw6odoFbEWuN0fyPKwV0V/dNPddIj1iuc0ZgNdAEK
         8dIRS3T1RkTvrBLdfETcISMuUOQHTgRT1WMueFl6CmMtb/hNFxeAG461aX1qlTBJPGND
         eqi+Pin9aBiETSnS7f1h9JsUbXkpdvFRz8BvB1CBRqlCvrifga5EY6hNqPH7pOav8e65
         b/YA==
X-Gm-Message-State: APjAAAWHyTBAGOFvfolSiHrWld4wEy1uaqUA96DXNO9FCFhCd676Wyf0
        FRETj5Lz69Dw/VvyKP8HUA6Lqw==
X-Google-Smtp-Source: APXvYqzemyQZ1o5FQC5LcUGT4JwMcSgBGuRC2yCv1uuPFs1osQ0i4ZTxxRPbv1kvQQSlyCH9Rt4zuA==
X-Received: by 2002:a05:600c:22d7:: with SMTP id 23mr1583514wmg.31.1570609637059;
        Wed, 09 Oct 2019 01:27:17 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id r18sm2545364wme.48.2019.10.09.01.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 01:27:16 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: meson: sm1: add audio support
Date:   Wed,  9 Oct 2019 10:27:06 +0200
Message-Id: <20191009082708.6337-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds audio support on the sm1 SoC family and the
sei610 platform

Kevin, The patchset depends on:
 - The ARB binding merged by Philipp [0]
 - The audio clock controller bindings I just applied. A tag is
   available for you here [1]

This clk-meson branch [2] has the necessary clock driver changes, if
you want to test this.

[0]: https://lkml.kernel.org/r/20190905135040.6635-1-jbrunet@baylibre.com
[1]: git://github.com/BayLibre/clk-meson.git clk-meson-dt-v5.5-1
[2]: git://github.com/BayLibre/clk-meson.git v5.5/drivers

Jerome Brunet (2):
  arm64: dts: meson: sm1: add audio devices
  arm64: dts: meson: sei610: enable audio

 .../boot/dts/amlogic/meson-sm1-sei610.dts     | 205 +++++++++++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi    | 327 ++++++++++++++++++
 2 files changed, 532 insertions(+)

-- 
2.21.0

