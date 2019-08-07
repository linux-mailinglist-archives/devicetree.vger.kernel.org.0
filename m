Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F5B48519E
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 19:04:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388867AbfHGRE6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 13:04:58 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:37944 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388860AbfHGRE6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 13:04:58 -0400
Received: by mail-pl1-f196.google.com with SMTP id m12so3111243plt.5
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 10:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jvijXR0N1UhWnmCMLZgGc0uUllTfrVpMODKwZ+a/Lpk=;
        b=K0DdoHalNpqfXUXNlfVOTZluh1fZjO1htfDRq9m56tp8GguieWpk29NqYn/JHIlMqX
         x5omTQvbjQSqMW8FvWgPKUdfN50lnF0E8gIi/YwVkfPDfUnGC3HDSRFOOmN2hMG8jYmH
         IC0aggl0QQoDe4VmNAgyaeKoZkLunk0LyVC4E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jvijXR0N1UhWnmCMLZgGc0uUllTfrVpMODKwZ+a/Lpk=;
        b=YWBCLDB6SJkjiZJlHbsCDYdkSzeLZIGmw+TY49mZ6vgExTHuzCW3bbvnvgORCiEJkM
         EigPLBhMGBkLUP+XOwlE4S2NE4Y+9JKLZVJR+Qzou7yPhPH+/Rz6Zxsq0UbBaYOaI/D6
         h6RaXeFORePNLVuOSuGx6d3FQOfRyTFK/bZGujggk3qqbvOG+9gYlOyzN1RxVw6uV28S
         w3SpUIC4NNFgWon4ABupwPqTqkU1qK7pxBSvhytaLzNPQsOJtlOp6Zg3qCcRnm8iQsSt
         JifUZP1uAhwc/DJ64+s4uRU7Wy5joRp3Buxs4U/pxPPUqR5mCvOZbaL1+iYfbTcUoy6n
         EcCw==
X-Gm-Message-State: APjAAAVN3kqIqE7JM6P1Or0UFGTXgBXFf9DX9UlxgCayKGUnfd5244B2
        k0tFurgPfS1OfBoECKbrBViqRQ==
X-Google-Smtp-Source: APXvYqxVB0ltkjMiFBNmYoV5UmkVDZAAacu/2A70V1J3piCWKQtT26uSS+wdaVnwrrq6Cj47oV1iCA==
X-Received: by 2002:aa7:92cb:: with SMTP id k11mr10521596pfa.126.1565197497581;
        Wed, 07 Aug 2019 10:04:57 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id i3sm98421238pfo.138.2019.08.07.10.04.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 10:04:56 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v5 0/4] net: phy: Add support for DT configuration of PHY LEDs and use it for RTL8211E
Date:   Wed,  7 Aug 2019 10:04:45 -0700
Message-Id: <20190807170449.205378-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds a generic binding to configure PHY LEDs through
the device tree, and phylib support for reading the information
from the DT. PHY drivers that support the generic binding should
implement the new hook .config_led.

Enable DT configuration of the RTL8211E LEDs by implementing the
.config_led hook of the driver. Certain registers of the RTL8211E
can only be accessed through a vendor specific extended page
mechanism. Extended pages need to be accessed for the LED
configuration. This series adds helpers to facilitate accessing
extended pages.

(subject updated, was "net: phy: realtek: Enable configuration
of RTL8211E LEDs")

Matthias Kaehlcke (4):
  dt-bindings: net: phy: Add subnode for LED configuration
  net: phy: Add support for generic LED configuration through the DT
  net: phy: realtek: Add helpers for accessing RTL8211x extension pages
  net: phy: realtek: Add LED configuration support for RTL8211E

 .../devicetree/bindings/net/ethernet-phy.yaml |  59 +++++++
 drivers/net/phy/phy_device.c                  |  72 +++++++++
 drivers/net/phy/realtek.c                     | 148 ++++++++++++++++--
 include/linux/phy.h                           |  22 +++
 4 files changed, 286 insertions(+), 15 deletions(-)

-- 
2.22.0.770.g0f2c4a37fd-goog

