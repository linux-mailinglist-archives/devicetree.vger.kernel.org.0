Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B5D8D1A1E2
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 18:49:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727900AbfEJQtx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 12:49:53 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:38551 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727872AbfEJQtv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 12:49:51 -0400
Received: by mail-wr1-f66.google.com with SMTP id v11so8672228wru.5
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 09:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JZfQcIBiz1i3SRmrwc/arntEPv+nCMO6l3LE883zetw=;
        b=th74W3D0yD8uI176CqzEb333lOWfbdmCBjoHDt+lqvRtWMu0u/G3SmHA041wAkDQdd
         mTNSJvCzxFr5oTxFjpjCnCm+TcUskdfBp9oRn0uzDRRdl8qrfRHXv1AVL6+ZgJ6bXIxw
         +ECZilXHGJ9JcQP4jTlgjC3o3eiEl2RBUZnUQaDvI5f2g7lb9kJI9GqLpNG/dmekomAn
         dIH6UXQIisXE1GVn8C0r1bfC8vZvAbRdDqUfpQJ2INF1S7ax3LlxL2sPu4wdcSVJGOdL
         taxuT0PWtDhfFyiu1pwcwiV8mLLkMHEpuOgn8YEcw5o7yxCSkucuIb9bHvUtp8FsXc1N
         g78g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JZfQcIBiz1i3SRmrwc/arntEPv+nCMO6l3LE883zetw=;
        b=I7NJfftUkDxstCa4oZW8YJ+XTTb6SHIO1Q4cS4582VVUP720GbFNGKJEapxyHjDxMM
         P/P3LYB4hDLpFSzrlTwx+Yc6C0wE+T8MXKWDfct/mMdJyKuqHMFdAOg/j3k3V/Xkdf1N
         aFVaxAVOYRJ+kLlnl92izipQoTA+ixBd7TbfA2BjLFo1WupnwWZyS3Ob4dalojgAMBCb
         15Rj9V5stt0Bivdev+ZILy4ozs9VsFTBuTya8DszNeYJlRxUZsPPqYu4wUDUp8HW/tbT
         HTx6iL3hEdFZ0OxhvkbNBhdjCgyyUYNQancn1CJsDUu/UkUqLAGE+wk2zQp7cZeSn0Y3
         VILQ==
X-Gm-Message-State: APjAAAVegyu7ACMp7yYupbzbVJw2jybCMgfRDgeYn70eSci4ZUPH7xxA
        U66WfVGHL6c9gr1udkYN4ccBcQ==
X-Google-Smtp-Source: APXvYqyhBIUntAhXx/YaGyCbZND/bim7HJ1XT0IIdj+NqZiauxARKtqXAsvMcQvRqufVAAGZ8Nny6w==
X-Received: by 2002:adf:82b2:: with SMTP id 47mr9001609wrc.76.1557506989230;
        Fri, 10 May 2019 09:49:49 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id q26sm5114308wmq.25.2019.05.10.09.49.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 May 2019 09:49:48 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 4/5] arm64: dts: meson: u200: add internal network
Date:   Fri, 10 May 2019 18:49:39 +0200
Message-Id: <20190510164940.13496-5-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190510164940.13496-1-jbrunet@baylibre.com>
References: <20190510164940.13496-1-jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The u200 is the main mother board for the S905D2. It can provide
both the internal and external network. However, by default the
resistance required for the external RGMII bus are not fitted, so
enable the internal PHY.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index 7cc3e2d6a4f1..c2221eb4549e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -15,6 +15,7 @@
 
 	aliases {
 		serial0 = &uart_AO;
+		ethernet0 = &ethmac;
 	};
 
 	chosen {
@@ -145,6 +146,12 @@
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

