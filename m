Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D97D91F48E4
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2020 23:33:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727002AbgFIVds (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jun 2020 17:33:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725894AbgFIVdp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Jun 2020 17:33:45 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D82DCC05BD1E
        for <devicetree@vger.kernel.org>; Tue,  9 Jun 2020 14:33:43 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id l27so260573ejc.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2020 14:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=CgbcjfQ1kq89L3/ienhL9zGUKzOCusjb9FsMQdNs9jE=;
        b=SBs0a5RSiaP8x0a+u23Ej8vtBCk4zBDH6+TbzQB5mFkyN300SzQZs5wkqEw4nKmaNC
         vpuW/4Hb/j3+QfoWiNcAEadN5VYeUXK8YsGgkvI3b2qqJxvt8D4SrpSWp7vpT/l2q+Yz
         d70QpIlvPsB9Krf5aEqR3hBHvrvTRSMNqTxkAfdf5iAZz8zQPPmU1NGyydSUfxtiy1Vu
         V5bJqfw5DEeElt0HMnaJGKipg7EhcGt1yw8y29BfMG7h79q+0cey1w+JjmDL/w5L2dcA
         o96pF4EivkpWZrXMBzMAgZ6L4iNVESrdcC5xala6n9jO1j/nCAF1Ke+4opF1sulRe4eQ
         P1rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=CgbcjfQ1kq89L3/ienhL9zGUKzOCusjb9FsMQdNs9jE=;
        b=I59kHEa8KUE7Ac+BU6gmDQbofnGFPM8D6h305ARlypnjiwylV63WqKYE8mDQrzrKxe
         xmOkAredciIVxx/w/ZEFjtSZIsQ6sJYwAygHGRO5tAhHOMubeAKhdfO6tZkixX/FeOs2
         c56VzbCHksZKEQO7bKKx22aWaEZjtl9mJg8E4TQfuYidymsBiq0LqRcy/PHjkiiQyVyS
         +876xh7yMCblZE00PvQebE37Cd6WnQM1L3MmwesB18VlyHglpOzVZOrPW/w7/4GbHNmK
         jRzJmL0T1/jFoU3ix86+Y2haSvjH0k9QBzrm/VRZI2NjSyAuykZ6FrOMC23hYOP6P6VE
         etZQ==
X-Gm-Message-State: AOAM532aNnM84QzWnh2RriLD40iw3vQQ9xi0BXAXRSCyyKLnci8pYZQe
        gu5BYvCPzM9B/NWHYy7+xiC/Sg==
X-Google-Smtp-Source: ABdhPJww7ye4OsDfB07ilbw8KkpEg2aYFeJ3uubVqXldFSn0oXMyMAyiNep/qKjK55jFi6HjDLGHxA==
X-Received: by 2002:a17:906:28da:: with SMTP id p26mr313099ejd.551.1591738422202;
        Tue, 09 Jun 2020 14:33:42 -0700 (PDT)
Received: from x1 ([2001:16b8:5c37:301:1a8:aa22:e507:57b3])
        by smtp.gmail.com with ESMTPSA id p23sm14019375ejw.125.2020.06.09.14.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2020 14:33:41 -0700 (PDT)
Date:   Tue, 9 Jun 2020 23:33:39 +0200
From:   Drew Fustini <drew@beagleboard.org>
To:     Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
        =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Jason Kridner <jkridner@beagleboard.org>,
        Robert Nelson <robertcnelson@gmail.com>
Subject: [PATCH] ARM: dts: am335x-pocketbeagle: Fix mmc0 Write Protect
Message-ID: <20200609213339.GA2995279@x1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

AM3358 pin mcasp0_aclkr (ZCZ ball B13) [0] is routed to P1.13 header [1]
Mode 4 of this pin is mmc0_sdwp (SD Write Protect).  A signal connected
to P1.13 may accidentally trigger mmc0 write protection.  To avoid this
situation, do not put mcasp0_aclkr in mode 4 (mmc0_sdwp) by default.

[0] http://www.ti.com/lit/ds/symlink/am3358.pdf
[1] https://github.com/beagleboard/pocketbeagle/wiki/System-Reference-Manual#531_Expansion_Headers

Fixes: 047905376a16 (ARM: dts: Add am335x-pocketbeagle)
Signed-off-by: Robert Nelson <robertcnelson@gmail.com>
Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
 arch/arm/boot/dts/am335x-pocketbeagle.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/am335x-pocketbeagle.dts b/arch/arm/boot/dts/am335x-pocketbeagle.dts
index 4da719098028..f0b222201b86 100644
--- a/arch/arm/boot/dts/am335x-pocketbeagle.dts
+++ b/arch/arm/boot/dts/am335x-pocketbeagle.dts
@@ -88,7 +88,6 @@ AM33XX_PADCONF(AM335X_PIN_MMC0_DAT2, PIN_INPUT_PULLUP, MUX_MODE0)
                        AM33XX_PADCONF(AM335X_PIN_MMC0_DAT3, PIN_INPUT_PULLUP, MUX_MODE0)
                        AM33XX_PADCONF(AM335X_PIN_MMC0_CMD, PIN_INPUT_PULLUP, MUX_MODE0)
                        AM33XX_PADCONF(AM335X_PIN_MMC0_CLK, PIN_INPUT_PULLUP, MUX_MODE0)
-                       AM33XX_PADCONF(AM335X_PIN_MCASP0_ACLKR, PIN_INPUT, MUX_MODE4)           /* (B12) mcasp0_aclkr.mmc0_sdwp */
                >;
        };

--
2.25.1
