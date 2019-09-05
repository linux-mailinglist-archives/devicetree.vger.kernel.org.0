Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 78844AA510
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 15:51:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732143AbfIENus (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 09:50:48 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:36682 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732048AbfIENur (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 09:50:47 -0400
Received: by mail-wr1-f67.google.com with SMTP id y19so2899582wrd.3
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 06:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yOkiOZt6tUh2pBf+83UJHLS8/NEBh0SpKX8xW2sR6I8=;
        b=fH4pEpeaPpTrxdIDkiSAP9OKTD2gnJKXmbAKpvvII9xS2Nznc3fU+YM20p41PUEYe+
         lnHBqLCAEhGhMATXsFlBg68FRwmErAG45oEy23pNXPGEWUx+mgi7Ou1S9W6umUQXRsVP
         giArIRM9aRIjcnaYMi/ySdVB7dqtiCv4ynxgef4mMlDOhXK7bzHjaX/FxSo7Jw/ys1Ri
         QopSpJoTrn1RJa56eHCOBNb+cYWC+h1vo/ld+kUUXS+rDz4n+79vK2suGos3OR76s850
         xLi7W+kGTLNeqkEYDuoxqwBCeyLNrgvckStdj8N4dXiayVeg8uDYpCBByUME7dca5tAz
         /Zbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yOkiOZt6tUh2pBf+83UJHLS8/NEBh0SpKX8xW2sR6I8=;
        b=ffMDmR9ScZlsodVZFcjU7WgoEJe63RX9b8q+lqv6DG9wiFnDuKXxYA7G5yfwUo0m4q
         gOJp5sZzeo0aiO7zix2+4L00BjwNNJOfZDK5ziVdmQ3b2lP5tHSzlGoxUweqpWw+gn63
         4NE8XjgHVQ7xdEAlbGYhpqc0hCjn4Pj99woMqllopNdMNbri+RxhS9w3sMAA/mcMuqs+
         ee9jhxul+pxgojllLS1b2Ds0rJBfJJDwft0HfQzUOIlT2fit8Zf/kNqVd+uX0X/JQBo3
         Bb80xGU+py0Z3a/VFl5gXHxD6/Q4F0Yt8M8QSII1MNNJj27YP1nDrNqvVZJdOMSyQPyG
         Evsw==
X-Gm-Message-State: APjAAAXfPeX9A6a0ErLGQ5z1WS5UjH9dRrWg8xamEkQBrdNsZhZ/NpEw
        +/iE7TCeZ7pGqhSCX7KxWApbzw==
X-Google-Smtp-Source: APXvYqxrzLFfHy7t4aRY1w5WOQmGxxUE0GDjUhQx/bqFaMS+KA7w/b2UxEzoERkiezkzLsGar0DCNg==
X-Received: by 2002:a5d:504d:: with SMTP id h13mr2746749wrt.342.1567691445811;
        Thu, 05 Sep 2019 06:50:45 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id y3sm3324893wra.88.2019.09.05.06.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 06:50:44 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/2] reset: dt-bindings: meson: update arb bindings for sm1
Date:   Thu,  5 Sep 2019 15:50:39 +0200
Message-Id: <20190905135040.6635-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190905135040.6635-1-jbrunet@baylibre.com>
References: <20190905135040.6635-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SM1 SoC family adds two new audio FIFOs with the related arb reset lines

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../devicetree/bindings/reset/amlogic,meson-axg-audio-arb.txt  | 3 ++-
 include/dt-bindings/reset/amlogic,meson-axg-audio-arb.h        | 2 ++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-axg-audio-arb.txt b/Documentation/devicetree/bindings/reset/amlogic,meson-axg-audio-arb.txt
index 26e542eb96df..43e580ef64ba 100644
--- a/Documentation/devicetree/bindings/reset/amlogic,meson-axg-audio-arb.txt
+++ b/Documentation/devicetree/bindings/reset/amlogic,meson-axg-audio-arb.txt
@@ -4,7 +4,8 @@ The Amlogic Audio ARB is a simple device which enables or
 disables the access of Audio FIFOs to DDR on AXG based SoC.
 
 Required properties:
-- compatible: 'amlogic,meson-axg-audio-arb'
+- compatible: 'amlogic,meson-axg-audio-arb' or
+	      'amlogic,meson-sm1-audio-arb'
 - reg: physical base address of the controller and length of memory
        mapped region.
 - clocks: phandle to the fifo peripheral clock provided by the audio
diff --git a/include/dt-bindings/reset/amlogic,meson-axg-audio-arb.h b/include/dt-bindings/reset/amlogic,meson-axg-audio-arb.h
index 05c36367875c..1ef807856cb8 100644
--- a/include/dt-bindings/reset/amlogic,meson-axg-audio-arb.h
+++ b/include/dt-bindings/reset/amlogic,meson-axg-audio-arb.h
@@ -13,5 +13,7 @@
 #define AXG_ARB_FRDDR_A	3
 #define AXG_ARB_FRDDR_B	4
 #define AXG_ARB_FRDDR_C	5
+#define AXG_ARB_TODDR_D	6
+#define AXG_ARB_FRDDR_D	7
 
 #endif /* _DT_BINDINGS_AMLOGIC_MESON_AXG_AUDIO_ARB_H */
-- 
2.21.0

