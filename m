Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5BB95EA6B7
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 14:59:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234105AbiIZM7g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 08:59:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234246AbiIZM7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 08:59:16 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A2FE6D545
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 04:32:48 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id n10so9680488wrw.12
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 04:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=j2BR3h16Mhy5gM4KsP6TulbAM/2F99pvBCc7QlwzcZ4=;
        b=fEdQstABZ4T9ZxRQMaYKFiX2VfKeCXeT+d0SqgSdd0KTZhKNZQDYQynywvrs/z8/ic
         X1gKARKSK2iwvRqYp/PGiILjw08tjtUScR9bgzTxQxpGw45u4plJaUbi9mGoRAxrNGDe
         l0VzrWkMwhHdzIW/YLvIisEIqrbmAKEpiOpW8u7TeK1cnysOCdsEViRUONgehEvOQu/+
         hbbujWSaB5weuOlcFY4K+jxbH3JNmYYD6TwVYdClzP3MkzmfWKadHUXhiCH71RmY31X9
         S+T0poejEo9+AeyrS993Lu6H/zQ3pL/AAfbvdCz0DKtegoToj+FDvkYbLc/XfkKQscbC
         WqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=j2BR3h16Mhy5gM4KsP6TulbAM/2F99pvBCc7QlwzcZ4=;
        b=XZEUxOA2EdGHMy1Jt4hNg5v3VByP3PsLCrieUxQoJoTt/tk16rhKvzZbN/WMGOOzBi
         7aRNm0dbN5N653/9a6u32zDpQ8TyTKfC5/9v5LfxWlck4ilz0hwSwM50acKLIKHIw+0H
         FfGOXqXtl9SqN6nh/aFQPJPcn9HQwtAT9b1K48oK79KmodUyuhuMh7XhBmQINBoeguV/
         v8rxGKQFgW/Y8Wrq4eepH/bNVCriRs6d8T2OEcxprwZUi9qK2+0uLw2zhpVKc2pJ0te+
         13hAgVx0ox+sZzVJt6ykINswXDqGxlxPSGixX66VE7qZWq59HY80e6Fn5Vk0E2+4Gfry
         KuYQ==
X-Gm-Message-State: ACrzQf3iy4HA98pODJWXZLaQkWmg+MuYTX0qbtIuhft5GWGYHIScJbdV
        UVThAw7E/r0R+lk6K2BqE3IIjw==
X-Google-Smtp-Source: AMsMyM682xh7J7Wj8Cw43cFgxn2+yt+i7wbEaSQ7vTW3H11GCJK7bOeZO2JW2I6i0Xs5JQ4q2Zb59A==
X-Received: by 2002:a05:6000:18ca:b0:22b:d28:5b96 with SMTP id w10-20020a05600018ca00b0022b0d285b96mr12723689wrq.608.1664191907780;
        Mon, 26 Sep 2022 04:31:47 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id x8-20020adfdcc8000000b0022a2dbc80fdsm14064882wrm.10.2022.09.26.04.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 04:31:47 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     myungjoo.ham@samsung.com, cw00.choi@samsung.com
Cc:     agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gurus@codeaurora.org,
        aghayal@codeaurora.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org,
        Marijn Suijten <marijn.suijten@somainline.org>
Subject: [PATCH v4 2/2 RESEND] extcon: qcom-spmi: Switch to platform_get_irq_byname_optional
Date:   Mon, 26 Sep 2022 12:31:43 +0100
Message-Id: <20220926113143.40768-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220926113143.40768-1-bryan.odonoghue@linaro.org>
References: <20220926113143.40768-1-bryan.odonoghue@linaro.org>
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

Valid configurations for the extcon interrupt declarations are

- usb_id
- usb_vbus
- (usb_id | usb_vbus)

In the case of a standalone usb_id or usb_vbus failure to find one of the
interrupts shouldn't generate a warning message. A warning is already in
place if both IRQs are missing.

Switch to using platform_get_irq_byname_optional() in order to facilitate
this behaviour.

Suggested-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/extcon/extcon-qcom-spmi-misc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/extcon/extcon-qcom-spmi-misc.c b/drivers/extcon/extcon-qcom-spmi-misc.c
index eb02cb962b5e1..f72e90ceca53d 100644
--- a/drivers/extcon/extcon-qcom-spmi-misc.c
+++ b/drivers/extcon/extcon-qcom-spmi-misc.c
@@ -123,7 +123,7 @@ static int qcom_usb_extcon_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	info->id_irq = platform_get_irq_byname(pdev, "usb_id");
+	info->id_irq = platform_get_irq_byname_optional(pdev, "usb_id");
 	if (info->id_irq > 0) {
 		ret = devm_request_threaded_irq(dev, info->id_irq, NULL,
 					qcom_usb_irq_handler,
@@ -136,7 +136,7 @@ static int qcom_usb_extcon_probe(struct platform_device *pdev)
 		}
 	}
 
-	info->vbus_irq = platform_get_irq_byname(pdev, "usb_vbus");
+	info->vbus_irq = platform_get_irq_byname_optional(pdev, "usb_vbus");
 	if (info->vbus_irq > 0) {
 		ret = devm_request_threaded_irq(dev, info->vbus_irq, NULL,
 					qcom_usb_irq_handler,
-- 
2.36.1

