Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C198316254
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 10:35:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229706AbhBJJet (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 04:34:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230015AbhBJJch (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 04:32:37 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DA12C061786
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 01:31:57 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id v14so1641328wro.7
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 01:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k5sKCODv0QrgXZ2RFmVU6ynQ+Rw3VG9UBUsttRl/jOY=;
        b=yzn2RjyfE+Ymq+e4RPMMkQCkMSNwsPMS59gJgkIT2ZjbB7e995bEVoQTtwAWtUaEro
         XtwQr2u1ntNWYpHVl8EZdnhtmBMsQ6rUrDlUg6vVDAyzgy8YeiU0gyPpfFXWend/xtpV
         5PFOMIysnm0y5E+EcNg2bQh/0BPPsC3r/7lBDDK3TxeI0RzRIIktfgImIchwajbi3YAr
         V4r2Iz1UwYUjBs/hjNgP6eLPV92Ei29AThVrQ9ZGNaDRF+NbS8PzapMcyPMVOmDZy62Z
         JtiluXt7om/oKfKJL6XsL8XJW7wPsz3fYG8nbPYLC97dF1/+td6KTiFazGG8oCIRZZ1w
         gefA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k5sKCODv0QrgXZ2RFmVU6ynQ+Rw3VG9UBUsttRl/jOY=;
        b=cC0GBPyl6uYytXdg9pdC9RWPWO7CpoXxpvzt2ueETX1y21frLCxWD+Wcg3yDDAdCZt
         k3edpR0zuYyB15vdUkSnB0JLgWiP2xtVOL2hGsVmui2uGhfNzgygKGgAfr+C3S0QFCgt
         gKOxXW0SAVq2ZfrK6XBViGWUtUN208D6wO9/dSDQHQSQApmdQz7KLJackpNVjcxK6iHB
         DfnTcf18hAX+bN5Z1FjWpFxzgLOsXfqdmRFqNihm3bflWkJX1yEULjbz36IbaRCuf8cN
         8DbidUf5JZfx6l49fJ49pq8tfoYuKc2pgr4gcC/LtO22DpBkFp83oWZ/vWEJ4HACGNAz
         mcNA==
X-Gm-Message-State: AOAM531wLYGE+saHIUWp+V943/oZ32C43rh4gfhlhW2x0HKONl5UHZyB
        gMzsG43ERxaUJ9ldMeKZ8qnBdZWvINfyaQ==
X-Google-Smtp-Source: ABdhPJxG5BW+H4n04fn0kKilEgXQaMM+3i3D3fQtUIGSsLB2BXZLKfjyhH8893sPibNZPZelUtg+WQ==
X-Received: by 2002:a05:6000:c7:: with SMTP id q7mr2572228wrx.364.1612949516138;
        Wed, 10 Feb 2021 01:31:56 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id t2sm2150583wru.53.2021.02.10.01.31.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Feb 2021 01:31:55 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 0/7] ASoC: codecs: add support for LPASS Codec TX and RX macros
Date:   Wed, 10 Feb 2021 09:30:48 +0000
Message-Id: <20210210093055.18350-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

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

Changes since v3:
	- fixed two minor warnings reported by kernel test robot using clang

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
 sound/soc/codecs/lpass-rx-macro.c             | 3606 +++++++++++++++++
 sound/soc/codecs/lpass-tx-macro.c             | 1874 +++++++++
 6 files changed, 5623 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
 create mode 100644 sound/soc/codecs/lpass-rx-macro.c
 create mode 100644 sound/soc/codecs/lpass-tx-macro.c

-- 
2.21.0

