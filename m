Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7F6D095B68
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 11:46:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729568AbfHTJqc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 05:46:32 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:39558 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728545AbfHTJqb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 05:46:31 -0400
Received: by mail-wr1-f67.google.com with SMTP id t16so11672171wra.6
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 02:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M8ToaxucjQlogdMowFdkWR4IXJJ6iFaHGB902RHdk/E=;
        b=PV+jCn5O0GP3lMpzRKJ+dTfqwwE4XtQgfuEpI54AC4CvTC850JS4o5NLOct67iouHE
         A32sxWArxSA3FhY7BhgfkbcjaSYOtgPISE1Ote0/9d54jaABzpD9SprjMrMUQtDlOfjs
         D3q/xsgO64/aWwii7jU7JJcfDRwkcKUn65q8BGa3depykDfLotzazu6I8ewvAJUGiFGx
         c3p7WC64jTJCFusWmvl3ubXuFsiuv4xpr3cYbBd9h31/FXEL+5FS4FWNVCK237TZ5KGd
         3KUNzFmXqXrfP9aiK5OxttInGX+2KAGjG54GI4Eb3WWrkxY5DVew94gLB1GavL5SrzWR
         lI9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=M8ToaxucjQlogdMowFdkWR4IXJJ6iFaHGB902RHdk/E=;
        b=bP0bqtQT6a0gs3Xm0E5kLRRe0WNJrnmZIVA28laZmJHocDLNJ+tKG/SZQs4q+iNZ2s
         H/JkvhNSJDVHCNimFK1pCyn3IVB2iywNK8jmnwb6v7KYcNfgBAz1lHXwuAcPCDXQnqIR
         Bm44XYAynUDNt32xhkn2de9xYNDar/YI21mhkpUdLG5TeVPqX0fWKbV4BP1UEbiKU8qO
         XfX3dOGbQSuKgZfXvfX3r7pq6yKWKfQMYre7aXx+6sd/ZHWpN2vrNc6C621Hm1Z334mZ
         Dum73UEEvsBCwULZmJKlvSzW4u+ysHV8XLHKL0H2ul0tYpc32nfNyCT/fKMLw10ch3fl
         cSDg==
X-Gm-Message-State: APjAAAVswP6TXkP7wz0UWnezGlfhB+/95hp8xyFReN8NCXQUhIVjDqWv
        hdQbVSoEOajuytVZfwxsDvWqmA==
X-Google-Smtp-Source: APXvYqwgS/FwkAFLZrPF2zgs8yyNuMS58TcflpUB/WQwtaG9GH2QdJ048e4dmWTG8/aAQ+l5TgI7oA==
X-Received: by 2002:adf:ecc7:: with SMTP id s7mr34218122wro.215.1566294389556;
        Tue, 20 Aug 2019 02:46:29 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id o17sm15958305wrx.60.2019.08.20.02.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 02:46:29 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] reset: meson-audio-arb: add sm1 support
Date:   Tue, 20 Aug 2019 11:46:23 +0200
Message-Id: <20190820094625.13455-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds the new arb reset lines for the sm1 SoC family

Jerome Brunet (2):
  reset: dt-bindings: meson: update arb bindings for sm1
  reset: meson-audio-arb: add sm1 support

 .../reset/amlogic,meson-axg-audio-arb.txt     |  3 +-
 drivers/reset/reset-meson-audio-arb.c         | 28 +++++++++++++++++--
 .../reset/amlogic,meson-axg-audio-arb.h       |  2 ++
 3 files changed, 29 insertions(+), 4 deletions(-)

-- 
2.21.0

