Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECB9C1FEF50
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2020 12:08:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728078AbgFRKIw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Jun 2020 06:08:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727942AbgFRKIv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Jun 2020 06:08:51 -0400
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EB69C06174E
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2020 03:08:49 -0700 (PDT)
Received: by mail-pl1-x644.google.com with SMTP id v24so2242734plo.6
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2020 03:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s1VqP9EIERD+hagFVC72DAlEZ/VXVNsM2Fw1XLYSvTI=;
        b=H3jKplbfvME7fGxdX1WtYsdu4TmOA3VQ+7/NZMWf2u8wLO0HxmPsJa8PytQ7dZf9JW
         lUToFtWYpt9pEKmHUpw6Vs5GViXY6wsEzN3mACl0EEt0ZTGmJ5t3ZUYi1Tw4ulybGMco
         pYEiOxUiYIZleW1T4UibRgcAJWHxvG6L6HvpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s1VqP9EIERD+hagFVC72DAlEZ/VXVNsM2Fw1XLYSvTI=;
        b=FTjD3RV3lt+5Z26JfS0dMgwuT7B24QqzirOKvyM3A3OOpPouXJVIvFt00NPcD6wnVr
         yU7O56F2P5lHi5eolaTe4f2lGA07SL7IWsK3yDnxn3dwZBQVtySe8REQvQa6xjuyqTCU
         ecGaOPJ541sigpP+BA3Ej8XbGKxCsxfJ9W0C8UB6XXFM3czGmWuAWYVwyAbRYVgvbvBF
         altMl5G/x4I87gB8GBpu9Jl2CmTUs4aL69ZjExpqXnfqt6wFnTlUoLW3pfgKKjepD2nl
         waECQAwmnMs7Yz6LdnJ8NH9w70sEGj9//vUZgmB9Jwd4Xm4nvkPDOUNNS/+ekPK08mbV
         cmKg==
X-Gm-Message-State: AOAM533uYomkpI0M7WAXUTPoWv+wjsSjvNfBIg3SmSA26eCIuZFEKXd1
        PG3Pkgyk4/Dhm/ze6MG3SpJA1Q==
X-Google-Smtp-Source: ABdhPJyHy7LJRn/VtSjB/Zvs5KMCzyZvT4A08M95yw8GvYTIy2Cx+yvqQMNC3B+pEj0gQ7MYz9hMxw==
X-Received: by 2002:a17:90b:1246:: with SMTP id gx6mr3453815pjb.146.1592474928918;
        Thu, 18 Jun 2020 03:08:48 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
        by smtp.gmail.com with ESMTPSA id o16sm2190793pgg.57.2020.06.18.03.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2020 03:08:48 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Tom Cubie <tom@radxa.com>, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 0/4] ARM: dts: rockchip: Radxa Rock Pi N8 initial support
Date:   Thu, 18 Jun 2020 15:38:28 +0530
Message-Id: <20200618100832.94202-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3288 SOM need to mount on top of dalang carrier 
board for making Rock PI N8 SBC.

Any inputs?
Jagan.

Jagan Teki (4):
  ARM: dts: rockchip: radxa-dalang: Update sdmmc properties
  dt-bindings: arm: rockchip: Add Rock Pi N8 binding
  ARM: dts: rockchip: Add VMARC RK3288 SOM initial support
  ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/rk3288-rock-pi-n8.dts       |  17 +
 arch/arm/boot/dts/rk3288-vmarc-som.dtsi       | 298 ++++++++++++++++++
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |   2 -
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     |   5 +
 6 files changed, 327 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-rock-pi-n8.dts
 create mode 100644 arch/arm/boot/dts/rk3288-vmarc-som.dtsi

-- 
2.25.1

