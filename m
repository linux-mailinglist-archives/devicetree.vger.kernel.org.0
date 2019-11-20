Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 72B351038DD
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2019 12:40:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729271AbfKTLkz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Nov 2019 06:40:55 -0500
Received: from mail-pg1-f194.google.com ([209.85.215.194]:42496 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728017AbfKTLkz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Nov 2019 06:40:55 -0500
Received: by mail-pg1-f194.google.com with SMTP id q17so13196775pgt.9
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2019 03:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EPJkuGz+JSjzJ50nZ26ldWX3k6k/FLUFZmlBSMSkXIM=;
        b=GtZuKo/YXhZDfFx2Fg6eTUxxwhtdrqfhNSiftIvxAboMj7Abz8xhbA6gApZCbFjKhx
         6++Cl8pLFZDZ+HgBc2POt6G2l1ZCWOYmPlqQwsubN7RSEa7EtG3XmIAtld4tulVCrEBP
         oSBFwZNYGG/AP89b5q2JMQOwDl/CE1NVR36xE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EPJkuGz+JSjzJ50nZ26ldWX3k6k/FLUFZmlBSMSkXIM=;
        b=C5d9/drcUIauJjlPdX/vuOduorWVHhi/jG61/TfWjYm7+2hYEn8nf/E2a+jKYwM0od
         gMg20VVBbL0kHfdbf7s460yPbqB/vorTgqbJwKGwzZehI1NnBh1ssv4NOmcw97N/dKLl
         HmN5CbXjswOTfJMoQe4BeTT75rZun5FBcY4+JLleS+koqWW+j6d7oRZ0khhCcAEEOq8o
         xznR0qws+5lEJtbClNCqa3s/Pj8GmcT6tTZAaVGr8G2AZMHwm8+VT3tfAYM9sBItt9Af
         jdeRF29mwFoER6zb/Ta1vRJRFYWkGDa7aF7yJrHA1TBcikc7E8ZuFuV9vgYMFcp2HiCu
         VkkQ==
X-Gm-Message-State: APjAAAXQ59AzoaGf+OBrrTHP/GfvD9jxZmCksU5hsNC7O/5XlEnyGlMA
        s745aTf0tEQTO0Ei86W8itV8jA==
X-Google-Smtp-Source: APXvYqwEZ56JDZTPJcrZRd6NoxeRu3wg9RK57Xc3CqoGcBA0SsoP47nnmr5ufV5AVYg+p5xqSb8IRg==
X-Received: by 2002:a62:e818:: with SMTP id c24mr3459856pfi.125.1574250051807;
        Wed, 20 Nov 2019 03:40:51 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
        by smtp.gmail.com with ESMTPSA id h185sm13492850pgc.87.2019.11.20.03.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2019 03:40:50 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Akash Gajjar <akash@openedev.com>, Tom Cubie <tom@radxa.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 0/5] arm64: dts: rockchip: Add Rock Pi N10 support
Date:   Wed, 20 Nov 2019 17:09:18 +0530
Message-Id: <20191120113923.11685-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Unlike, other Rock PI boards from radxa, Rock Pi N10 SBC is based
on SOM + Carrier board combination.

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

This series add initial support for Rock Pi N10.

patch 0001: dt-bindings for VMARC RK3399Pro SOM

patch 0002: VMARC RK3399Pro SOM dtsi support

patch 0003: dt-bindings for Rock Pi N10

patch 0004: Radxa carrier board dtsi support

patch 0005: Rock Pi N10 dts support

Tested basic peripherals and will all more in future patches.

Any inputs?
Jagan.

Jagan Teki (5):
  dt-bindings: arm: rockchip: Add VMARC RK3399Pro SOM binding
  arm64: dts: rockchip: Add VMARC RK3399Pro SOM initial support
  dt-bindings: arm: rockchip: Add Rock Pi N10 binding
  ARM: dts: rockchip: Add Radxa Carrier board
  arm64: dts: rockchip: Add Radxa Rock Pi N10 initial support

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../boot/dts/rockchip-radxa-carrierboard.dtsi |  81 +++++
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399pro-rock-pi-n10.dts    |  17 +
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 339 ++++++++++++++++++
 5 files changed, 448 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-carrierboard.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi

-- 
2.18.0.321.gffc6fa0e3

