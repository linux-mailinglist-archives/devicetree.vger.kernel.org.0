Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1397F2F6032
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727330AbhANLgk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:36:40 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:35335 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728757AbhANLge (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:36:34 -0500
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.west.internal (Postfix) with ESMTP id 0E2A91603;
        Thu, 14 Jan 2021 06:35:47 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Thu, 14 Jan 2021 06:35:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=8JSls+ZrE2qxs
        r/AoQacHX4PPuJVzcAIG/Gq9qSlVdc=; b=N83Go+6mMp12B9eMy/8WDEHnJEhMw
        UMbeqpgQseHIKyYgAy8uYkhS9TXzuiBMlHtPW1W1OuBn6I203AJfeycrXuFN00cY
        moFs4e9nNlBVux0T5W9okJD4XdZRNHmHX6fXK+EthtIhDq4B1CCUXNmAkxsBnbKb
        KDpNQXzLa9iHjqfWh+fhhpIpS/RC2htL/ZTKjUUBONcBGlLqJ6QVrXdjfb/vx8sq
        XUwJqBVVJaKakq8KUasakfxRIHQBUfyacgtTbtKf6P89bXEKdztSLpG8XBwLbnYz
        LPq009wqQpLFwNNvEg/RrVz2psXu5E6zwjWUTXtU1NUr1vRWkOVIe5VIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=8JSls+ZrE2qxsr/AoQacHX4PPuJVzcAIG/Gq9qSlVdc=; b=RBbgreLj
        HF/TY/LCaWq+fCQXb26BDXiGpoGzuGSBT1gH6+XEe26cTjg3Bwtt0vV+ds3ocCFp
        7VALsm/gP8sjFTYqMYI4xolZWpmqF3v2PD9i5fGKKLPUsxda7PhJbHY4T9L7aejX
        99nfDgpRxJ01VxvapESYcVOpLtZNIrShW6ta3vsiA2+EPHMRO9E/27KSvv23vHHR
        rZY2KG+kSuP4YgUqHd72tPNciGTrE6McBDFSjQq3OUXBBHfXq7o3A5qVPD00ndvN
        eOm3erio53lMD4IVVAaSnqkKnmwXil/l7/N4uZNz8LITho1IZ4GK20vpWtrt/kKl
        UmSoQ9bhAyBChA==
X-ME-Sender: <xms:kywAYNeYzbl5tLSLyxVxZY8y5Nq3Rsqyczer6nwtwVUPPQYqDw3QGw>
    <xme:kywAYPgop8macANvjkdws8TnHtyL62amV-v48gS3D6Be7W3NhXcooOYL8kwpJHoTv
    3sn1o7YDAQpn6G54og>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:kywAYFr0L7scRXU8Yc0ibuNZEvNydkmS3mhTmFyCw0ZJw43s92exIA>
    <xmx:kywAYPHdvcnh2f6WClz4DA-BLpGE1QmsT63C5I3qEAl9KjElnFzcog>
    <xmx:kywAYPkN6Ed0-xvQ1gG4u0N27G7AuOY1cOfsef1TQ5gwTd5ywzjkGA>
    <xmx:kywAYFPbhSt_OMymqownzUjXFA4JpUfCSl5ntZdE10YAasNq3WZ6tg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 0E362108005B;
        Thu, 14 Jan 2021 06:35:46 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH 04/19] dt-bindings: bridge: simple: Add corpro,gm7123 compatible
Date:   Thu, 14 Jan 2021 12:35:23 +0100
Message-Id: <20210114113538.1233933-4-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The corpro,gm7123 was in use in a DT but was never properly documented,
let's add it.

Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/display/bridge/simple-bridge.yaml     | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index 64e8a1c24b40..97ca07b56cbc 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -22,6 +22,10 @@ properties:
               - ti,ths8134a
               - ti,ths8134b
           - const: ti,ths8134
+      - items:
+          - const: corpro,gm7123
+          - const: adi,adv7123
+          - const: dumb-vga-dac
       - enum:
           - adi,adv7123
           - dumb-vga-dac
-- 
2.29.2

