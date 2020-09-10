Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE0AE265303
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 23:27:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728237AbgIJV1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 17:27:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731109AbgIJOJr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 10:09:47 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDB33C061756
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 06:57:31 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id y15so153492wmi.0
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 06:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MwCnq7FxTYt4OfQXRTiK+fRY/WmJvx9OFmW7bgtzZM0=;
        b=h3OxTW3NXpvEMOq+NbIAj5X/K4i9qGE9aGqbTmvfZMAHL8RYp/UJta3GwL7enE6ljn
         HiyAwx4ynSHp1yJO09Dd/g5TZPS4jepDxtGBQOaHPByNSVdbcEUDwIwa/a9RFQpNZzQt
         n3ZovD2zm7QZBsM20c/2WFJcaFfeYhuopDf3iqh/TIci/TnNwRAb7zvmAlLd5hMqGjbC
         HZctzh8uL40p1JLrxM1lWGjNVzqYan7014t4bSqAO3F1lgdUoVJqNR9v5TmsZiFjJXxq
         3Vk7uocCBH7r01Xcn9AfrAn5j6coZ8kXGdlwZY+Adi9HUeCn5InqXY5klXrafSlY90Q+
         6h0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MwCnq7FxTYt4OfQXRTiK+fRY/WmJvx9OFmW7bgtzZM0=;
        b=ZDfLmt2UJOpR33zL8Ir6SnjAowgbbzafMiPaV51F0khCFPdieCpiT96+gH6sI4Avon
         f/XTVlBRaNVSHHp5KgI3IQQw+UlWunWlzVpZ2mdgpCOsl9T5vuFEdCkZl6Z/OqqMMv0N
         w/ZW2yBuEmLDHPAY1ho7eBPSzVzmaLqRNPmtWI7lgSAdtECvOvn7BPA+dn7WBq+2hNHr
         Nh4Ge3tq8reW/Ry4JBOxS4bn+1rsq2As1D81Q/+MVD25KH63hz/pdy9JCJq2qQuebgb2
         5XMcrmNhHhZKaUx4Wiwtz38JjT63Ou2PYV+nbLhU/GQpmfKQhRRPDjV7WMMtwXIR309+
         EEuw==
X-Gm-Message-State: AOAM531yiQeq+iH/Cz23NVdXjY2HrLBIM3zd0sgvUDAMvC8I2CsoEYAa
        R7JFa6Ni6+VhNECzECZ7wV8/gg==
X-Google-Smtp-Source: ABdhPJwRnJO2QAzMWY2IwW08545/62SapGFADNSS1K+hkVFBQsS65LXRVZ324BFRXGFRcTOVUUzAtA==
X-Received: by 2002:a1c:c910:: with SMTP id f16mr137190wmb.82.1599746250518;
        Thu, 10 Sep 2020 06:57:30 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b2sm3786154wmh.47.2020.09.10.06.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:57:29 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     lgirdwood@gmail.com, plai@codeaurora.org, bgoswami@codeaurora.org,
        perex@perex.cz, tiwai@suse.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sboyd@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 0/2] ASoC: q6afe: add clocks support
Date:   Thu, 10 Sep 2020 14:57:06 +0100
Message-Id: <20200910135708.14842-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

q6afe already exposes clocks using apis, but not as proper
clock controller driver. This patch puts those clocks
in to a proper clock controller so that other drivers that
depend on those clocks can be properly expressed.


Srinivas Kandagatla (2):
  ASoC: q6afe: dt-bindings: add q6afe clock bindings
  ASoC: q6afe-clocks: add q6afe clock controller

 .../devicetree/bindings/sound/qcom,q6afe.txt  |  23 ++
 include/dt-bindings/sound/qcom,q6afe.h        |  74 ++++-
 sound/soc/qcom/Kconfig                        |   4 +
 sound/soc/qcom/qdsp6/Makefile                 |   1 +
 sound/soc/qcom/qdsp6/q6afe-clocks.c           | 270 ++++++++++++++++++
 5 files changed, 371 insertions(+), 1 deletion(-)
 create mode 100644 sound/soc/qcom/qdsp6/q6afe-clocks.c

-- 
2.21.0

