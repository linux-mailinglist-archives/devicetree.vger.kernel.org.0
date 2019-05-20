Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 737FF230F5
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 12:12:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732405AbfETKMX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 06:12:23 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:38253 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732403AbfETKMX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 06:12:23 -0400
Received: by mail-pl1-f195.google.com with SMTP id f97so6492921plb.5
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 03:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=nj86Nyw3KJK7Z3FsC5eQxrUvkQQ/Oi+NDG8wLjmFGQU=;
        b=XC8PRwo84WSBd/TUs7O4kUryHVFjZ0XnohBkePvQGh3CobFgptIyYyK9QPrxq+moTw
         qheK3uDYfkxqc+38JpOr+MuQx3M+slPhb4hsHvX/1FdLomKsDGaJBTXctgbRuPwhMo6I
         +ItbFYvP1KMvoATv/mJdHRFf42AEBmhCLxJ14QY8cCi6i5VRzHv6VW72gfwzM8yUvUm7
         H+nNdj2feSOkTDc1EC8y6kKnXffkzwVY6UGQ1UscoSQKq+jiqwPU+ZbHj6fmu/jr3bKY
         ytyKTtebsLfAXv25ZfqOOLmPcisMLpAYSSglfz3JVyN8wMm6N+4iV+lpY3eGVvGcgFev
         ee/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nj86Nyw3KJK7Z3FsC5eQxrUvkQQ/Oi+NDG8wLjmFGQU=;
        b=pfwcQDigSccxPn7G4RMOOZaAeUBgoZETYy2rK/9CxEIvNTmNQ0pBRoNHt6F9z6fl9a
         QIomcjx4ohX+f1ZG6vHp4XdZXsjAF4rqTL3LfSEZBqCCmV5yVW1jqhogkoCsELyyq6vb
         ec/q0+vSzPiBWeXmZgdBerKy9j0lQNdL37EIXzSJKfymw+KekB/TjX7NwvgBMJe8qKTP
         odRrFa02D/0pgEJIyW1sU1Csoko0UmiF2U29tRIGuqMqnYBMfC2qPN3VEgvPrsqsgUap
         yurkeokiNHaU83umlWGX8A25sLWiUekfDjx8es+0hah22cow5qePU+oQoQb/5q0fwr+H
         fmKQ==
X-Gm-Message-State: APjAAAUjNY3sPu2U8WlmfuBF3E53/cpxobLszALeoUOky35gyd/EKF1k
        KeNKcgy0Y9w5mh0y0Mecbs4yzQ==
X-Google-Smtp-Source: APXvYqxs+7628IuHBHqhbphPC8vlchUw/ugXo/fGIy1jfQpK4ADRQzLXXHQQSf8RfDbtwEP9NVZqPQ==
X-Received: by 2002:a17:902:860c:: with SMTP id f12mr76409294plo.127.1558347142768;
        Mon, 20 May 2019 03:12:22 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
        by smtp.gmail.com with ESMTPSA id b3sm30098127pfr.146.2019.05.20.03.12.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 May 2019 03:12:22 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     adrian.hunter@intel.com, ulf.hansson@linaro.org,
        zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, arnd@arndb.de, olof@lixom.net
Cc:     baolin.wang@linaro.org, vincent.guittot@linaro.org, arm@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 0/9] Add SD host controller support for SC9860 platform
Date:   Mon, 20 May 2019 18:11:53 +0800
Message-Id: <cover.1558346019.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set adds optional clock support, HS400 enhanced strobe mode support,
PHY DLL configuration and other optimization to make the SD host controller
can work well on the Spreadtrum SC9860 platform.

Baolin Wang (9):
  mmc: sdhci-sprd: Check the enable clock's return value correctly
  dt-bindings: mmc: sprd: Add another optional clock documentation
  mmc: sdhci-sprd: Add optional gate clock support
  mmc: sdhci-sprd: Implement the get_max_timeout_count() interface
  mmc: sdhci-sprd: Add HS400 enhanced strobe mode
  mmc: sdhci-sprd: Enable PHY DLL to make clock stable
  dt-bindings: mmc: sprd: Add PHY DLL delay documentation
  mmc: sdhci-sprd: Add PHY DLL delay configuration
  arm64: dts: sprd: Add Spreadtrum SD host controller support

 .../devicetree/bindings/mmc/sdhci-sprd.txt         |   19 +++
 arch/arm64/boot/dts/sprd/whale2.dtsi               |   35 ++++
 drivers/mmc/host/sdhci-sprd.c                      |  171 +++++++++++++++++++-
 3 files changed, 217 insertions(+), 8 deletions(-)

-- 
1.7.9.5

