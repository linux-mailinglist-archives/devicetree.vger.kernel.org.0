Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E53B875C1AB
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 10:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230377AbjGUI3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 04:29:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229933AbjGUI3l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 04:29:41 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F37122D77
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:29:35 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3a3df1ee4a3so1023461b6e.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 01:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1689928175; x=1690532975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mjm1htpsgUdaRZcHsGo757GH1rkymaOgiUPQg9DWT7s=;
        b=RW7GYa24SF9OUtc1EwYBobJChC2NGH/9ryiaix+d6Lb7prlVSNmtW31odoBZ6MdhLH
         xGf7HcgZhS4CC2qc338kcpffmjLxhCqX7S0PN2nGX253i2MbmLXJM2aQLiaav5rxRzXS
         lkoLYnuPiwJNtT85A02CwFnryI1ZJ+Pyk2yuo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689928175; x=1690532975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mjm1htpsgUdaRZcHsGo757GH1rkymaOgiUPQg9DWT7s=;
        b=WTbAggykhPQFFDmEgKw+e+cOdOrISCUj593L0ubZpcHR9eYRKGWIleblZJz/n44F9k
         +YB6OLsRd8weNhfDiC2sHd3ffxj3SxP13peR8lYdi8tygP5S6q27ZGMyNb9Q+1eIa2PL
         ZSqVzsW2FgPmQXgDP0UEe13r1nri643Bmz7KzdwDthTvT+67mpYjnhhtVssGebryvWeO
         gNYhZfQpbOiA+vwTvzcIBsix5qXaRe9Ns5v30Ale2h8HcieqUStxoZ7K+jf9iseOwB6j
         ax9R5zfRe1c+7ty79blO6ynIW5ZyB+SNlsd07YZUaryTZrYC6blHJAOUNkn75mVWskoD
         ib6g==
X-Gm-Message-State: ABy/qLYS03hbpOOz3UBMt4iC6liQv+38St7HJgnN2SA89KeRdiqVFJmo
        R4tzGYIv1LS+kEnD8ip5WiocYw==
X-Google-Smtp-Source: APBJJlEaH+ytBtT6CWe3CshSGBWY3wUzqSd86sdwBGEZQQl0EkYUmpQfwwK3cbB5v7Sicgp2RjpOUQ==
X-Received: by 2002:a05:6808:280b:b0:3a4:350e:b213 with SMTP id et11-20020a056808280b00b003a4350eb213mr1139687oib.27.1689928175257;
        Fri, 21 Jul 2023 01:29:35 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6d86:d21:714:abab])
        by smtp.gmail.com with ESMTPSA id d26-20020a63991a000000b0055fe64fd3f4sm2594382pge.9.2023.07.21.01.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 01:29:34 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Fei Shao <fshao@chromium.org>
Subject: [PATCH RESEND v2 3/7] regulator: mt6358: Fix incorrect VCN33 sync error message
Date:   Fri, 21 Jul 2023 16:28:55 +0800
Message-ID: <20230721082903.2038975-4-wenst@chromium.org>
X-Mailer: git-send-email 2.41.0.487.g6d72f3e995-goog
In-Reply-To: <20230721082903.2038975-1-wenst@chromium.org>
References: <20230721082903.2038975-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

After syncing the enable status of VCN33_WIFI to VCN33_BT, the driver
will disable VCN33_WIFI. If it fails it will error out with a message.
However the error message incorrectly refers to VCN33_BT.

Fix the error message so that it correctly refers to VCN33_WIFI.

Suggested-by: Fei Shao <fshao@chromium.org>
Fixes: 65bae54e08c1 ("regulator: mt6358: Merge VCN33_* regulators")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/regulator/mt6358-regulator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/mt6358-regulator.c b/drivers/regulator/mt6358-regulator.c
index da6b40f947c4..b9cda2210c33 100644
--- a/drivers/regulator/mt6358-regulator.c
+++ b/drivers/regulator/mt6358-regulator.c
@@ -661,7 +661,7 @@ static int mt6358_sync_vcn33_setting(struct device *dev)
 	/* Disable VCN33_WIFI */
 	ret = regmap_update_bits(mt6397->regmap, MT6358_LDO_VCN33_CON0_1, BIT(0), 0);
 	if (ret) {
-		dev_err(dev, "Failed to disable VCN33_BT\n");
+		dev_err(dev, "Failed to disable VCN33_WIFI\n");
 		return ret;
 	}
 
-- 
2.41.0.487.g6d72f3e995-goog

