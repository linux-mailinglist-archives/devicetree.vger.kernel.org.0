Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B58C2F6031
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:39:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728788AbhANLgi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:36:38 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:52363 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727330AbhANLgc (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:36:32 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id 47FB7161B;
        Thu, 14 Jan 2021 06:35:46 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Thu, 14 Jan 2021 06:35:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=iQcM4M6IKQsUh
        jGfKpEZv3xUhLGyB/xGzKZDjSnpIac=; b=Bo1vgujktAKzpfTQqGwQzFKMLtQ8o
        F4F0GSAjkra/SybqDSjKohIjpCa3xK7b3AYHo1k8TWpPD/hMUgUPYizvECcvBfJ+
        EsWeWBf3tafgyVUVQ4V/TJUr2hHLoSfmZmFVQWChL36hYYOIKgJmntZEQ6gcQspv
        KGiIQITCSkSRzN/C3IWwMEOIgAXab+zDvzkudQPnyp03+UBfTDCDiqaxmUBWezB5
        usUPHznjHD1xcAxQVpy+GcDC3hmNiUJe7z/9s0R9GPUx7As9fem9GAPnUKrnxe0p
        sBVlN3UnJH54BFg95R9XVzXnoL/tf2iGD/h/CWStTRbDq6Av2fvmLjxDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=iQcM4M6IKQsUhjGfKpEZv3xUhLGyB/xGzKZDjSnpIac=; b=a64QXyiZ
        ldJhzB8rLdazWUFZl8wydE7NL7qXnu8N3Y2Yo328xWQnRxEFoWIh0arp1R4Ib5ur
        TfSoB1wbObtxWMu5EteLpUUKagUr4CaKi0oMQzEFZX3moODgskiZQacSUskTzZsR
        JWwqL+hPY8jBtk8rBLrF/VThB2N2xR6Jk6i+31/7JK0//6p44euZuKPRbN5/Apy8
        6TZzTU5WAgB+pSzN6wvcIJg+nAL2/PpSdbTHADQxbunwSmm+h+A5zH6MWr+Du4D7
        Wk9X8ZOKdee0u1Uz6XF92d0wzWld2xxw2f2TbJxYsNiTRvDrcLJgznBDZ3sxd/SS
        pIOmcmjZOia+xw==
X-ME-Sender: <xms:kSwAYFMiHHEbsFesHraNkV5Z5eRo5m8Yr3RYIOmSGIgeleyGHpTZ7w>
    <xme:kSwAYO0VgilA34SRi-ZSf9xOmQkWHiP6Rnwuo6l16mA3uaFJ5V9oDgnfUVjxZtVTy
    SBMzX28Xs3iOwFEGaE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrtddtgddtgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:kSwAYMnWpOva1tuOIsmxmWuxlejOvbpGNRuBeqsrG0tZqjC3Qm058Q>
    <xmx:kSwAYNUzFUPuEYgfXenFLjv_b2qBdbOxn3gvjjNCpWFnPkSFY1sgiA>
    <xmx:kSwAYKssClA_2GIGIr2OmQBaxpuIkDowuMSBqPUid0gExCENBHdzLA>
    <xmx:kSwAYEHaaSf5ZUZRBQ_9cNseVp4GMW4o9BlNncrqZ-rq1MYnrBdJTA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 947BB1080059;
        Thu, 14 Jan 2021 06:35:45 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH 03/19] dt-bindings: rtc: sun6i-a31-rtc: Loosen the requirements on the clocks
Date:   Thu, 14 Jan 2021 12:35:22 +0100
Message-Id: <20210114113538.1233933-3-maxime@cerno.tech>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The commit ec98a87509f4 ("rtc: sun6i: Make external 32k oscillator
optional") loosened the requirement of the clocks property, making it
optional. However, the binding still required it to be present.

Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Fixes: ec98a87509f4 ("rtc: sun6i: Make external 32k oscillator optional")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml         | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
index 37c2a601c3fa..b1b0ee769b71 100644
--- a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
@@ -128,7 +128,6 @@ required:
   - compatible
   - reg
   - interrupts
-  - clocks
   - clock-output-names
 
 additionalProperties: false
-- 
2.29.2

