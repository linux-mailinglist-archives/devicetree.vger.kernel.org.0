Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3130EA2092
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 18:16:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728114AbfH2QQl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 12:16:41 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:51837 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727270AbfH2QQl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 12:16:41 -0400
Received: by mail-wm1-f65.google.com with SMTP id k1so4349904wmi.1
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2019 09:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CWCn/aI8becgibBgiWeAnHIhr/fW5iSwk5vO24eMpyY=;
        b=bm/wB0YaVcjT6w+zuY98KSFu6eCxy17zcKSZfLHIxBTwUrXyyW2KOJqQS6th1ahwRF
         ojaAQ209ayGc0lkbX8T+55UBIcbASYkszecXN05+Jsam8Xin9ZoLp2Bt98D2AiJ/sT4d
         0YpOHmc6CjAuOrLH6sgrGij+fbDGgzKc0FsN2FEgazKPZUFBVWrNfvPvRW6Dhe2zGldp
         iCc4I7KyPD4R+HWg+q5i+MBZ4Irbw3XqmcJvQvwVBZQJebe2Mdd36DDrvR5TVC1dtQOc
         ab3jt08/c/ulgIGxNqpZm0wdQLuOzx2PV5tiFdBWyfuD/kZ1GCOCpa4aOI9IVKKTvyJy
         G6mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CWCn/aI8becgibBgiWeAnHIhr/fW5iSwk5vO24eMpyY=;
        b=nfAHAYzKNbsAwp5mk/SjwGwNY5RP7itlxLRHXE28GrGC+45L1veykHHoXeVsws4DZv
         7Qrd2h9QRYMd4jfa+krPXK57ga52TucmTG4crPah9hrQktN281dAIlwO1JvEYCSt1RMQ
         hktNwaV+J2Fg4aKEQ97OwIgOtUqc3SggkcCz8hw3py8YT+BIzMqfI3K09SwrU740xMik
         cpzVG/ZFmJ5VJcQoGlLVLxdPwZE+/oxXHgZeD8Lg89Gzd6fDWzgxIyBZlQIns/szhCaE
         SK4RVa8Qq1YKjPlXnGpUutB1GHQMh0dcVPHzJ7QwKvC3FcGRchBpl/IyOJ4wfHavWIg4
         xiaQ==
X-Gm-Message-State: APjAAAULAy3tIlX5wtlKe6iMihMZi21d9oCvAyN6d6T5faf1w+6wKPhd
        Wx6aM88t1sM3lwkmQgIpDy5+bw==
X-Google-Smtp-Source: APXvYqydE7PJ/qjqc2ZeXlyG8yavTZbBpvs1Q31Mh7laIOnhU9ePQ3Djq1ddTmF/W6PTlWyUyZP8fw==
X-Received: by 2002:a05:600c:245:: with SMTP id 5mr12118923wmj.36.1567095399634;
        Thu, 29 Aug 2019 09:16:39 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id q13sm3915424wmq.30.2019.08.29.09.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 09:16:39 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] irqchip/meson-gpio: add sm1 support
Date:   Thu, 29 Aug 2019 18:16:33 +0200
Message-Id: <20190829161635.25067-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support for the new sm1 SoC family in the Amlogic gpio
interrupt controller.

Jerome Brunet (2):
  dt-bindings: interrupt-controller: new binding for the meson sm1 SoCs
  irqchip/meson-gpio: Add support for meson sm1 SoCs

 .../amlogic,meson-gpio-intc.txt               |  1 +
 drivers/irqchip/irq-meson-gpio.c              | 52 ++++++++++++++-----
 2 files changed, 39 insertions(+), 14 deletions(-)

-- 
2.21.0

