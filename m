Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 699DF598496
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 15:47:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245203AbiHRNqy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 09:46:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245183AbiHRNqv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 09:46:51 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E273B56DD
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 06:46:50 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id e20so1310513wri.13
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 06:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=6rZZaOHOvolmccYyL5qbkZM57p/vVPxvzfbkv6kGURE=;
        b=st0tuLfjyZg4OwhWSH6GgD154EBVCs8begrdGXw66Y1wqcN6jG6vXa+K8NfbEtYg3I
         cHMjVPOLJKyvx+O0D/84ISQ2yukD3qKOuE74+kLVOC64t9RnIhNEoBMcpxMtwRX4JzGY
         RgNCqCYO8QYohBdJn2ZKNkg01259d9rfRkbKteUgMD+2F3lse3oF4uMV889ZVXG66QvZ
         QwxTyNwRxY/hcFqwZsQK0jKA9+aAX6U8g8Qt+s3G3j4d6LVBFHJZmakmXaNFyF2YQMlx
         WEnK9npc0xRahj/rWdMDKWHTw454VWiAvILMkxVkgmgjhJ7dGdAYFNjO+6wyr/uSCO/a
         zFzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=6rZZaOHOvolmccYyL5qbkZM57p/vVPxvzfbkv6kGURE=;
        b=X85QQWaKHeJYY/ewKn5wL6ITW5aU6f+yr+sEJvsVoveCzHicg/6Spc/Ji8EHTTyqS+
         td/GzTsBuRtB4Mwx+cgCXDYJvzC6K3rE9t2GyhVfhlmqo6QcWlaXXuIiRgfzAFdFDKs/
         GDDaIuMPS7iIIRwqyWYPgoUbcgYN42Y9jSUOHbAFuWoeMHnRMyKQ3BVH+nuVKXaK9LN4
         sXsUi1G3ryuEsKjgqfhlkfQ8vWPewLFhL3cgKn4npkElgkrg3yBBd5M7ke9oqNoq76F6
         PPV8RdSTpR0QRdJEYyGSaQSmjL6NYZEZh5XunH+GxwRptWYAuuzA12sI6gNbvneXFJaz
         gKFw==
X-Gm-Message-State: ACgBeo3YlSeomGbiDH2VUYbvsAxKUd1WNw2BQ0k0xctYW4ItaqoHGI06
        kdVaXLEge6Q6GKWuTuxWhUuX5Q==
X-Google-Smtp-Source: AA6agR4xmEGJW0LUvkQoK3lSqIY/p6u2vP1m7hMR0AVYvVbe1XxwyKkiRlTRVtKQx5SY6c6WkmMJGQ==
X-Received: by 2002:a5d:5a9a:0:b0:220:6309:5c87 with SMTP id bp26-20020a5d5a9a000000b0022063095c87mr1600521wrb.107.1660830410046;
        Thu, 18 Aug 2022 06:46:50 -0700 (PDT)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id v5-20020a5d6785000000b0021e47fb24a2sm1454549wru.19.2022.08.18.06.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 06:46:49 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        perex@perex.cz, tiwai@suse.com,
        pierre-louis.bossart@linux.intel.com,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 5/6] ASoC: codecs: va-macro: clear the frame sync counter before enabling
Date:   Thu, 18 Aug 2022 14:46:18 +0100
Message-Id: <20220818134619.3432-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220818134619.3432-1-srinivas.kandagatla@linaro.org>
References: <20220818134619.3432-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Clear the frame sync counter before enabling it.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/codecs/lpass-va-macro.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/sound/soc/codecs/lpass-va-macro.c b/sound/soc/codecs/lpass-va-macro.c
index 1ea10dc70748..a35f684053d2 100644
--- a/sound/soc/codecs/lpass-va-macro.c
+++ b/sound/soc/codecs/lpass-va-macro.c
@@ -23,6 +23,7 @@
 #define CDC_VA_MCLK_CONTROL_EN			BIT(0)
 #define CDC_VA_CLK_RST_CTRL_FS_CNT_CONTROL	(0x0004)
 #define CDC_VA_FS_CONTROL_EN			BIT(0)
+#define CDC_VA_FS_COUNTER_CLR			BIT(1)
 #define CDC_VA_CLK_RST_CTRL_SWR_CONTROL		(0x0008)
 #define CDC_VA_TOP_CSR_TOP_CFG0			(0x0080)
 #define CDC_VA_FS_BROADCAST_EN			BIT(1)
@@ -423,9 +424,12 @@ static int va_clk_rsc_fs_gen_request(struct va_macro *va, bool enable)
 		regmap_update_bits(regmap, CDC_VA_CLK_RST_CTRL_MCLK_CONTROL,
 				   CDC_VA_MCLK_CONTROL_EN,
 				   CDC_VA_MCLK_CONTROL_EN);
-
+		/* clear the fs counter */
+		regmap_update_bits(regmap, CDC_VA_CLK_RST_CTRL_FS_CNT_CONTROL,
+				   CDC_VA_FS_CONTROL_EN | CDC_VA_FS_COUNTER_CLR,
+				   CDC_VA_FS_CONTROL_EN | CDC_VA_FS_COUNTER_CLR);
 		regmap_update_bits(regmap, CDC_VA_CLK_RST_CTRL_FS_CNT_CONTROL,
-				   CDC_VA_FS_CONTROL_EN,
+				   CDC_VA_FS_CONTROL_EN | CDC_VA_FS_COUNTER_CLR,
 				   CDC_VA_FS_CONTROL_EN);
 
 		regmap_update_bits(regmap, CDC_VA_TOP_CSR_TOP_CFG0,
-- 
2.21.0

