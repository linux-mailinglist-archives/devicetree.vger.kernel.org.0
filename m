Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A24348F0A
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 21:29:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726830AbfFQT35 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 15:29:57 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:38469 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726928AbfFQT35 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 15:29:57 -0400
Received: by mail-wr1-f66.google.com with SMTP id d18so11275568wrs.5
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 12:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=+faE7f2i5p9Exif1Tqt8gr1N97noY/QwTIkSkdvT3og=;
        b=bkgOc2/3ZUHCQSxFhp6RqNALsLKkn4tZVsorTRiDz7F3zc3bQNADsPmg82zVowvcZJ
         p42/8gSGuUzolct0ah3c6bnkOCgs+kXl9gnviB8mmoqexielke/sCZJ3utz7f7QpI9UM
         JrNWLHi8YsNpZFFs9zC7pApEVclq21iVyoY+QJhTnfNBHVbq72VDY8XbJ3ztLDXkQ1cq
         wuV5Dl6OA8QDybIHh193Gm0dea7yQrrKMTdQItwYgepNffLLuFpoxT284OYmKzeiWUY3
         c53hiU2XvpjpHLz2gQEvcNoGoGYlsvG4FCyYxZ9/GvD1Bfx8z9WgRBG3yNlwfKl9zoFB
         3ugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+faE7f2i5p9Exif1Tqt8gr1N97noY/QwTIkSkdvT3og=;
        b=jgrpEtZqKl1YrpJbfoEoBgmeAklPg76bHRGDdxl+Vah37zVeCmxbeN2gbg4KC5RlyV
         cR8jytSUWJKBZzj6Qqeq/2NXJhoUDdxRYP6FK79bdpxdTipviDFEwNuWArABzq7egJRc
         XsdpBCTehBcAZJjbj/gnC+4981dEgG+s1HH87AX8VasRReNA1IY4sWcig7bWntVO5Fkk
         6bFgrs6EndK8FopqL12ez00AhYdkbhxHuDKjBQn7afktgJTQDMtoIO7GsaDVG0sH8xZK
         43lSTO70pMBGVt3vGY3Q5ZU+yBpjt8rNa7Saas1gRTeSHey02+nt/GwETjxvnAzsVFpy
         YuPQ==
X-Gm-Message-State: APjAAAXGOzlnl4+pc+trlrr/awBFfPUPiETJ8yEazBtxidhsRUS3IdSt
        PyCex7a9QSHZzMzewh00+bSaHzTWPRIhLQ==
X-Google-Smtp-Source: APXvYqyH0bOBhea4+sw3VkCF82H7R+OQIXS9OUZ21Ftc6szY5AP5ukvB6GwAFBNv0VgCDCQyTYIy4w==
X-Received: by 2002:a5d:494d:: with SMTP id r13mr25518129wrs.152.1560799794897;
        Mon, 17 Jun 2019 12:29:54 -0700 (PDT)
Received: from loys-ubuntu-BY1835A49200471.thefacebook.com (cust-west-pareq2-46-193-13-130.wb.wifirst.net. [46.193.13.130])
        by smtp.googlemail.com with ESMTPSA id u18sm9412034wrr.11.2019.06.17.12.29.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 17 Jun 2019 12:29:54 -0700 (PDT)
From:   Loys Ollivier <lollivier@baylibre.com>
To:     Palmer Dabbelt <palmer@sifive.com>,
        Paul Walmsley <paul.walmsley@sifive.com>
Cc:     Loys Ollivier <lollivier@baylibre.com>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 0/3] riscv: add SOC_SIFIVE config for SiFive specific resource
Date:   Mon, 17 Jun 2019 21:29:47 +0200
Message-Id: <1560799790-20287-1-git-send-email-lollivier@baylibre.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

Following is a patch series that adds a SOC_SIFIVE config.
The purpose of this config is to group all the code specific to the SiFive
architecture such as device tree and platform drivers.

The initial thought/discussion came from [0].

[0] https://lore.kernel.org/linux-riscv/20190602080500.31700-1-paul.walmsley@sifive.com/

Loys Ollivier (3):
  arch: riscv: add config option for building SiFive's SoC resource
  riscv: select SiFive platform drivers with SOC_SIFIVE
  riscv: defconfig: enable SOC_SIFIVE

 arch/riscv/Kconfig                  |  2 ++
 arch/riscv/Kconfig.socs             | 13 +++++++++++++
 arch/riscv/boot/dts/sifive/Makefile |  2 +-
 arch/riscv/configs/defconfig        |  6 +-----
 4 files changed, 17 insertions(+), 6 deletions(-)
 create mode 100644 arch/riscv/Kconfig.socs

-- 
2.7.4

