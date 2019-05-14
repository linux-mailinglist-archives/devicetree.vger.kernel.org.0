Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1FF4C1C6BF
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 12:13:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726554AbfENKMx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 06:12:53 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:32939 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726533AbfENKMw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 06:12:52 -0400
Received: by mail-wr1-f66.google.com with SMTP id d9so10156634wrx.0
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 03:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xHJjEWZUv594HiG0VPz+WE+kbrZmHtfWvyl507EtN/8=;
        b=pE2Y50PAtDBbgvFGY3ovxKSYmZFOJKanRz1EL0QfjDbSnyY+qvPZhh7EoL3tvSpn73
         OhsLUb81ZFGcQtP56rCfPzZN52Qd9XCzXu74H5bDajY1a3pF5tJ8dD/KhFUc//XNmmtD
         Ul0X9voCizw2WGxMY8KT1wxry+rUilqsPiCBw0QdZ21CuMUEp63nnxiWSg3rRthIAZ2d
         kfThcY702TlgXKUi/aVT3zttU7CJ8UX5zc39ZR9F9l9fFY2xcQOQyHGiWXPdHNRpm9oN
         mwwFf8yL3paw8P4fWTvCe6AE8Fjf55C93Tr3obxKPPCYKrhZZBslfaeJZXJEbzR3Oni5
         4DZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xHJjEWZUv594HiG0VPz+WE+kbrZmHtfWvyl507EtN/8=;
        b=N16Bl9nFC4K3RHedFbXfvpPcpYULVM1OCxgTSzR0Ggf44h2pWnLLlDIpcu5Ki6tP1/
         y+zf5noHA9Arh1lieJzTS99RGztHPE00yP7fY1m6jJWH5uXLG8tP3AX3dKfhb2ypcPKL
         IMO70qRafb8yFoSD9jJn19JH4H3CAhlFNku4XKinnk8HVc5prDLzx//2q+kDMz/RuyaO
         Feq2K6DlU72CVD379Z3jVUBGUBS/l9Q90IgQTLwLb1AocOzdGp3vjFl7HB3eLrXiVaBI
         OY1utzTAxoGXNFewvAcZMWXX/jbTk0uZs3VlvXWgTjSfYt3HpAkS4kxzNzdyWFaDIfic
         Dlxw==
X-Gm-Message-State: APjAAAVk37pEb4czxgLgayA5Fhl4lQGi7a9OC5MZjyCvqiLTgb4qbkSo
        TMrhBPY46atNMQRrZAWVkzx8PA==
X-Google-Smtp-Source: APXvYqyka7ntLm7R8ulXOcP73IjIezS5j2BDb79tfKgdL/YtywbuRB01jGqmaYoKzAaqyncN/snjcA==
X-Received: by 2002:a5d:4f0e:: with SMTP id c14mr5350107wru.91.1557828770693;
        Tue, 14 May 2019 03:12:50 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id r23sm2219564wmh.29.2019.05.14.03.12.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 03:12:50 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: meson: sei510: enable i2c3
Date:   Tue, 14 May 2019 12:12:37 +0200
Message-Id: <20190514101237.13969-4-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190514101237.13969-1-jbrunet@baylibre.com>
References: <20190514101237.13969-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the i2c bus used for RGB led controller.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index bb45e3577ff5..f420935b76db 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -161,6 +161,12 @@
 	};
 };
 
+&i2c3 {
+	status = "okay";
+	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
+	pinctrl-names = "default";
+};
+
 &saradc {
 	status = "okay";
 	vref-supply = <&vddio_ao1v8>;
-- 
2.20.1

