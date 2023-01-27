Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8427567E00C
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 10:26:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232835AbjA0J0Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 04:26:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232625AbjA0J0W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 04:26:22 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 993AB2E0EC
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 01:26:19 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id e19-20020a05600c439300b003db1cac0c1fso4957621wmn.5
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 01:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v5COxBprWoYF2NZbM6nFunPs6wim8IJQ/3Q4uq8c1i0=;
        b=SFcbJxSySu8U3h4WZZ3E1nR8C4sPPzTPRNZ7K98L/Bkepe+HG40+6AyUL/HBBpKbU5
         pqeHmB72hGSpVncRcEOzTTEQb8L6tl0mCpZeiPJD42qyCZ6akNXLiAFvbUmY3qoQhrrL
         dqb0IHjkfJgBlBqSFjOAmkplxZwICCv+KwB15UW3+s1P1814IS7nE70RMwL5fH/3XDu0
         aUHFnuuN9o3WQz9ircYFPlFKXJCir+cw9k+4Tuwg4iS3rbAYutGe/5YsTm6VsilmVkeq
         2zKvRiN98+NlSb0hHazPLDLZr/4Ud3K/lXPxFj7yK9/hc7cZ9BEX/PweZGe40VueR6Z1
         O8cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v5COxBprWoYF2NZbM6nFunPs6wim8IJQ/3Q4uq8c1i0=;
        b=Rw72UOTRb+DSSTYDrJaWNwvRDfZ+HvD+MYUTxZGF9lXHk9HC2AM9ECjxo4Voe+VIYP
         c7JbJhbTZBlRfzhF9aJaxbnjHo/K8VwfaBayvgX+kobhMnpEboAFKswsWwtoqQYHRQbC
         Od7okiBN5z4K64aeDZ6UNeG8vFW19hru/75jHC6zTcDeoxK+AvVTHe6+cdLM4uVmEB24
         KS6UG1nnrKq6QCZLfdwVzSbYwO/Yw2330S/4TgrNGA7JVD6O01z9dU3ViJx/WiU29aRI
         1dm+gvOMy0GVPmNZjovzOUA+xM1zHnPzMlGMmg/45Bre8oT9gPROIeNHJSI0RhBNEL/l
         /mfA==
X-Gm-Message-State: AFqh2krnOhw6aohHNIg9aEx9hjCDBtHZ7gSPcfCYUrxypGR+ole7So0x
        bg4rmvun3MkF7qXNK5ytR6tl0Q==
X-Google-Smtp-Source: AMrXdXv7un7XD0R7Z9M5OlGnu3Y1MewDZOALuQiC/9rrvr9/f9d/RnC3xQ2hnrUq4eaGGkWTcZHlig==
X-Received: by 2002:a05:600c:3d9b:b0:3db:1afd:ac36 with SMTP id bi27-20020a05600c3d9b00b003db1afdac36mr33060394wmb.32.1674811577886;
        Fri, 27 Jan 2023 01:26:17 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:624:f1a4:edb9:78d5])
        by smtp.gmail.com with ESMTPSA id l4-20020a05600c1d0400b003db2e3f2c7csm15613178wms.0.2023.01.27.01.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 01:26:17 -0800 (PST)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Eric Chanudet <echanude@redhat.com>
Subject: [PATCH] dt-bindings: interconnect: qcom,sa8775p-rpmh: fix a typo
Date:   Fri, 27 Jan 2023 10:26:15 +0100
Message-Id: <20230127092615.39690-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

The name of the chip is sa8775p, not sa8875p.

Reported-by: Eric Chanudet <echanude@redhat.com>
Link: https://lore.kernel.org/lkml/20230126203618.nbqwppaddncq7on7@echanude/
Fixes: 2579af94c813 ("dt-bindings: interconnect: qcom: document the interconnects for sa8775p")
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
index 672c7aaa8ed7..2e0c0bc7a376 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,sa8775p-rpmh.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/interconnect/qcom,sa8775p-rpmh.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm RPMh Network-On-Chip Interconnect on SA8875P
+title: Qualcomm RPMh Network-On-Chip Interconnect on SA8775P
 
 maintainers:
   - Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
-- 
2.37.2

