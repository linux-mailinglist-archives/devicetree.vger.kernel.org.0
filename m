Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37B432E1031
	for <lists+devicetree@lfdr.de>; Tue, 22 Dec 2020 23:37:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728338AbgLVW10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Dec 2020 17:27:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728326AbgLVW10 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Dec 2020 17:27:26 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99BBCC06179C
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 14:26:45 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id dk8so14436303edb.1
        for <devicetree@vger.kernel.org>; Tue, 22 Dec 2020 14:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w7THJPT2rmU60w+DOPskH6aoP7sduDFS77dfdLYEIZU=;
        b=h+CwsmNz+UUYAshh+EopcCW0ZE3Ddn8dsBvVMc8IdKlLt46OMkA6rTXL4f++nt/zMa
         0rVR0tTLFR0v7sKXCYF3o/jqewIDXcX77hY5VHpKiM9zxAnlOXGp9ehQmwh5CMwdpyel
         VAHAF2P+jFAyrV8R2nHhppr5X8KSgcb2EkZ2HRPjU+vaV60TBn221PxISNt2EBe4IIiF
         G+7UwEKYa1YkDsxEs/+GxGYLdQud7RzCyEqSruSdk+Yh2h9QZfNuPKtriR/74tFUfvx+
         vM9pCJDIg7PBNOs6n6WyBF4n6gVJdpbEZo691kbxO5aTerl/u5pAhtsYljprYq2kAs8k
         g/uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w7THJPT2rmU60w+DOPskH6aoP7sduDFS77dfdLYEIZU=;
        b=fEM3yXxqy1LpUeJmoHBXmgMlEiWAAcMWV6C5EYXqUijBSrllvTxccMVlEY1nXlDA1X
         NzquIwgQLIQhAk/SzmavHGbiB4nomGobr3Xazi3+tL9X08pLVbEFcHJT1Qfw1spPKdPn
         HjttAXKVXuGmH7jxT9HXmFc35Wl6i888Db60vOI6RSQFLoSDx+DQvHgScyGICwDveEK8
         D7Dr3ZvkSmG7wsVPeYKXTv89ipAgpRaHktw7hOfGT3N0qT8uOdxDaryY98SUEKW+Oy0J
         hx03WwELreKJmdHqmdbTmMx7+UBYecIqvjOJ5hsxsE7EN/Fl4ePDm69o7cwPehF5yNn3
         vslQ==
X-Gm-Message-State: AOAM533zqXCDmw5rZDtG3rQYQrLMiYQeTu2nYounJIC+VKYgxCy7wDXF
        FHMnwOHANuxjWDZmYGPXb37R3A==
X-Google-Smtp-Source: ABdhPJwz8RD/hCOnHNBxhotKvch3DxJ6xlTIWUPkc/Xy1HTxsZhKhXvvw6293WCr7pwBrg/w3whqQQ==
X-Received: by 2002:a05:6402:1352:: with SMTP id y18mr22371623edw.178.1608676004134;
        Tue, 22 Dec 2020 14:26:44 -0800 (PST)
Received: from localhost.localdomain (dh207-99-167.xnet.hr. [88.207.99.167])
        by smtp.googlemail.com with ESMTPSA id c23sm30515385eds.88.2020.12.22.14.26.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Dec 2020 14:26:43 -0800 (PST)
From:   Robert Marko <robert.marko@sartura.hr>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
        netdev@vger.kernel.org, andrew@lunn.ch, linux@armlinux.org.uk
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 0/4] Add support for Qualcomm QCA807x PHYs
Date:   Tue, 22 Dec 2020 23:26:33 +0100
Message-Id: <20201222222637.3204929-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series adds support for Qualcomm QCA807x PHYs.

These are really common companion PHYs on boards featuring
Qualcomm IPQ40xx, IPQ60xx and IPQ807x SoCs.

They are 2 or 5 port IEEE 802.3 clause 22 compliant
10BASE-Te, 100BASE-TX and 1000BASE-T PHY-s.

They feature 2 SerDes, one for PSGMII or QSGMII connection with MAC,
while second one is SGMII for connection to MAC or fiber.

Both models have a combo port that supports 1000BASE-X and 100BASE-FX
fiber.

Each PHY inside of QCA807x series has 2 digitally controlled output only
pins that natively drive LED-s.
But some vendors used these to driver generic LED-s controlled by
user space, so lets enable registering each PHY as GPIO controller and
add driver for it.

Robert Marko (4):
  dt-bindings: net: Add QCA807x PHY
  dt-bindings: net: Add bindings for Qualcomm QCA807x
  net: phy: Add Qualcomm QCA807x driver
  MAINTAINERS: Add entry for Qualcomm QCA807x PHY driver

 .../devicetree/bindings/net/qcom,qca807x.yaml |  88 ++
 MAINTAINERS                                   |   9 +
 drivers/net/phy/Kconfig                       |  10 +
 drivers/net/phy/Makefile                      |   1 +
 drivers/net/phy/qca807x.c                     | 811 ++++++++++++++++++
 include/dt-bindings/net/qcom-qca807x.h        |  45 +
 6 files changed, 964 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/qcom,qca807x.yaml
 create mode 100644 drivers/net/phy/qca807x.c
 create mode 100644 include/dt-bindings/net/qcom-qca807x.h

-- 
2.29.2

