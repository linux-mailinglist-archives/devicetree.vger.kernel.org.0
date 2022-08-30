Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FBB75A5C95
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 09:09:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230426AbiH3HJW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 03:09:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230424AbiH3HIq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 03:08:46 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C0EEDCAC79
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 00:08:11 -0700 (PDT)
Received: from hillo.muru.com (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTP id D2AF480BF;
        Tue, 30 Aug 2022 07:00:40 +0000 (UTC)
From:   Tony Lindgren <tony@atomide.com>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, Keerthy <j-keerthy@ti.com>,
        Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v2 0/2] Configure dmtimers for am65
Date:   Tue, 30 Aug 2022 10:07:47 +0300
Message-Id: <20220830070750.30640-1-tony@atomide.com>
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

Here's v2 series for adding the dmtimers for am65. The device tree binding
and related driver related changes have been already merged.

Regards,

Tony

Changes since v1:

- Update to use the mux clock and configure it for 25 mHz source clock with
  assigned-clocks

- Update patch descriptions

Tony Lindgren (2):
  arm64: dts: ti: k3-am65: Configure pinctrl for timer IO pads
  arm64: dts: ti: k3-am65: Add general purpose timers for am65

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 150 +++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65-mcu.dtsi  |  59 +++++++++
 2 files changed, 209 insertions(+)

-- 
2.37.1
