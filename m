Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BFE5260C91
	for <lists+devicetree@lfdr.de>; Tue,  8 Sep 2020 09:54:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729746AbgIHHyq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Sep 2020 03:54:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729466AbgIHHya (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Sep 2020 03:54:30 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA3E2C061755
        for <devicetree@vger.kernel.org>; Tue,  8 Sep 2020 00:54:29 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id a9so16159879wmm.2
        for <devicetree@vger.kernel.org>; Tue, 08 Sep 2020 00:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AaJv1mu5ukB/CIcMyJjiUkroua19/SVkAvuVAHfagew=;
        b=yj9Ik1ndq3jW04GwKrFOI8D/lPSZVkGcU3uzyMVspnynRbQKdFBJN4BFNiIapGRwnR
         vZYjfZ0jXsdmJWS2xNWLvFAWOvA/GkMFUOAaaTEjv4YuNA7igfTuaSL5w/Sx2MUcPs1w
         9pykHkjdFNrAQGds+Fr60lNduf7ESa5KsiloGG7zLHXEXWpDE2FP7wi44xCKbV+GuJhI
         Haax/tWmOAxnKiL294A24g/1CrLCj+/h9S9lPochIfNWS6onPfaA+hmH/Ua5nIQz7BG3
         mCQZSq/T9x96bj+Wrq7sDzE8UmwxlOhooZ9aKAii8BJ36d4YcmdyiDE/E869lL1S5Vt7
         txiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AaJv1mu5ukB/CIcMyJjiUkroua19/SVkAvuVAHfagew=;
        b=L9p/94oEbMifuoCiMA+yGx+xRblPuDfZFNjk2pUjJQf4wdX/W50d903bc0Ge/2abaM
         5G04clmUbq+oYzGEtNt9A9SZltD0SOG4XtgTMS0JMhMnbVNjOl0NBVNToAwwXmSkxhV+
         hJgwi9FPHhHFDEnA0J7rWafo/p5SZxkya5vyzzz8TULRrBeGKXbvT1/faiUm9DRe4zOd
         98fxwCva8rnYnWl45nlFuqGVcrHa/pWfqLJhljyvUQGKue21jO60ih86AOgDQGjBBm+W
         b3fd9GJrOxlaRR4MycbIinCfRYRsZKoP1S5PS9qvqMWX55ALlWxDGFI5xAPrbw4p7Qxc
         UTgg==
X-Gm-Message-State: AOAM5308nwT8qaqG4WHrJcm6EDvPQ0GifKtefZZ/Raws8zxnjzBh7VQK
        mXbFV9jOTLNoJRyl44LIIJ7XGAS8krplwisP
X-Google-Smtp-Source: ABdhPJzELndZXOBjcc+iB86Na+d7gpW0eUl7Xb0Mcmpwvh1mxirZqv7irrBgH24N13Nm09Gk9voTNQ==
X-Received: by 2002:a1c:7215:: with SMTP id n21mr3241141wmc.154.1599551668340;
        Tue, 08 Sep 2020 00:54:28 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5405:9623:e2f1:b2ac])
        by smtp.gmail.com with ESMTPSA id f14sm33788291wrv.72.2020.09.08.00.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 00:54:27 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org,
        devicetree@vger.kernel.org
Cc:     dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v3 1/4] dt-bindings: vendor-prefixes: Add Shanghai Top Display Optolelectronics vendor prefix
Date:   Tue,  8 Sep 2020 09:54:18 +0200
Message-Id: <20200908075421.17344-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200908075421.17344-1-narmstrong@baylibre.com>
References: <20200908075421.17344-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Shanghai Top Display Optolelectronics Co., Ltd  is a display manufacturer
from Shanghai.
Web site of the company: http://www.shtdo.com/

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a1e4356cf522..4e9dfb352c68 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1078,6 +1078,8 @@ patternProperties:
     description: TPK U.S.A. LLC
   "^tplink,.*":
     description: TP-LINK Technologies Co., Ltd.
+  "^tdo,.*":
+    description: Shangai Top Display Optoelectronics Co., Ltd
   "^tpo,.*":
     description: TPO
   "^tq,.*":
-- 
2.22.0

