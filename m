Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8C31944B57
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 20:55:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729535AbfFMSxz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 14:53:55 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:34709 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729518AbfFMSxw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 14:53:52 -0400
Received: by mail-pf1-f196.google.com with SMTP id c85so12400853pfc.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 11:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T43YpeB6KPwzAeP2AJF/MUSVY3ntDzP4uFwV6vk6NQg=;
        b=j9mr7D0Q6WW70PaeAtZuQL8G13f13pQs9IWPwKl+tPlMpbbUYNHSA7/2znZNRp4i6f
         xuPGM5N8BaXMZD4k9kcCOJvheE6bxtkD9vhqrtzOQlUR2aj++rY26vh/QPKy1Nx4sSA1
         k6tcIi7x5mhhp3NQyTlU98pZFu5OqX4r0AHls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T43YpeB6KPwzAeP2AJF/MUSVY3ntDzP4uFwV6vk6NQg=;
        b=IieLoEcVJMflIS+UE1pmKcGwUCtRsznHD/Gf+KZaGXNyG6t6XqnJgdiifqIkX+c1Ub
         MGdn4+UoqNuFicN/BW97dZd//f4qSyg3qZdZcTpOKUfqncl7flXMssdDNUwNKtoTn2Wh
         6t6KiH+Ex2ywKG+9iuqTgS7Z/aR5TTS8xxqe5kPBiP2WP7UWOoCVsVlGiA3w31dtob6A
         nxFcf3vFC2TSCYwSuby5vYiTInYJfxK0TCJ7ZNzu/q2RhVrUIXLOkkXTGzC9Mdn6dKnz
         Wdl9F4VbRMIkynEJ2LKHRjpjpqV1fQnHVlAR6hjrsiUYIWmvHma2dnBt+Sh+1DyLOCS6
         LwGA==
X-Gm-Message-State: APjAAAW642v/PbZRdhJA4V+8W563qOjXCCr4C5D6Di4R/5q3wCboNpap
        SzNrBh41p4vXl5PPZiUPqkvMkA==
X-Google-Smtp-Source: APXvYqyVfFXF+RWaOpNVOg11XNoCvv+xPHrf1CT9JUGH0iqGtinHj2ErGGLnXkVZWEBC2hZlm3HTDg==
X-Received: by 2002:a63:d008:: with SMTP id z8mr32305004pgf.335.1560452031872;
        Thu, 13 Jun 2019 11:53:51 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
        by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.53.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 11:53:51 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/9] dt-bindings: display: Add TCON LCD compatible for R40
Date:   Fri, 14 Jun 2019 00:22:33 +0530
Message-Id: <20190613185241.22800-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Like TCON TV0, TV1 allwinner R40 has TCON LCD0, LCD1 which
are managed via TCON TOP.

Add tcon lcd compatible R40, the same compatible can handle
TCON LCD0, LCD1.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt b/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
index 31ab72cba3d4..9e9c7f934202 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
@@ -160,6 +160,7 @@ Required properties:
    * allwinner,sun8i-a33-tcon
    * allwinner,sun8i-a83t-tcon-lcd
    * allwinner,sun8i-a83t-tcon-tv
+   * allwinner,sun8i-r40-tcon-lcd
    * allwinner,sun8i-r40-tcon-tv
    * allwinner,sun8i-v3s-tcon
    * allwinner,sun9i-a80-tcon-lcd
-- 
2.18.0.321.gffc6fa0e3

