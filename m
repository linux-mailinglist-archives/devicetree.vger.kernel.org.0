Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69AD86F2EE2
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 08:48:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230114AbjEAGsc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 02:48:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229737AbjEAGsb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 02:48:31 -0400
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D6C810E2
        for <devicetree@vger.kernel.org>; Sun, 30 Apr 2023 23:48:29 -0700 (PDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.west.internal (Postfix) with ESMTP id 8AC4A320092A;
        Mon,  1 May 2023 02:48:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Mon, 01 May 2023 02:48:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=cc:cc:content-transfer-encoding:content-type:date:date:from
        :from:in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; t=1682923708; x=
        1683010108; bh=cM7c+KK5/4OqDNWkM+kbeKmq++YIRo6YbzdI7eqZb8E=; b=P
        zXgjNuPvis1d8bUU5ea0zucX2ngEG4KoAvQovvU+RysmaegeBfY9hMYgDwygWeXp
        ZeaQKVJdAUzLz6RKqVud0qbypYQ0wLKQRGWKvIBrra/Yoa0Vx/jgIxm8/ktX2qC0
        PnWvIfLMnqKwj7WwvTLG0PrdNwdI83QPx8UdWcacV8HGl4o2ZNDSnyxmOdfexTXl
        mE7l0qtqs2t2iy+SEedAhlJl3R2JnxjnR6TTyFpvryAb0chlmtRcEfWLRMziPSbx
        EzEJh16i1TD0Ks/Yc5T1DvS4olgprS7kUrJfMkiNWxngCZBmzCkns/V40Mt6uN1Z
        TVX+1j1X9idHDcUp41exQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1682923708; x=
        1683010108; bh=cM7c+KK5/4OqDNWkM+kbeKmq++YIRo6YbzdI7eqZb8E=; b=V
        IGBIKwBOZc5ozPF1ljwCObczRVq4RYHSkZNj+ErZNvdwgKzw9UlL8N41mKCtMwgs
        CReRMgAXwXo9SuXpI24J6f4B1iMnb20nycH0dKyu+IX/QvGj7yerQkyvyMHzs16L
        gWcyjcxJi+v/0RAfh53QAavYBwDfIdh+dn0AhpRplJsw94UwVasGqqZ9j1e1kciC
        JQnQ/ifc7ar0zCVfOkn6uSQ8s0Hm9vvMwIfNPa1OWAERgKuwe9UtvWNc/ETLdn1M
        N82txG9c0g+RBgp/9RgWyDorFSCIPn+BTUIC/+UI5icn/VuVUOArHunaqMKbPaqe
        +Iaspw1/xigoJUWBmqS3A==
X-ME-Sender: <xms:vGBPZBDVzHriQ5MpLn1Xxsfc2i706krfyQAcfoScTpig5THq-HGJkw>
    <xme:vGBPZPgzWeP_gikhw_2EsrTgzgildHSR9E4GnCtuBiaF3QEElJ8vGtXjmi2X0Y_YG
    mSl-QPHI1GEyDuOhyk>
X-ME-Received: <xmr:vGBPZMlIrOF9GTrjWTdB3qJ574iRZiAi3hJkVwJez7I4SXFBSQ-t3A_mzESpyjh9BNZOIMJONPIAkYDRTPdwctHdtSx0L7Z5OoDtonq49Tow3-qkYSWttki6CjcMQzE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedvfedgudduhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforght
    hhgvficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqne
    cuggftrfgrthhtvghrnhephfffueehtedukeevjedvieevffehjeeiteehhfefkeehgeff
    leefleejudekgfevnecuffhomhgrihhnpehtrhgrvhgvrhhsvgdrtghomhdrrghunecuve
    hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhtseht
    rhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:vGBPZLz_7osWNaSXL8YQWcvDf7o4JzKePQitj1Zsfbq8-l34XP_iNg>
    <xmx:vGBPZGSPGVRPsnrfEH09ORXLEMq6rJn6cm8fDmKQSP0YWx3K6HQ27Q>
    <xmx:vGBPZOaBzC44ik-9cNt9U2m8mvv584E6xOgPnxI_LtxmvxDWOk5rPg>
    <xmx:vGBPZDIkPwNNVDj1yY5SLJmFtOsjrCKS1i64s-zbNbeS5_iOVckIWw>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 May 2023 02:48:25 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH 1/4] dt-bindings: trivial-devices: add traverse,ten64-controller
Date:   Mon,  1 May 2023 06:47:24 +0000
Message-Id: <20230501064727.8921-2-matt@traverse.com.au>
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

Add the Ten64 family board controller[1] to the trivial devices list.

Signed-off-by: Mathew McBride <matt@traverse.com.au>

[1] - https://ten64doc.traverse.com.au/hardware/microcontroller/
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 246863a9bc7e..638e16fc9f71 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -397,6 +397,8 @@ properties:
           - ti,tps544b25
           - ti,tps544c20
           - ti,tps544c25
+            # Board controller for Ten64 family mainboards
+          - traverse,ten64-controller
             # Winbond/Nuvoton H/W Monitor
           - winbond,w83793
             # Vicor Corporation Digital Supervisor
-- 
2.30.1

