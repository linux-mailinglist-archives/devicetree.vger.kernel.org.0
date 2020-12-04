Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A3F22CF082
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 16:14:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730438AbgLDPMa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Dec 2020 10:12:30 -0500
Received: from new4-smtp.messagingengine.com ([66.111.4.230]:60739 "EHLO
        new4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728626AbgLDPM3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Dec 2020 10:12:29 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id 404C4580146;
        Fri,  4 Dec 2020 10:11:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Fri, 04 Dec 2020 10:11:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:content-type:mime-version
        :content-transfer-encoding; s=fm1; bh=qZIeITZCCeO2FBytN2Glg/L3iF
        hw1qYWc7AxJW2/6xg=; b=U+dGlXefvdkajgvQHYWZTEil/+dN8HUlH3q9zlH1td
        rV625lld9WWn2j3JKm2H32nvBE4YxU7uIsWQxjtyp0iiCiNK/0//3jt5RbQqOZqc
        g07hVJ8VKI+DRMUIDWT0HLutHsBD+PghpHv2GsKz2IaVvMpvLbsWVxKMfkKP+eeE
        FZOOExBmDU+5gmltCJSi0s83Q67AJXCySPZEpBzxFVzd12LMUyx34lOGggQGbz+X
        DdRAdcQsoDlCB1Ylq59TqS6A019Pxb5NmXgUID05+jtW9jVAKZoj0aFu0WtA8Gnc
        AjeS3FrAnVcOAdIrEVrYSPlgPMJP8a5+0RX9kbMjgAIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:message-id:mime-version:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=qZIeIT
        ZCCeO2FBytN2Glg/L3iFhw1qYWc7AxJW2/6xg=; b=HgBEKbtkcGf+k9wP/6922r
        Jr/pi7uTeg7FzDFgk9PTUiLdvNEt2+xYtdMa6CJzyK2Trehwn/6/1WsCrH0QPRIX
        GmFEucb8ukdnKJVsILE0Wq+ekU7W3ABYd3O9W7+9XWx7cj8RFISKRE9xrTsHvydx
        VEoCg7UaNPYCqKDNkjdJGOxrWr0FZfOdxNCbsQxulKyFKWmio0/fkVOIgLX2NV3X
        F8sqT4oVSwkLe4mZ/0l+PquoQWL4+O9TvvO3rrVLi4osBu6H54JGzR5k8tVjsBlq
        B9D95nPyTvQZIXjWgEs6Gbtmhy/c3polX/Ywj+nqNyrqtY2soHht+QFyDZ3xopPQ
        ==
X-ME-Sender: <xms:rVHKX8SME748Q34z6SgCCeCZyjMN2ItndOfLdJnYIWNleB4pZ2aFDg>
    <xme:rVHKXythdz8_EN0-8YLTtITOWztOwRSgUe_BJJjQ1r21FKYlOBWatctJCmuHRCk9d
    mDhmLvMr9uyVhSX3WA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeikedgjeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffotggggfesthhqredtredtjeenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeetieekgfffkeegkeeltdehudetteejgfekueevhffhteegudfgkedtueegfffg
    feenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:rVHKX1ZJ_nq2K8BQpzjdUeewvFPNHa67Yzqi2Q4FbMs1KtP8xLiCwA>
    <xmx:rVHKXwG_4fpwojfAkoPrc-aG6YFZwWGu6leegwOxSNiQg2uKt08g6A>
    <xmx:rVHKXxyUaN9wQmCyA4HmmZ-N3Ss1fgnMWjYWhZnQu0owE0qEvZyMgA>
    <xmx:r1HKX8VJsgRgK6-rRph0eN25D4NteNOBPYOIiuI3hWeFHrKBaULjKw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id C7F4D1080068;
        Fri,  4 Dec 2020 10:11:40 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Eric Anholt <eric@anholt.net>
Cc:     devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH v2 0/7] vc4: Convert to drm_atomic_helper_commit
Date:   Fri,  4 Dec 2020 16:11:31 +0100
Message-Id: <20201204151138.1739736-1-maxime@cerno.tech>
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
Changes from v1:=0D
  - Addressed the comments from Dave and Thomas on the documentation=0D
  - s/last_user/pending_commit/=0D
  - Check that the commit is not NULL before waiting on it=0D
  - Fixed a compilation error on an intermediate patch=0D
  - Drop the assigned_channels variable redundant with the in_use variable=
=0D
=0D
Maxime Ripard (7):=0D
  drm: Introduce an atomic_commit_setup function=0D
  drm: Document use-after-free gotcha with private objects=0D
  drm/vc4: Simplify a bit the global atomic_check=0D
  drm/vc4: kms: Wait on previous FIFO users before a commit=0D
  drm/vc4: kms: Remove unassigned_channels from the HVS state=0D
  drm/vc4: kms: Remove async modeset semaphore=0D
  drm/vc4: kms: Convert to atomic helpers=0D
=0D
 drivers/gpu/drm/drm_atomic_helper.c      |   9 +=0D
 drivers/gpu/drm/vc4/vc4_crtc.c           |  13 --=0D
 drivers/gpu/drm/vc4/vc4_drv.h            |   2 -=0D
 drivers/gpu/drm/vc4/vc4_kms.c            | 248 +++++++++++------------=0D
 include/drm/drm_atomic.h                 |  20 ++=0D
 include/drm/drm_modeset_helper_vtables.h |  21 ++=0D
 6 files changed, 172 insertions(+), 141 deletions(-)=0D
=0D
-- =0D
2.28.0=0D
=0D
