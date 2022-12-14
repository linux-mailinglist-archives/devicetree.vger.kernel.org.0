Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0F7F64CB35
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 14:24:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237959AbiLNNYS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 08:24:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237905AbiLNNYP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 08:24:15 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 8BB0B1F4
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:24:14 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC338FEC;
        Wed, 14 Dec 2022 05:24:54 -0800 (PST)
Received: from e126835.cambridge.arm.com (e126835.cambridge.arm.com [10.1.32.127])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 037083F73B;
        Wed, 14 Dec 2022 05:24:12 -0800 (PST)
From:   Emekcan Aras <emekcan.aras@arm.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Emekcan Aras <Emekcan.Aras@arm.com>
Subject: [PATCH v2 0/2] Adds Corstone500 DeviceTree
Date:   Wed, 14 Dec 2022 13:24:02 +0000
Message-Id: <20221214132404.439882-1-emekcan.aras@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Emekcan Aras <Emekcan.Aras@arm.com>

Adding Corstone500 devicetree and its bindings.

Emekcan Aras (2):
  arm64: dts: Add Arm corstone500 platform support
  dt-bindings: Add Arm corstone500 platform

 .../bindings/arm/arm,corstone500.yaml         |  30 +++
 arch/arm/boot/dts/corstone500.dts             | 181 ++++++++++++++++++
 2 files changed, 211 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone500.yaml
 create mode 100644 arch/arm/boot/dts/corstone500.dts

-- 
2.25.1

