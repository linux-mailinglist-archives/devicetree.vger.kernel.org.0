Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1347A6CBF9
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2019 11:36:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726608AbfGRJg2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Jul 2019 05:36:28 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:37847 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726383AbfGRJg2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Jul 2019 05:36:28 -0400
Received: by mail-wm1-f68.google.com with SMTP id f17so24915896wme.2
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2019 02:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rcydOW70nVBt2WhrQ5MEx1NUU78KyQhLgGrKfsLYnKE=;
        b=XIc39DhVV6wP9pHG9VdjrepeAIErmxbaSyrZIDZWBwL2cz/IkGTEpnmmzos7L58uon
         S0C1WwcM2PDrmVrjm05LUQqZ/53FWr5txzGmzl/Euuxd/vHpJeD5Z2K3tQlgfJGG96Ew
         RMGf/MvvYrS9hLAbChxZYRxtDFcoQlcb9nnAX20CT5fznZMTzpfDhJyx/R0RoJf0+nOH
         uZWVYazu+ITWtlRdHFKbrl4l1dwjkpA4VPmoxdEqc1actQGG++eYRT9HktMSDf59Y8zq
         IEu3BwAcpvvH9pH/jZADQim8AynqAbPZ/8NF+//UdFPN+jjWw4+B2NYzFV8rLzM2O/B7
         2/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rcydOW70nVBt2WhrQ5MEx1NUU78KyQhLgGrKfsLYnKE=;
        b=QGbbj69oJlLqW347SkedhTRNCcpdfV/tHYSmRT/gtLybVE3ko85OIIe8Rmt88jppCM
         gFCZ/TQlUvlfC2k1nQoCwRt6uXDDPJZeQ9bYO8bXlPOpMT2maUnxVBkI4g5poJgTP4ud
         oaoXnN1NF9OO1zNsfUy+6jNevYv3Lml1NyJVUKzUWlOBOFff/y40hnk6YQQFZKtuTUZ2
         lh+w8QJ7lVxNpkZxT3bd286OLNJpVI71tyB8xAeEJz0iIONMB57fG4C5q9Ftc+6a4FY/
         y02+E18Q974jv22sRGwYK6q1JhzHUcFSsZe/bxGKLU4IQZAIh0WPyQLCNxYSejBWWs+2
         KwbQ==
X-Gm-Message-State: APjAAAXXiNzjsN2vtUfqSbQZLjBe5S4vFBa1HnPOw9mi1BAmd+Q8Z3/O
        hjcQOxKC8ZHQasSL7HpnMP9ScA==
X-Google-Smtp-Source: APXvYqxi617JdD5W+kC67+u9HU0QK3FbZtBaYU7SVdRiq0lXyfDfYn7ExO0wqjFAymUs/5beoqERcQ==
X-Received: by 2002:a7b:c106:: with SMTP id w6mr43693379wmi.80.1563442585757;
        Thu, 18 Jul 2019 02:36:25 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id u13sm31569350wrq.62.2019.07.18.02.36.24
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 18 Jul 2019 02:36:25 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: meson8b: add ethernet fifo sizes
Date:   Thu, 18 Jul 2019 11:36:23 +0200
Message-Id: <20190718093623.23598-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

If unspecified in DT, the fifo sizes are not automatically detected by
the dwmac1000 dma driver and the reported fifo sizes default to 0.
Because of this, flow control will be turned off on the device.

Add the fifo sizes provided by the datasheet in the SoC in DT so
flow control may be enabled if necessary.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm/boot/dts/meson8b.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index fba2c70c2fda..b044ad78b475 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -410,6 +410,8 @@
 		 <&clkc CLKID_MPLL2>,
 		 <&clkc CLKID_MPLL2>;
 	clock-names = "stmmaceth", "clkin0", "clkin1";
+	rx-fifo-depth = <4096>;
+	tx-fifo-depth = <2048>;
 
 	resets = <&reset RESET_ETHERNET>;
 	reset-names = "stmmaceth";
-- 
2.21.0

