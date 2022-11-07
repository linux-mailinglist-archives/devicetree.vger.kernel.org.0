Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6D6061F3F1
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 14:04:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232096AbiKGNEn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 08:04:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232125AbiKGNEm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 08:04:42 -0500
Received: from egress-ip4b.ess.de.barracuda.com (egress-ip4b.ess.de.barracuda.com [18.185.115.208])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BA3F19C1A
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 05:04:41 -0800 (PST)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com [209.85.166.72]) by mx-outbound22-4.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 07 Nov 2022 13:04:38 +0000
Received: by mail-io1-f72.google.com with SMTP id i3-20020a5d8403000000b006c9271c3465so7087933ion.4
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 05:04:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qJF709bicUUb+8NhhqwXBdF0vLDptkKEpCyX6Snn00E=;
        b=NK0gBe9a5COxZiVsUb05B3wSiwwfGnJ2c9MBNQaq3Js7+szkGO9pP452NQWju1uRB+
         jRNkREtjtjroIMXnyVjMs7PAu/dQOVJjd3qpxP4Madi9bH1KHLiKanxX5wshPvq6cO18
         h71xsyeuRsRbxQPUE3gIIUYBA+gtTp7OxOgbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qJF709bicUUb+8NhhqwXBdF0vLDptkKEpCyX6Snn00E=;
        b=zernHbwmbKjvzwkH9s63LQQ6dlWk7dTz1+CcLjNnXwW4Lp8kjXGERL3kYOdtZXhylp
         OhN3nnijCQahOOLlZPBaSjBYkjlxmVRzM/uxdqUdZZcHEP3DZmsQzJSyBdLDRa33vBgF
         MUsa8eExtEqLpZLHJfmGCViSh4/q0y2Fd3JXroX+CaD2OgXdKD7S8RrwnbE5XdbsMewk
         T17xyqUR9y2W3H6mwRcp42F5ON5U02AvzxjE9It+SPXKhb5q8nTcfK64pSKFkCCIRd5Q
         cLEDhHHq+/g0HC8jcaUoCI63aoeDF1h5MA0HOUD4WV/dTMMiKEuVINLaUn7ZBH5nEost
         VOAg==
X-Gm-Message-State: ACrzQf3Cmg+WFhW2CDqWHUYl5IYyPGGOMgtWDJIdYnOvJw+Xs+h1/hiu
        QwyV+gbAE/4p8eBuvGZWiRM22JXwIGA9uUpd8nX1f87G4+OCqUAcJuR0Q0A3rRTG1lZcBzu+8Ki
        Tk/O3qk2xI2SuNbeMj3q3yqtboVD7SAC3KAAdXmhAmDg/4ggGRppcAGtSsw==
X-Received: by 2002:a63:4c05:0:b0:46f:3dfb:98a1 with SMTP id z5-20020a634c05000000b0046f3dfb98a1mr44543179pga.30.1667824745525;
        Mon, 07 Nov 2022 04:39:05 -0800 (PST)
X-Google-Smtp-Source: AMsMyM6UEiI0GGPOGHH6U54AKkBHF8oCkkLQ4OU9/768dprcBx141wATMrqu3NMK7jbnWtwBGFSrdA==
X-Received: by 2002:a63:4c05:0:b0:46f:3dfb:98a1 with SMTP id z5-20020a634c05000000b0046f3dfb98a1mr44543160pga.30.1667824745148;
        Mon, 07 Nov 2022 04:39:05 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.69.35])
        by smtp.gmail.com with ESMTPSA id x11-20020aa7956b000000b0056bbba4302dsm4400423pfq.119.2022.11.07.04.39.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 04:39:04 -0800 (PST)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V2 0/3] AM68 SK: Add initial support
Date:   Mon,  7 Nov 2022 18:08:49 +0530
Message-Id: <20221107123852.8063-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1667826278-305636-5387-13409-1
X-BESS-VER: 2019.1_20221024.2147
X-BESS-Apparent-Source-IP: 209.85.166.72
X-BESS-Outbound-Spam-Score: 0.40
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.243991 [from 
        cloudscan17-91.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.40 BSF_SC0_SA085b         META: Custom Rule SA085b 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.40 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_SA085b, BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

Hi,
This series of patches add support for AM68 Starter kit(SK). AM68 SK
is a low cost, small form factor board designed for TI’s J721S2/AM68 SoC.

Refer below link to J721S2/AM68 Technical Reference Manual for further details: 
http://www.ti.com/lit/pdf/spruj28

Design files can be referrred from https://www.ti.com/lit/zip/SPRR463

Changes in  V2:
Addressed all the review comments and the changes are captured in seperate patches.
 - Updated the commit description.
 - Updated the regulator nodes: fixedregulator to "regulator-"
 - Updated the commit $subject to align with rest of the commits.
 - Dropped the blank lines
 - Changed the node names that are added with underscore("_") with "-"

V1: https://lore.kernel.org/linux-arm-kernel/20221018123849.23695-1-sinthu.raja@ti.com/t/#mbe43b02221733bb6eb06b203359e90ec08406afc

Sinthu Raja (3):
  dt-bindings: arm: ti: Add binding for AM68 SK
  arm64: dts: ti: Add initial support for AM68 SK System on Module
  arm64: dts: ti: k3-am68-sk: Add support for AM68 SK base board

 .../devicetree/bindings/arm/ti/k3.yaml        |   1 +
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 .../boot/dts/ti/k3-am68-sk-base-board.dts     | 447 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi    | 127 +++++
 4 files changed, 577 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi

-- 
2.36.1

