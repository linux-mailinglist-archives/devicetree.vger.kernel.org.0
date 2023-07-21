Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25A4775C2E2
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 11:22:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230005AbjGUJWB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 05:22:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230261AbjGUJV7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 05:21:59 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DBB430DA
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 02:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1689931314; x=1721467314;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=FMrLWl4W0kXtqKYzfLQdist/Qi9fr9rVb6tGpSEtfoI=;
  b=pvKPG4fYXCOTCHM72g0RmW0TwggMtR3LcLlgBUitepz/z9VFMBxFUD+B
   70Yt2ZtDgeC2OosUB03GXgyyvh9vUY0GWWbcSyGOy/7vis5xGpLJXw44c
   jGCWj2V5tuR/9mG3/CL8whkCIkwQaZzygvTf6jMeBoKGAc5EC8ozrhqMh
   c1lqstjxIi8YeUsvYS6sqOAALib+60Uh0d1a26XwGKXs2VbP/YQFLHiCr
   4CRPs+sCAq8ejGP7z/lU5tHieOPjU+/sqDQjFKpTiBde9V6fxdaD3iTsO
   fSrEm/y8m1VwGQwXkC/I3Pmp6oBaQCNWS7qaKcLnayKMn7bvJV4I0Q0LU
   w==;
X-IronPort-AV: E=Sophos;i="6.01,220,1684792800"; 
   d="scan'208";a="32050119"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Jul 2023 11:21:52 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 5EDF2280078;
        Fri, 21 Jul 2023 11:21:52 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/3] TQMLS1021A support
Date:   Fri, 21 Jul 2023 11:21:43 +0200
Message-Id: <20230721092146.1214903-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

thanks everyone for the feedback. This is the forth round of this series to
add support for the TQMLS1021A using the MBLS1021A mainboard.

Changes in v4:
* Dropped display overlay for now as DCU patch is still pending
* Rebase to next-20230721
* Move status property to last position
* Rename stmpe811 node name
* Remove superfluous #address-cells and #size-cells for stmpe811
* Add missing interrupt-controller properties for stmpe811
* Remove superfluous ESDHCI compatible overwrite in SoM .dtsi


Best regards,
Alexander

Alexander Stein (2):
  ARM: dts: ls1021a: add TQ-Systems MBLS102xA device tree
  ARM: dts: ls1021a: add TQMLS1021A flash partition layout

Matthias Schiffer (1):
  dt-bindings: arm: fsl: add TQ-Systems LS1021A board

 .../devicetree/bindings/arm/fsl.yaml          |  10 +
 arch/arm/boot/dts/nxp/ls/Makefile             |   1 +
 .../nxp/ls/ls1021a-tqmls1021a-mbls1021a.dts   | 405 ++++++++++++++++++
 .../boot/dts/nxp/ls/ls1021a-tqmls1021a.dtsi   | 111 +++++
 4 files changed, 527 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/ls/ls1021a-tqmls1021a-mbls1021a.dts
 create mode 100644 arch/arm/boot/dts/nxp/ls/ls1021a-tqmls1021a.dtsi

-- 
2.34.1

