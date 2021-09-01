Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F70C3FD674
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243495AbhIAJU1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:27 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:33471 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243536AbhIAJUW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:22 -0400
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailnew.nyi.internal (Postfix) with ESMTP id 6665C580B26;
        Wed,  1 Sep 2021 05:19:26 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 01 Sep 2021 05:19:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=kChwgH7u3z2E5
        tTqVK/r7JAXC8KOtIc4AjwI8ZPHg0Y=; b=BRYCVaSogG+rESrPwu2mJTQN5qbZP
        7KjbIC+HcZ6nLuqIsbd8045GRAjoGCXBFJt4pDBS/pwjx50WaMywS2iqDHazngxQ
        43+UFUxW1LMKOGV9tsERghR5OVlkj//Jid4MSp/T7e6I5DzVXVTiMDH+v0WhLXl2
        eFE2GeQE8RgwGtXwRKa2m5zxVWF0UO+zB9lS28L5hcb6BmhU+ngpj5HSyAt6WSJ1
        tRrHVyh0GcDW2TegHi1SpJ3lc+jpbpTuCudrmO/79pFcZ5nOjLA/HTt3B0DUD9Qk
        gkUEpZyI6ZwXuufLvsAeS5WowCNvjuRuy0HHbj6J59PMEE7e3lbRfuk+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=kChwgH7u3z2E5tTqVK/r7JAXC8KOtIc4AjwI8ZPHg0Y=; b=Vr5lDfSK
        xZEwQ0BB55K/X1RLmo6vACqYTK2uhJ6o3Vt2gW0ilvBNQdys/JJ6rsxF4urW4UW1
        vPDiobSUzMbWzXaKGHmKx27HpnM9ey4wXGn3BFRWjIW4bAu6HPpIAspw1ZgVP20D
        fMdtRXBmKn+LHmZuMSu4cqq7UiYPAKxvA2XVZv67sqCXQTMDAXOoAA1QQWmlf94c
        kvIVRLk/HEpPK4rZZhGSQ65HbIqXDtzVCfhAtZZcwJQjpAzQOWsaehHht5AHQ2cf
        jfk07IQsACT0gj4q6ogmSjmaD6KQbl9w0jCkYdNrgmoFAateuTmgfsxk7jFyNozd
        RL4Ep+E9IpOMNA==
X-ME-Sender: <xms:nkUvYV5Xm40G_6lNc9gkszABkhLF6CFTukoDEAfp1w590S-mwf_tiQ>
    <xme:nkUvYS7DQDJJDRyrvGbPaIfM_2FNkqdjty9msZyaWcxtmjyJ46dqzg6AmEqqrQ9HN
    ol43dxF_nX-Xe4By6k>
X-ME-Received: <xmr:nkUvYcfGtl7ffEU3biu4dKTT6FB-avLliHUhT1Evpv0dDl6LRKKKfJLcObdJsiZEDagDHnIlAlhXu7OSDtFyJRjAfvIkRjt6qLvQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:nkUvYeLYwKA_NeXXLPZDXRaxMJx9tnOlpE5skRb1E4CRWn0GAcwdVA>
    <xmx:nkUvYZIok90tkCrKEUFXSCUqm_IzpoV2FJevtJTmkMtKo6crVRLyUw>
    <xmx:nkUvYXwOmhE7tNW8s65bp6ZyEur7Xn_oV6u1Suy_-wRr2zAD5-kZWw>
    <xmx:nkUvYWADPRuoBe3FsHSlvwbRVnWd1gRxkIZJNWFleAYk1Fmx-i7EUg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:25 -0400 (EDT)
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
Subject: [PATCH v2 16/52] dt-bindings: display: aa121td01: Remove unused vcc-supply
Date:   Wed,  1 Sep 2021 11:18:16 +0200
Message-Id: <20210901091852.479202-17-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Mitsubishi AA121TD01 Device Tree Binding was requiring a vcc-supply
property. However, neither the existing device trees using that binding,
nor the driver were actually using that property which is also redundant
with power-supply. Let's just drop it.

Cc: dri-devel@lists.freedesktop.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../bindings/display/panel/mitsubishi,aa121td01.yaml         | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/mitsubishi,aa121td01.yaml b/Documentation/devicetree/bindings/display/panel/mitsubishi,aa121td01.yaml
index 977c50a85b67..b0f1d4eff12d 100644
--- a/Documentation/devicetree/bindings/display/panel/mitsubishi,aa121td01.yaml
+++ b/Documentation/devicetree/bindings/display/panel/mitsubishi,aa121td01.yaml
@@ -19,9 +19,6 @@ properties:
       - const: mitsubishi,aa121td01
       - {} # panel-lvds, but not listed here to avoid false select
 
-  vcc-supply:
-    description: Reference to the regulator powering the panel VCC pins.
-
   data-mapping:
     const: jeida-24
 
@@ -38,13 +35,11 @@ additionalProperties: false
 
 required:
   - compatible
-  - vcc-supply
 
 examples:
   - |+
     panel {
       compatible = "mitsubishi,aa121td01", "panel-lvds";
-      vcc-supply = <&vcc_3v3>;
 
       width-mm = <261>;
       height-mm = <163>;
-- 
2.31.1

