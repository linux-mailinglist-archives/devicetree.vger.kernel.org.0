Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D565625D4C
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 15:40:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234652AbiKKOkF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 09:40:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234663AbiKKOjo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 09:39:44 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D1315E3F4
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 06:39:28 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id ud5so13020324ejc.4
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 06:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2lxqynGN1zb3SeT8QyXA1+0ZwfAUv0vy1HULeEAsp+0=;
        b=BY47XsVmK51QERSuv9y2eWZAjkN5DPflYrv9P/kAP1nvo563DsVXnrBG2y65QznhVM
         SJJXYc3oBd5budwHsKVFz1tIAxtTFQHFuRjvG2Qow3zmfnhU4p6vdjvcEJwBKzhZFQac
         supnDkrsavwNMIaDcwLsbcfXTXa6D3sSBou3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2lxqynGN1zb3SeT8QyXA1+0ZwfAUv0vy1HULeEAsp+0=;
        b=cHYymSjeTHiHdIsbnWMwE47lwyTXIrFuAtzmixFtZCEXGqbNgMKcIJ9BDE+A+Zo9oq
         GWST9DTPTMLJiAj15vY0LSYYV7lpcTLTjKs11DtyNHYw31w+ARAOpahQGIHEpDFz0ujd
         2m9qeezujXU7CXlFnoj8YvcqGq/rlT7yzmzZ7VVLvIrX0JyfAEa6qsZDYAf1kPYfvPpd
         RR6ntYVzQQhDHWvav6b1pkwYPYQcAENuM84/n3R5PSVYz4z+xqitEy8soyGRYHULx+It
         fvnxwD+1rnp3Yhj+TJEPSX7ea8XiNyesWKr0gSVqi+U0A/qXHjZUfLiaKPFDvX/J9HV2
         y9lA==
X-Gm-Message-State: ANoB5pnnkfD7PAtdPWOKk6vdhIhkING3JSfpRBOv8BSDrXoe8FCtkaM3
        jtVs1zquIlp4zU3vdvm2euWmTg==
X-Google-Smtp-Source: AA0mqf4T+udwGoWTudovo/FSHJ7IAR9wOH9fTJtKpCchExVGoh2RGDgoSsgTqibYqqdzi4ULw93B0w==
X-Received: by 2002:a17:906:8cf:b0:7ae:59dd:e3f4 with SMTP id o15-20020a17090608cf00b007ae59dde3f4mr2017438eje.755.1668177567004;
        Fri, 11 Nov 2022 06:39:27 -0800 (PST)
Received: from prevas-ravi.tritech.se ([80.208.71.65])
        by smtp.gmail.com with ESMTPSA id jt4-20020a170906dfc400b007a1d4944d45sm945886ejc.142.2022.11.11.06.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 06:39:26 -0800 (PST)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Cosmin Tanislav <cosmin.tanislav@analog.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        Jonathan Cameron <jic23@kernel.org>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: iio: ad74413r: make refin-supply optional
Date:   Fri, 11 Nov 2022 15:39:18 +0100
Message-Id: <20221111143921.742194-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221111143921.742194-1-linux@rasmusvillemoes.dk>
References: <20221111143921.742194-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ad74412r/ad74413r has an internal 2.5V reference output, which (by
tying the REFOUT pin to the REFIN pin) can be used in lieu of an
external 2.5V input reference. So stop marking refin-supply as
required.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml b/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
index 03bb90a7f4f8..e954d5ae4f4f 100644
--- a/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
+++ b/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
@@ -56,7 +56,6 @@ required:
   - reg
   - spi-max-frequency
   - spi-cpol
-  - refin-supply
 
 additionalProperties: false
 
-- 
2.37.2

