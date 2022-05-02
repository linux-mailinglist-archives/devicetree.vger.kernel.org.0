Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B47A0516DBA
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 11:50:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378128AbiEBJxb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 05:53:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384506AbiEBJwk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 05:52:40 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9122E90
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 02:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1651484952; x=1683020952;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ZVCo58L2rU8z55TFcI8A+ssV8amwrxNlj/6HvBXrQLg=;
  b=e0QqjXuwVh1bWKU5wzp5Fl6mu5vQwgC3Te6Pg52uS0Jdp/2j5WjfXYVf
   UjlmJ7v6F+xPus3c7yZGCCbjGbhX5rxZRcdXn9xvl6Gn6AUeWOAS/sqz9
   DmQC9pZDfhQ6UuPqAE08rmCBV5byH+KdacvsWySzErAcz7RrI1ipbpSNB
   dl2QsA8zR7rQKm1oHDM6jlLH2kzUlhtnVX8tAZY9iTTw59i2f1EvuKcL7
   LfegAp6nkmtS+z46uP+6MT23Cux5YGo/4VW5XnX/28QlwOP8ytXw88w1T
   64CSdR3ZySKrbwyi4Ywd1FdRezCY+dvlmEaHSLmZUIy64ExEe/gk7YlNU
   A==;
X-IronPort-AV: E=Sophos;i="5.91,190,1647298800"; 
   d="scan'208";a="23608909"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 May 2022 11:49:06 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 02 May 2022 11:49:06 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 02 May 2022 11:49:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1651484946; x=1683020946;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ZVCo58L2rU8z55TFcI8A+ssV8amwrxNlj/6HvBXrQLg=;
  b=AxNXQ30riiSt2ywg99N/mUPQxxfFM29ug7Nl9aR8d4eG0cXclFl9S4uD
   DiwNK7B/tGqZxl9/q+O+xA40YPTC19zzI+uQyTy1qMppFI9RH0JQdvmsK
   EP5ombapbsuUsQRozql3zBjHK2XgSs7xKmN69/IKT4c83AV5y+OEs5a8w
   BGoftaHnXFtYoO9Waw9XeydjXVglXBDnkkYcq9wKv04Vcy21RRfustp1P
   67FJpCGcR2Jqm6XvDbukcBUGtpUrsZK5096BcgajCq5gGoIKVsAY4ilXh
   PSnmN5VwUvL3lREW2ZdoP5zac6nxJM38XHdgO0/tZfpSobaNYKYcCo+is
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,190,1647298800"; 
   d="scan'208";a="23608908"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 May 2022 11:49:06 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 60FFC280070;
        Mon,  2 May 2022 11:49:06 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] i.MX8M PWM polarity support
Date:   Mon,  2 May 2022 11:48:57 +0200
Message-Id: <20220502094901.251310-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

this patchset adds the possibility to specify a PWM polarity inversion for
i.MX8M. The pwm-imx27 driver already supports this in the 3rd pwm-cells, but
the DT for imx8m so far only set #pwm-cells=<2>.
Add support by setting #pwm-cells=<3> and adding the (default) normal (0)
polarity to all boards.
make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/imx-pwm.yaml
was used to get all boards.

Best regards,
Alexander

Markus Niebel (4):
  arm64: dt: imx8mq: support pwm polarity inversion
  arm64: dt: imx8mm: support pwm polarity inversion
  arm64: dt: imx8mn: support pwm polarity inversion
  arm64: dt: imx8mp: support pwm polarity inversion

 .../boot/dts/freescale/imx8mm-data-modul-edm-sbc.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi             | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi                 | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mn.dtsi                 | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mp.dtsi                 | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts   | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts      | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi                 | 8 ++++----
 8 files changed, 20 insertions(+), 20 deletions(-)

-- 
2.25.1

