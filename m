Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 637DEAA508
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 15:50:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732042AbfIENuq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 09:50:46 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:33028 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731771AbfIENuq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 09:50:46 -0400
Received: by mail-wr1-f66.google.com with SMTP id u16so2916463wrr.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 06:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1rlOPeLcbrRYEui8i9Tv2ctLK7V5CEAitRoX5kcoRck=;
        b=Xq0Jn089ydtJsmFLStgJLjVq3WswCL5UIpIOZ0LDXluME1UCmRXmBC68TkxXDRaJnV
         Feyr3rChqjvQg1lEGsJl9FXQTG/Rznk0Cs++p0i7y+Lk+HmsvREF27u87db59hGqB67y
         s8XO4DYzKKp0xv05+aa9kg9HyZbbeD7OZokjXBOepQryeiHAGzrMbRAp1XJsNZYogxWR
         AVAadTBzo2m4PVmZIOVQDbifmFE86AZxXtt7Pu/z0AWDsfzwWE78G22hk+gg7XbeM+pH
         +J9cJRCAHCm/YB0TjmLljYuLgo9pkGB+VDRpnkV5nQGUlQg4cN/hY502blTPJgooopIP
         ssWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1rlOPeLcbrRYEui8i9Tv2ctLK7V5CEAitRoX5kcoRck=;
        b=UDcnNf82P7T/7S9kz6HpyrFBxbIyRSjjyrff/63mKaiJTHJ45DiEz6x91rJ/+xrPMH
         4u0gHUp2TJZzAvz/hoK52mtAy5HHBzo+W0LbdvC0A/zjWjOe1Bw6WXGVzqWZw0+KHgZJ
         vGYCRHs1RwEKgcQxkiUtQ6F7chXeKBqXyUBDcLukqUOVmwAAE/N5agzvfY6tMMsaGwGH
         pvJtyxZhAHjN858gXhzYuhR/62HLGBfab4LwPl65R1gZfRZTcIuCExauCzci1R/YsgyY
         Fjka8qDe4V78sQILtR5qDzEVu+MzOigJRzmfeKgkegVk23Nr+YM4peZbl54qfASwr6GI
         6gmA==
X-Gm-Message-State: APjAAAXN2BFax4ypEFTZOiCWjLf2KJXTsUg296TMscK1vNLjlipV4VKJ
        IWeb7hiU5P1aMqNsVqlbPmar3A==
X-Google-Smtp-Source: APXvYqz1xEzk+JkowkEJrdXuXLrDLz0HPwzvqc1On9o10nh3kf0nJpBrTSnQbBG1GEQp6hTs1L65Pg==
X-Received: by 2002:adf:e591:: with SMTP id l17mr1918869wrm.199.1567691444242;
        Thu, 05 Sep 2019 06:50:44 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id y3sm3324893wra.88.2019.09.05.06.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 06:50:43 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] reset: meson-audio-arb: add sm1 support
Date:   Thu,  5 Sep 2019 15:50:38 +0200
Message-Id: <20190905135040.6635-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds the new arb reset lines for the sm1 SoC family
It has been tested on the sei610 platform.

Changes since v1 [0]:
* Fix the mistake on the number of reset as reported by Phililpp (thx)

[0]:  https://lkml.kernel.org/r/20190820094625.13455-1-jbrunet@baylibre.com

Jerome Brunet (2):
  reset: dt-bindings: meson: update arb bindings for sm1
  reset: meson-audio-arb: add sm1 support

 .../reset/amlogic,meson-axg-audio-arb.txt     |  3 +-
 drivers/reset/reset-meson-audio-arb.c         | 43 +++++++++++++++++--
 .../reset/amlogic,meson-axg-audio-arb.h       |  2 +
 3 files changed, 44 insertions(+), 4 deletions(-)

-- 
2.21.0

