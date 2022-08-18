Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BD50598506
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 16:00:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245527AbiHRN7A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 09:59:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245529AbiHRN6i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 09:58:38 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D9355F70
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 06:58:31 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id d5so863846wms.5
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 06:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=o9Ay2vEp02yCz7wtoapfe+JbYqIRcJhSEcb1z+0LYVA=;
        b=n7fh4Wb0yRW3KJURFLMocGfucbu0vFwY1MdMv/WAVHNRMs+YiFSTYRkDe5EZ3nBuci
         797g12ZiwLhBQ4R5nKrv2WpDF8fPENnhXu+Ep7L7VPXRLhM12k7CoHj26V12dWPkSH5Z
         fnQqYTf/+LpQLUuQnb++12zB02auXV/sI8jojV54zb8q0aK5pAW9fVo1fq3e2pIY7Cj6
         tYWpnjFjE72aELypeq92ItC5N4y695ce3Ylk0T3qioaM6g7DTihaGxVqnqdNDLLYm9SG
         QcjrGtrWlo7eReWvgAz1NH5XPRm8CsookvJ/gWwaOzfBQcJIM6+SU6vkB6NiDEu8oEWF
         AufQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=o9Ay2vEp02yCz7wtoapfe+JbYqIRcJhSEcb1z+0LYVA=;
        b=BjYyvP2cxngMvpuxNr6l+3W/l563zLpL2jEo9BD9XcrD//h8soK28RXkJmRhgRHqo8
         i97NJ9C8y2icBaU8EA/3YGljOHtbX75fMoreApU5SLVNKKTtA+KvOdtX6r08fN1/cbdO
         Zhb55UM1CAEl6nca6EAIkcpOkKNoy5Y/6omrAi6fu/NbvwjebcHmvga/pkTP+bN4rQmm
         qTeEytoUm1AmoWYrXx6LM4cWp699nTbq9xsjKXbqkoY6icaOaAjXsAC7SnYZNCSlkgk8
         kPpVcGrasEMyuxvO0Ii/vlcE0fCiCcbQ6uoLmUUEyp/Aa/qU4CvRXyklJscMhJ2BsjPJ
         vwtA==
X-Gm-Message-State: ACgBeo037am5zPRRFFvt63DJtAEYHtY313/8ZGFtzaMSKxz1a4Co8sCb
        6lygLoPWSe+n8tbAtUBlV6JzMg==
X-Google-Smtp-Source: AA6agR5x3XYSteyGAwK5Qw85QEMJ/Q0oUaeWSFRKKd6fh1okhbFxUgsKVpK/fY5E3H1oaGjbTyMgiQ==
X-Received: by 2002:a05:600c:4e8d:b0:3a5:f7ed:873 with SMTP id f13-20020a05600c4e8d00b003a5f7ed0873mr5343453wmq.170.1660831109242;
        Thu, 18 Aug 2022 06:58:29 -0700 (PDT)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id l24-20020a1c7918000000b003a5ca627333sm5335937wme.8.2022.08.18.06.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 06:58:28 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        perex@perex.cz, tiwai@suse.com,
        pierre-louis.bossart@linux.intel.com,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 0/6] ASoC: qcom: add support for sc8280xp machine
Date:   Thu, 18 Aug 2022 14:58:14 +0100
Message-Id: <20220818135817.10142-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
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

THis patchset adds support for SC8280XP SoC machine driver.

First patch moves some of the commonly used code to common from sm8250 machine driver
and the follow on code adds minimal support for sc8280xp.

Currently this driver is only tested with SmartSpeakers and Headset
on Lenovo Thinkpad X13s.

Support for sm8450 is tested and I will post the patches soon.

Thanks,
Srini

Srinivas Kandagatla (3):
  ASoC: dt-bindings: qcom,sm8250: add compatibles for sm8450 and sm8250
  ASoC: qcom: sm8250: move some code to common
  ASoC: qcom: add machine driver for sc8280xp

 .../bindings/sound/qcom,sm8250.yaml           |   2 +
 sound/soc/qcom/Kconfig                        |  11 ++
 sound/soc/qcom/Makefile                       |   2 +
 sound/soc/qcom/common.c                       | 169 ++++++++++++++++++
 sound/soc/qcom/common.h                       |  12 ++
 sound/soc/qcom/sc8280xp.c                     | 157 ++++++++++++++++
 sound/soc/qcom/sm8250.c                       | 152 +---------------
 7 files changed, 360 insertions(+), 145 deletions(-)
 create mode 100644 sound/soc/qcom/sc8280xp.c

-- 
2.21.0

