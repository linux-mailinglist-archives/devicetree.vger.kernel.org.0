Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE0CF77409A
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:05:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231669AbjHHRFq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:05:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231836AbjHHRFA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:05:00 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06AC21A74E
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:02:10 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b95d5ee18dso90170341fa.1
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691510458; x=1692115258;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OSNGkojbT+FsqpoKjJ9301dnAVYJ8YQV267IqvAEoPU=;
        b=lyWPFccSU3chMou5p/kVD7Av0DYdW0NIxeTruu4lNmP3inEvNs2135dJoDRBbFYFhf
         kHUr+S2V2vgpycR8xTX6VuqqeTVdvgbnOI/HtMEbZ9i7irdJqObBZoqZzEtRsWtHDBgP
         f6tP4+p5DUZhIwLNV8Qn8DW8OgTZ3GzANZrth1q36tWpz+zm4UOhd4/ew6FWno0c7I89
         a34+eI9WppVnqb9WUcxeOYTCnxlcR23ThPrkSHl4gV43MMtt+18xC+F5vvKfmjJGxD73
         x2rzjeyXjsA32Jme9V3xYqs+uQ756J/Ri8jM57SxityACf8sbhGfF1AtktoSmLPLQT6y
         /OMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691510458; x=1692115258;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OSNGkojbT+FsqpoKjJ9301dnAVYJ8YQV267IqvAEoPU=;
        b=AmV9L5FbQyIfa8G/5Xm7oc1cFrbix4kQ2iJU6+AJD5iI/EXLScNjOJzAdRf3SJS8su
         Jm/b/xGpZ3U7VaIIztBbtD3F0akvRIgblpTCGSjKl+6rj+we0j0tXfLPNxffcLqiYOwL
         z5mnSNW/2N0pMA5e43D2yG7nVzR+3zTJscchaixFdOigR9/d2RUZEqLQiy6f+CjNk9MR
         g06SuzzY7/YH+7aQftT9HbI7rh7pxtx3+DrXFJvposQctR86cFrvqT048PNO8w/rAv4q
         1nEb/nnqavr7pGGjMv2NnGvtDpL7H/Bg4/BKa+uWdXPFp9rspIq6glAk/EZvbQ2nLowR
         uXTw==
X-Gm-Message-State: AOJu0YzDuhAZ6D1d2BpN8ZBys+2iaO1PZKMB/b72YyFFgQ7+wdQr+TEc
        6gw3pR3tlIbjxGZWHeCOssg1hyE7odzdP3FwCbM=
X-Google-Smtp-Source: AGHT+IGBUM9Eb5+0TWgDLF8LmOhVhKOR18zw7z8Wucg5zDszfG4kbd1nLl37Ej26nZOXcXHoLMXtdA==
X-Received: by 2002:a1c:4b0b:0:b0:3fe:2b8c:9f00 with SMTP id y11-20020a1c4b0b000000b003fe2b8c9f00mr8459725wma.24.1691476346737;
        Mon, 07 Aug 2023 23:32:26 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id z22-20020a1c4c16000000b003fbb25da65bsm12705726wmf.30.2023.08.07.23.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Aug 2023 23:32:26 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matti Vaittinen <mazziesaccount@gmail.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: iio: rohm,bu27010: add missing vdd-supply to example
Date:   Tue,  8 Aug 2023 08:32:23 +0200
Message-Id: <20230808063223.80431-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bindings require vdd-supply but the example DTS was missing one.  This
fixes dt_binding_check error:

  Documentation/devicetree/bindings/iio/light/rohm,bu27010.example.dtb: light-sensor@38: 'vdd-supply' is a required property

Fixes: ae8c47c51e5c ("dt-bindings: iio: ROHM BU27010 RGBC + flickering sensor")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/iio/light/rohm,bu27010.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/light/rohm,bu27010.yaml b/Documentation/devicetree/bindings/iio/light/rohm,bu27010.yaml
index 8376d64a641a..bed42d5d0d94 100644
--- a/Documentation/devicetree/bindings/iio/light/rohm,bu27010.yaml
+++ b/Documentation/devicetree/bindings/iio/light/rohm,bu27010.yaml
@@ -45,5 +45,6 @@ examples:
       light-sensor@38 {
         compatible = "rohm,bu27010";
         reg = <0x38>;
+        vdd-supply = <&vdd>;
       };
     };
-- 
2.34.1

