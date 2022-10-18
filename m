Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 376B7602C9D
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 15:13:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229651AbiJRNNn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 09:13:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbiJRNNl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 09:13:41 -0400
Received: from egress-ip33b.ess.de.barracuda.com (egress-ip33b.ess.de.barracuda.com [18.185.115.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40BCDC7048
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:13:39 -0700 (PDT)
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70]) by mx-outbound21-93.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Tue, 18 Oct 2022 13:13:36 +0000
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-1331cbf6357so6034915fac.11
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 06:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D/H+G959sZdIwXeDoc8jJHEnUz6xwZQ0JunN8oCgoR8=;
        b=mlj0OPWKQ02EhZg7C+Y41MB+Kgb/McUexQAC17vu394u0lzoJX9HIZh5S/+JgU4dSU
         v6pfrqtk/EOUA/MJJY0fjkyStDzYONO/RnT8tJc+ltb4wDHiAJzQj2UB+h/MvgNOGLes
         RbT6ZfMsUINqnpkIpeCWkQ+1TIDZe/b0W0S7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D/H+G959sZdIwXeDoc8jJHEnUz6xwZQ0JunN8oCgoR8=;
        b=t3tcSaGhjpwb2WWnsQ33Na1BpP/s8lqj0RQSx8e9Y9QaRAFIiTr9dO/1VeUJ0oN2PK
         SmE0tO2aRyput0C8mpnSrOtfyTZ6nR4ztskT7/fSeOjxlhJXmHElHCPrxmT12dmZNm/M
         p2m6CLcMESbu9qM/6xxqXHexfBwn+FtMc8A3Ed7bhraRRpE81Y5uN6bE0B3o+L3gSzTB
         l4Cc7CQWTeogPWLwYWDqamswpg+u6PhGzMvt9fzBvGYWF0eED4T0uwcka2bTm2zPmpip
         Aq7czRb5iFYVhLLJhU/NZ4dckAIks/2vh6ww66MrUZ90B2sdumiq12bJTxRMK0Of9Tv5
         mxTQ==
X-Gm-Message-State: ACrzQf0bSU33t3koNwB0GmI5HK3/cz9jx2n0gJbYSUptuNbKGZN9SSJo
        70hnZXPEelrGUY+jJue2tnZpJxL2yos1nmgBcxMMuEoBgojBxdwhCsF1nYppwUbvHYfxPJtjQ0w
        zwn1sa5oI0xXqOiDIoTmST0cbq7hwjBfBNJN5/nlSy3d1tc249UbehpIHzw==
X-Received: by 2002:a17:90a:b00b:b0:203:a6de:5b0f with SMTP id x11-20020a17090ab00b00b00203a6de5b0fmr3364772pjq.134.1666097100924;
        Tue, 18 Oct 2022 05:45:00 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4JDpjj1rAQTcHCupgpUy+IDaE0ZkpHmfKxFKog7/JxrSDGt1rePyXgUHcHwkZvsUOre+YRJw==
X-Received: by 2002:a17:90a:b00b:b0:203:a6de:5b0f with SMTP id x11-20020a17090ab00b00b00203a6de5b0fmr3364744pjq.134.1666097100606;
        Tue, 18 Oct 2022 05:45:00 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:330a:c5d2:e90c:db79:45c8:3513])
        by smtp.gmail.com with ESMTPSA id a17-20020a621a11000000b00563ce1905f4sm9110102pfa.5.2022.10.18.05.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 05:44:59 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH 0/3] AM68 SK: Add initial support
Date:   Tue, 18 Oct 2022 18:08:46 +0530
Message-Id: <20221018123849.23695-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1666098815-305469-5646-12889-1
X-BESS-VER: 2019.1_20221004.2324
X-BESS-Apparent-Source-IP: 209.85.160.70
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.243545 [from 
        cloudscan15-100.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

AM68 Starter Kit (SK) is a low cost, small form factor board designed
for TI’s J721S2/AM68 SoC. TI’s AM68 SoC comprises of dual core A72, high
performance vision accelerators, hardware accelerators, latest C71x
DSP, high bandwidth real-time IPs for capture and display. The SoC is
power optimized to provide best in class performance for industrial
and automotive applications.

Refer below link to J721S2/AM68 Technical Reference Manual for further details: 
http://www.ti.com/lit/pdf/spruj28

AM68 SK supports the following interfaces:
      * 16 GB LPDDR4 RAM
      * x1 Gigabit Ethernet interface
      * x1 USB 3.1 Type-C port
      * x2 USB 3.1 Type-A ports
      * x1 PCIe M.2 M Key
      * 512 Mbit OSPI flash
      * x2 CSI2 Camera interface (RPi and TI Camera connector)
      * 40-pin Raspberry Pi GPIO header

This series of patch add initial support for AM68 starter kit.
Design files can be referrred from https://www.ti.com/lit/zip/SPRR463

Sinthu Raja (3):
  dt-bindings: arm: ti: Add binding for AM68 SK
  arm64: dts: ti: Add initial support for AM68 SK System on Module
  arch: arm64: ti: Add support for AM68 SK base board

 .../devicetree/bindings/arm/ti/k3.yaml        |   1 +
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 .../boot/dts/ti/k3-am68-sk-base-board.dts     | 459 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi    | 129 +++++
 4 files changed, 591 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am68-sk-som.dtsi

-- 
2.36.1

