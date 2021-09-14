Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A239740A444
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 05:21:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238768AbhINDWU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 23:22:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237777AbhINDWF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 23:22:05 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 769E0C061574
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:20:49 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id oc9so7857105pjb.4
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 20:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=evU0I9HnPhgr5ohWZx9jr9eeUj1gyXGQSZ1qih7ewsQ=;
        b=vFkKjmn9myJ/WwjipewJfdVMZf/gzpnDh21+ca0Et4u9BXQ7MJtB2v8U1dFXgo4G2k
         blhyZzgesJNZy3/f4iSyo4xA0UETFLbTEp9fnWCbSwO0V9qdB0QTT7eDtyU9XgxITDgh
         q96znINhWc7XoE6oGNYtpfl6pkn/Zsy2L+Jfktx1mqt7eZp9a1ohfIjv2Rh6qDO/hjO/
         vWW0sWbRikGHilXi/PBLgnwAbEp8BezQ/nBO46VycSuxCxzK70cvJs0EmK5mlG/1S+J7
         SEVDCnr/oRUG85mkrNZ2yIKHCLZWsylMNUg7uAA0jmGSQE4eDJh7vkivnkWapPAU/sCT
         WEbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=evU0I9HnPhgr5ohWZx9jr9eeUj1gyXGQSZ1qih7ewsQ=;
        b=a56xYJtUijsbBW1SHSXWPZoK9b26xGNHqd4xKazDzirIpZ96zrN+l3x6A4r5c3bj2u
         6Wj4tYJUHLs1MpSyn7/MxrvCeYNx6M8UlN2qWOr843DpHKl+G2cBblUAfSUXzf97QYFS
         6iLW0m6jaOaJOmabFVBw1E6GNjII7VfT5vm7HWOiw9VqKD/sX1v3iiSLvSMqEBtF+85Q
         +O0xgswyhbNR+clasa5y+0vCF9gN6xnFuBdy2+rWrg4eJA7Flzs4LXF72A6zUGSyCZoa
         qZJv2LKR1JjoBddzr9SUCBfpgJOrmKovJb+jOA44nb5avS/VfTNY5Ep3kc9iD9AMwZWH
         0Paw==
X-Gm-Message-State: AOAM5328MSakkHcqF3b5eutdosPFwv3D7Lo6bgmpiKRyzd8kah4iQNhZ
        9Rwre7A0d/Au35Vbgn0gwJqTUA==
X-Google-Smtp-Source: ABdhPJxIyQS1srZp9DOkaJINQH22lKR3XD3oL6MRF2rFo6uIbf1esGRLezTtlN36pPLaf73feW+VpQ==
X-Received: by 2002:a17:90b:814:: with SMTP id bk20mr3048004pjb.108.1631589648946;
        Mon, 13 Sep 2021 20:20:48 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id t68sm9714498pgc.59.2021.09.13.20.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 20:20:48 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 0/2] Add QCM2290 Global Clock Controller driver
Date:   Tue, 14 Sep 2021 11:20:39 +0800
Message-Id: <20210914032041.6547-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series adds QCM2290 Global Clock Controller driver support.

Shawn Guo (2):
  dt-bindings: clk: qcom: Add QCM2290 Global Clock Controller bindings
  clk: qcom: Add Global Clock Controller driver for QCM2290

 .../bindings/clock/qcom,gcc-qcm2290.yaml      |   72 +
 drivers/clk/qcom/Kconfig                      |    7 +
 drivers/clk/qcom/Makefile                     |    1 +
 drivers/clk/qcom/gcc-qcm2290.c                | 3007 +++++++++++++++++
 include/dt-bindings/clock/qcom,gcc-qcm2290.h  |  178 +
 5 files changed, 3265 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-qcm2290.yaml
 create mode 100644 drivers/clk/qcom/gcc-qcm2290.c
 create mode 100644 include/dt-bindings/clock/qcom,gcc-qcm2290.h

-- 
2.17.1

