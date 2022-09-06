Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94AB25AF231
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:16:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbiIFRN7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:13:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232700AbiIFRM7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:12:59 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AFDB8B9A0
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:02:40 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id k17so7221728wmr.2
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 10:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Vhz3YOEoDfv05lqGaP8UmdLTwYjd+5QppwEmBk1EAcM=;
        b=Cw/u+Ib0JZ0YzAj3X5FdCBPk2E4ie5smB3Wt7xeWbpnuXR9ErPd/TyXL9BBVMoEIYF
         kFsUuTbjg7+QCdSUPggmXh5MXquKC2FcGn1ZjgWhfaZ4XOAgXr+GHuexeSGUEr4gGIKf
         WfhKPUqLplhrakHPhWHFr6E9QhUHUC/CWv+qObc3fqGh/RZsjOvAw7U32+rGQpUk9YqU
         DibEcGnA+SCUsh7LCgEAKlnpIfNfRIpy5I5VCFBVUqB3phyqDrLYkkUAslGPU37iNE7U
         EY8u8kFObzhCeZP1s5bWs7Q+EvquPwASp3ZzD9mt7xPZL/8iDuLGjHVf7H6eFu+WuOX1
         NWcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Vhz3YOEoDfv05lqGaP8UmdLTwYjd+5QppwEmBk1EAcM=;
        b=psIfXG/tJ+qPGE+mtEwwJ2/XrTpSeLYrEw7P7a6SlSVi/6EdGIpWYs0/d1HcFLXys8
         6+UzP7IFERkSqLurkaZe5a9uWaJQr319AZZd2zAX4omjhmLOEXNa39vbhekAi6zRGQMH
         Rd7J9GYqbkiPLcqQNfLdKKFa+/mVj32LVht7j2wsMWAV82uWjipNIO8yeiQtYkvsd0bB
         FtPNZOEUDlpTy7q4yoH/ppv/ajJDaiPm+6VK+L5ygGu8Lo5o3fIBeLZB/BgvGai2ykBl
         PBPKzH01aUmkYPARbbyAcGhflhoKfzJuuDpYHXQExGSm1uq9ZoLvw8CaolNss2Zob2sW
         D0Tw==
X-Gm-Message-State: ACgBeo0Y5kfLS3iMnpso53/vvFaikSMliNZpOO93OycFqCXvPD2s6d01
        Qd/c13qV5YiTbAkvTrWpnDt7qQ==
X-Google-Smtp-Source: AA6agR6JE/Gba5AcnWcodsB3J2FW4DdI97OYm4rzmSyExCE4iEn0KvrutgOVo4Cv0b4Zfn+qpEw2Bw==
X-Received: by 2002:a7b:c453:0:b0:3a5:b42e:c4fb with SMTP id l19-20020a7bc453000000b003a5b42ec4fbmr14181612wmi.167.1662483735174;
        Tue, 06 Sep 2022 10:02:15 -0700 (PDT)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id x13-20020a1c7c0d000000b003a5ca627333sm21085967wmc.8.2022.09.06.10.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:02:14 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 08/12] ASoC: codecs: wsa-macro: add support for sm8450 and sc8280xp
Date:   Tue,  6 Sep 2022 18:01:08 +0100
Message-Id: <20220906170112.1984-9-srinivas.kandagatla@linaro.org>
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
 sound/soc/codecs/lpass-wsa-macro.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/codecs/lpass-wsa-macro.c b/sound/soc/codecs/lpass-wsa-macro.c
index 130d25b334ff..5e0abefe7cce 100644
--- a/sound/soc/codecs/lpass-wsa-macro.c
+++ b/sound/soc/codecs/lpass-wsa-macro.c
@@ -2552,6 +2552,8 @@ static const struct dev_pm_ops wsa_macro_pm_ops = {
 static const struct of_device_id wsa_macro_dt_match[] = {
 	{.compatible = "qcom,sc7280-lpass-wsa-macro"},
 	{.compatible = "qcom,sm8250-lpass-wsa-macro"},
+	{.compatible = "qcom,sm8450-lpass-wsa-macro"},
+	{.compatible = "qcom,sc8280xp-lpass-wsa-macro" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, wsa_macro_dt_match);
-- 
2.21.0

