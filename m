Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A06D3E52FC
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 07:39:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236481AbhHJFkI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 01:40:08 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:36563 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236443AbhHJFkI (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Aug 2021 01:40:08 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 4C0055C012F;
        Tue, 10 Aug 2021 01:39:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 10 Aug 2021 01:39:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=LVcMA2VVBFzfL
        a51aSv5EJr/GqtkynGx8OcDqRG2wJA=; b=SnIGLLfgARrhFs6k8Yb6PGLjInmCl
        sVMXvYhSY3o505tKcWKjjJvDF0Fu09k+8leL+Mt9mdtIlk3ml8XSTFbA7fJGuVmW
        ykKbogTzL1mfXdWqlqyzdteSS9SD9ojSVHpNG3ZdYtFfL5RwfUxv8/HUQSapO03d
        HIvCuF5nYjR6uULn+Yhp7XYVWJ6a+Xng+Nhw9KHlcsiI1/IHmm3ml+jwKT+XSZnX
        5JsBTo6isE8Ge03lji3oM85QFT7Ha2FSZ5dfwA18WxysHq5WaU517ezAkum8fts5
        Ugt0Nry8gq13K8CNY0YDlDa0O1Tk/KsISWh2vFZxQUBwFmPkLiwJc6fgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=LVcMA2VVBFzfLa51aSv5EJr/GqtkynGx8OcDqRG2wJA=; b=OauVGpMr
        t9taCvJQ24/J3bBtoVrQ1T1UCoKq1UlxqePq7WdPSdMRBQwVuLRHKk3bvoY8K1II
        U2k2NT/t00FOB9HjYePyumKbZFM/IvXTPs2rHmpwccK37wWfMHlrfwLZyIM6R1dH
        3XT89JRq0yOH/c4pLXUN7R4XCc63U8iJ0bWCqT+z1bdc2YnG2u0iSap/mDnGTFDu
        brUYxhDXDeXRkSaDgw4XZV8jHZRRk/YAI/Ixy1ofO0hvpPiVUGFkm88YTjhVY4G1
        fsfjIr2UEFfAVptBTwXDHH/lBvNsJ87mCPI8wy0SLDyPwrkSEAYXxTqqsmKLNXHv
        muwPdl1d1PE3vw==
X-ME-Sender: <xms:IhESYefUKS3ue3DfP6yaNQGS6lTKXoNEFaeKSHTZ-2N3AsqB--S4Sw>
    <xme:IhESYYNMAa-vjIlmTIX05YGFx8wy9RmofY4VEyPruyO8CWwCxLrdxHVHu9QJS7sNW
    MP9GtSPWV35SRvwcZ8>
X-ME-Received: <xmr:IhESYfidb8hCAoi5QtCTqrN_F5-tZIrtCgwGHOsFenGtmNaATkQvr7ocbRZgOYSBDS3dg35FwKK49ENostaTY_lCfBbYoB5SRElS7wdkbzZ0bKXo5Hctxu2v4xCICRc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrjeekgdellecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpeekleevteelvdduheetgfdvfeelueekffeggeethedtteeljeeivedv
    gfehjeejheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
X-ME-Proxy: <xmx:IhESYb9-9pSJSus3EPgEY-O4HRzLmgV1j46dU-wNyOfcmfH2JGD-wQ>
    <xmx:IhESYatVK5nKH4Ysds_S7zOdyD61xjP7xjEy553e2h7oSRvwAeaQWQ>
    <xmx:IhESYSG49erBg0BNOvbFc-R7Caxf_ld5ZCEXOC2HRtUmRdB44xazOA>
    <xmx:IhESYehBYo8SGsxTsFfhDDE7Nfuli9bz3z2_q94-L9etAVOd_k97-Q>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 10 Aug 2021 01:39:43 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 4/5] dt-bindings: arm: fsl: Add Traverse Ten64 (LS1088A) board
Date:   Tue, 10 Aug 2021 05:38:27 +0000
Message-Id: <20210810053828.4240-5-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210810053828.4240-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210810053828.4240-1-matt@traverse.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the compatible for the Ten64 board which will
be included as freescale/fsl-ls1088a-ten64.dtb in arm64.

Signed-off-by: Mathew McBride <matt@traverse.com.au>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1c827c1954dc..20537be8e803 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -973,6 +973,12 @@ properties:
               - fsl,s32v234-evb           # S32V234-EVB2 Customer Evaluation Board
           - const: fsl,s32v234
 
+      - description: Traverse LS1088A based Boards
+        items:
+          - enum:
+              - traverse,ten64            # Ten64 Networking Appliance / Board
+          - const: fsl,ls1088a
+
 additionalProperties: true
 
 ...
-- 
2.30.1

