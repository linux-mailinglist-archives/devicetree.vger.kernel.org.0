Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 694A42B1EA2
	for <lists+devicetree@lfdr.de>; Fri, 13 Nov 2020 16:28:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726741AbgKMP2d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 10:28:33 -0500
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:58333 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726278AbgKMP2d (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Nov 2020 10:28:33 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id EC3BC58051B;
        Fri, 13 Nov 2020 10:28:31 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 13 Nov 2020 10:28:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:content-type:mime-version
        :content-transfer-encoding; s=fm1; bh=7Zmgsv4bn6m3O58vV2b3+wNJJw
        TAQp+Lmd3f32mWRH4=; b=k7UlQIfFELipVX33MndLesTIB2ZjsgWgbg2aR7qmrb
        y8zs9fDgXkzcoIXrDBUEkNZm4HVKwVme6nxVozLau+IC7I85Qw2ZNztyx7bz+1gf
        YLXTnYS2Hezl5qaamo/8zdvj0ZXTA9k5orS8micuQHYan5xhS4XTYOrD57kO7R8y
        8Psy8vU4I5brcsgHWK05g5G69q+yPNPq7vqFYIjN0Pj2g2G5WO+AdMpKpirwhvpW
        Ckp9uh4iRrbV8fP8DhknmTPIt4eysBZFDgKC6h30HER7OwAIsOLL1DWNZQih5MXY
        XFDq9pMtlQy2BnudQ86efgKPYurvv1b4W3K/0gbHvlSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:message-id:mime-version:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=7Zmgsv
        4bn6m3O58vV2b3+wNJJwTAQp+Lmd3f32mWRH4=; b=KqZuYf9kT9CSy+HgMq92XQ
        jOYNG5YWYRXEA6F1djA4Spy+tuFnd13U19G2ZQHmNmhaCTZ3wiAX1/6VKcA01rk3
        YPVPkxRmOrNXC7upxy/d5nSfSlDd9xPToisM6eM9va35y/EhaZBvgeiBZ1CjsZpN
        UJ1Kx5baVAgAxXXW2N8eA0eRL4E11JtzIWRsWHSXomoS9y5eOsKb1SliY9tRjlHJ
        9aHPvhqIm/rKfYf8YSMdMPJ5OiQ9tGsSrSfuWL5XmpDVEBSHNqx1C+Z2vAr0b72r
        QicVGXZBZNTEJCVW3vr0akBi9kMmt5/Rx340WnNg/ZVXqL0h5N5zR4JXOQ/0nW2A
        ==
X-ME-Sender: <xms:HaauX8eTfqcO7-nFieSEt4JmaS4FOFneOe1TMolRmDxSkZaaxNYyug>
    <xme:HaauX-PREx9KU_zPG0lRs7oNTNBXLNXaMqmdKc2vYFRg0RA94JpH4eQfnEGsPIURb
    7Q5_HE8oYdOK8JGx9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedruddvhedgjeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffotggggfesthhqredtredtjeenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpeetieekgfffkeegkeeltdehudetteejgfekueevhffhteegudfgkedtueegfffg
    feenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:HaauX9inpliFxwYna_M_xdoXpqfzULazwKVVvf_eFP7kDDfUs6F4XA>
    <xmx:HaauXx_zxMnp2AVlmJMBdiL551_vVkqeGKuVC4sQAMMJU_VqKrgR3w>
    <xmx:HaauX4siIRq_PBLcI-4Elu7K14sldPg-uuDvos2XeQiGslI-7yr1DA>
    <xmx:H6auX4GxUkRiT65JtyLG2RvC_hKujEFhOD61NNX4r4ZhECUX2bqLMg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 5F7C33280068;
        Fri, 13 Nov 2020 10:28:29 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, Eric Anholt <eric@anholt.net>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Tim Gover <tim.gover@raspberrypi.com>,
        linux-rpi-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        dri-devel@lists.freedesktop.org
Subject: [PATCH 0/8] vc4: Convert to drm_atomic_helper_commit
Date:   Fri, 13 Nov 2020 16:28:19 +0100
Message-Id: <20201113152827.139110-1-maxime@cerno.tech>
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
