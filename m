Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 441C12A801B
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 14:57:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730775AbgKEN5E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 08:57:04 -0500
Received: from new3-smtp.messagingengine.com ([66.111.4.229]:57121 "EHLO
        new3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726067AbgKEN5E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 08:57:04 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 8C8AC58034B;
        Thu,  5 Nov 2020 08:57:00 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 05 Nov 2020 08:57:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:content-type:mime-version
        :content-transfer-encoding; s=fm1; bh=/SUue8If/RDXoikA8wmeLjgste
        Ds4PEf/i891dT0R/c=; b=vQlB0JudV+keM3oRXB26O3sX44vPzM/JU70TGVs2GK
        WmDxJ665BZO2yY/illL8KgDILz4GjTRP8NiSShlF1ua1hTXL1UV16c9s0KFnJbJn
        JymybJcHH6nJ/qBRclMTeh3V0sWid0RW2Ri3EUhLXmYc/ZJ63+a6a5LBclYOnwsw
        LAb2E53jbuWJ9bjzHG0/3NcIn/mlnHtt5ZE3q2DwagE4xAG+WQijfp5STg1/Gixl
        Gph2o3OlEEyajy3vDEi+ZNLNxHwu/c+aIV0xbMRmbHhPRyQA8O+GysZACgX27jvh
        diSpsWkhzQkI6ItXUdz6ykou2y3yKdZZIHeqWGeh3SGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:message-id:mime-version:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=/SUue8
        If/RDXoikA8wmeLjgsteDs4PEf/i891dT0R/c=; b=KT+K6Y5RthbYOgUM4SC+SF
        otWeM+YLBTTws4GM322vng6rKhnBFjHfzQo7J7cpoGAHpDGDJJ1BF8r4Ofq/Xt1c
        wjir1TiIKJDYl3MRjPCckxwBI9dGDVuxcQoZBu6LyXtINYJhllaTubRM+XXHWw/1
        pWmo0uKW0IPt+pbMH/M0o+a70Sj/MqNzCnyUSOiPdeYPWUVsoTBxrJyS8YLehkP+
        w5hZWsv45jCSh3w3Zji6MHxr/a/Q4MTE0f8HiJ6eP7vXAqAslsVd37fLn/61j+KO
        KoMKjit/u7f6oxvFIRgTf9VSG+VpBvw7D98NZUHET5EUHZG9KFejns+iAEtbOpBA
        ==
X-ME-Sender: <xms:qgSkX6yXANzLIIpAQqQMazRi5RigCn3ppkVH9nA-BcWMi-jY5vGxbg>
    <xme:qgSkX2Q4C3c-L-bqmYxAqnEtGYjGkI3fr90ZjLHMdDA6qmQX_Fg6jJqItiJ-kfIx7
    SfU2eIjlKD1hj_QJxE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddtjedgheelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffotggggfesthhqredtredtjeenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeetieekgfffkeegkeeltdehudetteejgfekueevhffhteegudfgkedtueegfffg
    feenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:qgSkX8UyAXCxErjJcln57g736-ZcIAG7DefeHw1vrUvQr1XI8YFLpw>
    <xmx:qgSkXwgIn6weNMT6YvfPXCUyBdPJxuCD7PME4gDw4QiWGoJqnw482Q>
    <xmx:qgSkX8BfkfSyGXWqKiW2CACO4EnuIOnCUqco8SCc9alBpnKZtSO5Dg>
    <xmx:rASkX6SDFqFcfyvrpxLtOxe6afbv3AqK8rHW8ImMRR9G0OAxv8rtdw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 76EFB3280261;
        Thu,  5 Nov 2020 08:56:58 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Eric Anholt <eric@anholt.net>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Hoegeun Kwon <hoegeun.kwon@samsung.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        linux-rpi-kernel@lists.infradead.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH v3 0/7] drm/vc4: Rework the HVS muxing code
Date:   Thu,  5 Nov 2020 14:56:49 +0100
Message-Id: <20201105135656.383350-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,=0D
=0D
Here's a second attempt at fixing the current issues we have with the=0D
muxing code that results in a PV muxing its HVS muxing when only another=0D
CRTC is modified by a state, or vblank timeouts when trying to wait for a=0D
vblank on a single CRTC while another one is inactive but enabled.=0D
=0D
Let me know what you think,=0D
Maxime=0D
=0D
Changes from v1:=0D
  - Dropped the code trying to access all the CRTCs (whether in the state=0D
    or not) state=0D
  - Added Hoegeun Kwon's tags=0D
  - Fixed a build bisection error=0D
  - Cleaned up the private state using drmm_add_action_or_reset=0D
  - Rebased on current linux next=0D
=0D
Maxime Ripard (7):=0D
  drm/vc4: kms: Switch to drmm_add_action_or_reset=0D
  drm/vc4: kms: Remove useless define=0D
  drm/vc4: kms: Rename NUM_CHANNELS=0D
  drm/vc4: kms: Split the HVS muxing check in a separate function=0D
  drm/vc4: kms: Document the muxing corner cases=0D
  drm/vc4: kms: Store the unassigned channel list in the state=0D
  drm/vc4: kms: Don't disable the muxing of an active CRTC=0D
=0D
 drivers/gpu/drm/vc4/vc4_drv.h |   2 +=0D
 drivers/gpu/drm/vc4/vc4_kms.c | 247 +++++++++++++++++++++++++---------=0D
 2 files changed, 185 insertions(+), 64 deletions(-)=0D
=0D
-- =0D
2.28.0=0D
=0D
