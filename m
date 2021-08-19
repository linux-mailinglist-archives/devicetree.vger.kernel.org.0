Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C77593F200C
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 20:42:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231913AbhHSSnS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 14:43:18 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:35328 "EHLO
        mail-ot1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbhHSSnR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 14:43:17 -0400
Received: by mail-ot1-f44.google.com with SMTP id y14-20020a0568302a0e00b0051acbdb2869so3117346otu.2
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 11:42:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uLGl2eSzmZ3ML+QzxZin1tv8LB/0+8TZw3vtY5DTKDw=;
        b=sRgraFv316Em97oZENlVFfdDtUgyxPpFdOnF5tz3pg2gRgOXmlS8Jgfb7BthHMyznk
         AT7elfYxowTBtgT5w3zqgSyPcbJqgfRWE7CFCcv5sMFljXv7zstZKLY3UU32Tt2zhJ5F
         bBc8W2a1wYQzYQTKpKESxiLWLcfoL8GZkWnOhWzXcpXaHGoUwqnhmqvcXfYfQyDIVwBu
         sZ0MMwbmUWDZFplO2qSrw/3TI7es3OBnx9LVLo9vxA39ba9rhyxho/d8sBBFVCRtb+4c
         I+0j6JEeUVw/nqMWiHCQbklKWunF1DO4APWofY0/9kZFhHBrxT19F0Y1Cog7CNX182hr
         JUdA==
X-Gm-Message-State: AOAM531YUZmMJDKZibn7HU9XYuUZ56yPXpcnWpmyOaqbUW32epPM1YcC
        cpy9nLvGJ9Qw98QgSSfiQ4Aq3uebhA==
X-Google-Smtp-Source: ABdhPJzNlwMeA9dlO5dZKsftZET+fxb+Kuw5dbZmmAhjDaaiiLHUeggx3DoHlz1SrD99BsSZkcqa4g==
X-Received: by 2002:a05:6830:1f59:: with SMTP id u25mr13469688oth.321.1629398560851;
        Thu, 19 Aug 2021 11:42:40 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id v19sm796485oic.31.2021.08.19.11.42.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 11:42:40 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] Arm VExpress/Juno motherboard bus clean-ups
Date:   Thu, 19 Aug 2021 13:42:34 -0500
Message-Id: <20210819184239.1192395-1-robh@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I noticed we once again have warnings on VExpress/Juno bus nodes as the
simple-bus schema now expects child nodes to have a unit-address.
Digging into this I noticed the arm,vexpress-juno.yaml schema is out of
date and missing some properties (some of which are unused). I found the
'ranges' handling to be odd as well. This series fixes all those issues.

Rob

Rob Herring (5):
  dt-bindings: arm,vexpress-juno: Fix 'motherboard' node name
  dt-bindings: arm,vexpress-juno: Add missing motherboard properties
  arm: dts: vexpress: Drop unused properties from motherboard node
  arm: dts: vexpress-v2p-ca9: Fix the SMB unit-address
  arm: dts: vexpress: Fix addressing issues with 'motherboard-bus' nodes

 .../bindings/arm/arm,vexpress-juno.yaml       | 46 +++++++++++--------
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi       | 17 +++++--
 arch/arm/boot/dts/vexpress-v2m.dtsi           | 18 ++++++--
 arch/arm/boot/dts/vexpress-v2p-ca15-tc1.dts   | 11 -----
 arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts    | 11 -----
 arch/arm/boot/dts/vexpress-v2p-ca5s.dts       | 11 -----
 arch/arm/boot/dts/vexpress-v2p-ca9.dts        | 12 +----
 arch/arm64/boot/dts/arm/foundation-v8.dtsi    |  1 -
 arch/arm64/boot/dts/arm/fvp-base-revc.dts     | 11 -----
 arch/arm64/boot/dts/arm/juno-base.dtsi        | 10 ----
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi | 17 +++++--
 arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts    | 11 -----
 .../boot/dts/arm/rtsm_ve-motherboard-rs2.dtsi |  2 +-
 .../boot/dts/arm/rtsm_ve-motherboard.dtsi     | 16 +++++--
 .../boot/dts/arm/vexpress-v2f-1xv7-ca53x2.dts | 11 -----
 15 files changed, 78 insertions(+), 127 deletions(-)

-- 
2.30.2

