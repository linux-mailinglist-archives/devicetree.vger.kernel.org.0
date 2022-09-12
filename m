Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E35A5B5980
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 13:43:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbiILLnH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 07:43:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230089AbiILLm7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 07:42:59 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE0313CBC5
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 04:42:57 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id z21so12336908edi.1
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 04:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date;
        bh=xPvGqglYOx45OBflVbFBgWBPdZSiJcARnAd1O+41cto=;
        b=QrviGm+mrbpFRiOMYT/RDlQjvzC3zE5EeummcCnA2hBN7hCa0UDmUyRqZJNNz3+Ass
         GVNNJ91dRRbnves+vslhLpelBJOVgZJL0rkzdHV6BjnXWi0lD5kb/baz+7xd4vggYRFU
         KrTHVlLhcAExQLxeqFl3sZBl2g1a3UoWJYi82snkulksa3jGKJ91+pCgDxx2cnoU+T6M
         kl8sbPD4kNspsf+Q0FZc6pqU+rdM08BcxpzlkYlTShmPcZyN4BmMLARj9mWYELBwJBZt
         wZEMYh7zLV72msekaBMdWL+u/7P8T9CGzQ2+807R7TkYPfbC/WQ3I5AXg9dxi6NMqI4q
         kJXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=xPvGqglYOx45OBflVbFBgWBPdZSiJcARnAd1O+41cto=;
        b=umoBJkZZ1+7+/RFGQhjUoBdoweGO5aSClnwe0KNJi0PJDuBb0pQOnt22SnUdop5Fdh
         xVZp/8L3c/86c/I49fMJWA0MfuO3wZXACrYs59ro+2wSlWZDy5McWFzp6OSfTj9UjWcG
         p0YldqhScRsuUCwIn2G/cbsyba4U/9DaDD6WfqWofZtu2KIkAtLsbWHv5fVGBY9yo0Xe
         aXJRbIqvZHKXP80YS9sv8H0s4hhbYHlYZfOnGx/XXljTSLjWzj7phH7He63Qb8aLhAbr
         wPb3OiVuKfWsAasd7qlQrxx7v7tcFIHaa9YobWuRyuvDSw+JDNXftVsha/DVPw27VAoW
         gFvg==
X-Gm-Message-State: ACgBeo2RKODdZggGWi2lvw0Fx3F3MVVqy4I+MQc8W7mKaBW/Xy5pTf9E
        yvYrz/CdGUXXk2IfCVafFtHubQ==
X-Google-Smtp-Source: AA6agR5UC+z4uKt322fOtxbjy3v7Qsg8mOhUyH2jrR3hVvgOLxMKyOPAdH5tGHy+4F+vsHXSD9pEqw==
X-Received: by 2002:a05:6402:5002:b0:444:26fd:d341 with SMTP id p2-20020a056402500200b0044426fdd341mr22190908eda.351.1662982975861;
        Mon, 12 Sep 2022 04:42:55 -0700 (PDT)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id 9-20020a170906310900b00779cde476e4sm4314368ejx.62.2022.09.12.04.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 04:42:53 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dianders@chromium.org,
        lkundrak@v3.sk, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Chris Morgan <macromorgan@hotmail.com>, tzimmermann@suse.de,
        javierm@redhat.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org
Subject: [PATCH v1 1/2] Revert "dt-bindings: Add byteswap order to chrontel ch7033"
Date:   Mon, 12 Sep 2022 13:38:57 +0200
Message-Id: <20220912113856.817188-2-robert.foss@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220912113856.817188-1-robert.foss@linaro.org>
References: <20220912113856.817188-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As reported by Laurent in response to this commit[1], this functionality should
not be implemented using the devicetree, because of this let's revert this series
for now.

This reverts commit a4be71430c76eca43679e8485085c230afa84460.

[1] https://lore.kernel.org/all/20220902153906.31000-2-macroalpha82@gmail.com/

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 .../bindings/display/bridge/chrontel,ch7033.yaml    | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/chrontel,ch7033.yaml b/Documentation/devicetree/bindings/display/bridge/chrontel,ch7033.yaml
index 984b90893583..bb6289c7d375 100644
--- a/Documentation/devicetree/bindings/display/bridge/chrontel,ch7033.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/chrontel,ch7033.yaml
@@ -14,19 +14,6 @@ properties:
   compatible:
     const: chrontel,ch7033
 
-  chrontel,byteswap:
-    $ref: /schemas/types.yaml#/definitions/uint8
-    enum:
-      - 0  # BYTE_SWAP_RGB
-      - 1  # BYTE_SWAP_RBG
-      - 2  # BYTE_SWAP_GRB
-      - 3  # BYTE_SWAP_GBR
-      - 4  # BYTE_SWAP_BRG
-      - 5  # BYTE_SWAP_BGR
-    description: |
-      Set the byteswap value of the bridge. This is optional and if not
-      set value of BYTE_SWAP_BGR is used.
-
   reg:
     maxItems: 1
     description: I2C address of the device
-- 
2.34.1

