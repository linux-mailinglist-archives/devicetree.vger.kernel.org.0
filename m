Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A51D3647315
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 16:32:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230373AbiLHPbj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 10:31:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229635AbiLHPaw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 10:30:52 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 131D384B71
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 07:30:44 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id y16so2048704wrm.2
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 07:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kpi/j5z0FbtVkkrb1PZtlydLmmXe24f0gXZLejwp68M=;
        b=Ncgde2xkEEF7N78o+7a6QgHZVmWNhGH7KfQHQ2MNmk0i5oNgbS5hlnHDCzFp4z6bfh
         fAY6Hyol+fpPuVPmv1yxv/yuGJU1zbqGDqamEnKbMQQInZ/7WdvkYQKzpBrGXSQizNRC
         xWq+c89MTmmczI/38+BAS74+wr1ixg7np7sIYG4YVrVT1GRuyd+BdwEcDICmzRmjAzCp
         cOG8JfkCNmSa3o+VlciZlqyY/SBZ+T1DDwf14esb4SIJlu4GnbW7ltb/9PAOk0mYkhQn
         0Xrbb/H5m7PefDqnK4tluq+h+tPd3LFwJnQjUoRY+z1bIwbPzRu8w7LXCeBMwMqqXxaZ
         IPrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kpi/j5z0FbtVkkrb1PZtlydLmmXe24f0gXZLejwp68M=;
        b=pinROjqHETh4fqQPO8tEeeMeZCkO0xiE4ddVieWr5oRUV6D2oWMSuduJmy6mU2zS4Y
         G5KNbgaK2EWbgsjmzeJ7TAD9VTj04TvN/CJhumDQjbp02QpdUOxwdn28AZXTSFZZeeTy
         i9nM/NpQTgrOrdI/4p4XA670Ka90pWwo6amveicda+Gqa0PlocmU2CsWyDaeOhfwWUvM
         fVBH/dRCvhGNqAmkDnlpvYW1LwuuA564rTuk8ZdC2NhQm1rrS8qItHz6bFiEP8aDMmtG
         TnRddOMt5/4lcWJpWW7QMj9G/cJYY3N+3Gz062d6E7w4b0rfNmnInPYL/bJYHuOcOneW
         XunA==
X-Gm-Message-State: ANoB5plBxz6I66/ZF41c619cdklrZbj+aFui0182Hji+8YeLp+wWqFZJ
        cxpxo/nEFH63nXz1MXkpAphCZw==
X-Google-Smtp-Source: AA0mqf7JE15GmAE4aDoqbu1GztReLcb2ZiFPPX8H6zMGZmcao5P4v41JRR4wBSmp4dtXkDKIfxfkyw==
X-Received: by 2002:a5d:490d:0:b0:242:fa5:ce83 with SMTP id x13-20020a5d490d000000b002420fa5ce83mr1925959wrq.37.1670513443451;
        Thu, 08 Dec 2022 07:30:43 -0800 (PST)
Received: from predatorhelios.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h10-20020a5d504a000000b002366553eca7sm10673239wrt.83.2022.12.08.07.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Dec 2022 07:30:43 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com
Subject: [PATCH v4 1/7] dt-bindings: arm64: dts: mediatek: Add mt8365-evk board
Date:   Thu,  8 Dec 2022 16:30:34 +0100
Message-Id: <20221208153041.3965378-2-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221208153041.3965378-1-bero@baylibre.com>
References: <20221208153041.3965378-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the Mediatek mt8365-evk board.

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 2275e5d93721b..ae12b1cab9fbd 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -244,6 +244,10 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - items:
+          - enum:
+              - mediatek,mt8365-evk
+          - const: mediatek,mt8365
       - items:
           - enum:
               - mediatek,mt8516-pumpkin
-- 
2.38.1

