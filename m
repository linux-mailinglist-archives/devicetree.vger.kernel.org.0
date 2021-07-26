Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B3453D5424
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 09:28:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232026AbhGZGck (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 02:32:40 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:43359 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232065AbhGZGcj (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Jul 2021 02:32:39 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id DFD7F5C00E9;
        Mon, 26 Jul 2021 03:13:08 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Mon, 26 Jul 2021 03:13:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=9IB5YC/emfzmo
        8kaHVyvP5nfZ0TMPOR+J27Paj28iVg=; b=S9RR/lgo6ZlnocBVKViRbpV7bTOa3
        ncccI/sEpIRGi2zQoDNylLjahC/YtnyVC9a1Ap2xioBCgRDTCEEde2ngkNxc2BPQ
        ymQwtVdjx61EjKrqcBuscQSPkHjBVwR17Vby8fAwt9QMfkl7DxcK3VGCybUST2PD
        NLasley0seKKwVsSLlRadexa593CovoC4/Av5ZV35dSIlyJ/dBWLdy7AnLv6TmSe
        DfoHXlKtbXrorAl5gdcf3AdCrIG+xnNOSVA7H7Xcb5xuGyyFxgkR5wQRe3DET6bU
        lxD/1uxog2e5zlZyR9zXVMFuN9m4ril1+DyR6mYHV7hnvPWWxFjKVFoLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=9IB5YC/emfzmo8kaHVyvP5nfZ0TMPOR+J27Paj28iVg=; b=dGsk9eY0
        xmlkNQh7CG9jP3BBFRuVCl7cp1mZpkjP6QyakDXnFr91go/KMLNpRjqX+QrSWn08
        vvrEwC59ueXTZaKJO6sFJdCr3WaouCEkUMod7FHaCkEXqQh4Jk7sHwYAHFKtMucx
        gy9DxJ3XdXYl7ZMC+kAL8UIfqRdG2BA3SfHX1nSVsxlrIZrwyFe3ycRtkI9OnoQZ
        zx1dgfSxvyaWb1uE1iRQkiriZkYj04gFDmcy/VCtaG4ebukTg6xuF+1tEyx4yo23
        6rFQAkGwTGSsG/FwsXEvWM0y2vgJWfdplm1BhovRHIniQNex4oMmc9qWSs54vvEN
        HrzIIqX1M4Ko5Q==
X-ME-Sender: <xms:hGD-YGMIL364vrNQuqtkRP8y4pYf5d4_TS--VIvLOmVEdllegXwunQ>
    <xme:hGD-YE-gydjDKlS51DUcJDzLI_3cm8Rly1OPQbefPw5mfCiDr3B_zc7FfoDXX8eiv
    NvDV7J5SvpzQf5QutA>
X-ME-Received: <xmr:hGD-YNSTFLayfmu5iM6CskCfVy2SmtCBb0ZIXO_ZaY6Za835o9YNYBB_NUaxqVfzUV4z9h5ncmb1piNEtJlpRHZi6l6f0sY5H95PxF28g-7oFmka-xm9bkUQ_Hz8bnc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrgeeggdduuddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghthhgv
    ficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecugg
    ftrfgrthhtvghrnhepkeelveetledvudehtefgvdefleeukeffgeegteehtdetleejieev
    vdfgheejjeehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:hGD-YGvV5mezsSfBF6e8uhiGRwMB0BILBa5EaEaVtea7a_0bk847sg>
    <xmx:hGD-YOfE7mUcAN-7ZIni-T21rjqa1lZ5Cy_DNwD5MQrrGpwwHmHI0Q>
    <xmx:hGD-YK38a0NsqMUcGDNxDMKWi4X5tJANl4GSxnXNd8y9-mDAaFYtQg>
    <xmx:hGD-YLE6lYEVs2KwxOCBxHtGDL9Q4XbWNI6dxki0YQCj6do7G5i0Yw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 26 Jul 2021 03:13:06 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v2 4/5] dt-bindings: arm: fsl: Add Traverse Ten64 (LS1088A) board
Date:   Mon, 26 Jul 2021 07:12:15 +0000
Message-Id: <20210726071216.22711-5-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210726071216.22711-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210726071216.22711-1-matt@traverse.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the compatible for the Ten64 board which will
be included as freescale/fsl-ls1088a-ten64.dtb in arm64.

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1c827c1954dc..f92919a020e3 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -973,6 +973,12 @@ properties:
               - fsl,s32v234-evb           # S32V234-EVB2 Customer Evaluation Board
           - const: fsl,s32v234
 
+      - description: Traverse LS1088A bassed Boards
+        items:
+          - enum:
+              - traverse,ten64            # Ten64 Networking Appliance / Board
+          - const: fsl,ls1088a
+
 additionalProperties: true
 
 ...
-- 
2.30.1

