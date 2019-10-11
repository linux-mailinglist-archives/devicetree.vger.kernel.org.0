Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C8CFD4420
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 17:27:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726692AbfJKP1K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 11:27:10 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:34862 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726332AbfJKP1J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 11:27:09 -0400
Received: by mail-wm1-f67.google.com with SMTP id y21so10626909wmi.0
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 08:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SWDjIo4cWdaskHFzBqz2DKFMY0pEOV1E6WUMQBP96fA=;
        b=RRfXmGqn/H+D/R/f7CbflLPFjD4cAXYz6JCqn902kwscIgYgFtO5e6m9ZIQvR0vDEI
         jIP0Ba0NDZYAmXB9g68nHeO3NPnzwvCt+/g1ceBd8hOlAYVJ3t/Dthlr6siLAivpDqqB
         yaS0Ge96DJ1hLSGvbcI1CJxnoudVPCNpNJ9PXYPi22TrwSrh6rXFkZNejV28VvqPeciz
         7KynwQPltLHZq1dfjdwOYtitROGmossZvjgbOO0obIE9tePkm+xVzbPgVqEmRV0bZN2K
         CLrofjq9Ll4LTPucFPnpCOCUpBPt+TaRD9qhkEGD1c4y5x/PiU2fHHTDhvM+xRsGilOz
         lsAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SWDjIo4cWdaskHFzBqz2DKFMY0pEOV1E6WUMQBP96fA=;
        b=Is4kr3t/oqbAKGfYsH3ym9Ind8mVKhf4kNqwwGLsLsF7VbnlTFmGuy4jrcOBHt/RfK
         +ZyqmzL3770QuPYtDE4N3Bc/2hpAHITShq6ozoe8ehpWwaCGMcyMAr+1f5bxUgTcGMRh
         dH/GbS+AckurR+v5QMnMYrrLZP1INTFa4awVluCTvjxtbanfY1+uQk/O7owQ1UU6w7Q1
         4q9ON6yH+rkUIeuzqiXoTqDNYxJgyEd5vRubkOu5owqgZ5R5WCXnt2hlOJh2hbAIxwDg
         MOBJwYW50Yk91lUrg27CkdrMqWZbhsBhb8Gx44noNfUFzYj2CGdodMjdifPYfa3lbNAT
         Tfqw==
X-Gm-Message-State: APjAAAWCBTl0e7XS/l31lAFIcGwbhV2LPDzLpX7lh9RBuH2HZUMKAQy/
        Z+OoClDOsjT+7UCHja0wUHkhSPsadds=
X-Google-Smtp-Source: APXvYqzo5aVndjcgu1IWSr1WlQnJqwzlUCkga5p93Z3ioPspCHynR+8ZHh/wtwLEqios8h0k9ZyXEg==
X-Received: by 2002:a1c:ac02:: with SMTP id v2mr452252wme.85.1570807627681;
        Fri, 11 Oct 2019 08:27:07 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id a204sm16439979wmh.21.2019.10.11.08.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 08:27:06 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        spapothi@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        vkoul@kernel.org, lgirdwood@gmail.com, bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 0/3] ASoC: codecs: Add WSA881x Smart Speaker amplifier support
Date:   Fri, 11 Oct 2019 16:24:43 +0100
Message-Id: <20191011152446.5925-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support to WSA8810/WSA8815 Class-D Smart Speaker
Amplifier which is SoundWire interfaced.

This patchset along with DB845c machine driver and WCD934x codec driver
has been tested on SDM845 SoC based DragonBoard DB845c with two
WSA8810 and Lenovo YOGA C630 Laptop based on SDM850 with WSA8815
speaker amplifiers.

Most of the code in this driver is rework of Qualcomm downstream drivers
used in Andriod. Credits to Banajit Goswami and Patrick Lai's Team.

TODO:
        Add thermal sensor support in WSA881x.

Thanks,
srini

Changes since v7:
	- Added support to dai based on Discussion on mailing list.
	- Moved readable array to proper switch statement.
	- Remove unnecessary locks which can be added once tsens is supported.
	- Suffix gain to Volume as suggested by Mark.

Srinivas Kandagatla (3):
  dt-bindings: ASoC: Add WSA881x bindings
  dt-bindings: ASoC: WSA881x: Add missing #sound-dai-cells
  ASoC: codecs: add wsa881x amplifier support

 .../bindings/sound/qcom,wsa881x.yaml          |   68 +
 sound/soc/codecs/Kconfig                      |   10 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/wsa881x.c                    | 1153 +++++++++++++++++
 4 files changed, 1233 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
 create mode 100644 sound/soc/codecs/wsa881x.c

-- 
2.21.0

