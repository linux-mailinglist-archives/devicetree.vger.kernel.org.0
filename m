Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 583A625C8E1
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 20:42:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729172AbgICSmC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 14:42:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728304AbgICSmC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 14:42:02 -0400
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 349C5C061245
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 11:42:01 -0700 (PDT)
Received: by mail-lj1-x241.google.com with SMTP id u4so4088219ljd.10
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 11:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=ojv6Zk70N0pbknpw71ulfKg+oLfuRBwxeCEgVk52nEg=;
        b=PmgHUg7YwZYRfk8fy/b0qtwKor1VLNxaFACT9pq1qIzXr2izp251+LS8lUqZSW7KL4
         5nwmyMNkpkK3MOGxCBuG5EOMPLbBC6i06CLYfIFGAUxlxB7PA6LhjSIhAxeIQj5HcP1L
         TQVChQztEpkR+z9iYfObgEE2kwzmqBt6IbYh/nrWhls/JIl0a1LTZ3Squ09s4yCSDmCs
         H9++MGcmnALDUa7TrAXiPOHq/rwYV1dylFsbvi3MxWg1umXtYNUXKBj32uWGeenwVs/+
         TS8h4wSP606ZJLXugzKPGigTVTQdOBCu+R0Y1eNP6XzyZLo9dDFFZ4w9/eyQnpSDvnJg
         mWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ojv6Zk70N0pbknpw71ulfKg+oLfuRBwxeCEgVk52nEg=;
        b=tSI4f+f8UJ53kzMds6fN4YM34Mo5RMACIRh/IMs7+4Gk2rHRbbQIFvEz/QJD1IFy2e
         6eTaT12XsvB91eQPu4S7BFLPPFWtkKr7mQo5wj4rFfDMYsISr8tjBgFxHWPpx/IMr7Ad
         jPtnY1ap1lKosMXo6c6vNjuzl3TgAOqmJ38QPN4fa7+96i+yBAF0rpAA//7b4LG27526
         JmhhXVKvN0WSkB1YTysdRWQjvXZtha2PWV1NPJeukqTQsAyswy6+T5AmisXj5WaUgYZT
         9etspuQjnlzk8IoTVUEhcGZx7MuNR4sbbVk32v/c2T8iYBhnGmoytwztwDx3Q59VgNEz
         2c3g==
X-Gm-Message-State: AOAM533ywUUpUHTwRgS3gHlJTkkGNoqtkVBKYMxAIET52ApAbNXXJ/L1
        T/VscSUYD2+IKFqGNCJbcFxIEg==
X-Google-Smtp-Source: ABdhPJwFpQwo6BynYN2iRFXq6SxYV8l/szsBtAdT1FFMfbaNsMBXqPNhU6TRTeGGcR9y91+b/9OimQ==
X-Received: by 2002:a2e:9602:: with SMTP id v2mr1857532ljh.455.1599158519552;
        Thu, 03 Sep 2020 11:41:59 -0700 (PDT)
Received: from gilgamesh.semihalf.com (193-106-246-138.noc.fibertech.net.pl. [193.106.246.138])
        by smtp.gmail.com with ESMTPSA id r8sm754854lfm.42.2020.09.03.11.41.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Sep 2020 11:41:58 -0700 (PDT)
From:   Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
To:     ssantosh@kernel.org, s-anna@ti.com
Cc:     grzegorz.jaszczyk@linaro.org, santosh.shilimkar@oracle.com,
        robh+dt@kernel.org, lee.jones@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        praneeth@ti.com, tony@atomide.com
Subject: [PATCH 0/2] Extend TI PRUSS platform driver
Date:   Thu,  3 Sep 2020 20:41:39 +0200
Message-Id: <1599158501-8302-1-git-send-email-grzegorz.jaszczyk@linaro.org>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This patch-set extends TI PRUSS platform driver about CORECLK_MUX and
IEPCLK_MUX support. The corresponding dt-binding is updated accordingly.

This patch series depends on TI PRUSS platform driver patchset [1].

[1] https://patchwork.kernel.org/cover/11729645/

Grzegorz Jaszczyk (2):
  dt-bindings: soc: ti: Update TI PRUSS bindings regarding clock-muxes
  soc: ti: pruss: support CORECLK_MUX and IEPCLK_MUX

 .../devicetree/bindings/soc/ti/ti,pruss.yaml       | 121 +++++++++++++-
 drivers/soc/ti/pruss.c                             | 184 ++++++++++++++++++++-
 include/linux/pruss_driver.h                       |   6 +
 3 files changed, 303 insertions(+), 8 deletions(-)

-- 
2.7.4

