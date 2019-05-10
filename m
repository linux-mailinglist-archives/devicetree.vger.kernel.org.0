Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CF46F1999F
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 10:24:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727226AbfEJIX3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 04:23:29 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:39197 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727216AbfEJIX3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 04:23:29 -0400
Received: by mail-wr1-f67.google.com with SMTP id w8so4256943wrl.6
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 01:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=U4s1dss+n9Xva15zT8mISpfSr/mUjsA3fFxCGFPn9B0=;
        b=xtx6Zvf7rGsnmGj2NGzV3BEOMtTMORT+mlenmWD+IPsFijXjJ2Tyr0VK0hp/Al3hXD
         S0VtCRtxdkVjUc6Jxl51HYWMQSpq9UGG5EB/J/yCHaRwZjGMmDlHt3HGYWKaUz6MTgB2
         CsmQEb8aQN58qPcvt00IWI9hu7S/8/4aGzMrHlRt6QI5szH9UeOmnxpSb1/NCA8Q/7TL
         /pn7HOE8kyu30H7AUMMR8lIsDgKkNX8bZ9wCfpWiaIcRnX1Kh8QZS8hx4hGABewbyqI7
         bibzUxPIZaovtc0sEBhW61/zgzaX40H6uFd0NrMrDrvlxzRE7yyvXcDPAlt4eOAhDCaY
         18zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=U4s1dss+n9Xva15zT8mISpfSr/mUjsA3fFxCGFPn9B0=;
        b=Y2nzgtSoWPs/gCYxVJgX5H4VQTyVTZEk7BGeYRezSJ/OdjwEhFXmbsnvufqJRPFala
         SzL4lLfM3xFvXgeGRoKAiyhgNXiEIZ+YpjLY4H0SYW8O6FforOCNNF9ZrH+7FIYQVXj+
         C68AMcYEu+TNRhB1KNQzGE1LBYXoen7OwZk4lZw/xs9AFv7TyJ91Dy/6JgcChAvfmupN
         PPJaJ3bZHQ2e5NHDbgAQFvqVULnDiwf0dMKwaiyWp9dGnmN8vpRSsNC981+3T8LAAjcF
         Jje9RjITX37VplazdCGS+iHijfXy0jYfs7fHSXBfYCYgaoVVbb4ld7/4voGbABqhjlXu
         RXzg==
X-Gm-Message-State: APjAAAXZIlAmj9Ak5u7DcXmsDYuPlG59J+3ILrQ2LfLdpHpk9TOrqfdV
        2iDlS3Zgsy2g+sGWwsBW1FVtNQ==
X-Google-Smtp-Source: APXvYqy+BhXehiD7cbWFg775OPA4oSa5FmjSz+D1MtxqQQz2jWqz6EddyK8OpD1zRsJf7GXvsYXq0Q==
X-Received: by 2002:adf:d850:: with SMTP id k16mr6636198wrl.57.1557476607654;
        Fri, 10 May 2019 01:23:27 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id z4sm3790285wmk.5.2019.05.10.01.23.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 May 2019 01:23:27 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     linus.walleij@linaro.org, khilman@baylibre.com
Cc:     jbrunet@baylibre.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/6] dt-bindings: pinctrl: add a 'drive-strength-microamp' property
Date:   Fri, 10 May 2019 10:23:19 +0200
Message-Id: <20190510082324.21181-2-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190510082324.21181-1-glaroque@baylibre.com>
References: <20190510082324.21181-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property allow drive-strength parameter in uA instead of mA.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
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

