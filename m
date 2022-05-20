Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5475452F530
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 23:38:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353706AbiETVi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 17:38:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353700AbiETVi4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 17:38:56 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63C9417B86A
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 14:38:55 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id nr2-20020a17090b240200b001df2b1bfc40so12517672pjb.5
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 14:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Zulj73dBhoBwy8zgKmXSONhGGAK+6HOxdNu/R5R9Bp8=;
        b=M1YxvgPhWzo82ALxG7oqCka5wlcen3k/fl6tR9PT3/BMAWMn1re5T+qYsLndDcfFtT
         lBPTRohfnXzYpYN84q/9n1TtG1PjhJpsUP694KF89GMD/q9KBJtKQenHDX+p/ilMUBkx
         TWwttEI1QLAF1/qrGtZTn4QKjyEotE01h/O4M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Zulj73dBhoBwy8zgKmXSONhGGAK+6HOxdNu/R5R9Bp8=;
        b=EVZJC2XkBtvW/4uXlV8EmNBSJsT0s8HKR3qsDv4csafTDNeO1IZWjEwEevuQcrb5oV
         jcUH/nlj6L6GPQEfKA9eB8lfQ9/zcE+5PS7de85hBFubblsQWLR8QZi7eywnLTr3Z3TQ
         NkoHs5ObGd5C4BqE1KMSmUQ52P6d4n/NAULVmyVQrdrURyL9q052/wo0GhT7cLqLN6IE
         3a2Qkju1dRhPS3y92SfhA6Wegh5kL6kComkgFQ0xtRu2wdh2lFk3+tHquCjDG2I0YMO6
         hRfk60HOvsWdx2NNhINS2mBKND+yJPjldrZyXxGkVrV+OzQE21cwxbI4L+t6tyL3TeYJ
         /s8A==
X-Gm-Message-State: AOAM530N9khKpY47vrAy9FjDeUsHRrGpDk5dFefZB3lBtpP2lB8QsfzJ
        lCZ9AgrUg6djNq20tc8RwsQ3mA==
X-Google-Smtp-Source: ABdhPJwav1RDQ8a5mFUvn6XmzDrkhUb3q94qYu9K4vek0YEW0MyUzHTZlusMjakUEzDp4KEteRFyOw==
X-Received: by 2002:a17:903:11c4:b0:15f:14df:a919 with SMTP id q4-20020a17090311c400b0015f14dfa919mr11668244plh.21.1653082734799;
        Fri, 20 May 2022 14:38:54 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:b090:3896:c312:c4df])
        by smtp.gmail.com with ESMTPSA id u13-20020a17090a450d00b001df955c28f6sm2070864pjg.37.2022.05.20.14.38.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 14:38:54 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>,
        patches@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        Julius Werner <jwerner@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        "Joseph S . Barrera III" <joebar@chromium.org>,
        devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/5] dt-bindings: arm: qcom: Mention that Chromebooks use a different scheme
Date:   Fri, 20 May 2022 14:38:42 -0700
Message-Id: <20220520143502.v4.2.I6418884d8bab6956c7016304f45adc7df808face@changeid>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220520143502.v4.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
References: <20220520143502.v4.1.I71e42c6174f1cec17da3024c9f73ba373263b9b6@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The qcom.yaml bindings file has a whole description of what the
top-level compatible should look like for Qualcomm devices. It doesn't
match what Chromebooks do, so add a link to the Chromebook docs.

Reported-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
---
The link added here will (obviously) not function until the
documentation patch makes it to mainline. Presumably folks who want to
read it in the meantime can find it pretty easily. If there's a better
way to link this then please let me know.

Changes in v4:
- Use docs.kernel.org link.

Changes in v3:
- ("Mention that Chromebooks use a different scheme") split out for v3.

 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 5c06d1bfc046..5ac28e11ea7b 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -90,6 +90,11 @@ description: |
   A dragonboard board v0.1 of subtype 1 with an apq8074 SoC version 2, made in
   foundry 2.
 
+  There are many devices in the list below that run the standard ChromeOS
+  bootloader setup and use the open source depthcharge bootloader to boot the
+  OS. These devices do not use the scheme described above. For details, see:
+  https://docs.kernel.org/arm/google/chromebook-boot-flow.html
+
 properties:
   $nodename:
     const: "/"
-- 
2.36.1.124.g0e6072fb45-goog

