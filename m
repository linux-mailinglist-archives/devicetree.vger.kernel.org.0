Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9388B4ECD11
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 21:15:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245578AbiC3TQy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 15:16:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350716AbiC3TQg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 15:16:36 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EDDE3BF86
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 12:14:50 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id w7so16988537pfu.11
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 12:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cfBEz7IBl5kEgqB0Tx6Biemz9QSyQOm34+YsTuXqAHo=;
        b=Ff6D0oSFUFnEqPec0BXQ0FCVWUbmW2e+DRTcTyc27e8iL4ocqcIYoeF/tCEm9zXCUx
         AhbpB9MZ8hm07Rzum6AvhLSxymmZKfCXFRWItIhSUKFLaLNVZfpBFyMqLa9+k3iLVUUD
         /Ze9/X0pXH6Om3Ly/q71kLHLxKOdZzGGIE44s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cfBEz7IBl5kEgqB0Tx6Biemz9QSyQOm34+YsTuXqAHo=;
        b=oAuBO0Vd+tbeByOXCFvVAL8CPG/UiFelcmxL+tTSi0RSMWdQ+HoW4hYk07NTauCnae
         RqLPb9NOMw8DN+y8ftMDL/1OY2g4OIXsA41iDodXWbfUzCqZW3Sr4a84ohIMN9hQaiJM
         /OFdsKuZp9P219B2+B7V2gtp1UKpmgrGboaaXsVd0TvlPwUGPJz50xv/TYShyoHQf4gr
         D5s7ss3J32h653+pXIEDfIK5GjuxGJPs9DWCaE4t41ipjDc58iIf7ucBQ2PGKDnQR9Xp
         CIwx1bxmNApbeOH27IWLBrAzSsK26N+XsQ4e9xWQLiD3DZGEyihRQXLr5EzmwmJtrn12
         ZYYw==
X-Gm-Message-State: AOAM5300ZdfkRzQqcyd52WwX/O5f4DHsb0ZSppa2XvKnqGmS5ACKAFp7
        astsGrrsifhd+/XOFJedfyYQpQ==
X-Google-Smtp-Source: ABdhPJyOHVQIsf7jELy3eXgDibv3du1gg/UmXQi1kvHskBnojmDQpl2J/k1lTdvvO/RHKKXVHiQdiQ==
X-Received: by 2002:a05:6a00:1990:b0:4fa:b49c:d64b with SMTP id d16-20020a056a00199000b004fab49cd64bmr34444822pfl.82.1648667689904;
        Wed, 30 Mar 2022 12:14:49 -0700 (PDT)
Received: from localhost.localdomain ([183.83.137.38])
        by smtp.gmail.com with ESMTPSA id ng17-20020a17090b1a9100b001c9f79927bfsm2955451pjb.25.2022.03.30.12.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 12:14:49 -0700 (PDT)
From:   Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Matteo Lisi <matteo.lisi@engicam.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
        Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
        Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Subject: [PATCH 0/3] add support for engicam icore mx8m plus and edimm2.2 starter kit 
Date:   Thu, 31 Mar 2022 00:44:34 +0530
Message-Id: <20220330191437.614065-1-abbaraju.manojsai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

[PATCH 1/3] adds the device tree bindings in freescale yaml file
            for engicam imx8mp icore som .

[PATCH 2/3] adds support for engicam imx8mplus icore SOM 
  
[PATCH 3/3] adds support for engicam edimm2.2 carrier board

Manoj Sai (3):
  dt-bindings: arm: fsl: Add Engicam i.Core MX8M Plus EDIMM2.2 Starter
    Kit
  arm64: dts: imx8mp: Add Engicam i.Core MX8M Plus SoM
  arm64: dts: imx8mp: Add Engicam i.Core MX8M Plus EDIMM2.2 Starter Kit

 .../devicetree/bindings/arm/fsl.yaml          |   7 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../freescale/imx8mp-icore-mx8mp-edimm2.2.dts | 176 +++++++++++++++
 .../dts/freescale/imx8mp-icore-mx8mp.dtsi     | 202 ++++++++++++++++++
 4 files changed, 386 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp-edimm2.2.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-icore-mx8mp.dtsi

-- 
2.25.1

