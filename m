Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D2E5454932
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:50:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233772AbhKQOxz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:53:55 -0500
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:43217 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233972AbhKQOxn (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Nov 2021 09:53:43 -0500
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailnew.nyi.internal (Postfix) with ESMTP id B781958099B;
        Wed, 17 Nov 2021 09:50:44 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 17 Nov 2021 09:50:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=lY3hhXIn1pBnH
        z7C24moxAsZMuenwWY34CzsmISEKQQ=; b=ndc7nMoF/KYk3SOfVIJWKlPT6PHqh
        rOmXefBNR7XsU4uC5HoMU8lN/C0f/bDQnXmtL68MrcLRYQtOcbyykNwwuEqR86N9
        3F42ICS57jcyTD1mkgOEub12rbmOmGCDBRIZkfSJeeXuxye4UkSHuyb2Q3azkflv
        TbEYSOka2Ix/o0zZe2H7LJHjU17rztdAdefSuVM+VVQeqW7EVXIZsGhXeSOcx2A8
        KBQld/un8ws4XvbOc8K3EN2d+wZltu/f4srhSJ2bOL4gTgPwEKzvB54Vb3H2m867
        TMnIQsTRSleTmtnsA4RJ9c82K6zyR4RiaXwxxf3H79YwlXjkNVEi3Kwtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm1; bh=lY3hhXIn1pBnHz7C24moxAsZMuenwWY34CzsmISEKQQ=; b=ZBdcIYBU
        3F9RdO+jdSDKfka5uKTfaYj6rJ+e0CHdcmdbqy29n7V70CY9l9sfQ17tNnSmmX02
        N/MvJ17X2E+lGw25c6O1GDq5/bFK4cWKuxN95By704SIS9aiGNgJ204LTkXJ4Fo/
        dAI440i7qcgExpE5gToLogBLJ3T/TV72+SCh3gNYhnGOf0xm2ZDuDCHFoCclCntH
        0VvDDB/V25JrUjZwrq+O5MIUNLdVTABtSbX8S6qM8CO0+bw3Fv197naQziivXpfB
        BuxfyhKMmyBCk0pS9I7wvT9R8czhP2B8TUHN4/mWTPNJwNw2RfEkTV3J39VVrSrF
        zuVSad6Vm0uWgg==
X-ME-Sender: <xms:xBaVYfLRNp0qPB1iqbFH6LMPAean7E97v3bolzUtsyxMEyQBwvYGeg>
    <xme:xBaVYTLsBOAa1mRgV6xM3Z0ZIdOkOUdmcLMOR5CKChKCUnKoMEnx8dLsZ3CAFMms-
    J4gLLLIyKiIlOg-obE>
X-ME-Received: <xmr:xBaVYXvVxd8RA3cUEa4KHnQMXMtMncudHd_WDfQ_St4SPFXo0L8iA5JGRGc2RQ_EWv3PhR5ZldTm8GFTMYONXvknXps7FeYV9Xtte5oN1Ks>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrfeeggdeigecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
    gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
    vdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrg
    igihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:xBaVYYbTT8H6Y-0wBDI0ew10_uuclCcG6zuNFTlCFXCr9hO1phobwg>
    <xmx:xBaVYWY403ZokFk8WJihnkJ4U6PDu09nuJhECDArw_v8r4gB8zdwhQ>
    <xmx:xBaVYcBDiU8uNdP0XF91Ueu7jF7deD_BdpICYgSkhxc2Jx3k5l0Kuw>
    <xmx:xBaVYTT0fyifmPejoSMAg9SoPZfacbW5bRGqAsKkqA5x9nzH_394cA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Nov 2021 09:50:43 -0500 (EST)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-rpi-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dom Cobley <dom@raspberrypi.com>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 1/5] dt-bindings: display: vc4: Add optional phandle to firmware
Date:   Wed, 17 Nov 2021 15:50:36 +0100
Message-Id: <20211117145040.334827-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211117145040.334827-1-maxime@cerno.tech>
References: <20211117145040.334827-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The firmware can free all the resources it was using to run the display
engine that won't be needed once the kernel has taken over.

Thus, we need a phandle to the firmware DT node to be able to send that
message when relevant.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/display/brcm,bcm2835-vc4.yaml        | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
index 49a5e041aa49..18de6912b833 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
@@ -21,6 +21,11 @@ properties:
       - brcm,bcm2835-vc4
       - brcm,cygnus-vc4
 
+  raspberrypi,firmware:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description: >
+      Phandle to the firmware node
+
 required:
   - compatible
 
-- 
2.33.1

