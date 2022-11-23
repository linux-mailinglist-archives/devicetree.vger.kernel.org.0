Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18952635AC2
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 11:58:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236632AbiKWKzc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 05:55:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237114AbiKWKzB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 05:55:01 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE364134138
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:43:54 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so1122841wmb.2
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HQyLvCzbt2wM1lhyjajUPlXQlhjXT3xZOAd7RCIM1cM=;
        b=T1E6bfqI6mODJG2H5eubFSuOhv0/B2d3xAyxxbSg+wGOxZL1Y8wb9bFb2TPRx94LtP
         nthw3RGN9xFRp8iI5xpSd2JnEvuWuxS+mrdcXo1nlZbbYiDtFQAtbfyRoEwG0ka2f9M8
         YIBxbZer3EB2stmNecHW6w+RWrwb2dbSAEJEn1Uvx92rYEBPzScuIe1VnAVBabWi2B+P
         rhOv5eG5BziNqIec41HyHRs9cLWJclekRIvRhqvI1gyS6wL/gTR00f6N8NqcuhgHpcxU
         BwMzuWSK9S6vaReb0HZ2tfxV7nyW0VJG9GVGDc19dUUEvsBeO4j8rLC2GUJHonkIVGhQ
         4UxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HQyLvCzbt2wM1lhyjajUPlXQlhjXT3xZOAd7RCIM1cM=;
        b=f3DR/qZcFuj49hMD7UeuCIDO6BhntkZ/lcRxO6p88puwPWefdb8EekiQF5t+zDWwBR
         l2unP6ctJDJR2LpaMkEiAvd30N8fA6w0XbenCkjUdhDQI1QNcriceKw5LB0aSEuhHGPJ
         W29+d2Ge2Hoqm+JZsYMeL34+/B9/VsFaPny7nPtLnw5oZ0Q+60QMd2ZLGXwb0TjYFjvV
         MVTyudvgMEn9TrR8tVJKdugoZB7hq6xBb2a035A0gJgmcbHHN8YSdMAfabpYqZknGoNT
         MyokXA9OE5yGV4EhRrCvRMCFPS0eWO5AzVZb0af3T9IO3Jw/LriTS+haSF1u9VBMjqRd
         JNLQ==
X-Gm-Message-State: ANoB5pkbPLLx0MCireAkb/knSOtj1gBQFehjGJvInRXVWWU5u8IXbY0d
        ndwHoNgUKCExtpeA0cmVrCSvbQ==
X-Google-Smtp-Source: AA0mqf7uZjRxYrmflECl6zBEQJK8KJROjcS2FJB74NW71J5aZnqnsExOlijV7xevmX4sRFlDFxBGgQ==
X-Received: by 2002:a7b:c00f:0:b0:3cf:7066:cf53 with SMTP id c15-20020a7bc00f000000b003cf7066cf53mr6258770wmb.135.1669200233249;
        Wed, 23 Nov 2022 02:43:53 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id v14-20020a5d4b0e000000b002416e383e1csm16526863wrq.25.2022.11.23.02.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:43:52 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     agross@kernel.org, andersson@kernel.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 0/3] arm64: dts: qcom: sc8280xp: add audio support
Date:   Wed, 23 Nov 2022 10:43:39 +0000
Message-Id: <20221123104342.26140-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.25.1
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

This patchset adds audio support for sc8280xp Lenovo x13s.
Support for Headset Playback/Capture, Speaker Playback and DMIC is
tested.

A prebuit ASoC topology file available at
https://git.linaro.org/people/srinivas.kandagatla/audioreach-topology.git/tree/prebuilt/SC8280XP-LENOVO-X13S-tplg.bin


Thanks to Johan, Kryz and Konrad for reviewing v1.

Changes since v3:
	- ordered include in gpr patch
	- removed sa8540p in subject perfix.
Thanks,
Srini

Srinivas Kandagatla (3):
  arm64: dts: qcom: sc8280xp: add gpr node
  arm64: dts: qcom: sc8280xp: add SoundWire and LPASS
  arm64: dts: qcom: sc8280xp-x13s: Add soundcard support

 .../qcom/sc8280xp-lenovo-thinkpad-x13s.dts    | 213 +++++++++++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 359 ++++++++++++++++++
 2 files changed, 572 insertions(+)

-- 
2.25.1

