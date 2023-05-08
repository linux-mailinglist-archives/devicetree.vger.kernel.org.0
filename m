Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B12B6FAD21
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 13:31:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235939AbjEHLbr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 07:31:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235892AbjEHLbB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 07:31:01 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B6083C484
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 04:30:51 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2ad714536cfso19167821fa.0
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 04:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google; t=1683545449; x=1686137449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QROZZg0NcOAM6TrC3FRfcXoXcgrBsF3nV9ljtkhqs/g=;
        b=LaOiDwccr14aUQfXHiItTJRbSFtax2h3IM/zfRijGPvqXp3g1mZQ4/edBGu1qeOH9c
         bRteSh1Kbcm6J1asHyYNUnVkn4CKd5EFUpzPeLXSQgOmWKIeXPFWqpXj5ajw7uU0lDqU
         FrK1AKF+1igGV8vTA4QSP/eeY8c7bz5P8yKE7iChxrRITaG4FW0dGUkYfzA3XuINRfi0
         ZUC7A1791bXIxS3Dj8UBL3KH+vHmg2lCXVKnDpBW0PYTiS3+gCZHggHzw3AJzWJOBAkD
         8eCcP+NhlJPExY/TFpbYoU1K7sMTmHqX9AKf+9Cnn3yVUZISIzMz6lKI1Za/4+0jtF5K
         oPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683545449; x=1686137449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QROZZg0NcOAM6TrC3FRfcXoXcgrBsF3nV9ljtkhqs/g=;
        b=WZF17ysQFOh7VIi5YypPJU2/U1YYHpWn8ZjCnm9fddo/l73lKi8yx5uzdXqvPzweGt
         ou1YeKm51o3zW0lWdU7EirByPlxYUtKLiQA0utWPVSybPoaX2wb5ARuBRekgvL82dy0M
         6ZVPeDrtITkrDQavOdV2rRDLUSHy/q5tZ6vWHb8Ik9LrI9Z5vaWo9q27MQn4TwsCZllm
         fLq1UTAe6m0MZTsLPId1g1dPqC8mDJUSt6pqleKU15TrwAs50Smlv0AWeba31a0Urbjg
         6SYXWk2FG7filA+u3bjypHHt0t69v/pkuCJxwjunz8GktC1qPfqP1bbxdKVbtewf2tnU
         sOrg==
X-Gm-Message-State: AC+VfDxflyr3Er1XoYKJKNSUd4+ZzehyEdVHFE2HJbnxMPQF47OKE8/y
        93zv3Ax2QurXRBNPUvDQ1G2+8w==
X-Google-Smtp-Source: ACHHUZ5wHrOKKIsHA8UkSMl1QDKxcEx3roo4s774AFuy6ZE50c0cAvreNxNsl+gGMfStFlUTxtls3g==
X-Received: by 2002:a2e:918d:0:b0:2a8:b627:b92f with SMTP id f13-20020a2e918d000000b002a8b627b92fmr2717307ljg.29.1683545449157;
        Mon, 08 May 2023 04:30:49 -0700 (PDT)
Received: from panikiel.office.semihalf.net ([83.142.187.84])
        by smtp.gmail.com with ESMTPSA id k8-20020a2e2408000000b002a8b9353338sm1144406ljk.117.2023.05.08.04.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 04:30:48 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        broonie@kernel.org
Cc:     perex@perex.cz, tiwai@suse.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        lars@metafoo.de, nuno.sa@analog.com, upstream@semihalf.com,
        amstan@chromium.org,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH v2 0/7] Add Chameleon v3 ASoC audio
Date:   Mon,  8 May 2023 13:30:30 +0200
Message-ID: <20230508113037.137627-1-pan@semihalf.com>
X-Mailer: git-send-email 2.40.1.521.gf1e218fcd8-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The Google Chameleon v3 is a device made for testing audio and video
paths of other devices. This patchset adds support for ASoC audio on
this device. It has two audio sources: HDMI audio from the it68051 chip
(RX only), and analog audio from the ssm2603 chip (RX and TX).

The patchset adds the ASoC platform and codec drivers, as well as some
changes to the existing ssm2602 codec driver.

v2 changes:
  * Replace chv3-audio machine driver with simple-audio-card
  * Use regmap_register_patch() in ssm2602 workaround
  * Remove ssm2602 mute gpio patch, add a gpio hog instead
  * Simplify hw_pointer logic in chv3-i2s
  * Commit splits & other misc changes

Paweł Anikiel (7):
  ASoC: Add Google Chameleon v3 i2s driver
  ASoC: Add Google Chameleon v3 codec driver
  ASoC: dt-bindings: Add Google Chameleon v3 i2s device
  ASoC: dt-bindings: Add Google Chameleon v3 audio codec
  ARM: dts: chameleonv3: Add mute gpio hog
  ARM: dts: chameleonv3: Add Chameleon v3 audio
  ASoC: ssm2602: Add workaround for playback distortions

 .../bindings/sound/google,chv3-codec.yaml     |  31 ++
 .../bindings/sound/google,chv3-i2s.yaml       |  44 +++
 .../boot/dts/socfpga_arria10_chameleonv3.dts  |  62 ++++
 sound/soc/Kconfig                             |   1 +
 sound/soc/Makefile                            |   1 +
 sound/soc/codecs/Kconfig                      |   8 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/chv3-codec.c                 |  41 +++
 sound/soc/codecs/ssm2602.c                    |  15 +
 sound/soc/google/Kconfig                      |   6 +
 sound/soc/google/Makefile                     |   2 +
 sound/soc/google/chv3-i2s.c                   | 338 ++++++++++++++++++
 12 files changed, 551 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/google,chv3-codec.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/google,chv3-i2s.yaml
 create mode 100644 sound/soc/codecs/chv3-codec.c
 create mode 100644 sound/soc/google/Kconfig
 create mode 100644 sound/soc/google/Makefile
 create mode 100644 sound/soc/google/chv3-i2s.c

-- 
2.40.1.521.gf1e218fcd8-goog

