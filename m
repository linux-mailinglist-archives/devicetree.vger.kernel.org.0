Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E1D976932F
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:35:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231252AbjGaKfo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:35:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230080AbjGaKfm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:35:42 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1DBAE53
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:35:39 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-686ba29ccb1so2672204b3a.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799739; x=1691404539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PpuTfvpNbaiHi7FjJWpTV2z2GCdLawICavCFR3SGTU8=;
        b=pivHPfp8i7TJx59hTCjDLYw1mzJ4j0dSdS8KrLtpMC0RY/YEVI7Tzo/FDz9CzrD8oO
         +XHRz8wedIjm6zt/GFFkA7M/M1iFtpe8ajLJYQ56oMZuHkEf75Wq3V3UAg/P8OXuDsTX
         rL6ttWMw/FGssyo+mebFoI3NukIaMA077xA2GBxdAeXJzy4+1elWzeOP7q/xdKXQRyYu
         3F4eGpRXrKsLiEEblgFrgcb4R/uzgqkJ5x0bAgRIwYzA9sXI5sk2t4XR29GRRnCftuVQ
         gG9ZUms4AVqjR5YkA0sfQ20oQPkioXpziX8A2B5+r1n+Lm9bUnfZEnvrJ5F/yIjtCW30
         /Bwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799739; x=1691404539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PpuTfvpNbaiHi7FjJWpTV2z2GCdLawICavCFR3SGTU8=;
        b=i6R6nFpeYdR95M4V9RlvL1C855bQB9ol6JwHqQk7uuJF3at/xi+ZcdY8+fHlqe10Sv
         YGmj3mjSiw9fYVhRGw7q4EFZ4UvcdRm0Yuzv1HNeRrWdGqqxKWYtU2x0VPqCsC7G1qiI
         B+rIxZ6zSNYcYTCj/IVkTbgr+ummIDtzcGvdv55Y1S31zl6zDu1youkCDoNwQQFErq5y
         5+lb9/u2fUe5MsFrG4oXmcwuxyjm6nmLcrB4DoObv4jQTplMoiAaUpwxglOGonJ70Lkb
         pi4S6ZCdCcE0s2pTxma481ckctYSu/NDvq71cMMKjY9j/5dGFATgmxL7mZJgqU7IG0D2
         wTQA==
X-Gm-Message-State: ABy/qLadx5VoDQQYbLcRLzjjXzDyDZUjSf7tJ+nGOsCdIexUlZJaj3BX
        JnQNPnfO76lFyL/Gwvf3GDF5UoALiYPU9ef2N/klbA==
X-Google-Smtp-Source: APBJJlGnn8CdqmcO0D5mjF/TfARHUJ0G4Czt4OgYWAaCzAOQk05kzmcFFRyJ7roJCFjOpOP32BdsSg==
X-Received: by 2002:a05:6a20:a11d:b0:12f:d350:8a12 with SMTP id q29-20020a056a20a11d00b0012fd3508a12mr10678017pzk.21.1690799739055;
        Mon, 31 Jul 2023 03:35:39 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.35.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:35:38 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 00/13] arm64: rockchip: Add more RV1126 DT nodes
Date:   Mon, 31 Jul 2023 16:05:05 +0530
Message-Id: <20230731103518.2906147-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Patchset adds more DT nodes for Rockchip RV1126.

Jagan Teki (12):
  dt-bindings: pwm: rockchip: Document rv1126-pwm
  ARM: dts: rockchip: rv1126: Add pwm2m0 pins
  ARM: dts: rockchip: rv1126: Add pwm2 node
  ARM: dts: rockchip: rv1126: Add pwm11m0 pins
  ARM: dts: rockchip: rv1126: Add pwm11 node
  ARM: dts: rockchip: rv1126: Add SFC node
  ARM: dts: rockchip: rv1126: Add FSPI pins
  ARM: dts: rockchip: rv1126: Add uart5m2_xfer pins
  ARM: dts: rv1126: Enable pwm fan for edgeble-neu2
  ARM: dts: rv1126: Drop EMMC_RSTN for edgeble-neu2
  ARM: dts: rv1126: Add 3V3_SYS regulator for edgeble-neu2
  ARM: dts: rv1126: Add 12V main supply for edgeble-neu2

Stephen Chen (1):
  ARM: dts: rv1126: Enable SFC for edgeble-neu2

 .../devicetree/bindings/pwm/pwm-rockchip.yaml |  1 +
 .../dts/rockchip/rv1126-edgeble-neu2-io.dts   | 33 +++++++++++++++
 .../dts/rockchip/rv1126-edgeble-neu2.dtsi     | 27 +++++++-----
 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 42 +++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        | 34 +++++++++++++++
 5 files changed, 127 insertions(+), 10 deletions(-)

-- 
2.25.1

