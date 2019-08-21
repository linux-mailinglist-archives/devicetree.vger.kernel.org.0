Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 84610971B7
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 07:55:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727253AbfHUFzx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 01:55:53 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:42563 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725385AbfHUFzx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 01:55:53 -0400
Received: by mail-pg1-f194.google.com with SMTP id p3so658678pgb.9
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 22:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XKfnFWl/Re53uZxX946ZGFyGhfMIBKgXF4IGRnFtD8c=;
        b=VrD8jISqhaWCNVnCq3ybrxNxNmQ4ACqNpbJ7JKRWQ5gSRv8WI9YJhFHYDRTQVGdtdI
         cv+BJ2ZIgt/D5FsRFukc+qdsO1Vto4WV2ambk7wp1PRfyjajpXUZviSbgiF0a+uoLnd/
         depfyMVG3kknaO0GnhHt5CHo3XGId+EXFkxV75Jd7Beab0Xq23NFpuM3iL92bCl8jucM
         ifXpWfmztoLdojnLH3BpmGMByWqxaQdqYrD8xvQqZAFDfeWOui2MYLH+qLlrTrH2fmvF
         pTZGrVdLx5/9ztinKlDsXTBFucKunvEGBdZeIdhfBKcn3XxKidmkom5w1Ijt9IBiN8kO
         iC1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=XKfnFWl/Re53uZxX946ZGFyGhfMIBKgXF4IGRnFtD8c=;
        b=kR4obI6rk94mXcf7qxduIkTzeMt+Njjv57DtW49eh2KDj0bU1qkn0dTERsfQSacdMe
         v5BQ7N6QIBNnOZq5WNni2b3e82CmGZ9m3anH9Co2LX3ibc2flj4u2cwcMNBBHrk4OSWn
         2T0vys/C0BYQ5ELfaeJ13V9I87R0WiS1NJ8LzU9R7Wwi7niLuO8HjDWQNeQn2eL3QpSf
         HJTLWQVMgZjTnCjxYhDSbURd5NnIEqOH89p8TGDBy8YviRbBkZXRTbVO0GM9du4rF1WQ
         3lK3bi6lgrjtzOjLK38MFKMmQLRnSURQQSJDc2CycxevynTdMSHb7m8OubLFKb87+N4r
         eLuw==
X-Gm-Message-State: APjAAAUtvmih7V1HWDUezSRzIcRmkMklv00TN6gGmeL0eQaz/2q/yYjP
        YUUAWsWD3wWJUf0wwJq+T8I=
X-Google-Smtp-Source: APXvYqzZ9NdwpWhXVb+ZaxgqkGTd48D3aKr0kyEBbd+2/+GmPbOIT5wlXAOKXwlmevPl59H0e60MSQ==
X-Received: by 2002:a62:388f:: with SMTP id f137mr34456016pfa.131.1566366952321;
        Tue, 20 Aug 2019 22:55:52 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
        by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 22:55:51 -0700 (PDT)
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>
Cc:     Ryan Chen <ryan_chen@aspeedtech.com>,
        =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH 0/7] ARM: Add ASPEED AST2600 support
Date:   Wed, 21 Aug 2019 15:25:23 +0930
Message-Id: <20190821055530.8720-1-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This adds the architecture, device tree and configuration required to
support a new ASPEED BMC chip.

I'd appreciate a review from those on cc before I break the patches into
their respective trees and send them as part of my ASPEED pull request
for 5.4. Thanks!


Joel Stanley (7):
  dt-bindings: arm: cpus: Add ASPEED SMP
  ARM: aspeed: Select timer in each SoC
  ARM: aspeed: Add ASPEED AST2600 architecture
  ARM: aspeed: Enable SMP boot
  ARM: dts: aspeed: Add AST2600 and EVB
  ARM: configs: multi_v7: Add ASPEED G6
  ARM: configs: aspeed_g5: Enable AST2600

 .../devicetree/bindings/arm/cpus.yaml         |   1 +
 arch/arm/Makefile                             |   1 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/aspeed-ast2600-evb.dts      |  44 +++
 arch/arm/boot/dts/aspeed-g6.dtsi              | 266 ++++++++++++++++++
 arch/arm/configs/aspeed_g5_defconfig          |  17 +-
 arch/arm/configs/multi_v7_defconfig           |  19 ++
 arch/arm/mach-aspeed/Kconfig                  |  17 +-
 arch/arm/mach-aspeed/Makefile                 |   5 +
 arch/arm/mach-aspeed/platsmp.c                |  61 ++++
 10 files changed, 427 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/boot/dts/aspeed-ast2600-evb.dts
 create mode 100644 arch/arm/boot/dts/aspeed-g6.dtsi
 create mode 100644 arch/arm/mach-aspeed/Makefile
 create mode 100644 arch/arm/mach-aspeed/platsmp.c

-- 
2.23.0.rc1

