Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 469955961F1
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 20:07:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234808AbiHPSGS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 14:06:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236868AbiHPSFu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 14:05:50 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51E31832C9
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 11:05:48 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id r16so4328293wrm.6
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 11:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=RL8fsLLQfUE109rLkCR+EIbZdF7vKcUJZxwkD6nK564=;
        b=QMWPtlzAhcHq5DtkCAOaUCATtjJFx4OFebSf+mymX058+AVWjZyKfiMsGLEM8puybp
         3GutCXlbaMJcsTIHBrqTB8HxBTBdXJRbs1UperaodTjyF4+FkSR3v74pg91eZxgRvgFM
         81XrDCaI5uhoAg1noX3dgXnzStNv/fmrKy11dTt2UG9LGhEyZpe7xz4NKxPLJunAOaWm
         cH+BHS4D81WE507E3ppXqupVPz6Dwv1/nbB4LsQyrtilyPbIMmq7qVqjzZ41unZVk84e
         WuDslOf4YjmRZ9t4Z91WbPHOpoGXmT+t4LbupQNrn4p63xukZP0Ke/VkIHo6wNFkpYlK
         Wf/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=RL8fsLLQfUE109rLkCR+EIbZdF7vKcUJZxwkD6nK564=;
        b=ioYDElDw/gx4yGzQ+NTn3YxyAGViih5ECX14fcK+IbNXJnM8tM6RbCLAx1tD7SvmO+
         hJXVkPd06ilxu2OQd36ktVzGc+vgk7JYZKmLjEHDZQxSq3fcf2wKEMtM7rCadk2pquEp
         +duR2/NJRygPf87Rnaov5hq64tza54yWKbPEi58uFuAf4csAnbDTQrNxTadHX6MZeNHI
         RWZBJo2eEG7BV2POXSJg9e1lkTFJHQJTohcENcMKMg3HIxrUq9KuNu8JEYLSEAADl3u1
         0h5snv+/br8rVsHx3OviVqvfQLfMU2dXDOWiXS+VAagPEgCX00ytGerYLteB6fD7oHPR
         4v4w==
X-Gm-Message-State: ACgBeo29cyhsD05m5GETcJcWyLFzBE3T0IxF7vjCOYzUt38QyRvTnIxw
        WmZmLbD9Sq5fszyZvfjPoPtaBA==
X-Google-Smtp-Source: AA6agR7Ibb/rMvRE8Oi1nzCxuChVSVvPD6wsf1Elogmm+3UAuKauVvs9brefM/1Jd0kU+bm5IPq33w==
X-Received: by 2002:a05:6000:1102:b0:220:5c10:5cbe with SMTP id z2-20020a056000110200b002205c105cbemr12880958wrw.359.1660673146883;
        Tue, 16 Aug 2022 11:05:46 -0700 (PDT)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id e14-20020a05600c4e4e00b003a31ca9dfb6sm17510062wmq.32.2022.08.16.11.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 11:05:46 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        linus.walleij@linaro.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, srinivas.kandagatla@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] pinctrl: add support for SC8280XP LPASS LPI pinctrl
Date:   Tue, 16 Aug 2022 19:05:36 +0100
Message-Id: <20220816180538.9039-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
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

This patchset adds pinctrl driver to support pin configuration for LPASS
(Low Power Audio SubSystem) LPI (Low Power Island) pinctrl on SC8280XP.
    
This IP is an additional pin control block for Audio Pins on top the
existing SoC Top level pin-controller.
    
Tested this on Thinkpad X13s

Thanks,
Srini

Srinivas Kandagatla (2):
  dt-bindings: pinctrl: qcom: Add sc8280xp lpass lpi pinctrl bindings
  pinctrl: qcom: Add sc8280xp lpass lpi pinctrl driver

 .../qcom,sc8280xp-lpass-lpi-pinctrl.yaml      | 134 ++++++++++++
 drivers/pinctrl/qcom/Kconfig                  |   9 +
 drivers/pinctrl/qcom/Makefile                 |   1 +
 .../pinctrl/qcom/pinctrl-sc8280xp-lpass-lpi.c | 207 ++++++++++++++++++
 4 files changed, 351 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sc8280xp-lpass-lpi-pinctrl.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sc8280xp-lpass-lpi.c

-- 
2.21.0

