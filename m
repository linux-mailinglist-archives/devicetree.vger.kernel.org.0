Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41A166B6A09
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 19:24:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231985AbjCLSXf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 14:23:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232224AbjCLSXN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 14:23:13 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D62C3637ED
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:15:54 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id s11so40128879edy.8
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678644835;
        h=cc:to:subject:date:from:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=THHnNubc2+UuqNjcDLN8j6le5gzsAvvJJbRATCHsptA=;
        b=JvVpjUtcxnf8NZ2yB+wn61GS+gJCJJNQR+nP+PNJRgBbxE1EmNNsOgQ+QsApwPwogu
         Z/u4B6NiZZrknYpEShL2puPsiyMZ6N517AkcBnAm8dHijbTwcM87PpaD231+01Zm8b+U
         jD9sc+6POURrLNB5j7/z/k9V3NZgBM+Iz1/qQrT+Bm3tWZIPQa0gy9Pfp6HRPFUsVTjm
         9kQBUD3d1VU+2gRIomgtGKyZc6Vm0d3AFO6N3560L0PHGbdulTQ3WstEVGeGRbgBAAGo
         wRxCA6CoLFdO473hyl6cZ0tSgY1FebqtwGihodphLgyqMZY5Jei8eFTtAGLE0cLhMabC
         6Dgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678644835;
        h=cc:to:subject:date:from:message-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=THHnNubc2+UuqNjcDLN8j6le5gzsAvvJJbRATCHsptA=;
        b=vCUH16k2LfzvDh1KLiTit7SpeXbPmbpjFdb7yRUlNvtsBRCqpidnw2hC8ODQ9IpW+o
         4NpvtZaBUiNOTf7LJQsw0JGB9VnmzncZAkTsRA7xYuA+k6VqGohqDysn7xUXbx++xwuh
         9XV/0LKI2iJ0+5+j+QF2nJ4GRZB5C+Mbz2+Cjl92Ep8Xm0UpmLNiWeae7RvlI/EsS0L5
         kbaqwQqyOrjs2NvujnxBUnJj1E0TkziY/ogGBuwKDTn/HPOqu05RlExfN1QrSMAkB9Iy
         tCZBWqbmactGDYF2KU9pzmZQYPbTRU+ekn1AppH+qb96hq/OvvvbFnqlGb/iWoIPMvkn
         N7+g==
X-Gm-Message-State: AO0yUKVM5d9Y0AsCV3jCZ0NryO0UQefF0O0AVLFT8tIXd4mb/Iwi0zJx
        ZGqO+b6D6+7iQfZfr29iWEzvptVs1kcpf5h0
X-Google-Smtp-Source: AK7set9TF5qebcldePvTmd3e1bsVa1P0vnYmT3OxiN+neXUM8G6q7221v9kUiqActbeePDaezHwy1g==
X-Received: by 2002:ac2:44a3:0:b0:4a4:68b8:f4bd with SMTP id c3-20020ac244a3000000b004a468b8f4bdmr9362171lfm.3.1678644284454;
        Sun, 12 Mar 2023 11:04:44 -0700 (PDT)
Received: from 0001-dt-bindings-exynos-dw-mshc-common-add-exynos7885-var.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id q13-20020ac25a0d000000b004db511ccae6sm714485lfn.294.2023.03.12.11.04.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 11:04:43 -0700 (PDT)
Message-ID: <640e143b.c20a0220.3f148.1a1c@mx.google.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sun, 12 Mar 2023 20:58:50 +0300
Subject: [PATCH v5 1/3] dt-bindings: exynos-dw-mshc-common: add exynos7885
 variants
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some Samsung Exynos boards using the arm64 architecture have DW MMC
controllers configured for a 32-bit data bus but a 64-bit FIFO. On these
systems the 64-bit FIFO registers must be accessed in two 32-bit halves.

Add two new compatible strings, "samsung,exynos7885-dw-mshc" and
"samsung,exynos7885-dw-mshc-smu" respectively, to denote exynos7885
boards that need this quirk. But it's very possible that all
"samsung,exynos7-dw-mshc" boards are actually affected.
---
 .../devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
index fdaa18481..3eebaed2c 100644
--- a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
@@ -22,6 +22,8 @@ properties:
       - samsung,exynos5420-dw-mshc-smu
       - samsung,exynos7-dw-mshc
       - samsung,exynos7-dw-mshc-smu
+      - samsung,exynos7885-dw-mshc
+      - samsung,exynos7885-dw-mshc-smu
       - axis,artpec8-dw-mshc
 
   reg:
-- 
2.38.3


