Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2433A6886AA
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 19:38:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232256AbjBBSiK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 13:38:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232290AbjBBSiI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 13:38:08 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13DE637F3A
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 10:37:33 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id q10so2563803wrm.4
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 10:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QeIfWHDa2fvM5jUnMkL8MI7fcZ0bv0i4OOCgMKL446E=;
        b=l06A1cmXwgKENlFdGLp7sC4/eyJqhQGFvt4WqG9szuR7KAzjP3ilZlD2hOQqUJNRqD
         y3ckO43HNJ3hiNoIuABaBoCYWYdHAr2oVhJXGyhd0e3wQfZdsBGSaJJleNkYc+7imVdc
         jQrNTRkmnSzPebl/3WAjEkdFAkMP81O7guCTHQzCMtxl09H0Q2KgM7/MCLQDnpg5DCBj
         +dGns2SgfBT/jHvrCuq1PRHBINCr7tyy/gk/Erwt2XpcxqtESE3Qz8vzRbe/KQzjqJzF
         DRUXob7GENdxln0PH2KRCPhBsLN3/lzLRlG9s5jKXszXTeTJY073AMpEBT8ZL6ApjJ8Y
         xzrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QeIfWHDa2fvM5jUnMkL8MI7fcZ0bv0i4OOCgMKL446E=;
        b=OBcSyi7g9/cPFBBvQEaQAwNM7X3k+r71V4PkGaq7LzXiTQFZKdb6Z3hWxzCUQn3Wrr
         g5cQfPl6Ye9zhzhir/AWMEARLx6Nflh7wACGYxMEoW+B4DsfGSOjw73X2+PotoNilLH7
         Vn59VZIxhn71IVQFyInPFJzD0nrBwSpxDxHE6JM6oTyBE6qABHH3bV28DnbwtLqarSJl
         6jre96dfSVWioV0tSpURTxt3Y16x71ZMrp0hHSaGNz0ltab9UTunbN+4+/P81CpJQ+5S
         ivRXyLSNxg0pgnu2u82+LmuiJ1lbxqnCkhK3NJ6XO/RVi6xuXESYS69ifxo2naq/2P7W
         0P5Q==
X-Gm-Message-State: AO0yUKVW5QDTdynm+HeP4IeieDJFmPS/f5VlPTFAtQ4RIL1YR9wDRzP1
        8036x9pxInX5Hy0IMXz2zYQq+g==
X-Google-Smtp-Source: AK7set/gl7mkCo0fFqVVU8e+mU0M0fxQBGITq/co13H8UNB+GuXOO3uWbLmrv5x5yRG3W+gngOal/Q==
X-Received: by 2002:adf:9c8e:0:b0:2c1:28dc:1561 with SMTP id d14-20020adf9c8e000000b002c128dc1561mr6380662wre.44.1675363050459;
        Thu, 02 Feb 2023 10:37:30 -0800 (PST)
Received: from localhost.localdomain (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.googlemail.com with ESMTPSA id p12-20020a5d48cc000000b00241fab5a296sm164664wrs.40.2023.02.02.10.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 10:37:30 -0800 (PST)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/9] ASoC: dt-bindings: meson: fix gx-card codec node regex
Date:   Thu,  2 Feb 2023 19:36:46 +0100
Message-Id: <20230202183653.486216-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230202183653.486216-1-jbrunet@baylibre.com>
References: <20230202183653.486216-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'codec' is a valid node name when there is a single codec
in the link. Fix the node regular expression to apply this.

Fixes: fd00366b8e41 ("ASoC: meson: gx: add sound card dt-binding documentation")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../devicetree/bindings/sound/amlogic,gx-sound-card.yaml        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
index 5b8d59245f82..b358fd601ed3 100644
--- a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
+++ b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
@@ -62,7 +62,7 @@ patternProperties:
         description: phandle of the CPU DAI
 
     patternProperties:
-      "^codec-[0-9]+$":
+      "^codec(-[0-9]+)?$":
         type: object
         additionalProperties: false
         description: |-
-- 
2.39.0

