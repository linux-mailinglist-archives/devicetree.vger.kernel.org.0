Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D816F1B6A8
	for <lists+devicetree@lfdr.de>; Mon, 13 May 2019 15:05:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728286AbfEMNFN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 May 2019 09:05:13 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:45273 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727817AbfEMNFN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 May 2019 09:05:13 -0400
Received: by mail-wr1-f66.google.com with SMTP id b18so5211621wrq.12
        for <devicetree@vger.kernel.org>; Mon, 13 May 2019 06:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EHZ/pld/sg8uAVGHhkkrEz44b+d5Izaa0pIrN3uQMwQ=;
        b=V4Mavlc3cgLus5AEdOtVuk9qMM6lyQfOEkN0u8KEnhzsEd3hOX2fbV4GtwLj8hPyTr
         5w8RiGcpINtPoxLXnVdAm0oI1oNa3aeEUWtEYVfvrcUFI3U0+jjrXIZiCsuisDtUPMld
         9vONUn3cIyyVcXD6lY5KmmceWS+dH/4G9qYfvWMS79eBlFGzk3KO/lI7BBNO2GBHwgsy
         t0qeX/DPl9xZPqzJOm/IRLrRcmMlGBN0vi+zyUcrJPFHywFLkC4O9+dYPjMcvo30DV4V
         jwA+1nYBgDdV3KLAlU5L5mBfyEpcTgSPEPFkcn71adEJ5IWmDAtKIwIzK1mq6JKjCJ4P
         VJcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EHZ/pld/sg8uAVGHhkkrEz44b+d5Izaa0pIrN3uQMwQ=;
        b=GPAnFkQGrUKgQuhWvC8TiB8zp44IhgNgjxtVGZDtV02h2Z7CbeaLFUAlitBEJQP9FY
         UAJrM5MHkzxYdLs2npMy6WrDJvW3CudEQvyO5xjLdkX8s0g1pc/cZz5RsLY7Ivlu7WYa
         I8vG5dAiW3EqHH7ksyGXuXx2Z4Q+sQAeJPW7CJSpJQJ+eLMV9C9+JLRVn5y5zmYF9Ghc
         t8c9bOFh4+xCCK8ebKBvgeBZOmHkL1E4CJURzqPYu6ENgxxJ0KtlcnDeCdn5egi46uSy
         WxVYKUJqh3AqrVV9OVvvfsg0OGyQvgONjiR3P8h9qvZqFb5+KdmPltbmjOC9Mvztjrgi
         m5qA==
X-Gm-Message-State: APjAAAUS6NL58+2S2mEXEEBCuN1hIdrxSueaX9ACShdzwUoXMSg0kzv+
        0OMU6RDqyrDQ6f7LsrE+HnFW3hlGKn0=
X-Google-Smtp-Source: APXvYqzwWbqc3KgT6JSaZYy4PBV+LnjmUu0z+YVKtdpYi8JdgyGhKJ7ChUmglf1QZ12ESiwwE8oFiw==
X-Received: by 2002:a5d:4245:: with SMTP id s5mr8742703wrr.147.1557752711799;
        Mon, 13 May 2019 06:05:11 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id o6sm33701457wrh.55.2019.05.13.06.05.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 May 2019 06:05:11 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: nanopi k2: add sd DDR50
Date:   Mon, 13 May 2019 15:05:07 +0200
Message-Id: <20190513130507.22533-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add UHS ddr50 mode to the nanopi k2

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index be81f8958717..849c01650c4d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -301,6 +301,7 @@
 	sd-uhs-sdr12;
 	sd-uhs-sdr25;
 	sd-uhs-sdr50;
+	sd-uhs-ddr50;
 	max-frequency = <100000000>;
 	disable-wp;
 
-- 
2.20.1

