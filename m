Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 862A75AF1FB
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 19:13:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232675AbiIFRM5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 13:12:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238319AbiIFRMk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 13:12:40 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C99F7870B1
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 10:02:08 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id bd26-20020a05600c1f1a00b003a5e82a6474so7827176wmb.4
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 10:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=fqbVR0/pYtalFeUPIEz7ZYhuS1uYGPBfqPC7dvf/8Hc=;
        b=TXRn4OzRw1fW++9vKnMzH+g/r7f1EyS/oo2E42frNUymESrW0Rx2Qs3BXnJwfx4bQy
         klg55C8eq/bYCnVJtQ/swaUqk8OcT9bEQvyBYYYLnPviHdazRh8v8fwIkzAwIA5WuUql
         x0bNITJCBHyu2KH8zle3uP4dfZgy4qyp2Nsd4apH44v/nzhAKjJDT+NDHZ3ptm7Q6Nx6
         vZcDsXh72RKtRs3PxeResEgHH7jO5PWGKcoDtWd8lo6NcCRJ+v0xTHQuQIsuPrPyLlaJ
         8qifHRitEsP4UZAyU+/OsAcWMMteFQq4R7lqruAfXl+KINuly74EtLVTjCBLqGwsVJvT
         Tfyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=fqbVR0/pYtalFeUPIEz7ZYhuS1uYGPBfqPC7dvf/8Hc=;
        b=L9tg8xfWWHz7IKcBbp18Xj70S8xtPsjp6yEzfNBDgogvlrI+7CENYEkyIg9ew1dVGr
         rQOMzfcUpjMJjZP99rjbQtbxpdh9Zmcdw6m8L174sPfW0pN2L6Nm2d3shAV7BuSmvZM6
         fnOBl9fLX5N54nrPaY5FTZpVKyDt6Hfr9iuBCs+r+jXhfonVy+oz3zjfFqFUMNa9NlB9
         YDo6kUPvAGm9DmfVoyPTnxWusnJsNGo1k2bcpNl73lC3uk178CAEok5fAEYvLcZG5JSk
         02pRwLg6PAlPDDjxAiFE7gZCb8qSrNPb5fBiPgdoGI4rRG9PtpU1MUyYy8Jfib0mrkWi
         Ylqg==
X-Gm-Message-State: ACgBeo3aVHuXHU+0B3qP9HbjGnEk2Iwba9fqrAUcw79qnh0CV9t+ea4W
        EHmggKMyHjgZSxRmEKJbTQRfWw==
X-Google-Smtp-Source: AA6agR7ggY+xobY1zkdFdqFhBWr7EgzRCH5ej/RpqXkiV++HXnF1gxlVAHP2RSaBTqtJIxuAwC8x8A==
X-Received: by 2002:a05:600c:4148:b0:3a5:4f94:577b with SMTP id h8-20020a05600c414800b003a54f94577bmr14683472wmm.167.1662483726815;
        Tue, 06 Sep 2022 10:02:06 -0700 (PDT)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id x13-20020a1c7c0d000000b003a5ca627333sm21085967wmc.8.2022.09.06.10.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:02:06 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, bgoswami@quicinc.com,
        perex@perex.cz, tiwai@suse.com, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 00/12] ASoC: codecs: qcom add support for SM8450 and SC8280XP
Date:   Tue,  6 Sep 2022 18:01:00 +0100
Message-Id: <20220906170112.1984-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support for SM8450 and SC8280XP SoC and also some of
the fixes requried to get stable audio on X13s.

Tested SmartSpeakers and Headset on SM8450 MTP and
Lenovo Thinkpad X13s.

Changes since v1:
- moved va-macro from using of_device_is_compatible to compatible data
- added some fixes for qcom codecs.

Srinivas Kandagatla (12):
  ASoC: codecs: wsa-macro: handle swr_reset correctly
  ASoC: codecs: rx-macro: handle swr_reset correctly
  ASoC: codecs: tx-macro: handle swr_reset correctly
  ASoC: codecs: tx-macro: fix active_decimator array
  ASoC: codecs: tx-macro: fix kcontrol put
  ASoC: codecs: wsa883x: add clock stop support
  ASoC: qcom: dt-bindings: add sm8450 and sc8280xp compatibles
  ASoC: codecs: wsa-macro: add support for sm8450 and sc8280xp
  ASoC: codecs: tx-macro: add support for sm8450 and sc8280xp
  ASoC: codecs: rx-macro: add support for sm8450 and sc8280xp
  ASoC: codecs: va-macro: clear the frame sync counter before enabling
  ASoC: codecs: va-macro: add support for sm8450 and sc8280xp

 .../bindings/sound/qcom,lpass-rx-macro.yaml   |  2 +
 .../bindings/sound/qcom,lpass-tx-macro.yaml   |  2 +
 .../bindings/sound/qcom,lpass-va-macro.yaml   |  2 +
 .../bindings/sound/qcom,lpass-wsa-macro.yaml  |  2 +
 sound/soc/codecs/lpass-rx-macro.c             | 18 ++--
 sound/soc/codecs/lpass-tx-macro.c             | 36 ++++----
 sound/soc/codecs/lpass-va-macro.c             | 82 +++++++++++++++++--
 sound/soc/codecs/lpass-wsa-macro.c            | 19 ++---
 sound/soc/codecs/wsa883x.c                    | 28 +------
 9 files changed, 120 insertions(+), 71 deletions(-)

-- 
2.21.0

