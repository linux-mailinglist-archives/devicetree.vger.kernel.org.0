Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47E37673AC3
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 14:53:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230518AbjASNxD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 08:53:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231199AbjASNxC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 08:53:02 -0500
X-Greylist: delayed 1317 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 19 Jan 2023 05:53:00 PST
Received: from egress-ip33b.ess.de.barracuda.com (egress-ip33b.ess.de.barracuda.com [18.185.115.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9FE17697
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:52:58 -0800 (PST)
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com [209.85.166.197]) by mx-outbound23-43.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Thu, 19 Jan 2023 13:52:54 +0000
Received: by mail-il1-f197.google.com with SMTP id l13-20020a056e0212ed00b00304c6338d79so1580015iln.21
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S5Dnbj8sisco/i4YFV1WcqmiOc2NEx4SCPfOz1HU9JA=;
        b=gWXXm17rHJSae0PBGHiKc0vl/GgtNgK7En+m/PrsQLeJHKl4CGg5PTJUXo4hXMUlMi
         oPYEMn52b+d8tRyNBhqjSFOsO0BIhLB9YbEwy7o4WxEPognJQKiACQmLcvbIpc9fzmx5
         NLm/hoTlT6QWutSi8nIfRYJNKUcD681mD3Lqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S5Dnbj8sisco/i4YFV1WcqmiOc2NEx4SCPfOz1HU9JA=;
        b=38YOnj6B3gqO/xh34oAG/CNyKvuoyKli1sixhm0UKpc9LS1SJBlvfuHLyNR7HUPr2B
         lpBa17tmdK7zUYWv2lye10Sq4TP9stBW5cEN0+eigw9keTfZ7muk2hu0OeowZ6Bpow+5
         3yR0ntMqencQrAYk/8CgErHMpqQinSaiS145I1uc5B5tUiFvJPE+SSjSHU4uOU294bLN
         /UjuK8XQrJZzOZ7Cf3R1FdlZNlhZ2oFA2hgT7FGG+IxuEGIeTqSVIXKvJGPRLPrHkuGn
         iZBfpAB/K+Zh3NaanDvugExujOcBtN7Ym62tBQVp0krXDxY3U/CAJZyvSU2eZKndCUM5
         ESeA==
X-Gm-Message-State: AFqh2kq+M0tkFh5BPlpgraYE+Rf8mvDUJXPgySp3+FNObiP9TY2++fgi
        Y9hq/4BlS23ul55sDCpYJZ+Gq2La/2h7NnSdBthdlu8HeJzN4FBR7W8W5UUJkX7xIEZCGHZGJx0
        JVvcwhcl8Dek3X/KzmwKgg0GCm1PMhXqegewtuolQxdvOxajrfSDo8f9zZw==
X-Received: by 2002:a05:6a00:2191:b0:581:19ed:78b9 with SMTP id h17-20020a056a00219100b0058119ed78b9mr14471497pfi.2.1674135056847;
        Thu, 19 Jan 2023 05:30:56 -0800 (PST)
X-Google-Smtp-Source: AMrXdXt6odXiYivIXadPlUiV9raajuBxV/XBFOtguIfDNs8MLkIVVyiXrglXRQCD9iItCg1BMDtXYA==
X-Received: by 2002:a05:6a00:2191:b0:581:19ed:78b9 with SMTP id h17-20020a056a00219100b0058119ed78b9mr14471468pfi.2.1674135056517;
        Thu, 19 Jan 2023 05:30:56 -0800 (PST)
Received: from LAP789U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id l123-20020a622581000000b005818d429d98sm23949210pfl.136.2023.01.19.05.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 05:30:56 -0800 (PST)
From:   sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linus.walleij@linaro.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH 0/2] Add initial support for AM69 Starter Kit
Date:   Thu, 19 Jan 2023 18:59:56 +0530
Message-Id: <20230119132958.124435-1-sabiya.d@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1674136373-305931-5379-9773-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.166.197
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245567 [from 
        cloudscan8-206.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO, NO_REAL_NAME
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

From: Dasnavis Sabiya <sabiya.d@ti.com>

AM69 Starter Kit is a single board designed based on TI's AM69 SOC
providing advanced system integration in automotive ADAS applications,
autonomous mobile robot and edge AI applications. The SOC comprises
of Cortex-A72s in dual clusters, lockstep capable dual Cortex-R5F MCUs,
Vision Processing Accelerators (VPAC) with Image Signal Processor (ISP)
and multiple vision assist accelerators, Depth and Motion Processing
Accelerators (DMPAC), Deep-learning Matrix Multiply Accelerator(MMA)
and C7x floating point vector DSP

Refer below link to AM69 Technical Reference Manual for further details:
https://www.ti.com/lit/zip/spruj52

AM69 SK supports the following interfaces:
       * 32 GB LPDDR4 RAM
       * x1 Gigabit Ethernet interface
       * x3 USB 3.0 Type-A ports
       * x1 USB 3.0 Type-C port
       * x1 UHS-1 capable micro-SD card slot
       * x4 MCAN instances
       * 32 GB eMMC Flash
       * 512 Mbit OSPI flash
       * x2 Display connectors
       * x1 PCIe M.2 M Key
       * x1 PCIe M.2 E Key
       * x1 4L PCIe Card Slot
       * x3 CSI2 Camera interface
       * 40-pin Raspberry Pi header

This patch series add initial support for AM69 Starter Kit.

Design Files can be referred from https://www.ti.com/lit/zip/SPRR466

bootlog: https://rentry.co/coyvw/raw

Dasnavis Sabiya (2):
  dt-bindings: arm: ti: Add binding for AM69 Starter Kit
  arch: arm64: dts: Add support for AM69 Starter Kit

 .../devicetree/bindings/arm/ti/k3.yaml        |   1 +
 arch/arm64/boot/dts/ti/Makefile               |   1 +
 arch/arm64/boot/dts/ti/k3-am69-sk.dts         | 180 ++++++++++++++++++
 3 files changed, 182 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am69-sk.dts

-- 
2.25.1

