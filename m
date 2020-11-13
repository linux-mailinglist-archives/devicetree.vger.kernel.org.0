Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23C032B1EA6
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 16:29:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726621AbgKMP3D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 10:29:03 -0500
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:45873 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726278AbgKMP3C (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Nov 2020 10:29:02 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id CDDDC5804E5;
        Fri, 13 Nov 2020 10:29:01 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 13 Nov 2020 10:29:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:content-type:mime-version
        :content-transfer-encoding; s=fm1; bh=7Zmgsv4bn6m3O58vV2b3+wNJJw
        TAQp+Lmd3f32mWRH4=; b=WRPfIfSHGU3sAl1UCiB9Aa75i4yfD2u10zYRTYeRvF
        fCwWwGiWM6xYxRSbFNhySqG4W5ItSVQBzgI2e62eyoU7K+0tQKyeuFXcvVNrFu6X
        jfuqjZPiKHU9NjUHK0W2+zVk4Cg6hVeR5cXpwPpmBTBGp0tlizMYhPRZNm4r/mJA
        hNLbbKvg/UUfDzS4FasWpvzgmvwOZNBTMFZFgpuz4j6dVmimjhYFZAypdslmIanl
        gGt/AvChh8FqEeIuSSlCWIqb7xK5+jbl59xkvNBGfaL9QCvbzSakAJaq8CR447BC
        R9sAALqQ7iNQNRIgYmUVN6scj3X7pd7dEVvANHDCXETA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:message-id:mime-version:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=7Zmgsv
        4bn6m3O58vV2b3+wNJJwTAQp+Lmd3f32mWRH4=; b=GsQS8GfFe9tTtDUOvyR8j1
        CUl73cMBGvjtsyGxZXOPLNWpe8yWBLTFInxb7Q15/C0Eu4kwOXRW91gg6VQzDh/d
        bqpt5ezxpYaceEkMRNMYcU+CyBse7sUHR3QwwBg14FrSFHuG7VIDGhR33ztmaHhN
        Qt3/NbgisTxb31kpmT0aMyVBav3PmyiM+uFnfV+5vOEyf5fqzGjUpUbh/8Vnq4kP
        +28rTYXS88M/XemrJF+fnuB8nxIyVt39B+0s4uuWQ0LHQt1Uiqjm69AAJ9pZHW0c
        yMrBSBRwGMdocpSvAFBVzMVAJRZ2VE0osFE6Nq6IRzFYUGKKFRcRYa1fDzNlGeCA
        ==
X-ME-Sender: <xms:PaauX_ynIF1AXkZWYi8onJZduqoYyJxOdfCk9koLRAiRc3NAoYw38A>
    <xme:PaauX3QKGqpZ-tVSCoQBn3Gtruaw5HEdOh40TeK4hZ3shOvHDxo7vKGjYtT9YnrzT
    7JawkDuXCEfXJUx3Ho>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddvhedgjeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffotggggfesthhqredtredtjeenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeetieekgfffkeegkeeltdehudetteejgfekueevhffhteegudfgkedtueegfffg
    feenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:PaauX5UDywQ6NThDLcN6QC_H2wWq7fC0nJi1gCkKtfzh-krURrANXQ>
    <xmx:PaauX5jQ5zcx0t8Kbc8fZRdpLP9EAwJw4ZuNJ00MabZSjmBfmt5i1A>
    <xmx:PaauXxAlgGvGJkR-qNpXTQgTLXvVMVb9yGKkAO9Sc8Qy_etIxIyiqQ>
    <xmx:PaauX5ZWnq8AsQ4tEY4EOmZ8vgvQFxsBF4354ZrK_YDlQXDeCdzvSg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 401313064AB4;
        Fri, 13 Nov 2020 10:29:01 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Anholt <eric@anholt.net>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        linux-rpi-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        dri-devel@lists.freedesktop.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 0/8] vc4: Convert to drm_atomic_helper_commit
Date:   Fri, 13 Nov 2020 16:28:51 +0100
Message-Id: <20201113152859.139335-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.28.0
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,=0D
=0D
Here's a conversion of vc4 to remove the hand-rolled atomic_commit helper f=
rom=0D
vc4 in favour of the generic one.=0D
=0D
This requires some rework of vc4, but also a new hook and some documentatio=
n=0D
for corner-cases in the DRM core that have been reported and explained by=0D
Daniel recently.=0D
=0D
Let me know what you think,=0D
Maxime=0D
=0D
Maxime Ripard (8):=0D
  drm: Introduce an atomic_commit_setup function=0D
  drm: Document use-after-free gotcha with private objects=0D
  drm/vc4: kms: Move HVS state helpers around=0D
  drm/vc4: kms: Simplify a bit the private obj state hooks=0D
  drm/vc4: Simplify a bit the global atomic_check=0D
  drm/vc4: kms: Wait on previous FIFO users before a commit=0D
  drm/vc4: kms: Remove async modeset semaphore=0D
  drm/vc4: kms: Convert to atomic helpers=0D
=0D
 drivers/gpu/drm/drm_atomic_helper.c      |   6 +=0D
 drivers/gpu/drm/vc4/vc4_crtc.c           |  13 --=0D
 drivers/gpu/drm/vc4/vc4_drv.h            |   2 -=0D
 drivers/gpu/drm/vc4/vc4_kms.c            | 269 +++++++++++------------=0D
 include/drm/drm_atomic.h                 |  18 ++=0D
 include/drm/drm_modeset_helper_vtables.h |  18 ++=0D
 6 files changed, 173 insertions(+), 153 deletions(-)=0D
=0D
-- =0D
2.28.0=0D
=0D
