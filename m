Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B73E29E16B
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 03:01:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726187AbgJ2CA5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 22:00:57 -0400
Received: from new3-smtp.messagingengine.com ([66.111.4.229]:36035 "EHLO
        new3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728090AbgJ1Vux (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Oct 2020 17:50:53 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 7D7BD580118;
        Wed, 28 Oct 2020 08:41:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 28 Oct 2020 08:41:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm1; bh=iXTKYI0ategc7ffuiuB8ir+zWv
        2EhcjdkdIAEe/TMaA=; b=nv/xQZC2Kc+FDvf1Fj2lQfWzIN7scuMoBeGKbdKqmg
        wvLnEXRGJ0HAYgWj4+D++2O3DSXKxVEgTMlR6uZW0wishu1zIJMWvy8W4cYr119J
        FhwKDfxzBKpluaYRdbVvpWm+avBOJyqwqbTXz5hWkYeMsmmrxDNikiOyBuafc5iG
        9ERcVSeMGcCPUDozv9PHX+l+gWEse/qN1dw/EOsLCSTs0/K1onEiupBzjSK75M1I
        VSFGQ/VcYKQlliosEWpNpvhsUggLiLqIn4xlfAo8nKM9s/Z4A3DqwJo6yQD+SB7T
        kQ1LDvZbu5n8D5/wd/unwlpuiao9Kbxufe2twA+6wKKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=iXTKYI0ategc7ffui
        uB8ir+zWv2EhcjdkdIAEe/TMaA=; b=pdhmwA5cLaLNXCJ6d0fuYyOUcr/atPgZL
        0FWwiflyQAA0CYmFD8D5GzHm6hKLH2jyU6mb0O2t7aF2ZAV7uGGakCsp8dmVmL73
        LX0kKxgFoy81FRdJJGya0G3vYAmTiuLZn6iV0dvgaU/kAi1Qth2FKdO8ldwm4xLf
        eca2BvY3/nNkDeXc5CZULn2OYVeJUWVX8YoJTJtjr1yrwCq1DRZ8a84v6kjVSuK9
        2qu2XOz2pye59ptKDzskv9l27Amr8bVk80GIqM99yDpnxx/0di8Q//0/DAaRVZQZ
        4WptJ5fmkKgT8ktoLO+MaY0K/lwdG/bqKJlJYTfPv8z1cBC8PHyyA==
X-ME-Sender: <xms:4maZX3_kFQV5tRxxkwD72mKdW8QbyySrr0QdmMsILgIHn5--a6_1Ig>
    <xme:4maZXzuApuTC4bpOx4Jf0E9od2K4y2oV-FgLfg4PNBk_mt9GQjqUXZbdq4OB-_YFq
    jAsdBaL2mpoK7Cof_4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrledugdegvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
    ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrh
    hnpeejffehuddvvddvlefhgeelleffgfeijedvhefgieejtdeiueetjeetfeeukeejgeen
    ucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
    grmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:4maZX1Dz3UnOIpLp-znR9QZoV4SlTumofNNn_481tprgEszMtow1Qg>
    <xmx:4maZXzflvc5ae7cVl4p-hTEmpfWoD0pvxYgjm_PIWWR4C2_94dRg8A>
    <xmx:4maZX8PGwd9o3f8ynNVlwRvVo6ClnDmto7VCpgG3EePb0aDorttzXA>
    <xmx:5GaZXxurwuY0aY2y_m-MZPVKxn_weDJSj5qGin4yrdkNWNwvYb6c3Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id E9815306467D;
        Wed, 28 Oct 2020 08:41:05 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>,
        Eric Anholt <eric@anholt.net>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Hoegeun Kwon <hoegeun.kwon@samsung.com>
Subject: [PATCH v2 0/7] drm/vc4: Rework the HVS muxing code
Date:   Wed, 28 Oct 2020 13:40:57 +0100
Message-Id: <cover.3eb3532def69f3610b18104e45b7274bbdc1b0a0.1603888799.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Here's a second attempt at fixing the current issues we have with the
muxing code that results in a PV muxing its HVS muxing when only another
CRTC is modified by a state, or vblank timeouts when trying to wait for a
vblank on a single CRTC while another one is inactive but enabled.

Let me know what you think,
Maxime

Changes from v1:
  - Dropped the code trying to access all the CRTCs (whether in the state
    or not) state

Maxime Ripard (7):
  drm/vc4: kms: Remove useless define
  drm/vc4: kms: Rename NUM_CHANNELS
  drm/vc4: kms: Split the HVS muxing check in a separate function
  drm/vc4: kms: Document the muxing corner cases
  drm/vc4: kms: Add functions to create the state objects
  drm/vc4: kms: Store the unassigned channel list in the state
  drm/vc4: kms: Don't disable the muxing of an active CRTC

 drivers/gpu/drm/vc4/vc4_drv.h |   2 +-
 drivers/gpu/drm/vc4/vc4_kms.c | 314 +++++++++++++++++++++++++----------
 2 files changed, 235 insertions(+), 81 deletions(-)

base-commit: 66e2a590a11f54865fb3ffd3ec932a6a4e477b40
-- 
git-series 0.9.1
