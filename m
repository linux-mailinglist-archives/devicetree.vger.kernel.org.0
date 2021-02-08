Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A41E7313C66
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 19:07:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235378AbhBHSGM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Feb 2021 13:06:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235167AbhBHSDe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Feb 2021 13:03:34 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36A4AC0617A7
        for <devicetree@vger.kernel.org>; Mon,  8 Feb 2021 10:01:55 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id v15so18295175wrx.4
        for <devicetree@vger.kernel.org>; Mon, 08 Feb 2021 10:01:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=15qU8cK0fgAua4gEd/w/zhOHPh1Gn9liZ7KcNZSIbsw=;
        b=ZtQCs63tKC4YNjAK5YtSkl6sRGMzqMgDk9JBWfHaip5ck0jSZBxtvpIAaRPwa/4Io+
         k4klxIU6HWNuAA8dl5xtXzodHH2zZc8AQ1ya6+D+UEWTgJ1zFvzsn0md+EIMZ2rO/bkC
         Eb7Ec+eDvh3Kz15Q8ihsCelhajfqZzJhsaf1coknsthLTdni8EkTINxV5UQMpmoOuycS
         Ap7BuWa6I/xJ1UrEe55XzHpbhp8AApMKsC6y05LrOwdVM6An8kCcJbIp00GVWf7tGqja
         8o3faYsFFgVANYKB+UOdAZC54tVQWlUWy0yOZ0PHmetW5fcrfPF7sLKZZ+jpEZLaWa/k
         lwcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=15qU8cK0fgAua4gEd/w/zhOHPh1Gn9liZ7KcNZSIbsw=;
        b=PophyybPf6r3tlk5Q3E+rdQPlG1bwzTRTsNnvZtm7XM+y23Iy5UHzD70oqqlu8FOy7
         saKr9sqHcajuD8UM1FxHYUMvJkW07sIV2mYLU/yPDqeP7L7nU5UWpKSiGM3MiqML/GX3
         reqt/DgcrX1laWG26iwrjjKRbGUK1pJ4gYcslDb7RnpbCNhK1LCmASNxCriNbgdchvHS
         T1+Y4SXaSdIF8CLCAFCg4rQ0axldbbBXKqSnonzj+n2CZafxiRC4Vf8ce9POHr2qxdvI
         qs8ZMZ2BXdabOLRqnCj8PbZBTN1ehYxAGfS1yLR33gRi/cgVzwJyR7sw0/N0SD/ZDAID
         F30g==
X-Gm-Message-State: AOAM533dlmxi/wsoommxOloPHMyb5g4B/5CuK++nfjnCaGqWdymsUZ+G
        UyLd7HjclmYNBloMv3K+djy50a5HjzkT9A==
X-Google-Smtp-Source: ABdhPJwrqGjJeWdA+BLfOl3RPdiRzmOJ7nilmxlHvJ0QS3yn9XOx2bYatc29bZoEoaYUpqBYS3z34w==
X-Received: by 2002:adf:bb54:: with SMTP id x20mr13257775wrg.112.1612807313722;
        Mon, 08 Feb 2021 10:01:53 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id l2sm21194937wmq.17.2021.02.08.10.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Feb 2021 10:01:53 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 0/7] ASoC: codecs: add support for LPASS Codec TX and RX macros
Date:   Mon,  8 Feb 2021 18:01:02 +0000
Message-Id: <20210208180109.518-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for reviewing v2, here is v3 patchset addressing comments from v2.

This patchset adds support for two Codec Macro blocks(TX and RX) available in
Qualcomm LPASS (Low Power Audio SubSystem).

There are WSA, VA, TX and RX Macros on LPASS IP, each of the Macro block
has specific connectivity like WSA Macros are intended to connect
to WSA Smart speaker codecs via SoundWire. VA Macro is intended for DMICs,
and TX/RX for Analog codecs via SoundWire like other WCD938x Codecs to provide
headphone/ear/lineout/amic/dmic etc ..

Most of the work is derived from downstream Qualcomm kernels.
Credits to various Qualcomm authors from Patrick Lai's team who have
contributed to this code.

This patchset has been tested on support to SM8250 MTP Development Board.
This board has 2 WSA881X smart speakers with onboard DMIC connected to
internal LPASS codec via WSA  and VA macros respectively and WCD938x
TX and RX connected via Soundwire via TX and RX Macros reseptively.

Thanks,
srini

Changes since v2:
	- Suffix some of the simple on/off control names with "Switch"

Srinivas Kandagatla (7):
  ASoC: qcom: dt-bindings: add bindings for lpass rx macro codec
  ASoC: codecs: lpass-rx-macro: add support for lpass rx macro
  ASoC: codecs: lpass-rx-macro: add dapm widgets and route
  ASoC: codecs: lpass-rx-macro: add iir widgets
  ASoC: qcom: dt-bindings: add bindings for lpass tx macro codec
  ASoC: codecs: lpass-tx-macro: add support for lpass tx macro
  ASoC: codecs: lpass-tx-macro: add dapm widgets and route

 .../bindings/sound/qcom,lpass-rx-macro.yaml   |   62 +
 .../bindings/sound/qcom,lpass-tx-macro.yaml   |   67 +
 sound/soc/codecs/Kconfig                      |   10 +
 sound/soc/codecs/Makefile                     |    4 +
 sound/soc/codecs/lpass-rx-macro.c             | 3604 +++++++++++++++++
 sound/soc/codecs/lpass-tx-macro.c             | 1877 +++++++++
 6 files changed, 5624 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
 create mode 100644 sound/soc/codecs/lpass-rx-macro.c
 create mode 100644 sound/soc/codecs/lpass-tx-macro.c

-- 
2.21.0

