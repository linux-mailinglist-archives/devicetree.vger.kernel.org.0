Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F6382CC24A
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 17:31:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387405AbgLBQa2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 11:30:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726670AbgLBQa2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 11:30:28 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6847C0617A7
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 08:29:47 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id f190so9905473wme.1
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 08:29:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yn1Qjx2PGSJwTYYFgeQmMkhmsCI6fFdFchM0O3gSgpE=;
        b=Oxja89kUQhtUU10zgOgezzL8wfe85VTysr6EuAyr3ZITywv6U/zP06BAt8iwyXzBur
         G/19m3j+yK+GPCUjH2aEjE4xZNVypmD7J/pa4l2SXBwvSDwBK4omjjkKNl/XlbZsgsiU
         OvyOGJhCHWiaK3pQ2lXBPYc0HP824uLHJ/7NjFc7GSdaB07USD1rq7p3+sY0xkhv1rRP
         wPOLxyzx9d/Y1o5p4LaZ5Qf+EKrQiCD28wK6xsWbkc/g2eHz30MFkKAorYO/G4RIDQGA
         LX9TCgLpsyAsle6yK2oR6/Njg6kbtL3xf4vPrRQooucym0FEBcFn6uuPPpdyC2ra6cL4
         nJcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Yn1Qjx2PGSJwTYYFgeQmMkhmsCI6fFdFchM0O3gSgpE=;
        b=XKTAOBqGtGkHdiR3ycFlVmDuLFfs8W4mng6MOznYB97/6VC4rWCpx31ou10mslsVp7
         N9RpL2YXefY6x1U7JnLNflaQlRE4aQVFGC0xwmKUwMkwAcGJICuGAWJHyRJnJgm0vi5T
         4OyTBoZJGe2DEB4wevbedkS7Be3hZjSnTStxVBYg/rAEwQ6n/ChO/AXk/Y39ChHj7m06
         D6gz4bZalKdKBf+BXsFt/4vX0Ey67lXq4zyiBFwLlov4Bd62u8jG07zMfBCH9U15VuQG
         4EiWy2XJG02yiXohwEMVs6Su03wpPiU1JHhyuMrB9ZEmidxa/dNOzeRFXTic54nPqLDY
         JkHw==
X-Gm-Message-State: AOAM5315h/WYKE6fwF9L7PlsRs2GnXeFrvzCT3F/hA7Pwq4VNFwuXfXO
        uVgoL5QNkS0kAUViFtk1mnBOuA==
X-Google-Smtp-Source: ABdhPJynEg2l1j7vWObk8Q3evf1YLgj6cCwWzmxRb3T4RbYvxKeo6k/YteWX8f/91ZXhz3MiWrBMnw==
X-Received: by 2002:a7b:ca47:: with SMTP id m7mr3946131wml.33.1606926586389;
        Wed, 02 Dec 2020 08:29:46 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id o5sm2569882wmh.8.2020.12.02.08.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 08:29:45 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 0/2] pinctrl: qcom: Add sm8250 lpass lpi pinctrl support
Date:   Wed,  2 Dec 2020 16:29:41 +0000
Message-Id: <20201202162943.15210-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for LPASS (Low Power Audio SubSystem)
LPI (Low Power Island) pinctrl on SM8250.

This patch has been tested on support to Qualcomm Robotics RB5 Development
Kit based on QRB5165 Robotics SoC. This board has 2 WSA881X smart speakers
with onboard DMIC connected to internal LPASS codec via WSA  and VA macros
respectively.

Most of the work is derived from downstream Qualcomm kernels.
Credits to various Qualcomm authors from Patrick Lai's team who have
contributed to this code.

Am guessing existing qcom folder should cover maintining this driver too!
If not I can send additional patch to consolidate this along with other
Audio related drivers in Maintainer file!

Changes since v5:
	- moved to use FIELD_* or u32_replace/encode apis where possible
	- remove all the SHIFT constants
	- updated function groups as suggested by Bjorn
	- updated setting slew rate as suggested by Bjorn

Srinivas Kandagatla (2):
  dt-bindings: pinctrl: qcom: Add sm8250 lpass lpi pinctrl bindings
  pinctrl: qcom: Add sm8250 lpass lpi pinctrl driver

 .../pinctrl/qcom,lpass-lpi-pinctrl.yaml       | 130 ++++
 drivers/pinctrl/qcom/Kconfig                  |   8 +
 drivers/pinctrl/qcom/Makefile                 |   1 +
 drivers/pinctrl/qcom/pinctrl-lpass-lpi.c      | 695 ++++++++++++++++++
 4 files changed, 834 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,lpass-lpi-pinctrl.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-lpass-lpi.c

-- 
2.21.0

