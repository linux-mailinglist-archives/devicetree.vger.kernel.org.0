Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E848195E30
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 14:16:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729409AbfHTMP7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 08:15:59 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:32951 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728682AbfHTMP7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 08:15:59 -0400
Received: by mail-wm1-f65.google.com with SMTP id p77so2274178wme.0
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 05:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CvuewGGeUT01B/0PrJuoxbYIDFO+ELiD26DkNkPy8YQ=;
        b=yT+s/xI7f7jqSEka2HbYP1Ca+8fb1iudKb+dmwrCTBubGSsL/sWcoIYjik0WW/Jnu7
         kz/kA3bD0EOgYW7BJ7bEj5GkawvAVVro/KOhlihWt5/W8T70fM8FG7IYtP4DnqcEV9AB
         Qi1WL9NKFxJ/HJc/S4gLXDy7m0lQixB5hiDDLhfnr0+Ek3xGIvt97SfqoFCQUMd9CJGN
         UwCsnOP6sEtDWfT28E9FfgRjEMsTi0bIhYi4XkRI8VGEti+y5bDj0r90zY+pBIl24Zye
         QKgfuif+pPRIeYNJzWlrZZvIEc2R/RmLkFT32J1IpX40aUc2K/gL9YBGCYlQyzD6vEjl
         exEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CvuewGGeUT01B/0PrJuoxbYIDFO+ELiD26DkNkPy8YQ=;
        b=AJV9FI7aKR8c/pInO5KKoup5xFdT9bxxjJiZGK9BFlpQtB7Zm9rr7zWqevaYXq/JgQ
         pzIp+jFlRAL31rN7WMnnAEWPiEXjOFamkr4QTy89GlKq8V5hCgZa7H89F+hu7dsQ3MeD
         q/eMRB7f92KCoJc4WTpKnNaD95fnVXLrEcvPo/lAJxlgM10ZsFRP5/XiQY08f6pL4tlo
         ASBM3/bkRz19OstlqgM+IBbrcFHfttRz6/Bolkrh5kbRx6TGqh7sWBvr5X/f7lzhzV8L
         fBkNDulNiZnc3w3RFBE8Jm94eNqjBawODawYAhP8Atfm1XzKq9tXyfT6Fhzbj2m7dYcW
         H/7g==
X-Gm-Message-State: APjAAAUGjiL8Et7Z4HMidptAzObTImsF8k5amPOBeN9r9J5q3Bf+NSQp
        GilqLvQLw5rs81/7vDdoFo4xVg==
X-Google-Smtp-Source: APXvYqzKxoixlD4z7bbXYIjSWQg/tednMgenI4632syBMA5hXdJv/DFCE9IYOHH8N1SGrLd1jto4pQ==
X-Received: by 2002:a05:600c:28c:: with SMTP id 12mr24965602wmk.157.1566303357275;
        Tue, 20 Aug 2019 05:15:57 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id h23sm15300765wml.43.2019.08.20.05.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 05:15:56 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: meson: g12a: audio clock controller provides resets
Date:   Tue, 20 Aug 2019 14:15:50 +0200
Message-Id: <20190820121551.18398-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190820121551.18398-1-jbrunet@baylibre.com>
References: <20190820121551.18398-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The clock controller dedicated to audio clocks also provides reset lines
on the g12 SoC family

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 809f741a82ec..8eb92edb7a66 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -1477,6 +1477,7 @@
 					compatible = "amlogic,g12a-audio-clkc";
 					reg = <0x0 0x0 0x0 0xb4>;
 					#clock-cells = <1>;
+					#reset-cells = <1>;
 
 					clocks = <&clkc CLKID_AUDIO>,
 						 <&clkc CLKID_MPLL0>,
-- 
2.21.0

