Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A0C673E211
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 16:24:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbjFZOYi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 10:24:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230041AbjFZOYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 10:24:20 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96A5110CC
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 07:23:41 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1042060E55
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 14:18:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6071C433BB;
        Mon, 26 Jun 2023 14:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687789119;
        bh=l9Fd1JpW3g7doc+rZzbv4csC7m6VaK5eB//EBF2BPzU=;
        h=From:To:Cc:Subject:Date:From;
        b=UjyT2TsubaOpqUWrl5xJ+7lW8cfoyBYcJxRj6kHGUxwJbAzppvZiuKVZAhwowZc0k
         3sr/mOiRTGOmc6COmA5xXcVPPNG/G4gjC5pihdaDOnee2y3Hu+Mjo4yJnzWn80nDr4
         ADuotxbKoMjKsCs9deDr8g8QEdgowBI+dSfJkCPqRyzvOOMxSQoM/Mvam6j+0vAVvh
         OhXSxTE11OQr1s02tLT9jt0IWy2ooyWuBCaPEV3OjlH3Aq/PRjWU7nhalqwYyj5CC8
         KHF3pi1mAmWLcYZHaWf1a2Ew/v3jbIKx+Md8fb216GE42hxcvo4+PUo7HPUu+ZfAKW
         dLDINZArwUYHA==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowskii+dt@linaro.org, conor+dt@kernel.org
Subject: [PATCH 0/5] arch: arm64: socfpga: clean up dtbs_check warnings
Date:   Mon, 26 Jun 2023 09:18:21 -0500
Message-Id: <20230626141826.414777-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This will be the first of many patchsets to clean up the SoCFPGA platform
dtbs_check warnings.

Dinh

Dinh Nguyen (5):
  arm64: dts: socfpga: agilex/n5x/stratix10: fix dtbs_check warning for
    partitions
  arm64: dts: socfpga: agilex/stratix10: fix dtbs_check warnings for
    sram
  arm64: dts: socfpga: stratix10: fix dtbs_check warning for usbphy
  arm64: dts: stratix10/agilex/n5x: fix dtbs_check warning for memory
    node
  arm64: dts: agilex/stratix10/n5x: fix dtbs_check for rstmgr

 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi  | 14 ++++++++------
 .../boot/dts/altera/socfpga_stratix10_socdk.dts    |  6 +++---
 .../dts/altera/socfpga_stratix10_socdk_nand.dts    |  8 ++++----
 .../boot/dts/altera/socfpga_stratix10_swvp.dts     |  2 +-
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi      |  7 +++++--
 arch/arm64/boot/dts/intel/socfpga_agilex_n6000.dts |  4 ++--
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts |  6 +++---
 .../boot/dts/intel/socfpga_agilex_socdk_nand.dts   |  4 ++--
 arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts    |  6 +++---
 9 files changed, 31 insertions(+), 26 deletions(-)

-- 
2.25.1

