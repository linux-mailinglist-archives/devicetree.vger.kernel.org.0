Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 64A46D7B40
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 18:23:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387681AbfJOQXY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 12:23:24 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:55795 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387939AbfJOQXP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Oct 2019 12:23:15 -0400
Received: by mail-wm1-f66.google.com with SMTP id a6so21529421wma.5
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 09:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=02ptUi820rtgb1rVywdXHHVh+A6FBo6gb2V5cVn00l4=;
        b=MtpXMuoLIGOHdIDmPktqqAnPBBGdTjagnzKbds+7qPmfpcLGCESELR2gYmKw+dAlsH
         GALZyOdhrfBMu5kJ+9Xdwc10r7YixnzgTtoEN+sXwjbniUhbJe7QvOO/aAIzGpPEh7wf
         tfCJUfOOWUzVdJeNCG6CFQB8dEnEzKFW+8j2U5xtaG1G3ZhP43Ie0qhZ8IVGsF0AXBnv
         DMOWQaRx3fOEAAcptWX7okOpspg4CH1Ta5qXiMV2qqrxphCM/NqNvepzLTjUnEvCyNA1
         1AfGvqLU5KqSe4tJuDyCVpvjoNHpQNhZx5ieCd6JnQGy7BJrhwx+i3RBcBCT1IEoLoes
         Zqtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=02ptUi820rtgb1rVywdXHHVh+A6FBo6gb2V5cVn00l4=;
        b=lKxzc5KHA3KhWYk0B8hCtfaioFSzOyZcPjPgLAOKwoZbEFnQ1hYkcQhtBm6GpXheKv
         eLtGWvaax5erz/Qh1cvk5was/XruWPZD2sZPz57uWE7WsYpHT93RXIxNmsPcLlva6uiS
         7gN7xFhwOZGAAAp3BUWJOlUMHbSnvSXVhksuSccuUGwARkxfFeUG0q4vugc+vOYyT0Vu
         e3KYoBGG2Ya8XSC33mMtUr/z8x1TUnFo7qO/JeMM85V74GPFbOAHF3Qydqo6Dv61+cWT
         HzGPl+om+nbx87aXr/y7u9R6GCcRUwMkEoRBnysaRuj4XrFoPQwczP/+GnKk8hiNCtY1
         XOqg==
X-Gm-Message-State: APjAAAXKIMUPIzQ+eP89w4/Wti3wbV+Ufm/tQ/55dfi52oJkRfF7QAHD
        1xsTBaFxPgK4R8vUJj8ik5H/MoUMreI=
X-Google-Smtp-Source: APXvYqyezfzjgdEUemMJTrQBNb59P7iN2VRfn6C43WnRKbQCCmslDGhSYjUP8u7dsDPSEr9csaBvYw==
X-Received: by 2002:a1c:e08a:: with SMTP id x132mr19703933wmg.155.1571156593871;
        Tue, 15 Oct 2019 09:23:13 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
        by smtp.gmail.com with ESMTPSA id x129sm41427605wmg.8.2019.10.15.09.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2019 09:23:13 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Lee Jones <lee.jones@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH v2 6/6] MAINTAINERS: update the list of maintained files for max77650
Date:   Tue, 15 Oct 2019 18:23:00 +0200
Message-Id: <20191015162300.22024-7-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015162300.22024-1-brgl@bgdev.pl>
References: <20191015162300.22024-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The DT bindings for MAX77650 MFD have now been converted to YAML.
Update the MAINTAINERS entry for this set of drivers.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 MAINTAINERS | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index a69e6db80c79..c05e6fd6aedb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9903,8 +9903,8 @@ MAXIM MAX77650 PMIC MFD DRIVER
 M:	Bartosz Golaszewski <bgolaszewski@baylibre.com>
 L:	linux-kernel@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/*/*max77650.txt
-F:	Documentation/devicetree/bindings/*/max77650*.txt
+F:	Documentation/devicetree/bindings/*/*max77650.yaml
+F:	Documentation/devicetree/bindings/*/max77650*.yaml
 F:	include/linux/mfd/max77650.h
 F:	drivers/mfd/max77650.c
 F:	drivers/regulator/max77650-regulator.c
-- 
2.23.0

