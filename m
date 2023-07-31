Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDAA07691A6
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:25:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230242AbjGaJZm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:25:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbjGaJZK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:25:10 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2E551BF
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1690795422; x=1722331422;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=dkWoz/7yf/GCfGGYgfxkvJQP26NTC/OUtz+hzVnUK1Y=;
  b=oAfm6GUSXbqVLHyQAc3Yc9GruYMW92icxU6PEh60ITgzj7ejrTKB3sCO
   D34HQa3ri+AwM1qrd65DAc0938iqCQXU83fUf54fHGAMFkrbMptF53/rp
   lWAAUwIVZ3gNin/b+GIjoozjFsLOk3hsAIZbzZUlo16TxA+t3Np7Y8RTa
   VXqY7+Fx5vn9fVWkOkvaSyGgVsw06NUwvSA2Lax/ong2OUF3pmId/jIHv
   al5MnOpj37q69CAvlXBp4/Vs/SAYnv5EgK200eZYu617W7fatm+xYJmbn
   o2GCSlcOGM02Htd2/pAWwvFq6bCZ6PTsDSX8+yU/YGOgrhZ7DcgNBRlkg
   w==;
X-IronPort-AV: E=Sophos;i="6.01,244,1684792800"; 
   d="scan'208";a="32199752"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 31 Jul 2023 11:23:37 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9424B280084;
        Mon, 31 Jul 2023 11:23:37 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/3] TQMLS1021A support
Date:   Mon, 31 Jul 2023 11:23:28 +0200
Message-Id: <20230731092331.358427-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

thanks everyone for the feedback. This is the fifth round of this series to
add support for the TQMLS1021A using the MBLS1021A mainboard.
Removing the 'dma-coherent' property was a workaround carried on from older
downstream kernels and is not necessary anymore.
The same goes for adjusting the size for 'scfg' node. Removing this also
fixes the node label ordering.

Changes in v5:
* Add newline for include header grouping
* Put status property at the end of properties (lpuart0)
* Do not remove 'dma-coherent' for sata
* Do not adjust 'reg' property for 'scfg'

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
 .../boot/dts/nxp/ls/ls1021a-tqmls1021a.dtsi   | 107 +++++
 4 files changed, 523 insertions(+)
 create mode 100644 arch/arm/boot/dts/nxp/ls/ls1021a-tqmls1021a-mbls1021a.dts
 create mode 100644 arch/arm/boot/dts/nxp/ls/ls1021a-tqmls1021a.dtsi

-- 
2.34.1

