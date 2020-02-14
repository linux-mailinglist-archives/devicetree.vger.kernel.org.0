Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ED1BB15D754
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2020 13:24:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729102AbgBNMYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Feb 2020 07:24:45 -0500
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:36631 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729080AbgBNMYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 Feb 2020 07:24:45 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id 6D7C7658F;
        Fri, 14 Feb 2020 07:24:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Fri, 14 Feb 2020 07:24:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm2; bh=ZhpFMTxAvP211V94I/8x95p4Rm
        NgB+Qbb9b8PLTyTS0=; b=lUg4pktXWBgCKpmCPxD+3LRV3TYBSg4UwZjn5WpaUq
        eYxjYKZbqkXqFcKE562IO4s5Y6RX7gH8NJ2m/hP5kns/if5y892/I19Qu7c4xB82
        SeOOFYxNmrLdHnPJoUJ1L6tN8aozHRw0Up8K43CfbHg0O7aePBhvqi0qdXwVSGnn
        owB9ilt8WARZtFw3glZt+HgkpAWVKWOCG3K6bdZD/K8oBUTzt/YR1CugxOsfIlJm
        vkUfefLRrZFGOuB1GZYnC5SHe/KClTkZsmcf6Yeb9pX4SO1OuV9YgKpaxM2nlMD/
        zveQHIGi2uRSrEOqoIIZoPbq7opbiGv7MvLHKaPQV6fA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ZhpFMTxAvP211V94I
        /8x95p4RmNgB+Qbb9b8PLTyTS0=; b=U0JiksRHtEKN5CnCLirFpDDst/0LHA1su
        pdOeCTWlPT8LPuDvJG9773v1iOetl6laLin51d3fv7IKbtvTsL/jAp+Ys2OjHSW/
        vjgfAfjlgJred5c2ctt15LNmxLMFtFSLmIPMA2KySuJk1D6D3BTu5KTQhoXrsb67
        rM1bRhm5C8stkKwomBgYNjyQjQjsVI9vWe0OZmYG2upyUyiwQooO1sRSIvXjjcC+
        gqpFwcBBzNS5KT16zJ714AaIIFM61/kaV7O8MtAZ+IrntxhAjy9GAN+qbxy+1EnN
        YB6fG02v2sR+TxqGCMsT3AdZYyZVXeQpGoSy0GYyeJ6BoIX0+I2vg==
X-ME-Sender: <xms:jJFGXnhm7BocfTuShg3MCtjv2TukZxhsq6uI9VRieRoGwKqSqIh0rQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdegtdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
    ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrdekle
    drieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhr
    ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:jJFGXnw2uETb2ijqh82xGbDlNUVcA2P3MnTe21RQA_5YT-mXla0n2g>
    <xmx:jJFGXv-m-mrTnN7rhDvftL0Q4tJSyELsKaiZrCJPbYrKSsiOkJbxDw>
    <xmx:jJFGXsabzQLiTxq-hz-9ZTg5wZW6bCQHeDBqW3Kt7UUPahxrCQ8a_Q>
    <xmx:jJFGXidoSszIPLXMfRP-DXVhx3xjRgkUr67hHdoJ043ARed_9IkNMA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 0D90A30606E9;
        Fri, 14 Feb 2020 07:24:43 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Sean Paul <seanpaul@chromium.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH 0/4] drm/sun4i: Support clock and data polarities on LVDS output
Date:   Fri, 14 Feb 2020 13:24:37 +0100
Message-Id: <cover.b12a054012ce067fa2094894147f953ab816d8d0.1581682983.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

The Allwinner LVDS encoder allows to change the polarity of clocks and
data lanes, so let's add the needed bus flags to DRM, panel-lvds and
our encoder driver.

Let me know what you think,
Maxime

Maxime Ripard (4):
  drm/connector: Add data polarity flags
  dt-bindings: panel: lvds: Add properties for clock and data polarities
  drm/panel: lvds: Support data and clock polarity flags
  drm/sun4i: lvds: Support data and clock polarity flags

 Documentation/devicetree/bindings/display/panel/lvds.yaml | 10 +++-
 drivers/gpu/drm/panel/panel-lvds.c                        | 25 +++++++-
 drivers/gpu/drm/sun4i/sun4i_tcon.c                        | 16 ++++-
 include/drm/drm_connector.h                               |  4 +-
 4 files changed, 49 insertions(+), 6 deletions(-)

base-commit: bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9
-- 
git-series 0.9.1
