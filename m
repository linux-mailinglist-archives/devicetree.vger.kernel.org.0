Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5964853C5A9
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 09:02:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242342AbiFCHCX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 03:02:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242313AbiFCHBj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 03:01:39 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 073F61BEB1
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 23:59:25 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id j10so11155951lfe.12
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 23:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uHHSbDnZ/bF7lajp7vTP8YfXHDgm/E1EH3J8pYDB/2s=;
        b=F/AULqPCtZBiCUilifqAqRx2So9Qwsagb72FMO0MNPzJ4301vaQttdd9K/JhgGSMqd
         K/0ty9l/AJO+Xc2TEf0LGeQlk11P4GBVVuf0s5KKfx0wa+EYYWofBMfWMTD1uQhEHts4
         cS8gfT+uE/9itueOqBVZZGeEaVOst1MQeZs8lHBIKTwPBUetD0wJSBBigxuF0C7zkekR
         djAt7RO459OqtbxSbSoF92WPfasvC44yrVDJwJgG6lIqmpWaL/n4xOb8UvpwSyVWZAjX
         9IKOBvmRetMt+00FDjh3KWxbQ1spntXWevCUU/5YD0woTdwwGkgCRhiu7PCyGOOp+rTf
         uKYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uHHSbDnZ/bF7lajp7vTP8YfXHDgm/E1EH3J8pYDB/2s=;
        b=xZqoiCFmnz7WohhEylmxnBoSYioqMbf1YgyBeAhGRrco9BfwA9fm54WOweqO5bHRQp
         7OiuF46rSuG0euotiv81CKZI1Z0NCJF00KLExm+KOfBkiWndA3t0EuOOuFaFp7wxTcXi
         HEQRb1ggcTQ75NGDEPBLyFRU1Zpjd6TccoeY1Chn/WEIPNNXsJBslqJPqA5Pl9crSqeI
         fHaKj5izfwLtOv3q/IGlyg4GDTqxafmXdcfFLBp5/Pkjfo73ClGVGclUGadzP1LNEmR0
         lc+u0mGtFlFJ3ZBti17BJQU3DH32J1a3lYl5jTiMS6Uml84WKHIKBW+1TgzS6RX1u7AY
         UL2Q==
X-Gm-Message-State: AOAM5312Sy9E3MIGyAi8DhBdKD/T5MKI5esH9Gw6mrx6c/IigUi8OwW4
        EbplqxtS4fWF6hjKJLGXd7j8BRvGhXuOEQ==
X-Google-Smtp-Source: ABdhPJwM15KC7C35p1opodl0rOSnPgWWTtcG0VIkjhLzTitZd/a0kBAh72H9S1IbrKJIJCA1dEF4SQ==
X-Received: by 2002:a05:6512:1315:b0:474:40c9:41a7 with SMTP id x21-20020a056512131500b0047440c941a7mr55705471lfu.319.1654239563171;
        Thu, 02 Jun 2022 23:59:23 -0700 (PDT)
Received: from panikiel.roam.corp.google.com (staticline-31-182-204-250.toya.net.pl. [31.182.204.250])
        by smtp.gmail.com with ESMTPSA id b8-20020ac247e8000000b004786321c697sm1056447lfp.138.2022.06.02.23.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 23:59:22 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dinguyen@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, amstan@chromium.org,
        upstream@semihalf.com,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH v3 0/5] Add Chameleon v3 devicetree
Date:   Fri,  3 Jun 2022 08:58:11 +0200
Message-Id: <20220603065816.87952-1-pan@semihalf.com>
X-Mailer: git-send-email 2.36.1.255.ge46751e96f-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Google Chameleon v3 is a board made for testing both video and audio
interfaces of external devices. It acts as a base board for the
Mercury+ AA1 module.

socfpga_arria10_mercury_aa1.dtsi and socfpga_arria10_chameleonv3.dts
have also been sent to u-boot:
https://lists.denx.de/pipermail/u-boot/2022-May/485107.html
https://lists.denx.de/pipermail/u-boot/2022-May/485111.html

v3 changes:
 - make seperate group for Chameleon v3 in dt-bindings
 - add blank line after copyright header

v2 changes:
 - split first patch into three
 - move sdmmc-ecc node to socfpga_arria10.dtsi (instead of removing it entirely)
 - use generic names for dts node names
 - keep the enclustra,mercury-aa1 compatible

Paweł Anikiel (5):
  ARM: dts: socfpga: Change Mercury+ AA1 dts to dtsi
  ARM: dts: socfpga: Move sdmmc-ecc node to Arria 10 dts
  ARM: dts: socfpga: Add atsha204a node to Mercury+ AA1 dts
  ARM: dts: socfpga: Add Google Chameleon v3 devicetree
  dt-bindings: altera: Add Chameleon v3 board

 .../devicetree/bindings/arm/altera.yaml       |  8 ++
 arch/arm/boot/dts/Makefile                    |  2 +-
 arch/arm/boot/dts/socfpga_arria10.dtsi        | 10 +++
 .../boot/dts/socfpga_arria10_chameleonv3.dts  | 90 +++++++++++++++++++
 ...1.dts => socfpga_arria10_mercury_aa1.dtsi} | 48 ++--------
 5 files changed, 117 insertions(+), 41 deletions(-)
 create mode 100644 arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts
 rename arch/arm/boot/dts/{socfpga_arria10_mercury_aa1.dts => socfpga_arria10_mercury_aa1.dtsi} (70%)

-- 
2.36.1.255.ge46751e96f-goog

