Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B1B277E304
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 21:08:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388368AbfHATIE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 15:08:04 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:37379 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388334AbfHATIE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Aug 2019 15:08:04 -0400
Received: by mail-pg1-f193.google.com with SMTP id d1so1900596pgp.4
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 12:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=apkwzGP4IobB8/NNejp9mcACeRe6NRoi/dm5PJtLiA0=;
        b=gwmU6JeVACTqTalB1fGyyUE6Y+PbXjWGBdnnjoYJZifDNfOrVBs4HCjUYw4malCPHU
         f0ZFovJlm75tpLkdzNnowpiCbLTcFWATBF2cpd2dPKrlDsLaUB9EeHKVXssTlrS3VPB9
         i7pbNRebrh+9jkSTAT+8daVEXlN257aIGmvQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=apkwzGP4IobB8/NNejp9mcACeRe6NRoi/dm5PJtLiA0=;
        b=XOHUQXrj0nwwe2etBFqtTjT9IW4jfLbCTmRl7DaM3puz3zgygceuqnQ2PATnaJLE58
         fjzbKfkLSo3Ax3P0wD6cVFhIcwSXvfJ7T1XKpUX2d6hMthETS4kAoj068E6+Bx6BqVx1
         DPqcH1Y8VjV+5hCu33toLlnWRuREo/B89Dc/CYneWyt6lAIJToA2ZXiQVzj+/9G1Cb5y
         GUk5zpAjqs4zBT8K6O8F7ySuuSvgcJriD3lUg1EzFvEvfTuKWpaLBSMvFwtd4V+1swdg
         u2yAgiKvjDjUnx5RN4Flg1LgMO9AoqrlXSoRKDSffwOaC5dg4j94QK/sYeZrwh9d0gGT
         q32w==
X-Gm-Message-State: APjAAAV+Zd5IzzQIcDtenUNPi0T3S+dy5iWB/DAirf6Vn64Wf3JO4VZE
        s2pD+JBSdi/aBIjL7wBYBiZGUA==
X-Google-Smtp-Source: APXvYqwGmPzsXWqQYmOZgCmSxakHKaF9ifqiLM5iTU08exAKI7L24QVO19d4DMzQIqU0FNUHp7xulA==
X-Received: by 2002:a62:ac1a:: with SMTP id v26mr56239768pfe.184.1564686483222;
        Thu, 01 Aug 2019 12:08:03 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id z6sm42715452pgk.18.2019.08.01.12.08.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 12:08:02 -0700 (PDT)
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
Subject: [PATCH v4 0/4] net: phy: realtek: Enable configuration of RTL8211E LEDs
Date:   Thu,  1 Aug 2019 12:07:55 -0700
Message-Id: <20190801190759.28201-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Realtek RTL8211E allows customization of the PHY LED behavior,
like which LEDs are on for certain link speeds and which LEDs blink
when there is traffic. By default EEE LED mode is enabled, in which
a blinking LED is on for 400ms and off for 2s. This series adds a
generic device tree binding for configuring PHY LEDs and adds LED
configuration support for the RTL8211E PHY.

Certain registers of the RTL8211E can only be accessed through
a vendor specific extended page mechanism. Extended pages need
to be accessed for the LED configuration. This series adds helpers
to facilitate accessing extended pages.

Matthias Kaehlcke (4):
  dt-bindings: net: phy: Add subnode for LED configuration
  net: phy: Add function to retrieve LED configuration from the DT
  net: phy: realtek: Add helpers for accessing RTL8211E extension pages
  net: phy: realtek: configure RTL8211E LEDs

 .../devicetree/bindings/net/ethernet-phy.yaml |  47 +++++
 drivers/net/phy/phy_device.c                  |  50 ++++++
 drivers/net/phy/realtek.c                     | 169 ++++++++++++++++--
 include/linux/phy.h                           |  15 ++
 4 files changed, 266 insertions(+), 15 deletions(-)

-- 
2.22.0.770.g0f2c4a37fd-goog

