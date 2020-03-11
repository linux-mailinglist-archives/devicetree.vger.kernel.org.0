Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 79E3B1818C1
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2020 13:51:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729232AbgCKMvp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Mar 2020 08:51:45 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:36819 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729287AbgCKMvp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Mar 2020 08:51:45 -0400
Received: by mail-wm1-f65.google.com with SMTP id g62so1995399wme.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2020 05:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=7TEk00KRvrt3fqESY+Dr/uhZ8TDjILzLnA4sir1MLYk=;
        b=gT7A+bxiCh0yWVbJWXiDUKwtCeWGDafJ5mchK3a6+Goc5k1FbamDZ57ozfvwr/M8j4
         A4r864OherYK7wWqw0tR3tQaGRMkiShA1mgt2EFYAYz7iiDL4KGhgXuevS4Ea7lOky/K
         h3RVntwIqgeaxJYgcsgaORFKlV1/6W3tY43Ly0zRg978gFxqTvMrx0/gZQ/h+wyKbx2J
         heaSSXGQ3w6YJGElmryIF8beBobOItlQNGx2z10Vrae7Iov/sCgPWFu/3hFmEAoWY8sO
         yL3Lzz18MUdIk2/oCd/MVCn3/7mBvNWlrbgR/pQFyLBwOoi+Zvpbkk4PNuQx/12+ORf4
         0KYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=7TEk00KRvrt3fqESY+Dr/uhZ8TDjILzLnA4sir1MLYk=;
        b=MQs3KW+YNIUcam/WAl1r5T755DqYr5GuYGFEV9uJRlSkTGsaCnuCCtKWJ5qKsLh2L3
         5op42O/+OGiV4L7XjNRv2ivHtT/xguUj7clEP6vqXTdj6ka9bPqhHojG4113v8Rw+fZa
         H8kdx8gPI6dBAVF4C87HRVBcbjPVtNllgU4sFf+ldB5zhRsm+Nr8WYA4BqG3eOfAd2jf
         d5V0ZIyUbIUdIM5XrMg0Lc+X0DmMdmLtLkx7IlSnauvBzpKog8Y3KwPy3wF2rwEErf5b
         rJn3JX1BWr0owlfSQWjMAtudYWPQpchJXWoCqZb6DYFGPcRH63B14bONZzWJ1K0b2G4/
         TByQ==
X-Gm-Message-State: ANhLgQ2anuXsWrdTR/BypOJM8w1H54idmNhTnGWmEuaFnUyx7x1a4qr0
        S2Voi4n4wnrlw5iXyrCZe1LS7Q==
X-Google-Smtp-Source: ADFU+vulHpARqePVWhIZW1U/urxTnIw/zeRXfvdwAMhWGWKcYtaPGBAL3+zQX9ckUN8yquvV06X5Bg==
X-Received: by 2002:a1c:59c6:: with SMTP id n189mr3614794wmb.178.1583931103706;
        Wed, 11 Mar 2020 05:51:43 -0700 (PDT)
Received: from robin.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id o3sm8843538wme.36.2020.03.11.05.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 05:51:43 -0700 (PDT)
From:   Phong LE <ple@baylibre.com>
To:     narmstrong@baylibre.com, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org, mark.rutland@arm.com, a.hajda@samsung.com
Cc:     Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@siol.net, sam@ravnborg.org, mripard@kernel.org,
        heiko.stuebner@theobroma-systems.com, linus.walleij@linaro.org,
        stephan@gerhold.net, icenowy@aosc.io, broonie@kernel.org,
        mchehab+samsung@kernel.org, davem@davemloft.net,
        gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
        andriy.shevchenko@linux.intel.com, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: add ITE vendor
Date:   Wed, 11 Mar 2020 13:51:32 +0100
Message-Id: <20200311125135.30832-2-ple@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311125135.30832-1-ple@baylibre.com>
References: <20200311125135.30832-1-ple@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add ITE Tech Inc. prefix "ite" in vendor-prefixes. More information on:
http://www.ite.com.tw/

Signed-off-by: Phong LE <ple@baylibre.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a2da166df1bc..c2fb444e1900 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -475,6 +475,8 @@ patternProperties:
     description: Intersil
   "^issi,.*":
     description: Integrated Silicon Solutions Inc.
+  "^ite,.*":
+    description: ITE Tech Inc.
   "^itead,.*":
     description: ITEAD Intelligent Systems Co.Ltd
   "^iwave,.*":
-- 
2.17.1

