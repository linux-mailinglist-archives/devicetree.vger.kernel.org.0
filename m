Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C878447AFB
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 08:30:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237794AbhKHHaW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 02:30:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237802AbhKHHaM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 02:30:12 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 901ACC06120A
        for <devicetree@vger.kernel.org>; Sun,  7 Nov 2021 23:27:28 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id n15-20020a17090a160f00b001a75089daa3so2041179pja.1
        for <devicetree@vger.kernel.org>; Sun, 07 Nov 2021 23:27:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ibYrUCEgRz+O3z6IkyViyid6MIl4jLdozYXY2+QDyOA=;
        b=fy07Qb7pT9ElWRyx03B312jMf6QHNCa4Vijfldspvv5k+zwF/dKBSLRiqNlZsYIUJL
         nytoQ4+fQ2BF1OEx7jSjroL1eScHyRBRgGwcfauVt23wg1+PCsAPEeIKmUWDN1yF/b7U
         ycOlSQNXV3XOtm87QOk7hN3y2RMkb1yKwHJN8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ibYrUCEgRz+O3z6IkyViyid6MIl4jLdozYXY2+QDyOA=;
        b=tOtCHOKnYrCL66iOzzwahe21TxVfS6U5T/y/5xUr2Q0qf3rAexrodSgn51K+YjXrEx
         USTRG0BvqONFHuC4DgHNf5InHQ34WgQyVAfKGFIJWLZPCanuStpfJdfyEjOzBT8vAsDB
         EvkyK8iHF3KyPbgWAKTQO0riv79ZFhbzsJ+aLkyeHMsRZB/FmKKI0P3iARApX0ZsoCTh
         PPDmKe7ZnDlzQ0GCzGGZ58mTpt+MaO5BDFi5w7NbxYxeeOsm3rKk9W+shHN1EEwgzUP0
         vY7G5cYBcLddkqADhRtjY9sDSxfnzgqNSd4dlznurQFRCpGONQLXW8DHc+0yZN3tKifj
         HQJw==
X-Gm-Message-State: AOAM5311WTcjCZRgNRsALOSxrhHhzW/+0nYNt4M6BOiNjyZFONzZR190
        B55eY4RsgOb2dEOY/njRAyvABw==
X-Google-Smtp-Source: ABdhPJyqETo/x1CeHyP4wBfcZNndWs4Br0LOvBzLjoY6GJIiry6n2e/xFv3Txt1JYc89hseVrLIqcw==
X-Received: by 2002:a17:902:ce8c:b0:141:d411:7e25 with SMTP id f12-20020a170902ce8c00b00141d4117e25mr54720970plg.85.1636356448062;
        Sun, 07 Nov 2021 23:27:28 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:5f03:6a9b:24e8:3a2e])
        by smtp.gmail.com with ESMTPSA id e8sm11684972pgn.46.2021.11.07.23.27.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Nov 2021 23:27:27 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] dt-bindings: arm64: dts: mediatek: Add sku22 for mt8183 kakadu board
Date:   Mon,  8 Nov 2021 15:27:11 +0800
Message-Id: <20211108072711.1628566-7-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
In-Reply-To: <20211108072711.1628566-1-hsinyi@chromium.org>
References: <20211108072711.1628566-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add sku22 which uses different audio codec than previous kakadu board.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 99e7f8e294cd03..da5f9ecc1a9b37 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -161,8 +161,11 @@ properties:
           - const: mediatek,mt8183
       - description: Google Kakadu (ASUS Chromebook Detachable CM3)
         items:
-          - const: google,kakadu-rev3
-          - const: google,kakadu-rev2
+          - enum:
+              - google,kakadu-rev2
+              - google,kakadu-rev2-sku22
+              - google,kakadu-rev3
+              - google,kakadu-rev3-sku22
           - const: google,kakadu
           - const: mediatek,mt8183
       - description: Google Kappa (HP Chromebook 11a)
-- 
2.34.0.rc0.344.g81b53c2807-goog

