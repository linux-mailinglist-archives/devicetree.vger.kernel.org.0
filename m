Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1B3371A1DE
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 18:49:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727898AbfEJQtx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 12:49:53 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:35113 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727800AbfEJQtw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 12:49:52 -0400
Received: by mail-wm1-f67.google.com with SMTP id q15so4186080wmj.0
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 09:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0BDD3hmUAw1/iP5j6nwICYc72W1cM/z0tCme8wuLJEM=;
        b=UGuWEwh+n7QT3eNyNvwq+0cJsZpDzpWwk7FnpGGJzka745/PRluZ87wATPr+YIhf5X
         NIbdGp9PkKLuCsnVK8imrw+fnf3/VN/dgzhdB0stTpRHOv4PE73NDcLnrlRt7kScNDzi
         BJEf2aNfJJlqZK+A48FwJAFtZa+qbuqUe2kdrJb/96Ztx6acYNSgeGtccr9ajHYBH4hl
         +kMA6aloAG37PoAZdi1P9Cw0OLX37bw0uU2j4upttKDVzvLG/Ww1SP1FMiGddkmV0z98
         2bYqDDscoIPwAIdURSlGiU2BQtg0drPV1OQ1Q3gcsMCDWxHHqRt4mDum78Y3LuJLAYbs
         p9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0BDD3hmUAw1/iP5j6nwICYc72W1cM/z0tCme8wuLJEM=;
        b=qnnlXSC/tbyII7MRxPkfuwA2Sxm8sAjXfIfm7qZv/5FBc1L4WPNf+YvaWvGlysRREe
         A4hsMTt+Ab3VTbMIyuBCD5RscqlLdpziWQ4sc6Y9iuhbfW28VvcR4uWc1pQak9uKC18o
         GjhpL8dvio9SSEV4BH9+z/O08AQbIwBZrR7/kSZcRiVAgDz5GlHqOlIwWKplmRQBRu9g
         3S287VC0b6XOd0PfWu0IgvG+TZWv9cKf1FE3Ko5u50uEBbV1oeDHoCvZj5bmCXgGgp37
         2YJXtX49M55mqv0va2Rg2/c4EIqQimEUkW1tLDZL/Dy8QbrzME5gnHTA/YBxWFsuil0j
         i96Q==
X-Gm-Message-State: APjAAAWeXq9Mu9z90MdL3z5BjvXSckD0YBDytLThPt3k9gECBHOoWj1T
        r7V28Tq3NMqmhmegzNMEjgGZ4Q==
X-Google-Smtp-Source: APXvYqye0FKsYqlWU/uVGSz/EJZu+vBKxrCEygY8OeyP0/V5umSe5NGclz0nWvUHmQTkQqn4VuSmWQ==
X-Received: by 2002:a1c:a550:: with SMTP id o77mr3275926wme.28.1557506990139;
        Fri, 10 May 2019 09:49:50 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id q26sm5114308wmq.25.2019.05.10.09.49.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 May 2019 09:49:49 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: meson: sei510: add network support
Date:   Fri, 10 May 2019 18:49:40 +0200
Message-Id: <20190510164940.13496-6-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190510164940.13496-1-jbrunet@baylibre.com>
References: <20190510164940.13496-1-jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the network interface of the SEI510 which use the internal PHY.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index 61fb30047d7f..4a785b17c1af 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -29,6 +29,7 @@
 
 	aliases {
 		serial0 = &uart_AO;
+		ethernet0 = &ethmac;
 	};
 
 	chosen {
@@ -144,6 +145,12 @@
 	};
 };
 
+&ethmac {
+	status = "okay";
+	phy-handle = <&internal_ephy>;
+	phy-mode = "rmii";
+};
+
 &hdmi_tx {
 	status = "okay";
 	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
-- 
2.20.1

