Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A908042DAEC
	for <lists+devicetree@lfdr.de>; Thu, 14 Oct 2021 15:57:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231668AbhJNN7Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Oct 2021 09:59:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230177AbhJNN7X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Oct 2021 09:59:23 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7D96C061570
        for <devicetree@vger.kernel.org>; Thu, 14 Oct 2021 06:57:12 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id i12so19785565wrb.7
        for <devicetree@vger.kernel.org>; Thu, 14 Oct 2021 06:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2PdtaPAjwY1HbFARxyeJr4Hhcr2WETWAgftpSE/ylQY=;
        b=LgYQr3bQkU/3FijQiZD5jUA0UY1jel7vEtTgG9l0/Ccio2VJFVPyJW9aEtroy9bpqS
         F/GWkYggAHgvd7gNhpSX208+aQ6rqEKPoyCPZDb8EUdwa3dBCiKBgGJd98GK249gBeQN
         mIhoH5HAuVqgfwNiCH70Q2d30qxBXPxIxpp5vEQQvBj8wqvMdkY6RTcO3zTXyEf8ULXg
         CMVdejZALtV1dugFT/aCeag19rm3dlRW3rIfTdDCa6g/7sYfxue1UtketluBnyxi82yQ
         3j+ZpZkbSkedGp6oSTefFIVGDLH3QtaLi1UnkVGB2mp8PTR87VRoKHuGXu2TrTnrNdq6
         HpMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2PdtaPAjwY1HbFARxyeJr4Hhcr2WETWAgftpSE/ylQY=;
        b=F9jtoikX/Qm50SCh/EsfQG/S/RNt+4itat45FQsPso3pP/6f2AfP2PZN6xrlwa3Z2R
         65M+69MoMWZwxOYeYthBQKyseJ/Rc+y9OYMWk/saPLZK+3XMpCGLYAsb4rrEBE8yuM8+
         rdTwdhw0DHSU5vVuiwHkI27piqRJC9a0R2r5KfqjCIsQ5PiZuMN/OKr+srE+lLR8DBiT
         4kO7DNPfJSA5lufFYBAuC+ACvOkddjom1kFOgnD3GViMRcUv9n5+BY9l2qwRF8glnB99
         vKZ7k0mYSWO8n4958yPGWaLfzVU10wVEyMXSX7MR/00o2VC8XI89uVQwf+pgj2EXlpnV
         NbEA==
X-Gm-Message-State: AOAM531mc3t6wE0wKE+s3vVt+RGY/jsNMOGBV3+irFwvpfLSGOwkwz8O
        jE15ENOW3RXY6VYGOSVbWCgMPA==
X-Google-Smtp-Source: ABdhPJxyk5nP1wBaYxGhuedyLU+0SDeCtC5cBN2hBIiu4CoLUTvAvG4FILymFzOyfeFDfCmElUbCag==
X-Received: by 2002:a1c:808e:: with SMTP id b136mr19498987wmd.178.1634219831347;
        Thu, 14 Oct 2021 06:57:11 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
        by smtp.gmail.com with ESMTPSA id d1sm2596480wrr.72.2021.10.14.06.57.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 06:57:11 -0700 (PDT)
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, fparent@baylibre.com,
        khilman@baylibre.com, Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH 0/3] thermal: mediatek: Add mt8365 support
Date:   Thu, 14 Oct 2021 15:56:33 +0200
Message-Id: <20211014135636.3644166-1-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this series adds a compatible to the bindings and a specific part for
the thermal driver.

Thanks for any feedback or comments.

Best,
Markus


Fabien Parent (1):
  thermal: mediatek: add MT8365 thermal driver support

Markus Schneider-Pargmann (2):
  dt-bindings: thermal: mediatek: Add mt8365
  thermal: mediatek: Fix apmixed error message

 .../bindings/thermal/mediatek-thermal.txt     |  1 +
 drivers/thermal/mtk_thermal.c                 | 93 +++++++++++++++++--
 2 files changed, 87 insertions(+), 7 deletions(-)

-- 
2.33.0

