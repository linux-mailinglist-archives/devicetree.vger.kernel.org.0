Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92FE73FD678
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 11:20:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243523AbhIAJUa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 05:20:30 -0400
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:57313 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243516AbhIAJU3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 05:20:29 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id C5760580B23;
        Wed,  1 Sep 2021 05:19:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 01 Sep 2021 05:19:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm3; bh=2zOpJG7/H4t6V
        Hd32EAUxgRVWVLyjHJSNvcl3R+xi04=; b=h4H6eXaLJ4C8Gw5L7hSC54JrL5cuc
        Gtv4L8oK0vLokAhX5GASjypGuK50Ild2m0EZGZxXDOjpWGfAusFANofYub24dcZb
        +Y6aC1RoyANnw2RWZeLA09DEji+xT2N8apkgrxna4Ssx/VHjE1PctWNM94dpooRm
        oJ6ltf79U+mod9ChSI2qJYapX26hRYoMfnWy+cd1jbDoZNPdbLAYj1CWu4Ct4nuR
        UXypSY4AhxLxSP3CYQ4KlyPJQLBD6LIMvxePj1o23seWrjvauWWbbOhCSeXNQ78X
        rugMpzkg1ZEmEBtlEWRmAC5PSJKYbQ9Z+3piMzW79BwYJpABLq8SjC0Ow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=2zOpJG7/H4t6VHd32EAUxgRVWVLyjHJSNvcl3R+xi04=; b=hgiHE99n
        HABQuY+6USkvPcMTKxh4LRpgodIFWrLSbi7qfcPZLl8bO6gM+KCTGxd+Fs3aYJ51
        STK/VwPythhEfUl1Oq7hdE6akhm7yBY+vCfWEDxnpRbRu4NQR5S3bs46EnEsR9N9
        m5ieN5K27Fgz/jHwbo6QrzzN5o8U31BzXSkR3K5fwyoSt4QAADUt4tLXowuf1yBe
        bNX7C8hrhRAC7qoFYw5P3/3Yj0DrMmLa1N+QOpLJhjSsN2xD7eQoBk71KQm/oR0O
        jJg7dI0sjQU8AMez/OQVJl6vOUvKtdBZwiP4lQV8t0KFzAx74XKR9KElgVI6UxVu
        q8zHTpVCOSkKJw==
X-ME-Sender: <xms:pEUvYYk3nil1bLQxEqTfzVh9TKb6veuP7yJyM5yhyJ4WPwe1Y6KW8g>
    <xme:pEUvYX3XhCZ0ii8UsNV8eL_M2nCdiyuWvd4hRd32vJg5XAvvPZ7AdaR-HwFUyItmt
    pOGXPvYFFHIvzfqPEw>
X-ME-Received: <xmr:pEUvYWpmxsR9NzYJw-OB1ndiRAHS6p7gpPF4UHa7FGPIglL_Y47zwxT_4LZN7NoZpWogjXf1raQRUsymm9EcQEGWevi4qEqaSP8A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddruddvfedgudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
    hedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:pEUvYUlDGKOXy_Ck3xWYfqiot9ZcccDqInL-q1Z7_GuPTd-wa4lDqA>
    <xmx:pEUvYW0AWM9YnNamLQ1lAAQQ3JnBnwX93s0yeg48so_B1dDt6urzdg>
    <xmx:pEUvYbu4PMSmy8eLFrSn4QW0mZof8lX1kf_Vk_x_Qhpf9ceCnsOmsQ>
    <xmx:pEUvYfuHI_dvN6CrcsYX17C6aXzSdOG5d7qBviH18muGIGjbKKjzQQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 Sep 2021 05:19:32 -0400 (EDT)
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
Subject: [PATCH v2 20/52] dt-bindings: display: panel-lvds: Document missing panel compatibles
Date:   Wed,  1 Sep 2021 11:18:20 +0200
Message-Id: <20210901091852.479202-21-maxime@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A few panel-lvds compatibles were never documented. Let's add them.

Cc: dri-devel@lists.freedesktop.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/panel/lvds.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
index 1563d57bc793..b2e8f5b263d7 100644
--- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
+++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
@@ -73,10 +73,12 @@ properties:
       - enum:
           - advantech,idk-1110wr
           - advantech,idk-2121wr
+          - auo,b101ew05
           - innolux,ee101ia-01d
           - mitsubishi,aa104xd12
           - mitsubishi,aa121td01
           - sgd,gktw70sdae4se
+          - tbs,a711-panel
       - const: panel-lvds
 
   data-mapping:
-- 
2.31.1

