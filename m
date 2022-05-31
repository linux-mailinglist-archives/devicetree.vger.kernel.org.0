Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A173539840
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 22:53:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235248AbiEaUxN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 16:53:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233858AbiEaUxM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 16:53:12 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A47019CF6C
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 13:53:10 -0700 (PDT)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 24VKqrdF081497;
        Tue, 31 May 2022 15:52:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1654030373;
        bh=9t0Xh/6Bnv3CdmAfFH3r8rh6bAUCDUqHzwfiKEDynfY=;
        h=From:To:CC:Subject:Date;
        b=k33ZftzLvOiukXWVN9ypnUerGfZmn0uUUjFIcj21axQKQ/KuUet0mAtaOEuKjtWyJ
         rfCykVnr8XdVlgepKKjMyZhNI73lfiv7jBXdwPQmBykE12YvJQ8ZCI/dfpEUNDcI/s
         qbvMpqKo0CaGtmktb7oVlfmnX1Q+How7ZtI8V6Kg=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 24VKqr7o003526
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 31 May 2022 15:52:53 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 31
 May 2022 15:52:53 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 31 May 2022 15:52:53 -0500
Received: from jti.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 24VKqknZ125178;
        Tue, 31 May 2022 15:52:48 -0500
From:   Georgi Vlaev <g-vlaev@ti.com>
To:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, Georgi Vlaev <g-vlaev@ti.com>
Subject: [PATCH 0/2] arm64: dts: ti: k3-am62: Add ePWM support
Date:   Tue, 31 May 2022 23:52:27 +0300
Message-ID: <20220531205229.198011-1-g-vlaev@ti.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series enables the ePWM support on the AM62 platform.
The ePWMs are enabled by default, but we have to disable them
for the AM625-SK board, as they are not in use.

Georgi Vlaev (2):
  arm64: dts: ti: k3-am62-main: Add epwm nodes
  arm64: dts: ti: k3-am625-sk: Add epwm nodes

 arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 33 ++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am625-sk.dts   | 12 +++++++++
 2 files changed, 45 insertions(+)


base-commit: e1cbc3b96a9974746b2a80c3a6c8a0f7eff7b1b5
-- 
2.30.2

