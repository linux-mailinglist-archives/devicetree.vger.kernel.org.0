Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FD2072BEE5
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 12:27:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234136AbjFLK07 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 06:26:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230287AbjFLK0h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 06:26:37 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B46C08C2B
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 03:06:08 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9745c5fed21so614688666b.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 03:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686564290; x=1689156290;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4NrWkYN+T1PuofiMKnG6dXc8ZUYCBSKcJmUWA7/nNhc=;
        b=cXnhT2mFxMiTnSpyTunorBQjM66sDJbpELPE1wDEpm3SdOlbHA02jvnnmwMXATEnCC
         hadnYKSiBU099GjTLZHtNTazYo+n9R9QNQC+FDXuyE7tgYj1k/w2OR1GMRFQBjiibtR6
         88MxpeXMLYS8ilbm45VDGRxuEg0D+Fae25W40yIlR3dSBR2rrY2+9PG/Iv9FBx5oI/3g
         uR5rNVxUPwuOYVAmH12K3hMvcHjHiP1rGr2kIlgl2KNDFfZdChr4krIGBq8GPBFToCvG
         5UH67MgDWCxWlpKEbsmOy0m+j6FG1YvWgHFUs+UcT1vS6imnZaQU7i1TESMk/OOnOUqx
         grvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686564290; x=1689156290;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4NrWkYN+T1PuofiMKnG6dXc8ZUYCBSKcJmUWA7/nNhc=;
        b=gZoOY+iUclMRzYQ4wElLjBEgUHV3LBFpZKXmYr65KEM/l/EvkNyyWC8J0mxFDcl1rW
         ZoAXXPfZkPlWo3WxoEgnYgDUvRUsHyowc9helPcKVaJfvmytQdXCDGYg/tnuTdRAMnHG
         O3dtjaM6at8yjwOX7sphl69VrB1qyOEqBZsnMkth7FFqb2g2ofzvLWwX/rAD/+J21PHM
         5yIYuzW46w+527PlaIQw0x8a8geScqRCsxN1EJTPc9jxgyNn17c/r2qyJwnyK0Di9F2y
         WSHOQO8XEu4Hj03X+B0oUFERsWldCogtDUgCXoH53OwgOoeZtRlbj0BE/3CAe3iOW9BO
         rEuA==
X-Gm-Message-State: AC+VfDy2ahwPbYJpFQKADWObCK7y2oJcxcwK+DPKTKVGaeHwYzY8QkR8
        D7MaDtFz8eJEuFrQL1xvUtbeqqeDlWg36qmncXrMJg==
X-Google-Smtp-Source: ACHHUZ6UbFF7XinpTrt0jXBpOVxMXkcAEgZfOmFyUIfEmeQZYaZ2yudSohukq1I9n1QgkdhoX5dpBg==
X-Received: by 2002:a05:600c:3793:b0:3f7:8fd5:567 with SMTP id o19-20020a05600c379300b003f78fd50567mr7016692wmr.2.1686563864354;
        Mon, 12 Jun 2023 02:57:44 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id f25-20020a7bcd19000000b003f7ff520a14sm10829525wmj.22.2023.06.12.02.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:57:44 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Mon, 12 Jun 2023 11:57:27 +0200
Subject: [PATCH v2 10/19] dt-bindings: clk: g12a-aoclkc: expose all clock
 ids
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230607-topic-amlogic-upstream-clkid-public-migration-v2-10-38172d17c27a@linaro.org>
References: <20230607-topic-amlogic-upstream-clkid-public-migration-v2-0-38172d17c27a@linaro.org>
In-Reply-To: <20230607-topic-amlogic-upstream-clkid-public-migration-v2-0-38172d17c27a@linaro.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2658;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=7gny86gEdGuVv1Xi4BFHu+2b+JlYB0+AahzkDT5GhB8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkhuwJUlUTItdC3kUPmDRVJZidNU1HOd9NfqDOUhnU
 bzLCyWiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZIbsCQAKCRB33NvayMhJ0e6sD/
 9L2RHqJBZ/WvUasGVtJfG0CFUUkWOgmyPk/3wNkO1BBXEh3pG16D+iz8phOPtBXy4bZeoIy9yrECAg
 bFiUwZljtqSHiC2xuxI6NZZxhWtVL7a2O8REQF/c9l3Uvm6QK7QVKwAaHZ013tWz0vwXGEDwvB5vbg
 39OL+HRj3gashe6POOxBPzkHvLRVPxYJbn5ki7VXalUGOlilNXSgt96xPL3Cb7UHQGKRd2N8bpqVe0
 YFSsrd3LEVswisxTAIzkIdVYvQNtkPhH6pBRlbbI3RiaJ1N/iLU5UTF5Ryi7bd9sg5o4e4c5CGAjGI
 GnX8os6dWBlsfaZCgR9EMJr6szIRjyPlqvSN8iSeNpYdBhT7kfxhrTnRfiSIHzjVhe1Re94rzi+74H
 hOqm7JplhUOTBlT+0h5EUaUKPo9ywReTbZseoJbZbl/px/he34vURUqtFWHXi7yHVACZ+qk97hIp2n
 Z8+fa1H1gG3oAE5ebW2P19Tx0EbZDmTgT9HARMP2ryNONbEuEEq2WSSWNyZgloju8gzBB/+5TXJrf3
 XWTSI3xP1UjIxWKeBIm41DJ0iiuZl+rHFp95rfv5lEOUkR6xl8f5WbBFR6NU7aJKptewbC5ZD0bndK
 /qbPrEkrVh9LJgadhJxLHK0Fugi2baKtbZXSOL89x7kLcHpcv8G7u22wbJGQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Due to a policy change in clock ID bindings handling, expose
all the "private" clock IDs to the public clock dt-bindings
to move out of the previous maintenance scheme.

This refers to a discussion at [1] & [2] with Krzysztof about
the issue with the current maintenance.

It was decided to move every g12a-aoclkc ID to the public clock
dt-bindings headers to be merged in a single tree so we
can safely add new clocks without having merge issues.

[1] https://lore.kernel.org/all/c088e01c-0714-82be-8347-6140daf56640@linaro.org/
[2] https://lore.kernel.org/all/2fabe721-7434-43e7-bae5-088a42ba128d@app.fastmail.com/

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/clk/meson/g12a-aoclk.h          | 17 -----------------
 include/dt-bindings/clock/g12a-aoclkc.h |  7 +++++++
 2 files changed, 7 insertions(+), 17 deletions(-)

diff --git a/drivers/clk/meson/g12a-aoclk.h b/drivers/clk/meson/g12a-aoclk.h
index 077bd25b94a1..9d6eeb24ae0c 100644
--- a/drivers/clk/meson/g12a-aoclk.h
+++ b/drivers/clk/meson/g12a-aoclk.h
@@ -7,23 +7,6 @@
 #ifndef __G12A_AOCLKC_H
 #define __G12A_AOCLKC_H
 
-/*
- * CLKID index values
- *
- * These indices are entirely contrived and do not map onto the hardware.
- * It has now been decided to expose everything by default in the DT header:
- * include/dt-bindings/clock/g12a-aoclkc.h. Only the clocks ids we don't want
- * to expose, such as the internal muxes and dividers of composite clocks,
- * will remain defined here.
- */
-#define CLKID_AO_SAR_ADC_DIV	17
-#define CLKID_AO_32K_PRE	20
-#define CLKID_AO_32K_DIV	21
-#define CLKID_AO_32K_SEL	22
-#define CLKID_AO_CEC_PRE	24
-#define CLKID_AO_CEC_DIV	25
-#define CLKID_AO_CEC_SEL	26
-
 #include <dt-bindings/clock/g12a-aoclkc.h>
 #include <dt-bindings/reset/g12a-aoclkc.h>
 
diff --git a/include/dt-bindings/clock/g12a-aoclkc.h b/include/dt-bindings/clock/g12a-aoclkc.h
index e916e49ff288..8fe7712fb12d 100644
--- a/include/dt-bindings/clock/g12a-aoclkc.h
+++ b/include/dt-bindings/clock/g12a-aoclkc.h
@@ -26,10 +26,17 @@
 #define CLKID_AO_M4_FCLK	13
 #define CLKID_AO_M4_HCLK	14
 #define CLKID_AO_CLK81		15
+#define CLKID_AO_SAR_ADC_DIV	17
 #define CLKID_AO_SAR_ADC_SEL	16
 #define CLKID_AO_SAR_ADC_CLK	18
 #define CLKID_AO_CTS_OSCIN	19
+#define CLKID_AO_32K_PRE	20
+#define CLKID_AO_32K_DIV	21
+#define CLKID_AO_32K_SEL	22
 #define CLKID_AO_32K		23
+#define CLKID_AO_CEC_PRE	24
+#define CLKID_AO_CEC_DIV	25
+#define CLKID_AO_CEC_SEL	26
 #define CLKID_AO_CEC		27
 #define CLKID_AO_CTS_RTC_OSCIN	28
 

-- 
2.34.1

