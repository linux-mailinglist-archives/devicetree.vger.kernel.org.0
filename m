Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB5F677DB6B
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 09:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242519AbjHPHz3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 03:55:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242492AbjHPHzA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 03:55:00 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B66591A8
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 00:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692172498; x=1723708498;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=wwIpDsJuZcT05wiT4RiSTRNX2ZePRwkJpwoFxfMXx7c=;
  b=SMEflB/hR1i5iiYxoHeEArj/Y6IZM9RCeg3RV2tdT63zbpT0mIxm0V1B
   EMXQwFY9cWh4bgeW2xp2PPWLZ6AClAaOQDMsEhNYPKmYaHDmOW7sgZTIj
   QrHaU5H/hRLzjmjUNrnoUo3lzVxCZbVqnR+U92vDcPyXamQhS6tAq/QGo
   0yYSY+Aar6IMZdm+q1RLsuql0dgVg2qmUF1k0z1sv8yci1P9sbTn/C/L5
   C7vKg3lbZmTsay2LgUXT11YZc0oceo/ueqDa33sfsx0Ikh+PbFdIwLj0h
   AHqAjWJZrxyynjoCvS1SPW/1P4O/EYDvGEtDkhxSSRGIuy7F8yownLIqt
   g==;
X-IronPort-AV: E=Sophos;i="6.01,176,1684792800"; 
   d="scan'208";a="32465154"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Aug 2023 09:54:56 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id AB158280075;
        Wed, 16 Aug 2023 09:54:56 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] Various TQMa6UL/MBa6ULx fixes
Date:   Wed, 16 Aug 2023 09:54:50 +0200
Message-Id: <20230816075452.606704-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
this is a follow up to v1 for fixing dtbs_check warnings for TQMa6UL/MBa6ULx.
While Patch 1 & 3 from v1 have been applied, Patch 2 is inserted into this v2
again. The patch itself is not changed, because a dependent patch was missing
in v1. This one has been included in v2.

Changes in v2:
* Add a missing dependent patch as new patch 1

Best regards,
Alexander

Alexander Stein (2):
  ARM: dts: imx6ul: mba6ulx: Mark gpio-buttons as wakeup-source
  ARM: dts: imx6ul: mba6ulx: Fix gpio-keys button node names

 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

-- 
2.34.1

