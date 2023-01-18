Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A04D672356
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 17:31:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230239AbjARQby (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 11:31:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230262AbjARQbc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 11:31:32 -0500
X-Greylist: delayed 62 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 18 Jan 2023 08:29:27 PST
Received: from mta-65-225.siemens.flowmailer.net (mta-65-225.siemens.flowmailer.net [185.136.65.225])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5969847EFF
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 08:29:26 -0800 (PST)
Received: by mta-65-225.siemens.flowmailer.net with ESMTPSA id 20230118162822a9c3cf875d8ce599f3
        for <devicetree@vger.kernel.org>;
        Wed, 18 Jan 2023 17:28:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=zxSi8dKwYZiywvsY7MyZLb0G86/MTfbrhUOZomLJW5c=;
 b=KMKWchVJaBZaASkVcjXwTU1SyMxbsL2i0Rg43YguzFo+0VwQNYsIfLQIHVdZkwhB+EsmXI
 i1M++LniE8mT0xKh/M+G5hJw24ZCHN4ibjXYeSlmSVoHocNQw8jQ7T8rIkh/8ILdV6kYH7Zv
 YMWDAjuMz3QJ9AVni7Sap5ZPiSDcg=;
From:   Jan Kiszka <jan.kiszka@siemens.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Bao Cheng Su <baocheng.su@siemens.com>,
        Chao Zeng <chao.zeng@siemens.com>
Subject: [PATCH 0/3] arm64: dts: Add IOT2050 M.2 board, describe QSPI layout
Date:   Wed, 18 Jan 2023 17:28:17 +0100
Message-Id: <cover.1674059300.git.jan.kiszka@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the devices tree for a new variant of the IOT2050 which comes
with two M.2 slots and is otherwise almost equivalent to the existing
Advanced PG2 variant (USB3 is available via M.2 now).

Furthermore, the device tree of the whole device series is extended to
also hold the QSPI layout.

Jan

Jan Kiszka (2):
  arm64: dts: ti: iot2050: Add layout of OSPI flash
  dt-bindings: arm: ti: Add binding for Siemens IOT2050 M.2 variant

chao zeng (1):
  arm64: dts: ti: iot2050: Add support for M.2 variant

 .../devicetree/bindings/arm/ti/k3.yaml        |   1 +
 arch/arm64/boot/dts/ti/Makefile               |   3 +
 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   |  46 +++++++
 .../dts/ti/k3-am6548-iot2050-advanced-m2.dts  | 122 ++++++++++++++++++
 4 files changed, 172 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts

-- 
2.35.3

