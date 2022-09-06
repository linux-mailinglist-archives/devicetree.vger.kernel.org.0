Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFA925AF21E
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:15:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232035AbiIFROB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:14:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233727AbiIFRNG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:13:06 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FEC08E4FE
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:02:44 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id d12-20020a05600c34cc00b003a83d20812fso7840243wmq.1
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 10:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=pUJmbtWvtPwGRy1+LOJw2XaXtrhOpybks4Z6SCIljf4=;
        b=QHiV59qFluFmc2X4aluSb3cI8UBx/AvQ+3qoFk4pdJSOca0Pf+UwsjydWWNNy+qaTk
         +XF/XyHjDNitJ72UxSrOXjTo4qMk0hNSt8ERShfBL0fcv0Q0KcpBHZNeLSL6vrooYy8Q
         zdjECuThHt+98Mw8rMCcJqVPKe2ZnbZbhsN6YnlF/tZmDWzc4ovdFeXN8FqMJAiCH1Xm
         wSAyIZsF+0XTlaqfl4CFtoeVvQOCQSh0tRvs9Fhg2E/fIoNQwk0WgKo47AyPqcpCrde1
         coiFBaYo2JpZRtLar7U3mrZXlOPGmQ5yLXBTvVWD5yTPFBCdI0aF44a/HdAJnfAtxunU
         hpdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=pUJmbtWvtPwGRy1+LOJw2XaXtrhOpybks4Z6SCIljf4=;
        b=TI01NKXibdCaqTcMefh4fzQFuFHqMgggm6pe5WB1ipGEP9V5VYrcfzUv7WNlD74zYQ
         cHiYnypWWQMI9jTD6cZAOOJAjynesdJ9GQgHW1pf+5iQ7usG2xwRA/pXfGtC4gjlYgFT
         P7tLDpSFpBXbU6XDKV6SCstyWWsiK7Or3xQwAyxA6OBzR2DSKFzCwYPFH18D/jXbC4W0
         5B96QvUNkfdBRIws3eNyPiO6IEESajizTaG6xo7o79nv+zTEB/8D3KW4L0MgbXCEjN8w
         o+GJML7Y/Ev4tC5HBHsOg87eCOr8O5h+UF2zmRHqo/P6mV+oiRsfd5azWMJCAwq8QfKq
         01Fw==
X-Gm-Message-State: ACgBeo2ujTU79VFbOswAvUSEZajP92ugBd4eEcYVWb2UgHJzbTQelsCi
        7IXVP1FB5k+RmP6CHjn1CXPd5Q==
X-Google-Smtp-Source: AA6agR60Q2Q355yXzSKnWe9Bc2WKpC+8ck642yuall8GTusB9e4f1IY3T+xuDCrcw6+igOiiVe0niw==
X-Received: by 2002:a05:600c:a4c:b0:39c:6517:1136 with SMTP id c12-20020a05600c0a4c00b0039c65171136mr14382172wmq.12.1662483736228;
        Tue, 06 Sep 2022 10:02:16 -0700 (PDT)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id x13-20020a1c7c0d000000b003a5ca627333sm21085967wmc.8.2022.09.06.10.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:02:15 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 09/12] ASoC: codecs: tx-macro: add support for sm8450 and sc8280xp
Date:   Tue,  6 Sep 2022 18:01:09 +0100
Message-Id: <20220906170112.1984-10-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220906170112.1984-1-srinivas.kandagatla@linaro.org>
References: <20220906170112.1984-1-srinivas.kandagatla@linaro.org>
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

Add compatible for sm8450 and sc8280xp.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/codecs/lpass-tx-macro.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/codecs/lpass-tx-macro.c b/sound/soc/codecs/lpass-tx-macro.c
index 7f9370ed126f..ee15cf6b98bb 100644
--- a/sound/soc/codecs/lpass-tx-macro.c
+++ b/sound/soc/codecs/lpass-tx-macro.c
@@ -1994,6 +1994,8 @@ static const struct dev_pm_ops tx_macro_pm_ops = {
 static const struct of_device_id tx_macro_dt_match[] = {
 	{ .compatible = "qcom,sc7280-lpass-tx-macro" },
 	{ .compatible = "qcom,sm8250-lpass-tx-macro" },
+	{ .compatible = "qcom,sm8450-lpass-tx-macro" },
+	{ .compatible = "qcom,sc8280xp-lpass-tx-macro" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, tx_macro_dt_match);
-- 
2.21.0

