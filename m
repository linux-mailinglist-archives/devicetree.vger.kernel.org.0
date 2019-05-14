Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9F8521C6B4
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 12:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726416AbfENKMt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 06:12:49 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:38412 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726339AbfENKMt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 06:12:49 -0400
Received: by mail-wr1-f67.google.com with SMTP id v11so685951wru.5
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 03:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JhynvhAiddsMm/Ocp7kfyLUqbkQfMFHtGPzDTJPS1B0=;
        b=POgIrSQvJlnEj7sbeK83izHCW7/GNPyqSQO0wUuvNg0ap2oo/MDC29Uj291gjEXA9o
         OOktcC8ZvbzM54YaY105eVEKF4L0mP0I5JKwuxFilZBTNBGicOIp6s45+vumK0A+d0P3
         Lg5xHawaznKjqnhlI4lS/ivZUVtjU8TXLr+3710P/HT7OttPffWSt9U6QN+MsbFCdFnH
         YIAp91wpgf7k1LYDfDAu48s8UWNAYXNjqe35n0aU8KP4xvylUMjUrmqZAUOgBsTxxEzG
         foOtZEBJZ10Lt2TfL2DOvQZ4hcb+RvKBIO8I6BaBW3PeRU7WiK375bDnlIQKiIx36X7k
         VTMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JhynvhAiddsMm/Ocp7kfyLUqbkQfMFHtGPzDTJPS1B0=;
        b=IqAp3qOwLvq4DeR1RTtS6bPtQDr/Xa/4kXbOc68zT+6qZRd+Pl0ZXRoK6tp+1MeOGM
         RaqwR4Gp/bMcCU+4w7qVKKWn+8d9SwvrLt/XU5KqwEePU6MytaidVosZNJoT68UfmVpM
         TUEAYZJ6VBb1gnub+WiUtSBDOlO86/9hDqwN58xC+EAxSKfLDvzfL1Fj5Rp5B+8JhlLi
         0Sioa1SRYIuo8TTkG42jVkdVwyAoVy2eRVkI6ygliMVfEshHXCJHuTTTAPPvR+/ixUtg
         0tOBXCjXLHslrzgHvIVy3vRYDNTIPPLKE5B94HSHitxgLVR2Inn/M6optIxn3LJm+bQx
         SKMw==
X-Gm-Message-State: APjAAAWYqT3ZVd8MKeuKgXR0VgIttbkTlNs99LBYvrXzOTItfxd1f43g
        SLUlU6GOzhGbwq6IHSDgf2v0kA==
X-Google-Smtp-Source: APXvYqxWgcWkABQ/gpTGPgCZF14Fs8TuOZduMEHV27FG7xjEGdKo8VVbb7/N98vhPuSiXwmwHNdJHg==
X-Received: by 2002:a5d:52c4:: with SMTP id r4mr20149062wrv.79.1557828767618;
        Tue, 14 May 2019 03:12:47 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id r23sm2219564wmh.29.2019.05.14.03.12.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 03:12:47 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] arm64: dts: meson: g12a: add i2c
Date:   Tue, 14 May 2019 12:12:34 +0200
Message-Id: <20190514101237.13969-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the i2c controllers and pinctrl definitions to the g12a DT then
the busses present on the u200 and sei510.

Notice the use of the pinconf DT property 'drive-strength-microamp'.
Support for this property is not yet merged in meson pinctrl driver but
the DT part as been acked by the DT maintainer [0] so it should be safe
to use.

[0]: https://lkml.kernel.org/r/20190513152451.GA25690@bogus

Guillaume La Roque (1):
  arm64: dts: meson: g12a: add i2c nodes

Jerome Brunet (2):
  arm64: dts: meson: u200: enable i2c busses
  arm64: dts: meson: sei510: enable i2c3

 .../boot/dts/amlogic/meson-g12a-sei510.dts    |   6 +
 .../boot/dts/amlogic/meson-g12a-u200.dts      |  21 ++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   | 268 ++++++++++++++++++
 3 files changed, 295 insertions(+)

-- 
2.20.1

