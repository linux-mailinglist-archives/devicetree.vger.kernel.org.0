Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DD5D65ACA5
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 01:44:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbjABAo3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 19:44:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbjABAo3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 19:44:29 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 302B125C7
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 16:44:28 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id bq39so31811666lfb.0
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 16:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mZNb8zw7FIwLVxpuD+28TH2f626UhEOq1l8EGS2uyHU=;
        b=Byi+EEjdMFrQi8OdziBssY1Ps85DsqvBUjJgpvmGX+MkBHf5hPT79m6r9cR9SgiKlX
         Jmgg8w3HrvJtUyCr5BOcvyKGbi1zdU2kcjqWodPZdP3/sZcqKHriVwwQ2vpM2T4irbhV
         Zv+hYkGLcFciS1OIC5LgFnFQzcb0JJwmSuUS9ahnaSgeNFfZRr3BvrJ4eLrOpRfaRMcm
         APmD5kX26TjuYk8Uv1zaS6Hf+Qt4rXoPz1WG5e6OZeHVeNwkDDnc1jTaxPzZd5hobtt0
         AJpaLuBTbtTEm6RzoCsziQeOfRLIds1C+SL1/yyvLWix/Xo4vCAla1tm7btpuiMBXwns
         naRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mZNb8zw7FIwLVxpuD+28TH2f626UhEOq1l8EGS2uyHU=;
        b=XDvxFNxJcpe9FkroX2mk6o+yRZyBtC3SaPOnUakA/qZs548uM9DutlBi69JhyIEzK+
         NLcA5qnfkDuol4Hx1TUsDSrwI2J8Xf4U2YWSw2RNNxOQvGrgbjSdEtmeTTmpy202cxCw
         qRbUef9FT27uDwDm0mWaxz3teVVel4qurL28QjYu6LxtYT1gf2JmDLJ8JFjtPCYYz3B3
         eAanELXM3/OQjqk/ZaWuH/mZdCgaFU5vovq+SG7FAigdWS2rnwhRsE1mrVH4BLV5OK8D
         88emcR/hHIZ/zr9jMsz5lR3Ak5dgXCtbKbiBFEbkma+FUyQ5cq3Xn2v2ri6TVOECRv2n
         ebSg==
X-Gm-Message-State: AFqh2kpmz8XgKsODPldxfRgYnW41Stki8BfdyMRtFNfjI00KVdKq8YLx
        CvMJPVY4Lj1G/robbZf5T6ciwA==
X-Google-Smtp-Source: AMrXdXtzYy0fFM3Ie4hMQtofsZGuTfjO/yF8QUZixC8tY3sdjfi+A8kOqwTGWOlvP11QcJKS1nn+Tw==
X-Received: by 2002:a05:6512:2c8a:b0:4b5:6f7b:8cfe with SMTP id dw10-20020a0565122c8a00b004b56f7b8cfemr10244240lfb.41.1672620266563;
        Sun, 01 Jan 2023 16:44:26 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f47000000b0049482adb3basm4304788lfz.63.2023.01.01.16.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jan 2023 16:44:26 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/3] ARM: dts: imx: Add support for SK-iMX53 board
Date:   Mon,  2 Jan 2023 02:44:22 +0200
Message-Id: <20230102004425.887092-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the StartKit sk-imx53 board, a simple development board
with the i.MX536A SoC.

Changes since v2:
- Dropped vpu redundant node
- Dropped device_type from Ethernet PHY DT node
- Fixed an error in vendor-prefix patch

Changes since v1:
- Added bindings changes
- Moved phy-reset-gpios to the mdio->phy node
- Replaced default pinconf with specific values 

Dmitry Baryshkov (3):
  dt-bindings: vendor-prefixes: add Startkit
  dt-bindings: arm: fsl: Add the Starterkit SK-iMX53 board
  ARM: dts: imx: Add support for SK-iMX53 board

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/imx53-sk-imx53.dts          | 357 ++++++++++++++++++
 4 files changed, 361 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx53-sk-imx53.dts

-- 
2.39.0

