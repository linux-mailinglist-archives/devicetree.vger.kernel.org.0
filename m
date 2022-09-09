Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B5F85B339F
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 11:22:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231126AbiIIJUu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 05:20:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231736AbiIIJUs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 05:20:48 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08378B2851
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 02:20:46 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id f14so696784lfg.5
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 02:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=p22VHkiyfyJQ/2cmDiOXf73kBtRCLk4DV4mGJPl32s0=;
        b=T+/lWIY8v0qbAYeoyntJ0FQNj5wU33lo4K5Spce/QU9XjaHLtpN7Vk+iszIb7VtMdg
         S31FyJhBd2gMoSsQy856YiJf0hmLG9rthIhEhIsy/XAgBr53ZAlOaxbAKJpeYLEvDM/p
         DedQOV2vuejdGKV7xedWegc7UQFwOEtfOjJnvdqixcPUswSmHr4AIqQakzOAyF5dKzJx
         23/9X0a89l6aAUBNHDiiQENwdc4f8OzD5CyLPTFFoPV9DCEmQxnCU47MoKqdAK7P4eZm
         juHJBF+dLgTTpOBCPycex//xouuclW6585+dv79G9brhthWARf8RAferIXgfY+LEKFsG
         nn3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=p22VHkiyfyJQ/2cmDiOXf73kBtRCLk4DV4mGJPl32s0=;
        b=ihubknelZuqJ8/TVCGypjGsA+c6RK4N/5qPVyqJ7ubEgzcuYm/hthfUcwNONFgcMP5
         0fFXXISTzd9qeixoWTGq1cezLiu2FZk4ER0objHs1BTUFS+cHgVoZCFMJuibqCZua4RK
         onbmh1ZKAW+eEKaLTKucbG7qNYqYVat5t+nWVuQo/UTnm0/O4jFPCYeFnNui3TKhgAS3
         DMh97ToNyT2dOL+AmeyBbEUVgBU9L7KkrqUqHqRKmTeLoIeNM7qstTScU8YJXwE6Xdhj
         ewZ/aOr8jxqaAeoEpioD5xeW/zspu+sIdd1eItSXxIQJH5e2xrpBrtOmhlAN7pmHFyQZ
         BwUw==
X-Gm-Message-State: ACgBeo3ljTcJtxck3L14ctDapAIt5EV43MTsQDINBrRR9KHjQQSKEvwx
        TWgrNFcRjvlZt55zLaxDHkdNtw==
X-Google-Smtp-Source: AA6agR76T7wG7Oj/rg4yBhTT1c6TwJjrayUmvtzsa/GBbqcMFntL6b1sri3PQCjNtkP/D0EkB4GCeg==
X-Received: by 2002:ac2:5c52:0:b0:498:ec75:c73c with SMTP id s18-20020ac25c52000000b00498ec75c73cmr2367460lfp.164.1662715244381;
        Fri, 09 Sep 2022 02:20:44 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s6-20020a056512214600b00498fe38ea0fsm2170lfr.174.2022.09.09.02.20.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 02:20:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 03/15] hwspinlock: qcom: correct MMIO max register for newer SoCs
Date:   Fri,  9 Sep 2022 11:20:23 +0200
Message-Id: <20220909092035.223915-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220909092035.223915-1-krzysztof.kozlowski@linaro.org>
References: <20220909092035.223915-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Newer ARMv8 Qualcomm SoCs using 0x1000 register stride have maximum
register 0x20000 (32 mutexes * 0x1000).

Fixes: 7a1e6fb1c606 ("hwspinlock: qcom: Allow mmio usage in addition to syscon")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
---
 drivers/hwspinlock/qcom_hwspinlock.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwspinlock/qcom_hwspinlock.c b/drivers/hwspinlock/qcom_hwspinlock.c
index 80ea45b3a815..9734e149d981 100644
--- a/drivers/hwspinlock/qcom_hwspinlock.c
+++ b/drivers/hwspinlock/qcom_hwspinlock.c
@@ -121,7 +121,7 @@ static const struct regmap_config tcsr_mutex_config = {
 	.reg_bits		= 32,
 	.reg_stride		= 4,
 	.val_bits		= 32,
-	.max_register		= 0x40000,
+	.max_register		= 0x20000,
 	.fast_io		= true,
 };
 
-- 
2.34.1

