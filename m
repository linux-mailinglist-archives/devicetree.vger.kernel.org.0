Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93A3429E15E
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 03:01:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728069AbgJ1Vux (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 17:50:53 -0400
Received: from new3-smtp.messagingengine.com ([66.111.4.229]:40679 "EHLO
        new3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728084AbgJ1Vuv (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Oct 2020 17:50:51 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailnew.nyi.internal (Postfix) with ESMTP id 837AA58011B;
        Wed, 28 Oct 2020 08:41:08 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Wed, 28 Oct 2020 08:41:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=pGuPsVhlyShIi
        WSfeyFhhg0EnQwVmnnyEOEiuGfCnxE=; b=Dte5OytkL1w2KKl4hCxnB16GK9dKq
        oLo2YFqAUCVnbeULDVGIr3iTb4BH9EgCnKb0C3NptUHuTq3fZMRMAmZxxmPA8iGd
        xhxU6HIVrB+1LzM9hEUAXLeMCuvuYexO0/TSCIZpdjgi2JtUGg/mTIdvi+v72QpN
        KTlYULnFybUzvi147Q4uSf5ga2bAUDRvBhejKkwuGq8cPGLjOUSB0Cpy97L6hold
        /7xJD4u6ogWlOwr5lFvB/ZqkRAnUVhEQP//Jr5u35vy/qb0QGnckW1YMQAC22kQ9
        NNO82WwMZW7YAQ+pW8HiDfRd25UfdihQa+7JxZd/qaA8gbcL3vjxzNONA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=pGuPsVhlyShIiWSfeyFhhg0EnQwVmnnyEOEiuGfCnxE=; b=DlEFe4mx
        v6KaN7Tdd35yROzU+AeHagEEbNF1y9wkSe3N6/BO3W7xCvHmsWwsSdcOTUJkSRys
        8XnhuKscRk1Lj5HnaC230ibUtDfHlJzEMfZD3GK2aL90XrVupjLV9BdO0e/wRsYP
        SyY67uc/3GUK7ysDfiThLDzGc5bO/ud4K64aQFm8KZ6ub9s3Md13VTIgMhxDAf02
        KaAe9HZ9xYcY+Hj/MC+FyO6YiqoRByCAjtXhCVHUXcShE8od+r3beeRJSGGCKBs6
        y/lLqa94+BNfDnzPXtNHO+xwqxwTReiFIhPFEwkvZ5eg6Uq1AiIPY0f2l3zokE6j
        1lNNz0ZFEbpOrw==
X-ME-Sender: <xms:42aZX9aalK3tfUE0Nyg-jupA0gFPwUciBRc1H1Z4EK9314v7QofDUA>
    <xme:42aZX0ZNoAQa4EN6JAFLmmysDblQMpvDTM51kIOUBqwfB8EWxDzix8udaSO9WTLCZ
    r3WCx6eIfe2MabvsI8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrledugdegvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:42aZX_8iluX0gLJQJH955i1sHS1_rkcIarOox476v0ycDevwKzo1QQ>
    <xmx:42aZX7psVU69NcJr8kdxutifpdMrvDuG6yP2FOxJ-3UVLojI9xEPoQ>
    <xmx:42aZX4oryt1lyEI-zUg3sJDrQaiCNusMqguu4gBabvgFLBAIG7nztg>
    <xmx:5GaZX0af-uGHMmaQQMD69IexBH5C2HJZebFpMjounRkWJd7G5KtRvw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 3F41C3280059;
        Wed, 28 Oct 2020 08:41:07 -0400 (EDT)
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
Subject: [PATCH v2 1/7] drm/vc4: kms: Remove useless define
Date:   Wed, 28 Oct 2020 13:40:58 +0100
Message-Id: <7c2cf02a0782f257bcc2823d52d7de11cb4d8778.1603888799.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.3eb3532def69f3610b18104e45b7274bbdc1b0a0.1603888799.git-series.maxime@cerno.tech>
References: <cover.3eb3532def69f3610b18104e45b7274bbdc1b0a0.1603888799.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

NUM_OUTPUTS isn't used anymore, let's remove it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_kms.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_kms.c b/drivers/gpu/drm/vc4/vc4_kms.c
index 149825ff5df8..f8081c996193 100644
--- a/drivers/gpu/drm/vc4/vc4_kms.c
+++ b/drivers/gpu/drm/vc4/vc4_kms.c
@@ -609,7 +609,6 @@ static const struct drm_private_state_funcs vc4_load_tracker_state_funcs = {
 	.atomic_destroy_state = vc4_load_tracker_destroy_state,
 };
 
-#define NUM_OUTPUTS  6
 #define NUM_CHANNELS 3
 
 static int
-- 
git-series 0.9.1
