Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D198C97C8C
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 16:22:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728724AbfHUOV6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 10:21:58 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:44854 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729390AbfHUOVB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 10:21:01 -0400
Received: by mail-wr1-f65.google.com with SMTP id p17so2204509wrf.11
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 07:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YiVmfKlzhX6+dDL5MvsL5C8YsLLtVButKhe8QPNlosA=;
        b=hH5RdNmjJBT3vYOf4J5894Cvw2Zmb84ZuGMO502LyGx4AnTAzCTn1v+kpKBzaQfura
         AwEbyduOMk/aWyY/Zy3wXKW3463ceYmpLBoIJJy5YmTjGkXAhGFcICtFKM/BRZAki9sq
         wQ2YmFDn/UgZL3s2JQVi0vgJ9oAce7Kg5LJvclONdqBz0QAWa4mIvSMyHEY6jMAL/A8X
         5AW7uC2J3FYKYcnlANlVpvV+ZhKit5y5AMmfy36Axbez3TT6ZTMWyDaZk61htlibFy9m
         PGeKgpC0BE9aA4ZeAp5HRRDl1AaPRVnb6uBW59ssn0VvqUFgiLIflcj7A9Wiqqq3YmSW
         6JMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YiVmfKlzhX6+dDL5MvsL5C8YsLLtVButKhe8QPNlosA=;
        b=RV5hZ7f9NpgIZHZjdvy3QBkD2VZ8DCTnAnhn1/z3j1s8Wttwz/+ttx+CMG7FNiWiel
         faQso+0k7oDQ9O+QVe9LDRDz8jC+qKiWUEEtClLEnkz04OgSU72ssmTVo+XJspJaJYI6
         9x2N6ASwqOVSghM7KTcMzzWZ/i0Rg9wAsCiysn4ecvZwix2vJOFaxu/pgatZyQy+jtGV
         U+cf4IEQrJ1dVrhUb7TKMY6rX+9HTPe/SksOdwEUzwVHHBjLdikp0ULOOAIrnvAaMtOR
         w0aql+1q1ewXDA9ulmLKkUufez5hcalgbHNc+DSFQiVU6zxY/kQlY4nd9aq9Wm8BSOGp
         3n1g==
X-Gm-Message-State: APjAAAWQux/irtIdoufWyy6VHI9S2HKaLKIiWrJnrC0KkjYs4hGAwOII
        bQvL8RvxWMfm2cAmppYQY3p8YQ==
X-Google-Smtp-Source: APXvYqytA+IeL/TCAscedhtLS8+0EAHXjl0jLspWbuKk28WrOv8yxzZKMrlxagIGQlNyH/+Yr4ns8g==
X-Received: by 2002:a05:6000:4f:: with SMTP id k15mr4084382wrx.221.1566397260022;
        Wed, 21 Aug 2019 07:21:00 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 07:20:59 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v2 06/14] arm64: dts: meson-gx: fix mhu compatible
Date:   Wed, 21 Aug 2019 16:20:35 +0200
Message-Id: <20190821142043.14649-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: mailbox@404: compatible:0: 'amlogic,meson-gx-mhu' is not one of ['amlogic,meson-gxbb-mhu']
meson-gxl-s805x-libretech-ac.dt.yaml: mailbox@404: compatible:0: 'amlogic,meson-gx-mhu' is not one of ['amlogic,meson-gxbb-mhu']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 00215ece17c8..d8127f863b55 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -476,7 +476,7 @@
 			};
 
 			mailbox: mailbox@404 {
-				compatible = "amlogic,meson-gx-mhu", "amlogic,meson-gxbb-mhu";
+				compatible = "amlogic,meson-gxbb-mhu";
 				reg = <0 0x404 0 0x4c>;
 				interrupts = <GIC_SPI 208 IRQ_TYPE_EDGE_RISING>,
 					     <GIC_SPI 209 IRQ_TYPE_EDGE_RISING>,
-- 
2.22.0

