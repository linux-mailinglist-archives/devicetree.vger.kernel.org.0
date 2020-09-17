Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66AD926DD1A
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 15:49:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726932AbgIQN3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 09:29:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726805AbgIQN3O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 09:29:14 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1191CC061353
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 06:28:58 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id j2so2079979wrx.7
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 06:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XLbqqZ/vpJpcdXaFd7VC2pcNFTGY4Iy4LUzor+NVcxg=;
        b=j1Ewtdfm6q53Q0PWp1kjz54MdZK6+8duFS/Rm1nvXupcPFqa5lJGyQfshtwmUPbmpD
         9wrB+PtDcm7gvGgJF9xsckuIV14q5YPCh1LFfSpJVfJjfXZ352DVACm1ZyzWzXKI3l44
         UhbIKHf6FGlCYxLYvTmCXJXzzLVXL3chdpMh1GA3d0wOYgwsPdpL9/P6Nvgo6tHw43ji
         JGqyWSHQ008Zubvbp7XuON2nTFcoIq63W1b5c09bmu3jVsicdkHNOrDVp5IW9hVab9KC
         BU4RjO+eBxzaWf5bAqaU3HqCGiNJbNEslZOlXfQ7QTuoPCssCbFFarFLtJFHT69jbMnX
         dfcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XLbqqZ/vpJpcdXaFd7VC2pcNFTGY4Iy4LUzor+NVcxg=;
        b=aNF2oN8pPKEwRvt77Wqd6gWqYBa9TArkECwIo1cnPlmswPLjyUx6CXsxZaM5dm/Vu7
         0xsxapIQbarZqNzuBySdijM04M3/43X6BKBN6pyufMoLJanS2nbYT378KYwrx3HuKNiT
         pY5RdN3iVh+iT1k3eA1FKKGvj/wvV0fap7kMoOqUV3eYdW9vGV0S4/INloI2cSaL3RYT
         EWBBag3PiJVseOClUT7RoWsyAXvBqVaXKbg5Fdv2463VswlgK97Hz0bSf++8rGweU1qO
         7Oe6/Nqn6Mz9R4cwO7cnhaIsnxIl/MTUngl54Yf7pHmLZDY9jthz2CICJZLmv2cMeXUF
         pZCg==
X-Gm-Message-State: AOAM532wQWqt9Tbc+lkhtc6OsazM4qFfYXwIk5771UUjPNmZz6WikBhw
        pn57ZUoblO7hK9BFgtTUNou8cw==
X-Google-Smtp-Source: ABdhPJxIxoY8/oezHyrHk5clz6STxjXu6oZ+2wLqR+YmY169D2v/URS3C6DnnrbMi+fUKqOGeugFhQ==
X-Received: by 2002:adf:e289:: with SMTP id v9mr32408611wri.14.1600349336204;
        Thu, 17 Sep 2020 06:28:56 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n10sm11486910wmk.7.2020.09.17.06.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 06:28:55 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     sboyd@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bjorn.andersson@linaro.org, mturquette@baylibre.com,
        robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 0/4] clk: qcom : add sm8250 LPASS GFM drivers
Date:   Thu, 17 Sep 2020 14:28:46 +0100
Message-Id: <20200917132850.7730-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support for GFM Muxes found in LPASS
(Low Power Audio SubSystem) IP in Audio Clock Controller
and Always ON clock controller.

Clocks derived from these muxes are consumed by LPASS Digital Codec.
Currently the driver for Audio and Always ON clock controller only
supports GFM Muxes, however it should be easy to add more clock
support when required.

Srinivas Kandagatla (4):
  dt-bindings: clock: Add support for LPASS Audio Clock Controller
  dt-bindings: clock: Add support for LPASS Always ON Controller
  clk: qcom: Add support to LPASS AUDIO_CC Glitch Free Mux clocks
  clk: qcom: Add support to LPASS AON_CC Glitch Free Mux clocks

 .../bindings/clock/qcom,aoncc-sm8250.yaml     |  58 ++++
 .../bindings/clock/qcom,audiocc-sm8250.yaml   |  58 ++++
 drivers/clk/qcom/Kconfig                      |   7 +
 drivers/clk/qcom/Makefile                     |   1 +
 drivers/clk/qcom/lpass-gfm-sm8250.c           | 296 ++++++++++++++++++
 .../clock/qcom,sm8250-lpass-aoncc.h           |  11 +
 .../clock/qcom,sm8250-lpass-audiocc.h         |  13 +
 7 files changed, 444 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,aoncc-sm8250.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,audiocc-sm8250.yaml
 create mode 100644 drivers/clk/qcom/lpass-gfm-sm8250.c
 create mode 100644 include/dt-bindings/clock/qcom,sm8250-lpass-aoncc.h
 create mode 100644 include/dt-bindings/clock/qcom,sm8250-lpass-audiocc.h

-- 
2.21.0

