Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 15E8AB7296
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2019 07:28:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387865AbfISF2n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Sep 2019 01:28:43 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:45104 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387611AbfISF2n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Sep 2019 01:28:43 -0400
Received: by mail-pl1-f195.google.com with SMTP id u12so1034331pls.12
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 22:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=E8KFyd/TP6XKCfQ2oRClCpzfGJuYKDTzZWJ6RMaNc7U=;
        b=XpIyaEirHSq/r7bNW+OHgSAFA4nLR1NS2ExLkb1HX9sjR961wapQb1OBvviY1rbtlu
         QrV9Hma5WMowRwq5dKiuIDQrSUmfckih2b5OLxxW3mCBI99/LHD7dMJcGOLQ6prwBQSq
         sWviVTRlu10qfi+H7BjPBzB1uZS5rYWg+X6q0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=E8KFyd/TP6XKCfQ2oRClCpzfGJuYKDTzZWJ6RMaNc7U=;
        b=JHXJq5143cmMimn/TlsnMZ2oFo6hjH7jFOHxtaHgVsb4K84ZrWPqw/jBDB6r5Tx5fx
         nSHx5DoIm9RdKzpySoX4KqPAX5nM5yTh7d2Akipj8Wbpm+KLXSPl4sWZ4PB6KeCGccqZ
         R97iPwW+Mrn435VEh+j+fUNfNoffYGSIBuz7za0PKKUSK0a3qusKlifjWHPQdBBX3QwT
         fQoGCTgTHZgfwu40F7M+D+t+YRzVVaSaCyX1UOtuCb4JMpq2EGqBvVt7yk+l/UES0yi3
         WJRy3W96o+A1hZfWsE8aNuZWBNbBpr/tgfGILzH0uVjo0mngcTsVIbaqUIjLDSbLOq0e
         IExw==
X-Gm-Message-State: APjAAAUzvrlwS8xRbc2xQsCQmThr1uEGXKtfE79B8DzGcQXt9nWDhqFY
        1FfKLvkSnKhfsxZAcB/jqM5O3w==
X-Google-Smtp-Source: APXvYqyXep4j3PxBeU3HcFSA72SjdVCFY3JFDwTX+hv+32+q1l8s4NYodtDu9DB7lZ+aFuZ2ut2P8g==
X-Received: by 2002:a17:902:7485:: with SMTP id h5mr8110269pll.240.1568870922029;
        Wed, 18 Sep 2019 22:28:42 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
        by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2019 22:28:41 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
        Akash Gajjar <akash@openedev.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Da Xue <da@lessconfused.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 0/6] arm64: dts: rockchip: ROC-PC fixes
Date:   Thu, 19 Sep 2019 10:58:16 +0530
Message-Id: <20190919052822.10403-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series is trying to fix the Linux boot and other
regulators stuff for ROC-RK3399-PC board.

patch 1: attach pinctrl to pwm2 pin

patch 2-4: libretech naming conventions

patch 5-6: regulator renaming, input rails fixes

Any inputs?
Jagan.

Jagan Teki (6):
  arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
  dt-bindings: arm: rockchip: Use libretech for roc-pc binding
  arm64: dts: rockchip: Use libretech model, compatible for ROC-PC
  arm64: dts: rockchip: Rename roc-pc with libretech notation
  arm64: dts: rockchip: Rename vcc12v_sys into dc_12v for roc-rk3399-pc
  arm64: dts: rockchip: Fix roc-rk3399-pc regulator input rails

 .../devicetree/bindings/arm/rockchip.yaml     | 11 +++---
 arch/arm64/boot/dts/rockchip/Makefile         |  2 +-
 ...dts => rk3399-libretech-roc-rk3399-pc.dts} | 38 ++++++++++---------
 3 files changed, 27 insertions(+), 24 deletions(-)
 rename arch/arm64/boot/dts/rockchip/{rk3399-roc-pc.dts => rk3399-libretech-roc-rk3399-pc.dts} (95%)

-- 
2.18.0.321.gffc6fa0e3

