Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDC0437FAD5
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 17:36:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234923AbhEMPha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 May 2021 11:37:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234893AbhEMPh2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 May 2021 11:37:28 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78186C06174A
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 08:36:17 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id f1so9237437edt.4
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 08:36:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vfqqUPPm4LRq9XH1UyFkkLurE047vpEpu2TMxeSoHug=;
        b=Dv4G6L9f+ffBOVU+akjB7GkzTfa91b+9zrdTuBevCH+/c9q5Z24slXdRAlsJQPqkrP
         Egw98MJEh8gAj8sf4g+BBWquD3IeR4raDGXDyznoWi1eFKBRB7XrFvhNOSabHn04Exx6
         aFPkdZiSw+1yBYAsumsnukBtUPKJ5h5HU9hMGsckGxHJvbwpnhtrP4uzdr7y9jFem9vS
         Ew8r6Njmb2GT96JO7fOwHo6x9aRk335KYp0uT4R5S/conARxuoI9qQ2q7tNwu1quewPc
         fNwvXbyY+B4NTwvXxL2y/J60KlnSo4lgI5e7LlebKvPCuScva/3m/ou4xf02v3ayCB9l
         iHnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vfqqUPPm4LRq9XH1UyFkkLurE047vpEpu2TMxeSoHug=;
        b=cNbbJrO05yqpr9bEqmDurQx80nNVZCmBzCqGVZD6QYA/2f2Em5QHhcRsGe1FpVVG3l
         iIeppeqnSlQu1sqrxn57iykA+9Lefv52UpamR7h7q5PMF6TJo8DB4cUMBbTW1PMs254/
         hVVE+dDKEpNOHExsjOF1wJnYvocOy2f/2S+ElwnfSoIuxmUeZrChYkusxvWaRIr8+2Fy
         6Wuc3iIFsl+INmSvdeJ5//4r1pVomJph2i2fUkczJniXX4jd5Og0eu5qYU6EJBezFe+8
         +TIpxBf7I6nPrrPGY1aooDhGPCPTjrC6J6Jbcwl8PxQhVYDYrE5dFPMbboxPV6Zp0Jdy
         pJrQ==
X-Gm-Message-State: AOAM532LgbyY5jVmxN22kUPkFjsw+gjlTxglkWIiFIU+qjL7ZeymLBgK
        OARb4yDd/VHBOMxO3sJiJk8jRA==
X-Google-Smtp-Source: ABdhPJxHLnbUfbwiED2T3AqLYF2SEiPKMFALZ1DS8jHYcbXzFFygmt4l2rSsOOpyXs/WwxgXjr9Mbw==
X-Received: by 2002:a05:6402:50d2:: with SMTP id h18mr16501671edb.10.1620920176142;
        Thu, 13 May 2021 08:36:16 -0700 (PDT)
Received: from PackardBell (192038133011.mbb.telenor.dk. [192.38.133.11])
        by smtp.googlemail.com with ESMTPSA id r17sm2544496edt.33.2021.05.13.08.35.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 08:36:15 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id 77f17b1f;
        Thu, 13 May 2021 15:35:48 +0000 (UTC)
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Russell King <linux@armlinux.org.uk>,
        David Sterba <dsterba@suse.com>, Jens Axboe <axboe@kernel.dk>,
        Bartosz Dudziak <bartosz.dudziak@snejp.pl>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Kumar Gala <galak@codeaurora.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] arm: qcom: Add SMP support for Cortex-A7
Date:   Thu, 13 May 2021 17:34:40 +0200
Message-Id: <20210513153442.52941-1-bartosz.dudziak@snejp.pl>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SMP support for a Cortex-A7 CPU in Qualcomm Snapdragon 200 SoCs:
  - MSM8210, MSM8610. MSM8212, MSM8612, MSM8909
and in Snapdragon 400 SoCs:
  - APQ8026, MSM8x26, MSM8x28

Bartosz Dudziak (2):
  dt-bindings: arm: Document qcom,cpss-acc
  arm: qcom: Add SMP support for Cortex-A7

 .../devicetree/bindings/arm/cpus.yaml         |  7 +-
 .../bindings/arm/msm/qcom,cpss-acc.yaml       | 41 +++++++++++
 arch/arm/mach-qcom/platsmp.c                  | 72 +++++++++++++++++++
 3 files changed, 117 insertions(+), 3 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/msm/qcom,cpss-acc.yaml

-- 
2.25.1

