Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEC0050A8A6
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 21:02:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1391696AbiDUTD3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 15:03:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1391691AbiDUTD0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 15:03:26 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CA473A5C1
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 12:00:34 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id t25so7685100edt.9
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 12:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TyZtZSd5cTSSlPOn3/pu61X0lFqS8ubq/VPK6S5b8ro=;
        b=KbJ8suT6akcFwDGZZ32/sv2cxbF45zgAuxPQdj0QfCAEmFFGuOSHqDPkEYVLLpv42J
         VTkFcGMp4k5nnelCelym6LrPoY+l3XZZ49/RQ3UrzxKHLL21LM2vUwulDGa9cBudRD/t
         5z/JSupRQa2FRkazVocJUBr3XCLfI8bQvS3Zw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TyZtZSd5cTSSlPOn3/pu61X0lFqS8ubq/VPK6S5b8ro=;
        b=G6IUz6z9kSW7eZ6Dsf1wJKuoHoT/4MIVwUfZ0v5DWgEJ8w+yFIUv/FKVQEese3mwFV
         DChF2wZ3fGbprjkG7DP9GUYbzavjEnOrMrKNtIgvud/o2S9x+mHMypYgpPIRxLz0F01o
         5a8mdtpRxMBGil56jBPn2RF/V0HC+Kuo4dG3eLhgqC5aFCAoPbNtxy4wDcMpm86XiHu5
         MpqULw02yQ1FHWh/oATqSe8qzCEYcZagETj3P7cfwGCVPL0IteIyume20ZDEFtKiEwtO
         hJZdJqVH28YB/m8TbPnjBcii8I/vpqEulwZudNg9H8+wjTfaCukryOYoxuP8AsaqOXN+
         fw0A==
X-Gm-Message-State: AOAM533htKACyStnOl0nfmG+KMMRkKYKYMPjjALSMafBm6j6Wm6FrMZh
        ijh47rNOGIdu/Jx96P6g2w+RLQ==
X-Google-Smtp-Source: ABdhPJzEgotpyjr8bxxnZGEw6QSFUz9Ctnbf2mCUqRiQErf3p7gK/T1Vy3eydjWyUgOQDWbl4g6mpg==
X-Received: by 2002:aa7:de0e:0:b0:41d:6e55:24aa with SMTP id h14-20020aa7de0e000000b0041d6e5524aamr1026380edv.368.1650567632578;
        Thu, 21 Apr 2022 12:00:32 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com (host-87-0-15-73.retail.telecomitalia.it. [87.0.15.73])
        by smtp.gmail.com with ESMTPSA id s11-20020a170906284b00b006e108693850sm7975142ejc.28.2022.04.21.12.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 12:00:29 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        Rob Herring <robh@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        devicetree@vger.kernel.org, linux-input@vger.kernel.org
Subject: [RESEND PATCH v4 1/6] dt-bindings: input: touchscreen: edt-ft5x06: add report-rate-hz
Date:   Thu, 21 Apr 2022 20:59:58 +0200
Message-Id: <20220421190003.3228699-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220421190003.3228699-1-dario.binacchi@amarulasolutions.com>
References: <20220421190003.3228699-1-dario.binacchi@amarulasolutions.com>
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

It allows to change the M06/M12 default scan rate.

Co-developed-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes in v4:
- Add Rob Herring 'Acked-by' tag.

Changes in v3:
- Add hz unit suffix.
- Add '|' to description.

 .../devicetree/bindings/input/touchscreen/edt-ft5x06.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
index 2e8da7470513..46bc8c028fe6 100644
--- a/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
+++ b/Documentation/devicetree/bindings/input/touchscreen/edt-ft5x06.yaml
@@ -85,6 +85,14 @@ properties:
     minimum: 0
     maximum: 80
 
+  report-rate-hz:
+    description: |
+                 Allows setting the scan rate in Hertz.
+                  M06 supports range from 30 to 140 Hz.
+                  M12 supports range from 1 to 255 Hz.
+    minimum: 1
+    maximum: 255
+
   touchscreen-size-x: true
   touchscreen-size-y: true
   touchscreen-fuzz-x: true
-- 
2.32.0

