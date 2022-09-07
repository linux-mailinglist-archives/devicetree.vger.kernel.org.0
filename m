Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C27075AFE69
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 10:03:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230215AbiIGID2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 04:03:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230241AbiIGIDM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 04:03:12 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 77EDFAB183
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 01:02:53 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id 1162680EE;
        Wed,  7 Sep 2022 07:55:13 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Keerthy <j-keerthy@ti.com>
Subject: [PATCH v3 0/2] Configure dmtimers for am65
Date:   Wed,  7 Sep 2022 11:02:41 +0300
Message-Id: <20220907080243.26697-1-tony@atomide.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

Here's v3 series for adding the dmtimers for am65. The device tree binding
and related driver related changes have been already merged.

Regards,

Tony

Changes since v2:

- Add missing power-domains properties

Changes since v1:

- Update to use the mux clock and configure it for 25 mHz source clock with
  assigned-clocks

- Update patch descriptions

Tony Lindgren (2):
  arm64: dts: ti: k3-am65: Configure pinctrl for timer IO pads
  arm64: dts: ti: k3-am65: Add general purpose timers for am65

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 162 +++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi  |  63 +++++++++
 2 files changed, 225 insertions(+)

-- 
2.37.1
