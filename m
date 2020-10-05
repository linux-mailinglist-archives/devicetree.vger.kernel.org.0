Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B571283952
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 17:15:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726458AbgJEPPw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 11:15:52 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:34429 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725970AbgJEPPv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 11:15:51 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 9D630580167;
        Mon,  5 Oct 2020 11:15:50 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 05 Oct 2020 11:15:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=YUl8YEHShXmJC
        0LRyXCCThIZxlDv2ekCGyxR4T4zF5U=; b=fS7fXeksMZUSYGUc+DLqYK2ewyZMG
        OD1EtuIqTVN59+QNFgdUs5wUaTxlt71vylTsdIOsYsPRHakNy+ckxyltQhDw7qNi
        gkhWbctFDr7WlkFhysW5KOlmQffQ4EllVPn+32vBOTAjtO4gTjD4VZs500kKUzBr
        Xt5akSK70RQJ8DpaXPmrba4A+i9jE3PCgjbgGTDWDdL7GQyYciiEAs5+0IXJUIp4
        rwzUPsBNW7gOY2cwXAmRLUdW0A13dvQPm1SXA3bGKMjv1HQyacm97P19UpnH5e02
        TwUyrfqL+UQ5QFM5CXWPnzMPRkOucD8MD72qn/OnMb17qGFDRNRkjitpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=YUl8YEHShXmJC0LRyXCCThIZxlDv2ekCGyxR4T4zF5U=; b=EjzRAUkT
        62BzMXpQbU+LmKoqd0cC8pxrpwFZxVQm7MmGzmZ/TKsS6oxQfe2JiR2QihxreuDg
        QcrnT+rs1NV7+1V/LmEg3mDPu0DkPY9wpLyhXuV9PlZlJx2/ceNg8B82y6RCXNk+
        eDU/62tkJEiTtMO8KTPYq3pk1tJJlvV4CPsU6+NEs1wUYVT+ylt+A+YC4C/pY+Dd
        /R6TJw+IIOSsa6QpvhdQYs4p4cjPrE6C7DIG1sabJ8r6bZOHn/YUyG70RECfnR5N
        Rv5EKPxjW8Z2oYeLA0II6wD7R6KXHZJJc4C9C2uN2G4SHQ0McyZNQYESAhXPEUMR
        fK3Bu9ywPW7Yiw==
X-ME-Sender: <xms:pTh7X24BSNYaaD421xtWgVcmIbiAKhOh7Zo-iBaSWP79w8cXNVuNoA>
    <xme:pTh7X_6LT-vuejWsuiI0TuAmsIIS52uDk1DLy6Ys66UgiQ3-pjNEMfTTKOi0mgl4D
    nGnJyuFV9VLKgROaV8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrgedvgdekjecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:pTh7X1cnLfLrJVrTR5myM_r-1q--3X0VERiRUkkjXkIyZNkLqT5ymw>
    <xmx:pTh7XzJWqalr3Y0fwhf8Xum0p5ECwUdNcjvia7NKOQH-Itx-UnKMNw>
    <xmx:pTh7X6Jj5m5yAOnCCnt0S0g6ZAS7YbOhMhQwU6SWF6UeaBEKhi0GQQ>
    <xmx:pjh7X3AiFWsBgEHX5L9KiByCUILRDb6FMwqC0fiFHqY-1O7EfWX4Sw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 756BC328005D;
        Mon,  5 Oct 2020 11:15:49 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        dri-devel@lists.freedesktop.org
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND v3 2/6] dt-bindings: display: sun4i: Add LVDS Dual-Link property
Date:   Mon,  5 Oct 2020 17:15:40 +0200
Message-Id: <2bc93c7c1d3121730239a01dda9c30dcf4e353b0.1601910923.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.6cdb798a6b393c8faa9c1297bbdfb8db81238141.1601910923.git-series.maxime@cerno.tech>
References: <cover.6cdb798a6b393c8faa9c1297bbdfb8db81238141.1601910923.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Allwinner SoCs with two TCONs and LVDS output can use both to drive an
LVDS dual-link. Add a new property to express that link between these two
TCONs.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
index e5344c4ae226..ce407f5466a5 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
@@ -115,6 +115,12 @@ properties:
         - const: edp
         - const: lvds
 
+  allwinner,lvds-companion:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: >
+      Phandle to the other TCON in the system used to drive a dual-link LVDS
+      output.
+
   ports:
     type: object
     description: |
-- 
git-series 0.9.1
