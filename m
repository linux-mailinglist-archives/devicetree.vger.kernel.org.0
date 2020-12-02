Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FFF62CC489
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 19:08:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728414AbgLBSId (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 13:08:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727108AbgLBSId (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 13:08:33 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4597AC0613D4
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 10:07:53 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id g185so10793794wmf.3
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 10:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SsWlwI2/0ReQscJlT7sv5hrpnQn9P8/QKxp+kd8B4HA=;
        b=ke+qbPwSgkrU1nv6oOE9KLUw43NcLqZDxNlRkgCpeuoumb/KRh7jBz39OAiWn60nii
         Aorb/7kXEG9plrSeSjHe+WCatQYxteX/y7RA7OnYgl0VsGSC/5OIYe/KaAiGn1sRc6wH
         cloAVv4a1NmviBwZjXC3tV3erji1cSESREVPu3kxxRAzT7rnDQUlWfJ3MWZidK3kclfy
         dTlIDgv/SFoZe8J3qBmv8bk5ZYCV/WiwZkJkn0DZJ1fTQmAitWcWStNu7xjqBXPzlD0g
         42SiAoHxE0ISYuG1VHqe29Y2xlwtjD21glFxBZpUS2stfHLGTIMibsF2EzcBy43ZOUGB
         iSYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=SsWlwI2/0ReQscJlT7sv5hrpnQn9P8/QKxp+kd8B4HA=;
        b=ufjtLXHXSfB+7HDbKf4Kdmh6gblfGTsYy1ndsehdXfMOiBoem00yAvEu/Q3hcRV2bq
         N9ep+6vBTb3uy24VrYsZMqS8AQCkBNvY9bYrTqrNN4XpIRhMgLfNIZd6Tg+ftRGO4ao4
         HBHd2Xb1+1Imjam7sr6LyyB9PkFziTcuH+L5vc6kzkP7fSJ78nK3mT+asKPjbq1YKf+6
         RQksNi85wny1THnLwpOtCqlQAooGokXfpHhpvmRbDBcoRRuIMt1tcMwTVlxbXdTNjE0e
         PlWmaO6X+fo1HuAqZgVeaLfgIYGcixRSLoPDF8QLm1D7axY5R9POl3pXDYDlkSjVTvWr
         ijbQ==
X-Gm-Message-State: AOAM530MlhtQ/XUlvKPN8HUox3lWswAMwE/WLGhxwG+Krn7gji/19CKD
        aDB4CIFD5Q4zu1akWtwh15YFNw==
X-Google-Smtp-Source: ABdhPJwlmtcWPmRdDokFICh8Ou0AfhCSZyvSV6GfXqU85c/QDiLDlg7K/9FQM6FJEC5VPH4rhf2hzg==
X-Received: by 2002:a1c:4c07:: with SMTP id z7mr4338877wmf.142.1606932471819;
        Wed, 02 Dec 2020 10:07:51 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id a18sm3004404wrr.20.2020.12.02.10.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 10:07:51 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 0/6] arm64: dts: qcom: qrb5165-rb5 audio support
Date:   Wed,  2 Dec 2020 18:07:35 +0000
Message-Id: <20201202180741.16386-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support to Qualcomm Robotics RB5 Development Kit based on
QRB5165 Robotics SoC. This board has 2 WSA881X smart speakers with onboard
DMIC connected to internal LPASS codec via WSA and VA macros respectively.

All the audio related driver patches are merged via respective maintainer trees
along with bindings. Only LPI pinctrl driver is not merged yet, however the
bindings are acked by Rob, so am guessing that the dt changes should be okay to go!

Thanks,
srini

Changes since v1:
	- updated pinctrl nodes as suggested by Bjorn
	- reordered include files.
	- removed unnecessary spaces
	- used mbn instead of mdt for adsp firmware

Srinivas Kandagatla (6):
  arm64: dts: qcom: sm8250: add apr and its services
  arm64: dts: qcom: sm8250: add audio clock controllers
  arm64: dts: qcom: sm8250: add lpass lpi pin controller node
  arm64: dts: qcom: sm8250: add wsa and va codec macros
  arm64: dts: qcom: sm8250: add mi2s pinconfs
  arm64: dts: qcom: qrb5165-rb5: Add Audio support

 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 121 ++++++++++
 arch/arm64/boot/dts/qcom/sm8250.dtsi     | 276 +++++++++++++++++++++++
 2 files changed, 397 insertions(+)

-- 
2.21.0

