Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA2AD447AFF
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 08:30:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237776AbhKHHaY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 02:30:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237782AbhKHHaK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 02:30:10 -0500
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A98AC061764
        for <devicetree@vger.kernel.org>; Sun,  7 Nov 2021 23:27:25 -0800 (PST)
Received: by mail-pg1-x535.google.com with SMTP id g28so5744475pgg.3
        for <devicetree@vger.kernel.org>; Sun, 07 Nov 2021 23:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=86/08aG+p6XRAME724Hp/6Odjw/P8UK3rjLz7Rko9pk=;
        b=BoKRvTZq9J89itv9JdK95/IEvYvlERVkjE4uPlab1EPj81cb7iIkNKBKx2A3R/yObw
         rEAqUp4cNaL2pspRaB/VkcTnTKLJkW6ZibMb0Radd063Qh0L5z8Qr+KBkYwO5Lg6nIV5
         XWh+kD3mxSCrLSR8xyyEQjAUMZC2hy78prXEE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=86/08aG+p6XRAME724Hp/6Odjw/P8UK3rjLz7Rko9pk=;
        b=aE9mWtAOKGSCWW/Y9IvzFZYXmSmqcW122JLgwLhT2z429IW2i1cPp5YDOqY39KOeX5
         FBRm3/HNVye19kudY/KW246UPB6KZ5Y/nHjGSOnYP4AnPWTjNqZnoFnfXwkO4hu20/Xh
         fUyyzTODCMA9UNxFgxXzexDfCecDcbsv1gO3tYtuTzkL7zpyKfVJiM1O2qmURFfCxjf4
         /tQovADkgxavovtEf8s3F20NfvT9FT1PG6SzpaL8tpubJvhqkO/g0UCwkvCpZBHYn6NA
         kSCfLDcg7prvYk26c04RgtE9/wTDpkUIzcCHg8R+vDjBFD2/qDSMe1HoHkGtXlnC0tyA
         gqAQ==
X-Gm-Message-State: AOAM531Uu1xPrBKNCxYkSr2TV7TwuxjREKL5ZAJpnl8pz4gsi//wGaGX
        t0TxmVFv6uYxbcZw2DXTu/VpVA==
X-Google-Smtp-Source: ABdhPJxBc8kDL+AipaPGGIJV+ISqQwRN6bcmo0o4RCyreI3Ep0nB0BYF3VKg8o/EMmACT5x2zTXZXw==
X-Received: by 2002:aa7:8204:0:b0:494:68ea:ea89 with SMTP id k4-20020aa78204000000b0049468eaea89mr30641937pfi.74.1636356444836;
        Sun, 07 Nov 2021 23:27:24 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:5f03:6a9b:24e8:3a2e])
        by smtp.gmail.com with ESMTPSA id e8sm11684972pgn.46.2021.11.07.23.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Nov 2021 23:27:24 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-cozmo
Date:   Mon,  8 Nov 2021 15:27:09 +0800
Message-Id: <20211108072711.1628566-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
In-Reply-To: <20211108072711.1628566-1-hsinyi@chromium.org>
References: <20211108072711.1628566-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cozmo is known as Acer Chromebook 314 (CB314-2H/CB314-2HT) Chromebook.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 0fa55497b96fd2..7cf0c76cd31006 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -134,6 +134,10 @@ properties:
               - google,krane-sku176
           - const: google,krane
           - const: mediatek,mt8183
+      - description: Google Cozmo (Acer Chromebook 314)
+        items:
+          - const: google,cozmo
+          - const: mediatek,mt8183
       - description: Google Damu (ASUS Chromebook Flip CM3)
         items:
           - const: google,damu
-- 
2.34.0.rc0.344.g81b53c2807-goog

