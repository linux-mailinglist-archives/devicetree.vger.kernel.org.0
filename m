Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D39C71C4ED
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 10:28:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726519AbfENI2i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 04:28:38 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:42071 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726109AbfENI06 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 04:26:58 -0400
Received: by mail-wr1-f68.google.com with SMTP id l2so18109416wrb.9
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 01:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RK97rIPqJ1mZypVshy2AL2Te8nJvkZlZG4fdj01VBV8=;
        b=sUzajzzkQiSy4sPdi9iAqWdKPbA50pOct8MjX3ZvHTi8X0BPfW4FbUJF7hbgySJr+F
         6CJ70MhdP451txHIBSW5QUYtDcSbh2bgsXnP5gwVjppE4jsmWNix7vSUNvUlmHLMhS84
         uWS4JVQbn1jKt3HI3V/R+vuCAD2GAjGUYDQrtmDO0+bAhVgQDcwZkvWy8cbLrp5jKK60
         rvRUyBxyySsgGyfMx5h4ICpyW7l4RWFCzFM3UNVnC5j7j/paEcvOqK7bMx1j1KAc3CAt
         pJuq1VYTgFaV63pfeIbxQfSD/jmpubep6UZURn+BVTchmzmU2icDNBu+26OVemGpQg++
         Sh6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RK97rIPqJ1mZypVshy2AL2Te8nJvkZlZG4fdj01VBV8=;
        b=WZVWv3FOuooxv3boDCYsOtgb8QENJWGjEZU0CBjD0NNgolsKLn7AoBRiryiI6lzico
         wTFY+Qhv/Ig6L/pp7rbYhz9/NwpserYxeM6NU1TVLQsR9iD0mTC7mjIHkaDx87gJpyLI
         QMNDFODC5d98wHx8XNewe6/FwRYt7dSSdYZUPQibh4XPBG/aA5S6y0ekRM2p4D8oqOFS
         lT/LW967R3HrP7M/89ZtGZPFYz3n1754ujvfaIvcP4+l/of0rUEoDyBbeAJUNUljBi32
         KjrXrviYF67s5VvquHtcx+azlpzo0OVP028xt5mvkjesd9VD1h9C6KpIja6hejGnoTwq
         GlpA==
X-Gm-Message-State: APjAAAX5WaZmoR0MJFroJSaGPkrBvQe/QdNC1xv+omiAK3vlPB7bJTFV
        nPrVjIl3+kszmb0sLTSzMhA5UQ==
X-Google-Smtp-Source: APXvYqzeS8omztpZAz37W/A3cxE173n7dyzC4UL8ae/t0P+AL5+oSE+n7XEoWFhsP02XFjXF0fd6xw==
X-Received: by 2002:adf:da4a:: with SMTP id r10mr20120761wrl.216.1557822416023;
        Tue, 14 May 2019 01:26:56 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.home ([2a01:cb1d:379:8b00:1910:6694:7019:d3a])
        by smtp.gmail.com with ESMTPSA id j190sm2450772wmb.19.2019.05.14.01.26.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 May 2019 01:26:55 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     linus.walleij@linaro.org, khilman@baylibre.com
Cc:     jbrunet@baylibre.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/6] dt-bindings: pinctrl: add a 'drive-strength-microamp' property
Date:   Tue, 14 May 2019 10:26:47 +0200
Message-Id: <20190514082652.20686-2-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190514082652.20686-1-glaroque@baylibre.com>
References: <20190514082652.20686-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property allow drive-strength parameter in uA instead of mA.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt b/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
index cef2b5855d60..fcd37e93ed4d 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
+++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
@@ -258,6 +258,7 @@ drive-push-pull		- drive actively high and low
 drive-open-drain	- drive with open drain
 drive-open-source	- drive with open source
 drive-strength		- sink or source at most X mA
+drive-strength-microamp	- sink or source at most X uA
 input-enable		- enable input on pin (no effect on output, such as
 			  enabling an input buffer)
 input-disable		- disable input on pin (no effect on output, such as
@@ -326,6 +327,8 @@ arguments are described below.
 
 - drive-strength takes as argument the target strength in mA.
 
+- drive-strength-microamp takes as argument the target strength in uA.
+
 - input-debounce takes the debounce time in usec as argument
   or 0 to disable debouncing
 
-- 
2.17.1

