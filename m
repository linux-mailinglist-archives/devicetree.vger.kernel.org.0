Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7281F5EA6B8
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 14:59:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235690AbiIZM7h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 08:59:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233443AbiIZM7R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 08:59:17 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93B8E1B14CC
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 04:32:56 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id r133-20020a1c448b000000b003b494ffc00bso7327305wma.0
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 04:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=pfy6KOhZURE1K5hYgI3cNuJjsXTUsstZ7xpWzda8XMU=;
        b=ivj3fbZ1sMsHxeYrML0+cgcWcl7eV7YbPXnFxaAchMBqaXw3VQkQ9GV3NQiJJexEAB
         nBnazlMqk65CCSBjj7Ph34zbdq12DHHo5ffWYnt7+Z5WaDfj6d39s9qZfA8Ws5nQy41/
         BMk1pwEs2Mqymq3WPzL1Y5oKxOqMyFO1lQv/5FU7viEkaEJ8eYDoHRcNmSNChF2jzNST
         XlRxg5JiuiUXlZnpUXCeDwEmIf+F9cFxy+EDkmr33/rnR8Hd/Z/kfqJewokxAaB4xPdt
         cnRij5nENlCKhy81vRTp54g5Ash7GThUecR2BR9j8LtDRgHb03W0jztN2zEH9wZYDe41
         dgqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=pfy6KOhZURE1K5hYgI3cNuJjsXTUsstZ7xpWzda8XMU=;
        b=f2KxqCPsSjfzwvezNrHLa9ZkZFusaMlEjMN7jIks6nvlM11nk3VTdIjnLSbctx4KZi
         9ErSk6emRPinJZvZbBg0+eQlzUD+EuEwzG77YtcznQd+cs9hY0VERb0J40zNSmA1ZYqK
         nq2+OqSimF7EXMMoz6e9DBnE4Q09UVd4OCab/fcBbtUP9GweLiF9quxYLudaP7onCQBt
         GfZogEpS6pKVS0H5aeRwBIYZdTZemywgYIHmhrDhRj+CkZqH3SvmZyQI3ZHKyDjYC/8N
         5fqZMhH2JkAap48e5Em8PH5bLDgPATdmA5LDOSFjgFONYEi0KurmEzcDfPOcDuvjH0Ru
         R/TQ==
X-Gm-Message-State: ACrzQf2bo3JUzvEERYSaz3XbGoWTEqwYWwm5HpiPr0vJTG8s9Nqzka3M
        Ao5AapQtXZEXC2iCNM24ddJ2wQ==
X-Google-Smtp-Source: AMsMyM7COF9QqsIjLKZ9KM/hy+yjfbMwHr/bP3JsKJI5KgVUkMKu5zxSn0c7DWszNS8oreNw+Lskpw==
X-Received: by 2002:a05:600c:444b:b0:3b4:fdbd:5965 with SMTP id v11-20020a05600c444b00b003b4fdbd5965mr14657767wmn.128.1664191905164;
        Mon, 26 Sep 2022 04:31:45 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id x8-20020adfdcc8000000b0022a2dbc80fdsm14064882wrm.10.2022.09.26.04.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 04:31:44 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     myungjoo.ham@samsung.com, cw00.choi@samsung.com
Cc:     agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gurus@codeaurora.org,
        aghayal@codeaurora.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH v4 0/2 RESEND] Fix pm8941-misc extcon interrupt dependency assumptions
Date:   Mon, 26 Sep 2022 12:31:41 +0100
Message-Id: <20220926113143.40768-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
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

RESEND:
- I thought I resent these at the start of this month, can't find them
  in linux-msm I think I just sent them to myself.

  No change since July 17th

V4:
- Added suggested extra log text from Marjin to extcon patch

V3:
- Adds a cover-letter since we are now doing two patches a dt-bindings fix and
  platform_get_irq_byname_optional fix.
- Add Review-by -> Rob Herring, Marijn Suijten
- Add additional patch to negate warning when one of usb_id or usb_vbus
  is not declared in the platform DTS.

Bryan O'Donoghue (2):
  dt-bindings: pm8941-misc: Fix usb_id and usb_vbus definitions
  extcon: qcom-spmi: Switch to platform_get_irq_byname_optional

 .../devicetree/bindings/extcon/qcom,pm8941-misc.yaml | 12 ++++++++----
 drivers/extcon/extcon-qcom-spmi-misc.c               |  4 ++--
 2 files changed, 10 insertions(+), 6 deletions(-)

-- 
2.36.1

