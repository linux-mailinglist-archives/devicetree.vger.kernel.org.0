Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 276D92B1ED3
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 16:32:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726734AbgKMPcW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 10:32:22 -0500
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:41595 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726439AbgKMPcU (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Nov 2020 10:32:20 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 13CB458032A;
        Fri, 13 Nov 2020 10:32:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 13 Nov 2020 10:32:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:content-type:mime-version
        :content-transfer-encoding; s=fm1; bh=7Zmgsv4bn6m3O58vV2b3+wNJJw
        TAQp+Lmd3f32mWRH4=; b=iKwpJqWWdMUWEN685FlV3gicMdrsWD9Lfg0cy0OB4F
        uJNz8P4rIL8+h9xnDvVJ4Vtt+iWfRxXO6AaG38+5A6zLgmC5xP+OwaqcaMNj0bqn
        /zGmeTWGkNbGNpzANZsmGhUkbTZp2ZkK5fdsKvLeATkmFJhWh47E9ycIRP1kPRwE
        gMJeo/VSgIFQJunZbEj+4viPnoM0Gesd/LZxNbBIRnHdxcd9qcqe1EjkbTSp8sWj
        4bu8MjmVpfIcmAN9aTYL16j6ibldN8tw98yOZwaW6BNkOOSsy4vfgEUd46CmMD1s
        gvd2TA1PHWH1Wa6DpOIKvz7wUAGdbcX/6NC9hQit6biQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:message-id:mime-version:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=7Zmgsv
        4bn6m3O58vV2b3+wNJJwTAQp+Lmd3f32mWRH4=; b=CVIXaz06R0qdepac6VfUAA
        2zpKqKpJu+SFoq0b9dO+LK8yk6DB5UEG0EC+tBWja6/E3NY2QuDFllqYtmD9+Wcr
        H4OXFatu08gnmFgvxHzj3j5riKrFPHFwQ48vD5VtEuX2Ou5Qg75FCx2ZJKkuzjPc
        nJgJT/Nw1svD3penLAjwKgo1skQE9RhTd1PG9sfdBTY87xw5CvACxWmCzMRpH8DP
        9ArdhDsGd09989ldJbpggDMyzYA5fRuqsYEzT+y9O8g8DEgWCRkym1Sgq5gNt2N/
        aQsSbuSshUXI7ZXT86RDp1kmQTfDyxKK8hHdF4CFXH4FcmF+mWOYlT2Q2G5IJ2mw
        ==
X-ME-Sender: <xms:AaeuX8tqKDUZ2ts1s1GKLzLlaQYMUC1qKIqYQpmbrJ8hE7nd6N6N1A>
    <xme:AaeuX5f2Qbd7FM4_4ujycFqfM7mirLLFud3sqgZP3iQ-yeuoFfcjA4aTmgqy-R807
    3ilXKPczbV3xDa1GG8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddvhedgjeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffotggggfesthhqredtredtjeenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeetieekgfffkeegkeeltdehudetteejgfekueevhffhteegudfgkedtueegfffg
    feenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:AaeuX3wANoeftHijL3xRCa9kjxqRdQyTcF-L52Ca5U_DC7-TOdv05A>
    <xmx:AaeuX_MIoVUHHtnbwhP8R5PMWFgC6d68RrSVC3YXYMODAj3uCuV_1w>
    <xmx:AaeuX8_l4llH0S6Z_z0-1Rwf_H1ZpJBPJtBYQC2EnU6XFWBsj2Ogqg>
    <xmx:A6euXwXOmjTlvVIMuZzrb-2kyQ4xRiJEAw3NNLbDYMr7DUXv6FSmpg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 58BA43064AAA;
        Fri, 13 Nov 2020 10:32:17 -0500 (EST)
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
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 0/8] vc4: Convert to drm_atomic_helper_commit
Date:   Fri, 13 Nov 2020 16:29:48 +0100
Message-Id: <20201113152956.139663-1-maxime@cerno.tech>
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
