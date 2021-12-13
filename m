Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC9334731D4
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 17:29:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240856AbhLMQ3H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 11:29:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240848AbhLMQ3E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 11:29:04 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F4B9C061751
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 08:29:04 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id h24so12249090pjq.2
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 08:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PHDKjEXSmqoSIP+TB1gPedSyi6ETK7cM1nPYeOviVPg=;
        b=EQAL2svOqRuf+zxv1dtfNQpVATmX4LvJABaaH6nUaqH4o7Y/8OZ98vtyTXbksNyosX
         fXP6V85IhR6iuR9Xr/EbWsPCfKTkXPg/Ol15Z0Gzaj5iiWZVK0t2KmoGhYvs1OJERxhK
         Arh1UB83YQSTSDjEhMioiq5l6ZbEbBO9JbBzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PHDKjEXSmqoSIP+TB1gPedSyi6ETK7cM1nPYeOviVPg=;
        b=TGDGHZAHdaqYA1HgNUoIJhoXpqnVs7hyGSngu5gP18eVE6QC+xPWQwcQw0G8noCSFY
         3zWJ/ZETz7AjTx2cbcKLwdLzuGg6YhJ+ZD+M9eJMAni9QWaOadGLUS+GR2qNS0/e9Iff
         P9VOXbcvBhw6IH6j7r0eGmZ6byXNsucSuO2P2SGYwvz9n92/q6k5zcdWngYK3UggbSdB
         BlQBZlAMEya916inBXOvt/UN4M5Z1patDVdmmoV2uxnrziEL7bXUXwD19CqNqdNAZ3H2
         XP1Bxwterp+WKhdWPeb/f49DbVW+ucB7aAo4LBxtz/l/imJSBRRuoWL4FRaDau+/2KoJ
         Pi1A==
X-Gm-Message-State: AOAM5300vG3bq9WgnwTLjx18gL9LbiK9eJPDovQDlxo0MXGlJI0pD7B8
        eofgvM+nDiN7z6LgRvdOsuvsoA==
X-Google-Smtp-Source: ABdhPJx2ld4vBsWFYDkWoQWK3Tn1x1+xO/FN+YYtifgE6j87eHBM9RajAJ4+aWYkEHW6TxBDymzzyg==
X-Received: by 2002:a17:902:c407:b0:142:28fe:668e with SMTP id k7-20020a170902c40700b0014228fe668emr96615217plk.31.1639412943778;
        Mon, 13 Dec 2021 08:29:03 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:9447:edff:ad23:1bfc])
        by smtp.gmail.com with ESMTPSA id mh1sm7803802pjb.6.2021.12.13.08.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 08:29:03 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-katsu
Date:   Tue, 14 Dec 2021 00:28:55 +0800
Message-Id: <20211213162856.235130-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.173.g76aa8bc2d0-goog
In-Reply-To: <20211213162856.235130-1-hsinyi@chromium.org>
References: <20211213162856.235130-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Katsu is known as ASUS Chromebook Detachable CZ1.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 723810cffce2e7..75bb06d1802a08 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -175,6 +175,13 @@ properties:
         items:
           - const: google,kappa
           - const: mediatek,mt8183
+      - description: Google Katsu (ASUS Chromebook Detachable CZ1)
+        items:
+          - enum:
+              - google,katsu-sku32
+              - google,katsu-sku38
+          - const: google,katsu
+          - const: mediatek,mt8183
       - description: Google Kodama (Lenovo 10e Chromebook Tablet)
         items:
           - enum:
-- 
2.34.1.173.g76aa8bc2d0-goog

