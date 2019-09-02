Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C5840A5B0A
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2019 18:03:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726016AbfIBQDv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Sep 2019 12:03:51 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:32908 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726023AbfIBQDv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Sep 2019 12:03:51 -0400
Received: by mail-wm1-f65.google.com with SMTP id r17so12283818wme.0
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2019 09:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=U9IqFz/rCcEzO9sp+80zoE9eGKQjzJcJCmdp79nsgKY=;
        b=IoMj7wcRG5nrP1XZaokIgDQnJyPnhAsLUVzLVD+Y8a8n/Got9Tn4fTRNNAJzAJb4ci
         byoY/In8Thaj/JTsbIo2F/izij0ckD+1KyFNX3wY8oWfSTBPd5Gqj9cUf7Lt5H3ol542
         zF1TAGtzpa/at4wONaXeiX8rsnq68UC7i1L/8167bMVgz3eIW16ogAVrL3PAz2lkb3bU
         JsqtrD4Ofl+CQFrU3p+7WyLY+ze5o84brxNX3Yfkulv0WB3GeuAGxguHff6ZiE224lHm
         +cTpR4N2jhxq9kMz2Z8/Bfd0jxDNQH1Jsq3avRw9Hdgm5QLOZ57HePqlFyDSNTOYb+du
         nKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=U9IqFz/rCcEzO9sp+80zoE9eGKQjzJcJCmdp79nsgKY=;
        b=Putqa10O5FLwFTy5aFJnVJhmdD64V5/etr0+2HeA9ToZR9p3FXbWiTrDlCRw3F0JXQ
         VaPL9xuhrqC8rrongDN65zqI1UjzAgEj/aXNvIomUxJTuPakh09ij3nxwl+ZlSm6ZjDK
         MHOC/x9kUC9jVXbxc3KGNGSCzkvBjw4y8IVUJ5ilHsF+XD9Y1fwTtZOncXvK88qpGNtC
         ap19WQYOE3o0+jE4/I/wllfDVwusBGGIqagL5tXftMVEC6oUcmBYKSvX44PHsSqcXVd+
         9RrjwsfX3cq2NdNQ1T0MH2w+3+UM/C/vYW9UVr9+wajlfaf9EzRUUJRuz8mBsdSTFr/C
         DzCA==
X-Gm-Message-State: APjAAAUBrmisfdXNE2H5BxWA0H4PuN0v636bAVd2Fvd4bziLvPUwG7u1
        SfOUmBi0/HcPcYjzPBqVcf9qVA==
X-Google-Smtp-Source: APXvYqzzmST/34EWEs+z7TaicJFBkWqMl5acy9cm3cF71CYOV64yFL+lf6O3kMjOc4sDbgGKLWB+PQ==
X-Received: by 2002:a7b:cc0f:: with SMTP id f15mr36009973wmh.39.1567440229675;
        Mon, 02 Sep 2019 09:03:49 -0700 (PDT)
Received: from starbuck.baylibre.local (uluru.liltaz.com. [163.172.81.188])
        by smtp.googlemail.com with ESMTPSA id f15sm7507365wml.8.2019.09.02.09.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2019 09:03:49 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: sm1: set gpio interrupt controller compatible
Date:   Mon,  2 Sep 2019 18:03:34 +0200
Message-Id: <20190902160334.14321-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set the appropriate gpio interrupt controller compatible for the
sm1 SoC family. This newer version of the controller can now
trig irq on both edge of the input signal

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index 521573f3a5ba..6152e928aef2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -134,6 +134,11 @@
 	power-domains = <&pwrc PWRC_SM1_ETH_ID>;
 };
 
+&gpio_intc {
+	compatible = "amlogic,meson-sm1-gpio-intc",
+		     "amlogic,meson-gpio-intc";
+};
+
 &pwrc {
 	compatible = "amlogic,meson-sm1-pwrc";
 };
-- 
2.21.0

