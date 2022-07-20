Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D37B657B134
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 08:47:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229568AbiGTGrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 02:47:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229565AbiGTGrR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 02:47:17 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7394B62A45
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 23:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1658299636; x=1689835636;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=cZsLxml+kUn19J2NrkX3RqGwGy9Xt5THzmLpO+TqD08=;
  b=SHh1NSIYKGYa8P9P+nt8Gm1fmSfGHvtO7Mds1FtShqYlxFFhaSx3tPM4
   /CMMGdD/B0w4//nZJ3EfXrU/wAMw1t6i/5Q0Ifecb4S2uV0dJWdToV3/S
   SijCmHp+wPqXAwIcPeFQJJ7sxpz+Aez+rjIAU5xHKohU6s2LqCdW+XZSm
   OquDC+nL62cT6zFA0jN92cUwSsbI4B9zV1vKbLLrlBykJbKolzKgwGD+h
   oIYNNx6bhPFTRj4yvyFkU4c1Hjce6da6IHvDZkNl/t5+XwSn35S3yc9IU
   zlfKmvJApwf77qJWc/0vTUjLm2FoWra5o2lpxozjpLS/SpQliAT+isFad
   g==;
X-IronPort-AV: E=Sophos;i="5.92,286,1650924000"; 
   d="scan'208";a="25147745"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 20 Jul 2022 08:47:14 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 20 Jul 2022 08:47:14 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 20 Jul 2022 08:47:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1658299634; x=1689835634;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=cZsLxml+kUn19J2NrkX3RqGwGy9Xt5THzmLpO+TqD08=;
  b=B/XCX3pagGOGkzDttOgBWG1Vfao9F7o3lD0bAGFll+QhckECHLPpM7Tv
   2gW9hsUFhRiALiyhVGtUuAekh/B/KjkVD7pTWZZiEUDs1iQCmaNAKce1C
   qJUBXGTFNXx8d7/a2jNFwMHYLj1oVkw7EY25s/3WWoSIRRZ9kLgdPXBWE
   kIewdrhA9ZCcc+sYHeK/BbylsTSfzOo3Yyxu0zxZXEn3XsTi8vDMPOmq9
   OsJPj96c3/Yguf0U9824nB6zpw7+8hYt6JdVMupA3MIk7KJXGB8VjcQq6
   qQLiUvOzAUQ/9hkZ5ViE5T09QEvufoT6s6K7eqBYyqTnt4Mz9me5B1Hme
   g==;
X-IronPort-AV: E=Sophos;i="5.92,286,1650924000"; 
   d="scan'208";a="25147744"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 20 Jul 2022 08:47:14 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 65B6A280056;
        Wed, 20 Jul 2022 08:47:14 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Lukasz Majewski <lukma@denx.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] ARM: dts: imx6q-mccmon6: Add fsl,err006687-workaround-present property
Date:   Wed, 20 Jul 2022 08:47:12 +0200
Message-Id: <20220720064712.1414438-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add property for ERR006687 hardware workaround.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
I do not have any access to the hardware, but given the redefinition of fec
interrupts this is most likely to address ERR006687. So add the relevant
property accordingly.

Put original author on To: to get feedback.

 arch/arm/boot/dts/imx6q-mccmon6.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx6q-mccmon6.dts b/arch/arm/boot/dts/imx6q-mccmon6.dts
index 64ab01018b71..f08b37010291 100644
--- a/arch/arm/boot/dts/imx6q-mccmon6.dts
+++ b/arch/arm/boot/dts/imx6q-mccmon6.dts
@@ -103,6 +103,7 @@ &fec {
 	/delete-property/ interrupts;
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
+	fsl,err006687-workaround-present;
 	status = "okay";
 };
 
-- 
2.25.1

