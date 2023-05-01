Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4C606F2EE9
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 08:48:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232085AbjEAGsp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 02:48:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232179AbjEAGsn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 02:48:43 -0400
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 763AE10EF
        for <devicetree@vger.kernel.org>; Sun, 30 Apr 2023 23:48:41 -0700 (PDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 77712320091F;
        Mon,  1 May 2023 02:48:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Mon, 01 May 2023 02:48:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=cc:cc:content-transfer-encoding:content-type:date:date:from
        :from:in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; t=1682923720; x=
        1683010120; bh=nLsZKqKlMOGNfwENjFvYWVDiB+CP7oajAOFcenrIemk=; b=P
        DIGNbrYmedMdN0viQqlJufvGN/JDzCeERnqKffuT/yPDOE2D0CQfMVsHWFExT6yP
        3vJlHJmnDs1IY75dBAoRxsTtQSD9Lsiu3pEAkjCItFPTV5PfcBM3SzNIysMa9HBO
        1I/tgDh77O92eM5a4KloHJ7wq2sfe+EUwGEswm45Ou1qU8kFq3uVw71EK/a3jOyb
        ndNpMPYp9ojzZ2SU9YXNchUO584w1qy5SWdO6R6OEdysCuQOiapQbjGF8UFqnGqm
        rKG6dnFhFkBjPgzECDP9+OqFpVJX0QB3owBNLwOn0oJ1pD5dob7M1MNAoNF9J2wR
        VJOemZIfMhKebzcpDzl4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1682923720; x=
        1683010120; bh=nLsZKqKlMOGNfwENjFvYWVDiB+CP7oajAOFcenrIemk=; b=U
        bU2iwwwSSlJfF0jIy6XVCuxzuYjfh6JrPEZ+OmcuJPY+DG+Dl4KFX/a6LwcSVrA/
        BAtGxNR5FdHaZYcvyyGBQUHjJebIM+6cs3bOxtuTASC0QgqeIsZca7qQ0lIMelOT
        KobsXlGRosP6HFFoAh1OymNVVsJL1Gy0c5AhDj3k8qvi5edkxQTHOEyd1YtSaLtz
        lxjgy7BMzD8xAd9Qn0OyWMtwzGx01ScAIIl/07wS8RSuz368yecgsqBveMRo7kd6
        cXjlzEYPfPE1Gpfl3yXLvruXQeX4NA6163nfZVCvrJOrAx6jXCLaAjsG50WQDGMV
        e3dTKHAWqLHt4tih/sHng==
X-ME-Sender: <xms:x2BPZMtVNA2d8VZmAOMxmLaoRalb_p4wCmAvLsuT6GMW5dUimrqtrQ>
    <xme:x2BPZJcFdw0tz3zoNGSSxgvyFt1cKufpawhNF5kI8YEwBkzi4z9v_ggawk4TNcmWo
    qWAGG2LcenRgdpgcMk>
X-ME-Received: <xmr:x2BPZHxjR7ssB8_Ut-G2ZtrDxRN5mmOljljzo2mD4-jyYIgGBabuqSOkl8eskHAUKYJuZ-ON8oaYB-dLTBLYSvJs_sWFQPCoY35LZBdNeHXoxKNyvrXjKZ3la29q38M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedvfedgudduhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforght
    hhgvficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqne
    cuggftrfgrthhtvghrnhepieeifeehieeiueeludefgfdtveefjeffteegvdevudffffel
    heejtdejgeelleegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:x2BPZPMv-mOXGnqjELVRLhF4tuh2qb_YqGnpc41LaTfFVmx1oLVSvw>
    <xmx:x2BPZM-A4oL-NfYZUGbSVyYB9CsbDT6aiQ-qPeau6Spn-2hYsm_p3g>
    <xmx:x2BPZHVu5fv2dP5pM9_gdfYuzr2tiQoYennEe84z0_wNMhGXud90Vw>
    <xmx:yGBPZLkOmAhCmGjwoC4gDGcrxaftBPqxq_fcxffsy0LsjKG1CpTZLQ>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 May 2023 02:48:37 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH 4/4] arm64: dts: freescale: ten64: fix header typo and update copyright
Date:   Mon,  1 May 2023 06:47:27 +0000
Message-Id: <20230501064727.8921-5-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20230501064727.8921-1-matt@traverse.com.au>
References: <20230501064727.8921-1-matt@traverse.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Somehow, I managed to typo our company name in the U-Boot
and Linux kernel submissions.

Fix this and update the copyright year at the same time.

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
index 31404143010d..11d30a6c9ae7 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
@@ -1,9 +1,10 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 /*
- * Device Tree file for Travese Ten64 (LS1088) board
+ * Device Tree file for Traverse Technologies Ten64
+ * (LS1088A) board
  * Based on fsl-ls1088a-rdb.dts
  * Copyright 2017-2020 NXP
- * Copyright 2019-2021 Traverse Technologies
+ * Copyright 2019-2023 Traverse Technologies
  *
  * Author: Mathew McBride <matt@traverse.com.au>
  */
-- 
2.30.1

