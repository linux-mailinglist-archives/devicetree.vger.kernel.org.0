Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08535510C93
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 01:22:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356054AbiDZXZ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 19:25:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354061AbiDZXZ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 19:25:57 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2EF7369F0
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 16:22:48 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id w27-20020a056830061b00b00604cde931a0so14952oti.2
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 16:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WYejGanUUZmJvZ2w05Ao6DgRupGl4lL6Qt7fE+MxKI4=;
        b=RKzjXG8LHJYjtLTBu1AG5FKNpKuXNbma5GQ/URC7EDsjuYp9+RMq5pKyRrnDsl8CMP
         0xW/ukNJNQ2qXAs9jAC6qDxIb/FrotGQB2Iq2tURl1JUhZpWX7jb0Vnhgja+scyPuIjd
         6QY91pslLff7CmBeWSFWHRjnwol4hRSHa8iHgQSpX/FDO6uGt+85vkXAirQ78SQkwFr3
         3By2patjIiz7mxDNQfGaxD0b2BpcCjcK2VSyQD0vqVqqLbtVDJypkTVXJonf+0bxaN9+
         yRKfbGJwuzpuOIz4Oulxwu+vpLjbznXtcXjS6drrMMNuUIhTf3X4Nmo9OT7j4+giLa1k
         OLiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WYejGanUUZmJvZ2w05Ao6DgRupGl4lL6Qt7fE+MxKI4=;
        b=OVSQ8iGmryFNPrw0eN5cpWa3FPsZqnD7cm0RYHW3cznU68xGhJ/GsQAizzYnbwlK1x
         JZkS6Iji6HTmrDgfL7Whcpjo2LKg5741XskCWkxS3yIjn/dA6cDwp/oY+9IahlU321+m
         iSWnp6tcC28zIKf6UDyIINdwHeZavn9e95Q3un7YrNqsbcwmZ//659U3kORQLx7tX8Wp
         Q4pV+wJeSK3LlNWPGdflKmZGOADqRpTnxhQKYgMhEi5R/ppEYtewW9PU0OkPWk/sorX6
         hKyL27PYg8wwKRCYq6UKPQqLCIUSJO49K/MFXSBsucBzX7J+p8QFafjPO9pigEuY6M2d
         O//A==
X-Gm-Message-State: AOAM533zAFgjVgurAPnqVYQwwcHaPn12c+Yqz5IDU4y/6e5rg/zAqZP/
        Unkg1RNz5RGUTxcLecZ174jw8Q==
X-Google-Smtp-Source: ABdhPJyjewHB6NMvvEatTOA4sf1nstaF+5jYRdbM69SIxzsjWm3f3tkm4rPBv+x92t1GXyJda9pn2A==
X-Received: by 2002:a9d:731a:0:b0:605:4e21:cb15 with SMTP id e26-20020a9d731a000000b006054e21cb15mr8984101otk.225.1651015367854;
        Tue, 26 Apr 2022 16:22:47 -0700 (PDT)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id n28-20020a0568080a1c00b0032578b7e377sm253000oij.26.2022.04.26.16.22.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 16:22:47 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] clk: qcom: Add SC8280XP global clock controller
Date:   Tue, 26 Apr 2022 16:24:42 -0700
Message-Id: <20220426232444.1761869-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
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

This adds binding and driver for the global clock controller found in the
Qualcomm SC8280XP platform.

Bjorn Andersson (2):
  dt-bindings: clock: Add Qualcomm SC8280XP GCC bindings
  clk: qcom: add sc8280xp GCC driver

 .../bindings/clock/qcom,gcc-sc8280xp.yaml     |  129 +
 drivers/clk/qcom/Kconfig                      |    9 +
 drivers/clk/qcom/Makefile                     |    1 +
 drivers/clk/qcom/gcc-sc8280xp.c               | 7488 +++++++++++++++++
 include/dt-bindings/clock/qcom,gcc-sc8280xp.h |  496 ++
 5 files changed, 8123 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-sc8280xp.yaml
 create mode 100644 drivers/clk/qcom/gcc-sc8280xp.c
 create mode 100644 include/dt-bindings/clock/qcom,gcc-sc8280xp.h

-- 
2.35.1

