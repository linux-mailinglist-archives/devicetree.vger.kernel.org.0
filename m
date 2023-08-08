Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 717C9773C26
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 18:00:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231417AbjHHQA4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 12:00:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjHHP7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 11:59:13 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6138619C
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 08:44:27 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-52256241c50so8334784a12.3
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 08:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691509464; x=1692114264;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=G/3xpf+nkmYM0/cP3Mm0ug8E6Tr0ifjOM0Sgp4Fheis=;
        b=rr7jKDttyYPvqtlhMcJyo5b2RJZoZ4foE87MVnr+APM0vsebPPEUJ+GTliV11KBIF4
         5MV1cMjtbRM4FTAseRMGvA6nHwWIQieDq3j+5N10v9WPJkdzwPoZm2s4jJ9rBKuFmVLr
         rCzxCzLGjvZWaq8bhce715p898ic3NybxS4CX79M/x/hMz7WNlDHpc0ZBkvGXSUjQ1Td
         VebSMfDOnQ7aAJf9tHdbK8MqMR4P9gEAtHs7UNTw0KLQ4kFzP4IBYf+85dH9c7YuWEC/
         WRLKGVquuuXd+Y/Nta2aQI67Yk6WiwEzfZUZguhvSZpH1eRrdU+dBCNAjd0Ng+JOF7gR
         AWqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691509464; x=1692114264;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G/3xpf+nkmYM0/cP3Mm0ug8E6Tr0ifjOM0Sgp4Fheis=;
        b=BkGL557U9/aPaad5sZf6xGBf1ABZ/K6PCsM78bswPcF/HsIaKFIB9pFlNyulVCdm00
         UXOFIxCz42D7mFdsQhdBJa+NI4T7GNldfK0oyFHg1C3yI66H2Q+tvodIkpsZOPhTXFiA
         XFJDdqC6Gi513PVZzohW7vGXfacMirQH30sTCoRywzDGd98eiN0grAiJvw6czHkvJgT9
         7sxYNgrVlBd9F+kvI6ZDWhtss2Ye89xM9JdZ5OJBpqZF1u3w38tuR12AIfYzr2z91Wtl
         wfclwlcX5LV7nSC2Jx75xjgvqMKeNDlXZ1CuS31MDiRpDS8NQri9Yi7CwgroMs2BvIv3
         lP4g==
X-Gm-Message-State: AOJu0YxEAOPK4EGhKBaCokTy0PlwGaeeRvW+4D5J0jozVjNY9gBxejwR
        ShIdjXFudXWGsuBbPz5UtOC/gCOtceVainFwr6s=
X-Google-Smtp-Source: AGHT+IFRoA13RhrMxnqW7ljjsyav/4dAxADif8m2tF9UwYMnrRa7VWJJXVr+r6ZRwLdvaG4hOCJatg==
X-Received: by 2002:a19:6547:0:b0:4fe:af6:5e5 with SMTP id c7-20020a196547000000b004fe0af605e5mr7041396lfj.23.1691483262566;
        Tue, 08 Aug 2023 01:27:42 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id s18-20020adfeb12000000b0031779a6b451sm12861246wrn.83.2023.08.08.01.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 01:27:42 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 00/11] clk: samsung: remove number of clocks from bindings
Date:   Tue,  8 Aug 2023 10:27:27 +0200
Message-Id: <20230808082738.122804-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

No dependencies, patches can be taken in one set via my clk tree.

Best regards,
Krzysztof

Krzysztof Kozlowski (11):
  clk: samsung: exynos3250: do not define number of clocks in bindings
  clk: samsung: exynos4: do not define number of clocks in bindings
  clk: samsung: exynos5250: do not define number of clocks in bindings
  clk: samsung: exynos5260: do not define number of clocks in bindings
  clk: samsung: exynos5410: do not define number of clocks in bindings
  clk: samsung: exynos5420: do not define number of clocks in bindings
  clk: samsung: exynos5433: do not define number of clocks in bindings
  clk: samsung: exynos7885: do not define number of clocks in bindings
  clk: samsung: exynos850: do not define number of clocks in bindings
  clk: samsung: exynoautov9: do not define number of clocks in bindings
  dt-bindings: clock: samsung: remove define with number of clocks

 drivers/clk/samsung/clk-exynos3250.c          | 11 +++-
 drivers/clk/samsung/clk-exynos4.c             |  5 +-
 drivers/clk/samsung/clk-exynos4412-isp.c      |  5 +-
 drivers/clk/samsung/clk-exynos5250.c          |  5 +-
 drivers/clk/samsung/clk-exynos5260.c          | 41 ++++++++----
 drivers/clk/samsung/clk-exynos5410.c          |  5 +-
 drivers/clk/samsung/clk-exynos5420.c          |  5 +-
 drivers/clk/samsung/clk-exynos5433.c          | 65 +++++++++++++------
 drivers/clk/samsung/clk-exynos7885.c          | 14 ++--
 drivers/clk/samsung/clk-exynos850.c           | 35 ++++++----
 drivers/clk/samsung/clk-exynosautov9.c        | 29 ++++++---
 include/dt-bindings/clock/exynos3250.h        | 18 -----
 include/dt-bindings/clock/exynos4.h           |  5 --
 include/dt-bindings/clock/exynos5250.h        |  3 -
 include/dt-bindings/clock/exynos5260-clk.h    | 25 -------
 include/dt-bindings/clock/exynos5410.h        |  2 -
 include/dt-bindings/clock/exynos5420.h        |  3 -
 include/dt-bindings/clock/exynos5433.h        | 42 ------------
 include/dt-bindings/clock/exynos7885.h        |  4 --
 include/dt-bindings/clock/exynos850.h         | 10 ---
 .../dt-bindings/clock/samsung,exynosautov9.h  | 18 -----
 21 files changed, 154 insertions(+), 196 deletions(-)

-- 
2.34.1

