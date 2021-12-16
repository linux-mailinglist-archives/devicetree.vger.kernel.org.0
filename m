Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A591478024
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 23:49:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233471AbhLPWtQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 17:49:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231958AbhLPWtQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 17:49:16 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48CB0C061574
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 14:49:16 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 0F39FB82647
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 22:49:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BC57C36AE7;
        Thu, 16 Dec 2021 22:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639694953;
        bh=UfuqQnqeHCGos/jsvLNUzG6uYgdl517nQb33pzPUFQo=;
        h=From:To:Cc:Subject:Date:From;
        b=JAsD+e3cxzU51bzaxTZ+OGxkqqJX2tqLXO2nDOIlKwfmjuIkA45jSn9YnmT6KhqGM
         sTpU0yP8QYjR3NWauU88fl1OD2wLY+IIrHUWFH61C1MCDjU0EDH0OaBrdIT5ic9HTI
         eYVAp8xZr0oZXxsmpPf91AQ8MmnI+Ew6wly51VWodHZGj+BdTFVxpN7ZeccdEN6XWw
         lKEQ/1itJ1tNdEAHfk0TvTbAuKSs8+4Xc7GSLb1uQRJNb/LPWgT9tlXhtX29jFEGbb
         BKLGVYCbAHkMD0S+wMDIa3o0RC7GAaXeN3qMuQ3f3dtlu7DAkUlv963W4Hdu3m17lx
         LAoxJelE5Zp2w==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org, p.yadav@ti.com
Subject: [PATCHv3 0/2] arm: dts: socfpga: introduce "intel,socfpga-qspi"
Date:   Thu, 16 Dec 2021 16:49:00 -0600
Message-Id: <20211216224902.374403-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce "intel,socfpga-qspi" as the compatible for the Cadence QSPI
controller that is on all flavors of SoCFPGA devices:

Cyclone5/Arria5/Arria10/Stratix10/Agilex/N5X

The reason for this change is because the standard driver recently
introduced a patch to write to the CQSPI_REG_WR_COMPLETION_CTRL without
any condition. But the QSPI controller that is on the SoCFPGA platforms
does not implement the CQSPI_REG_WR_COMPLETION_CTRL register, thus a
write to this register, results in a kernel crash.

I don't believe we need a chip specific compatible for each chip because
the MODULE_ID for all flavors of SoCFPGA is identical. Thus, I think the
"intel,socfpga-qspi" compatible is appropriate to cover all variants of
the SoCFPGA platform.

Dinh Nguyen (2):
  dt-bindings: spi: cadence-quadspi: document "intel,socfpga-qspi"
  ARM: dts: socfpga: change qspi to "intel,socfpga-qspi"

 Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml | 1 +
 arch/arm/boot/dts/socfpga.dtsi                           | 2 +-
 arch/arm/boot/dts/socfpga_arria10.dtsi                   | 2 +-
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi        | 2 +-
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi            | 2 +-
 5 files changed, 5 insertions(+), 4 deletions(-)

-- 
2.25.1

