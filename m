Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8563544B51
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 20:54:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729335AbfFMSyj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 14:54:39 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:40593 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729914AbfFMSyV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 14:54:21 -0400
Received: by mail-pl1-f194.google.com with SMTP id a93so8534295pla.7
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 11:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sk+uYjhqJHAw964SCFGOxu5y7oNB40UpzgVh7GqXmwg=;
        b=fBsDzS4JeqKEhAEeQoe57Gg6zI4DRJe+6X0Jpla0pRzUX5dwOlDJ0aTXE9tGmj1KTb
         dThn0C4kaitvtTYciol0iT8B+ePfWv7AlL58S8oQHnLqu4EhB33n+WSObLFlu9V+XrDX
         nx2ai8wBzG3Q7T7EGeD5ShFcX+LnCdLUk1rMs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sk+uYjhqJHAw964SCFGOxu5y7oNB40UpzgVh7GqXmwg=;
        b=eETC5a5zf1BZm5it0YT2TkSMEWS1ChkBpxx/e7MM2zqwAvoKW5VWbTAZn7jMcKtVEf
         zQnsxVfGGRPyM0JWA7iVTwgxDaLrQs5lIz/PkhiQcRVbpCoNKRiMyV8/EPcNMMO9ndLw
         xVUnx72yTt7cY33I2COOg2mbBzdxByApH7Dp+f1/v+gH+6sfk6/3HQhH2PlNu/cMuwgA
         eVB4Jbn8cxSDSCUf7e1hPXr9XCmZBvtn91oIa4ScIZEuDXgN7pq9II9e14YjTQ62rlbV
         mbFcuWx1riCraFpAEDbAmfX/jpw5yxx4IiqaKl9NlUM6mS+VTkhBhhFL8Psvt+wPJm9U
         ipWg==
X-Gm-Message-State: APjAAAUhkvxUuIauxqJp/GVv2lwPAxUd/wa+0nm+1JzeP2slHNQ1VIxO
        V+JF5Ap8UrEE0nYfkrvbN/+qv4MUG38=
X-Google-Smtp-Source: APXvYqxdCbhYLN1KvxrQ0Bk6AS/+DAcgn/aZPji8xl3m3SbFHzYoliwV48IHU6lpqn7tNm9669WzBA==
X-Received: by 2002:a17:902:6acc:: with SMTP id i12mr12248821plt.214.1560452060308;
        Thu, 13 Jun 2019 11:54:20 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
        by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.54.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 11:54:19 -0700 (PDT)
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
Subject: [PATCH 7/9] dt-bindings: sun6i-dsi: Add R40 DPHY compatible (w/ A31 fallback)
Date:   Fri, 14 Jun 2019 00:22:39 +0530
Message-Id: <20190613185241.22800-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MIPI DSI PHY controller on Allwinner R40 is similar
on the one on A31.

Add R40 compatible and append A31 compatible as fallback.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
index 438f1f999aeb..b7ad1be33008 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
@@ -40,6 +40,7 @@ Required properties:
   - compatible: value must be one of:
     * allwinner,sun6i-a31-mipi-dphy
     * allwinner,sun50i-a64-mipi-dphy, allwinner,sun6i-a31-mipi-dphy
+    * allwinner,sun8i-r40-mipi-dphy, allwinner,sun6i-a31-mipi-dphy
   - reg: base address and size of memory-mapped region
   - clocks: phandles to the clocks feeding the DSI encoder
     * bus: the DSI interface clock
-- 
2.18.0.321.gffc6fa0e3

