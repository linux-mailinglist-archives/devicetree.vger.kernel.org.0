Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 196BE31EBD7
	for <lists+devicetree@lfdr.de>; Thu, 18 Feb 2021 16:53:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232592AbhBRPv7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Feb 2021 10:51:59 -0500
Received: from out2-smtp.messagingengine.com ([66.111.4.26]:44077 "EHLO
        out2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232409AbhBRP3k (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 18 Feb 2021 10:29:40 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id EFCBA5C0132;
        Thu, 18 Feb 2021 10:28:42 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 18 Feb 2021 10:28:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm2; bh=mxFRI+cWdk8WklSGGLFckdS73t
        sssa4vjL8IylY+Fk4=; b=k4jzGWj+gPIwpi6iVtt8z/UIwKkiUE8a3OuW321F4s
        K5pIXISIGHGikDS0sVSV+tzmYr9drxDEKbiMhUZEVBQnKh9AkPCD257ja4NL/uV4
        cC4cwPimFx89w3L0Sy22Kc6YRI/pqMAeyqi+j24l4G4bVO347InTcCMTpTAFgFJm
        JTGczO75NWHnzOXjgKg0mZ7Om6GDKQbEd0+PpV76jiryTgmFXxbj4wic+EOy4FOR
        qrXg0L+/itr929WknLO0ERYJdDLbUZMXAe9W1YYk0kgKyw2HO8cnuXX36BIR7iRG
        Yp3BiWVs36cmCL2VG5W9wFAA2WatAf2RmnMM8ZYIyl8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=mxFRI+cWdk8WklSGG
        LFckdS73tsssa4vjL8IylY+Fk4=; b=mCryC8hBzZW2P47UoriXxaCzDkaRVjSfz
        Pz0eax4APgN+IMRIzjAhfinfhWzdgHDcmevt+DcIgzzZfn6ozH4CUTZ6Cwf+E1CA
        GRjPSwgiciIS29Ms7udj0kav4h5yRZgJgcBM5qcvkBYxgVbhzIpYKYD6WS4++jRX
        GKBCkkCX3epQRqOHxjs8i86dkB18IH3bcWmo6+LJpO+7xbBjzo1vIWoGbQ+Zgl26
        ONyEujiDuwCGbcpGA+lfD4O2ng3fzk03QXba5FuObL/jKDRJim89i78Dwvb0pQYy
        c/bdSMXIlb0bPVnOzcYZ86P5KzWnnlkO134BMNvqwKjz/dTYfU16w==
X-ME-Sender: <xms:qYcuYN_OiUuv20vOeRPCdBF6KsrcfdkiYlF7PN5VEB3M_ZbYGpig8g>
    <xme:qYcuYBuLE1lsE5Qw2dtBMU9mmfnAPgVzrk80mchsToWF3-HDqIxFqXxRajPVrsBWV
    nlSDiOyOUaRSZfJtVg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeggdejgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
    dtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhho
    rdhtvggthheqnecuggftrfgrthhtvghrnhepjeffheduvddvvdelhfegleelfffgieejvd
    ehgfeijedtieeuteejteefueekjeegnecukfhppeeltddrkeelrdeikedrjeeinecuvehl
    uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvse
    gtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:qYcuYLDUkBotX9H8kIfBbEFqY9DK9qDfSCxCmdsx1Ud8hAuvwarPWQ>
    <xmx:qYcuYBcb5GULwONVHnE2GDjsN0yiwokTaZkbr3RtTuIYt5z4U4KE2g>
    <xmx:qYcuYCP37XlDjpuDYW6aYm3YsCBVP_2wDa3Yt4gu4z-eFu6RWDHtFw>
    <xmx:qocuYE3S5B2QRa011SIP8J50TkR3tAX5sNDjIkT2NOybYNed_SwMSg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 26B0E1080069;
        Thu, 18 Feb 2021 10:28:41 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH] dt-bindings: bcm2711-hdmi: Fix broken schema
Date:   Thu, 18 Feb 2021 16:28:37 +0100
Message-Id: <20210218152837.1080819-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For some reason, unevaluatedProperties doesn't work and
additionalProperties is required. Fix it by switching to
additionalProperties.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/display/brcm,bcm2711-hdmi.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
index 57324a5f0271..a1d5a32660e0 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
@@ -109,7 +109,7 @@ required:
   - resets
   - ddc
 
-unevaluatedProperties: false
+additionalProperties: false
 
 examples:
   - |
-- 
2.29.2

