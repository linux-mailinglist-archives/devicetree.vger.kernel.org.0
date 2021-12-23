Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0AB047E329
	for <lists+devicetree@lfdr.de>; Thu, 23 Dec 2021 13:24:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348206AbhLWMY4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Dec 2021 07:24:56 -0500
Received: from mout-p-101.mailbox.org ([80.241.56.151]:15210 "EHLO
        mout-p-101.mailbox.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348194AbhLWMY4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Dec 2021 07:24:56 -0500
Received: from smtp202.mailbox.org (smtp202.mailbox.org [80.241.60.245])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4JKTsf5kkFzQlMr;
        Thu, 23 Dec 2021 13:24:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1640262292;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=8AJpoRdexrnOtBRI2pfsPR3ucnnbUQrgNa/5ZNXlnTw=;
        b=pBEv7ALiG6Hg1wxHFU+oU6uBhU51v7lwcvW3Rkap/aFAesWIN7GDgAL8AlON5cYrj2k9AD
        dKLysegDxC3ZQozdGI6yC0dXZb4tIengZ7xk/5we8n9/hHu8d6g2xaKdydhgYsRQtxiFPb
        Dn5D0byw8ImsqMkGoWspgtj+Cg/44uhpi+l/F+gXLYJYbI7G8rnnhzgIAxrK+NIQEbPBuq
        657lc9ckNInGEdt99GeoJNprbBYs5luLpQoKR+USAa7sbs676IP1rVd47YTiyLyKL2Vdpl
        g0aJnmf5H35IIAjfdRDINN8XtUlPle+11RnzjF5dp8fd3LCoFvGNFnuK9PqntA==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH 3/3] ASoC: dt-bindings: aiu: spdif-dit: add missing sound-name-prefix property
Date:   Thu, 23 Dec 2021 13:24:34 +0100
Message-Id: <20211223122434.39378-4-alexander.stein@mailbox.org>
In-Reply-To: <20211223122434.39378-1-alexander.stein@mailbox.org>
References: <20211223122434.39378-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is used in meson-gx. Add the property to the binding.
This fixes the dtschema warning:
audio-controller@5400: 'sound-name-prefix' does not match any of the
regexes: 'pinctrl-[0-9]+'

Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
 Documentation/devicetree/bindings/sound/amlogic,aiu.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml b/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
index f50558ed914f..0705f91199a0 100644
--- a/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
+++ b/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
@@ -9,6 +9,9 @@ title: Amlogic AIU audio output controller
 maintainers:
   - Jerome Brunet <jbrunet@baylibre.com>
 
+allOf:
+  - $ref: name-prefix.yaml#
+
 properties:
   $nodename:
     pattern: "^audio-controller@.*"
@@ -65,6 +68,8 @@ properties:
   resets:
     maxItems: 1
 
+  sound-name-prefix: true
+
 required:
   - "#sound-dai-cells"
   - compatible
-- 
2.34.1

