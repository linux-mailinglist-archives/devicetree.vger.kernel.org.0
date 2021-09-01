Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58AF33FD671
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243501AbhIAJUX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:23 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:46885 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243511AbhIAJUR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:17 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 24641580B22;
        Wed,  1 Sep 2021 05:19:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:19:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=We/hRhEiWEOUh
        X2G7H8++UqKKLq0/p9eIkqpBGPzUcc=; b=NtN2ljQNGFdUzElqhyCWZkRCupNZL
        FvsEaTc1RrjRTOwqDtMR0Qqnihj9u5mzgW2OBoT6YUtjiyIkbF1Mrbyoy783CIE0
        DFjcPzGRPrc9ZLA1q+HbhNL+I6Mbb+6nk4s9YnnD77Tgl5GjFduZ7GN8DhPun5EL
        WYXY6Fi5i0PnwsWCjW5BBduQYqVVJmYdKMnA9ChRMMLrpVesJhhdKV/uTnlxY2EG
        /c3enRVFt3C1IZD++EB5aMMWfdcmIqHH9rgPRkpn0lgCXAZGZA1yvGhS/CJ9Ofi8
        dwvkH697vRL48seQcZR6IlFWITTEZ4KlWGjOxvy5yxCk/YKApDg3tW6YQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=We/hRhEiWEOUhX2G7H8++UqKKLq0/p9eIkqpBGPzUcc=; b=ZqcTYtXG
        BJBzkU4GxKqqDeYX3KRkO2O7nMup7p0fyf1DUBXoxkPG4aB60/Xm972+3GH3nMLy
        i2TA3YFZL2tuwAJskX6v0mBzJUKLtud6wZhatpmEi6A2OTUyFtNgls44Cp3fnI96
        ruE4VI7rVoZiFSehQ6feR2xf9Q5im/c3ejmI7hMBD5uEljsRmohnId0NHPR3q6zP
        O4jnt0LadpgfBqbdUAjGwB9vu7+d6n4WSBvoyQX7n36wRmLUmfK7afJngqsFjNdM
        ul37An0wuv3rl3ZUDFH4HGCRBVxKpqP9d8KBnpqRGf+dbN8dPIoL4Z4wneRQ0PoR
        HIDb0QOIDpmbEw==
X-ME-Sender: <xms:mUUvYRCESonRMe7PcO-76QAXTWqywewUICGSQfdrKYRRvLyR4839Ow>
    <xme:mUUvYfi2Fk7Jd2b4ud9fUVq_F7uqOWmEwtKxTZ-VYDyGkHjvgTA4SMCbMezAAep1x
    7h1X2F_ANSoeK-_zZo>
X-ME-Received: <xmr:mUUvYckPD1z5MRI-NNA8ICcD_IEH4kT5W29Nb6i01dSq0z0bUAh5ymHJqsRCzcnvOoUpdEEtQECzOUOl_w38u-Sw6tgTeorNKain>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:mUUvYby6x9qZZWh_rl1JfwkphQ2HYQdVEFwsbcDQAu8Mp6ZJRIHWPg>
    <xmx:mUUvYWQuYwIyHMurUZe-0ETNiO_fBjCym1_Qjx46mVSjfd0qIz-vUw>
    <xmx:mUUvYeY0_xwXbPKQCqyvDC4-NUCcXd45Wj0hLX54UvPUOdA1JFKgow>
    <xmx:mUUvYbIhQndYh8q4VzkIXfuTGV6sPaZopViKDtKcNcI3elxNIR1Tgg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:20 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v2 13/52] dt-bindings: display: aa104xd12: Remove unused vcc-supply
Date:   Wed,  1 Sep 2021 11:18:13 +0200
Message-Id: <20210901091852.479202-14-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Mitsubishi AA140XD12 Device Tree Binding was requiring a vcc-supply
property. However, neither the existing device trees using that binding,
nor the driver were actually using that property which is also redundant
with power-supply. Let's just drop it.

Cc: dri-devel@lists.freedesktop.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../bindings/display/panel/mitsubishi,aa104xd12.yaml         | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/mitsubishi,aa104xd12.yaml b/Documentation/devicetree/bindings/display/panel/mitsubishi,aa104xd12.yaml
index b5e7ee230fa6..b595edd58bbb 100644
--- a/Documentation/devicetree/bindings/display/panel/mitsubishi,aa104xd12.yaml
+++ b/Documentation/devicetree/bindings/display/panel/mitsubishi,aa104xd12.yaml
@@ -19,9 +19,6 @@ properties:
       - const: mitsubishi,aa104xd12
       - {} # panel-lvds, but not listed here to avoid false select
 
-  vcc-supply:
-    description: Reference to the regulator powering the panel VCC pins.
-
   data-mapping:
     const: jeida-24
 
@@ -38,14 +35,12 @@ additionalProperties: false
 
 required:
   - compatible
-  - vcc-supply
 
 examples:
   - |+
 
     panel {
       compatible = "mitsubishi,aa104xd12", "panel-lvds";
-      vcc-supply = <&vcc_3v3>;
 
       width-mm = <210>;
       height-mm = <158>;
-- 
2.31.1

