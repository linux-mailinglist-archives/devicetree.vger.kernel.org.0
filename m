Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D02D857C53B
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 09:24:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232117AbiGUHYV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 03:24:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbiGUHYV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 03:24:21 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF1497BE2B
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 00:24:19 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id t1so1398595lft.8
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 00:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g/Erh9ECa1GmGYKcDR9QQf3X/C7BJEjXlaj9Ex/mhqI=;
        b=mo1ucbP9dUaLOghZSffc4yuhJfHR2Ge78KgH0AbJTkk34XaWUZbF2qlV3mg/kAuQA5
         qoYqi26TkqBxJC21aE6Cb/Kvc0bKI+rw+gMH38CuUGX5FULs/HGd9F9N7vWjiygozLKd
         VtlZ5mgLRdXxh/nitoa5MNcFP5ymFcOlB+//JJkoNsbONCVVSPUUy2d5TMA5TIHUS+IH
         64Gi3QzlsOvk9x1sSwNrryOrCqt4AgDbLwiQJ/ohkSXFCIbLNtGnV94S+X3QoEXtPF3+
         TGqoEaicZ8E/HJ4UkqzkldBbAcFyWbUOBbczTR+2LnvXEbhV30TLH/rulo/rv1IbGelo
         Ro4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=g/Erh9ECa1GmGYKcDR9QQf3X/C7BJEjXlaj9Ex/mhqI=;
        b=kTMosVQ+Npvkg6wAyhASxbX5DxRHuVS+doOvvd88gkMDDT3GGq2UB3F2skh0TPH+5h
         +3PSTKZ1aE0JfGvak2Q0RHjxoRugFE2pyzWpLNJ5xOISpNclQ6IfrjszVIwBy3hLsTM3
         japj4c6Bdgn3iXvFliUaF4NdKZ3q33BHkU8UmGM09bb4Fjzcb01I7PaTfkqltHBl9ieX
         zlf0ERXe1f6xFz+Sk6dju2NaH+ersBfb2ov5ObbLQSK/+OW1AvtjUl/mZf9ff1kCTWue
         VUodxDwn45jnmKJ0kdFYQ605Ek0L7z4X0Cysye3b4xo0SBnltG3Hu8boA0d0WDLPjq86
         84Aw==
X-Gm-Message-State: AJIora/vfzX+F5icmKQes5qFwCOwA9k44K2omskQ6zTJ/bAAcWlAIIWU
        P02xd0r/FmG7s5Tvj6aiLDhghA==
X-Google-Smtp-Source: AGRyM1t9vXNUOHcavuxV31KizmszNRMPwXlxzOTvLE9zBeHRAgaSArMq/Fyk80oELTM42L+J1Ey11w==
X-Received: by 2002:ac2:54a1:0:b0:48a:6908:1d54 with SMTP id w1-20020ac254a1000000b0048a69081d54mr1212982lfk.295.1658388258209;
        Thu, 21 Jul 2022 00:24:18 -0700 (PDT)
Received: from krzk-bin.. (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id i8-20020a2ea368000000b0025dd6dd482fsm293007ljn.96.2022.07.21.00.24.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 00:24:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
        arm@kernel.org, soc@kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Subject: [GIT PULL] ARM: dt-bindings: aspeed for v5.20
Date:   Thu, 21 Jul 2022 09:24:15 +0200
Message-Id: <20220721072415.11424-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Hi Arnd and Olof,

My two patches documenting existing Aspeed board compatibles were waiting for
some time, so a month ago I decided to pick them up and include in the
linux-next, so other developers - like David - can base their work on these.
Unfortunately the responsibility for the patches was not cleared as I was
waiting for some replies Joel and Andrew, so I also did not push them out to
you. And then rc7 appeared and it is quite late now. That's my mistake, I
should sort it out earlier.

But anyway these were for a month in linux-next and other work [1] will need it.

Can you grab them last minute? If not, could you queue it for v5.21?

[1] https://lore.kernel.org/all/20220720085230.3801945-3-quan@os.amperecomputing.com/

Best regards,
Krzysztof



The following changes since commit f2906aa863381afb0015a9eb7fefad885d4e5a56:

  Linux 5.19-rc1 (2022-06-05 17:18:54 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux-dt.git tags/dt-bindings-aspeed-5.20

for you to fetch changes up to 12f158808510b7810bda1fadd3e88ddc9e768db4:

  dt-bindings: arm: aspeed: add Aspeed Evaluation boards (2022-07-21 09:11:19 +0200)

----------------------------------------------------------------
Devicetree bindings for Aspeed boards

1. Document the compatibles of existing Aspeed-based boards.
2. Add jabil,rbp-bmc compatible.

----------------------------------------------------------------
David Wang (1):
      dt-bindings: arm: aspeed: document board compatibles

Krzysztof Kozlowski (2):
      dt-bindings: arm: aspeed: document board compatibles
      dt-bindings: arm: aspeed: add Aspeed Evaluation boards

 .../devicetree/bindings/arm/aspeed/aspeed.yaml     | 87 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 88 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
