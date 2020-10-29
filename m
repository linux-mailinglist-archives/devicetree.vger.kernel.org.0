Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7616629EA10
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 12:10:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725774AbgJ2LIn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 07:08:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727444AbgJ2LIm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 07:08:42 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E47E6C0613CF
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 04:08:41 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id i1so2318530wro.1
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 04:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LmGv0yRIVyV9z98kEqM68q1Q8ecpHQ7rH5nlZRYkiqc=;
        b=ByNrfm0KwHmzFqI+B0tQDo8PL5NERMC96ssfvEmQFy8mWOSvglwJdlUljs8gLq5IQw
         olWuy0+61OM9rLSkYUUZ4FvYB19h6orusLGDrOjP4jVnMykUksmLzyi/aX5oRaYhD5Sp
         iQUY/YlQIdxWvx8IPSVzQKvEbaMyhDLzggvZFuAu77zgwWPpAvVoC6ikXP5u3CG60lLf
         S8wXkp9DHOTu+wVw1bOxEJBFLzQN9Apjemq28zT1PyZa8MIHsJ8NYoUfRBC8DH6ja3JM
         onjKeVltaGt/acvPv0Q0K/52IgWgm2lV3mepxyl+OOlpqdgyEwzLJAD1V/pNd8nRJbx6
         pc+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LmGv0yRIVyV9z98kEqM68q1Q8ecpHQ7rH5nlZRYkiqc=;
        b=GQlO+SaD9oZzZyRjh9f5RVvznQtrLf+a+9MnoJMu1tBGQQVgazd7dVxR3djAN6KW/p
         S2tSWzlv9iIjEMxkydb+tYdMMrETXdOEizSZHgvQpJbgfAzAPOvfXYzpkiiWMDX7tGwj
         qQkBp1ZPoTmPaLTcapN0KrfDr0tJkpVCa8Js1f3Md80nqxRvcJwPKWtN2GqcDLJ9o+eU
         aupMPm8zG2vEtQCVxo3ETDjin/DOqnlIrLi1HKuM2K7+WpboD2UBT4xEOBWYNYz48uue
         Q8pNxZaVdN9kdduq7iUmMTSJ2RPn42vb09yYs5knjoOi5GoklRoRKtqAcBkXme9aFIRL
         /Gfg==
X-Gm-Message-State: AOAM532SYWiWw8r0nc/hmcrYj2xfNQVR0Tq50gLIrg1kj/MRTCeYGlmP
        A2t6d5DORQLBiS8JoBCibhTFSA==
X-Google-Smtp-Source: ABdhPJz0GKBBs+Rqk3fG1bevQ6hm1UzIOXVocSMV4O1tP/5cPXwjjN7nvP/eRMpt7VA4KzCoGgE2aw==
X-Received: by 2002:adf:f607:: with SMTP id t7mr5236339wrp.39.1603969720660;
        Thu, 29 Oct 2020 04:08:40 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n4sm3710830wmi.32.2020.10.29.04.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 04:08:39 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 0/6] ASoC: codecs: add support for LPASS Codec macros
Date:   Thu, 29 Oct 2020 11:08:23 +0000
Message-Id: <20201029110829.16425-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support for two Codec Macro blocks( WSA and VA) available in
Qualcomm LPASS (Low Power Audio SubSystem).

There are WSA, VA, TX and RX Macros on LPASS IP, each of the Macro block
has specific connectivity like WSA Macros are intended to connect
to WSA Smart speaker codecs via SoundWire. VA Macro is intended for DMICs,
and TX/RX for Analog codecs via SoundWire like other WCD Codecs to provide
headphone/ear/lineout etc ..

Most of the work is derived from downstream Qualcomm kernels.
Credits to various Qualcomm authors from Patrick Lai's team who have
contributed to this code.

This patchset has been tested on support to Qualcomm Robotics RB5 Development
Kit based on QRB5165 Robotics SoC. This board has 2 WSA881X smart speakers
with onboard DMIC connected to internal LPASS codec via WSA  and VA macros
respectively.

Thanks,
srini

-Changes since v1:
 - updated code to fix cppcheck errors suggested by Pierre
 - fixed various coding style and variable initialization suggested by Pierre.
 - yaml bindings clock names replaced with constants.

Srinivas Kandagatla (6):
  ASoC: qcom: dt-bindings: add bindings for lpass wsa macro codec
  ASoC: codecs: lpass-wsa-macro: Add support to WSA Macro
  ASoC: codecs: lpass-wsa-macro: add dapm widgets and route
  ASoC: qcom: dt-bindings: add bindings for lpass va macro codec
  ASoC: codecs: lpass-va-macro: Add support to VA Macro
  ASoC: codecs: lpass-va-macro: add dapm widgets and routes

 .../bindings/sound/qcom,lpass-va-macro.yaml   |   67 +
 .../bindings/sound/qcom,lpass-wsa-macro.yaml  |   69 +
 sound/soc/codecs/Kconfig                      |    8 +
 sound/soc/codecs/Makefile                     |    4 +
 sound/soc/codecs/lpass-va-macro.c             | 1500 ++++++++++
 sound/soc/codecs/lpass-wsa-macro.c            | 2472 +++++++++++++++++
 sound/soc/codecs/lpass-wsa-macro.h            |   15 +
 7 files changed, 4135 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
 create mode 100644 sound/soc/codecs/lpass-va-macro.c
 create mode 100644 sound/soc/codecs/lpass-wsa-macro.c
 create mode 100644 sound/soc/codecs/lpass-wsa-macro.h

-- 
2.21.0

