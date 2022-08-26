Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFAA05A2084
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 07:53:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244967AbiHZFxt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 01:53:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244952AbiHZFxp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 01:53:45 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB6AED0767
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 22:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661493222; x=1693029222;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=EO4GrkBGO3J15bFXLCROCV4FJ5z9mshbanIARgc+PGw=;
  b=QFzkbA/QsBSpkQz56CHWi5ofpSHIFRlzKAM8heP0WbfOaj47oITtlv2E
   wDdOlpey2VdCsLVBsm4dR2RlYQVCmvpuYfSNfNdYD1QJNVecgQCquSwne
   5jtvbn4uqrhUAVW4n8b+vFDuihepKKqPq4txFRfKxDMHAvt2Qt1U7kOYM
   UOBDnGJYGodVmCksOmN5BOTtaWOY8y/odYoNZiW6hyOud5T8YGfyicSIJ
   8frlFo1WRsrQgXMD+MNo+DWGbMuVCUUow7I/9D7pLJrDkKM0zZg3K+1t2
   jFHvXDZj/foJJt1oqJkemT1g/IDuQCULF/l7OwVGQ6zJO41MIU6XiJ1Of
   g==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25816942"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 Aug 2022 07:53:40 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 26 Aug 2022 07:53:40 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 26 Aug 2022 07:53:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661493220; x=1693029220;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=EO4GrkBGO3J15bFXLCROCV4FJ5z9mshbanIARgc+PGw=;
  b=GTqqPNs5E+3fmovXQmnB3N8A7IrsbNBwPa7M2QpooMZICnb9nGB+mgXP
   JpuwB/003zKfFWzW6nBvgvkYlQipmqlHoWkQYN15rNIN+rSg7yfqMh4ku
   py8ezB9LBPhDvFCY/J6Msc2qBOJ9IiRbSoIwsmjMQsEBswLgSnoDFU1sc
   Rb/vB2uR6pqO5Ofq0IhQJLDrVkzLMSbaTEbPpP57jGbg4t0j5jlmJilWe
   1OPHHEKiyy5tCLOi0FzbLTsZpfen3n3sntH3+h2YluzTqUU7iz28MeQ37
   lRyvNbkkeOXw+AmHyTcdvC1zxglvrph/4UpGLr1TtM+VEkcrhsw/Ok9DL
   A==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25816941"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Aug 2022 07:53:40 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 96EC4280056;
        Fri, 26 Aug 2022 07:53:40 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/6] Add missing sram properties for imx6
Date:   Fri, 26 Aug 2022 07:53:30 +0200
Message-Id: <20220826055336.2821876-1-alexander.stein@ew.tq-group.com>
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

Hi all,

this is another bunch of imx6 DT fixes for sram, similar to 5655699cf5cf
("ARM: dts: imx6ul: add missing properties for sram").

Best regards,
Alexander

Alexander Stein (6):
  ARM: dts: imx6q: add missing properties for sram
  ARM: dts: imx6dl: add missing properties for sram
  ARM: dts: imx6qp: add missing properties for sram
  ARM: dts: imx6sl: add missing properties for sram
  ARM: dts: imx6sll: add missing properties for sram
  ARM: dts: imx6sx: add missing properties for sram

 arch/arm/boot/dts/imx6dl.dtsi  | 3 +++
 arch/arm/boot/dts/imx6q.dtsi   | 3 +++
 arch/arm/boot/dts/imx6qp.dtsi  | 6 ++++++
 arch/arm/boot/dts/imx6sl.dtsi  | 3 +++
 arch/arm/boot/dts/imx6sll.dtsi | 3 +++
 arch/arm/boot/dts/imx6sx.dtsi  | 6 ++++++
 6 files changed, 24 insertions(+)

-- 
2.25.1

