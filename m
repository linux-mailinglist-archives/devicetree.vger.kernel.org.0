Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34DC7677D3E
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 14:58:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231636AbjAWN6u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 08:58:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230081AbjAWN6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 08:58:49 -0500
Received: from egress-ip33a.ess.de.barracuda.com (egress-ip33a.ess.de.barracuda.com [18.185.115.192])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CA7123DB7
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 05:58:47 -0800 (PST)
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71]) by mx-outbound43-170.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 23 Jan 2023 13:58:45 +0000
Received: by mail-pj1-f71.google.com with SMTP id x8-20020a17090a8a8800b0022941842cc0so9465385pjn.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 05:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZCU5KCutkK5CpNVdBpSwm+3e9SSsQihQOZqK0tOJ/IE=;
        b=B+8lAfF04x4MvHNAT4gKQj71X4gmfdIKckofAnnsjr+M10rC8268DeZeySbY+e9YhK
         nQOr8whn2dsbSd15gKG+kiSWBFI9BUDcKjA853BggjQwgt6nNK0fuoL134wa6+rJBzFj
         bJUKNs8pVBk8dOyrZbGsN0NtfwZwJ+umHmB/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZCU5KCutkK5CpNVdBpSwm+3e9SSsQihQOZqK0tOJ/IE=;
        b=TplFg7kUEaN0FvOfHMQgusf4MClexyuqmamZZRtC8oEZ8+E66JcYbv8BnjALQ4abNK
         qpSeMF67sLhSdPh/bQQdb1skl+TDkbPnJQ2VjLF+hOWX1/yvNSnj9Zrvw0cT3nFEA+YK
         3kRa7GCy6LFB7TZgXkl9KP1ukZDfDumqR7FTp0TGGGzxyIwglIAky06bOBr2NEnLW36K
         KK0stLawuara2lx2E1VDBpYL1LBvG3xjxTq326WDyJDTmW8FhXaIcGRaWN+z8aSim3pn
         QDJ44car+4F56cDCUnJjJIYiXBhQKFXqGTQ+l9a4iYJEAMLKV5rSZA8DiQtdzn8EWbGq
         6ErQ==
X-Gm-Message-State: AFqh2kri//wHLn9/Ec9JX28I+YVcHym6wstX62ruo990o/9Tb0z5sXTG
        CM8g5a+4WqXQETiYCNS5PtB3rxr85kEsiMJLbYcYodKuFZgSB8NCgRh5AIcnJavSBvXfoxCKQq6
        N4qu/iSrvImX79u+ZDwEwtqKrvR8AR+bVAVHbkr62aETn24ZJAEd4qeLo4Q==
X-Received: by 2002:a17:902:988f:b0:194:8fbd:1eb4 with SMTP id s15-20020a170902988f00b001948fbd1eb4mr24592539plp.1.1674482324129;
        Mon, 23 Jan 2023 05:58:44 -0800 (PST)
X-Google-Smtp-Source: AMrXdXth3IaPRcDlGXxZzXhYI6oHJACxfO7NrYwiepvAGgPsNbnIZyMH5pUR4tdWKVGzxoCXhrPgNQ==
X-Received: by 2002:a17:902:988f:b0:194:8fbd:1eb4 with SMTP id s15-20020a170902988f00b001948fbd1eb4mr24592513plp.1.1674482323605;
        Mon, 23 Jan 2023 05:58:43 -0800 (PST)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id y3-20020a170902b48300b0019309be03e7sm474478plr.66.2023.01.23.05.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 05:58:42 -0800 (PST)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH 0/2] Fix IO PADCONFIG size issue and support
Date:   Mon, 23 Jan 2023 19:28:29 +0530
Message-Id: <20230123135831.4184-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1674482325-311178-5384-9435-1
X-BESS-VER: 2019.1_20221214.2106
X-BESS-Apparent-Source-IP: 209.85.216.71
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.245654 [from 
        cloudscan18-181.eu-central-1b.ess.aws.cudaops.com]
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

Hi All,
This patch series fix the incorrect IO PADCONFIG size of the wakeup domain
for J721S2 SoC and add RPi expansion header support for AM68 SK.

Sinthu Raja (2):
  arm64: dts: ti: k3-j721s2-mcu-wakeup: Fix IO PADCONFIG size for wakeup
    domain
  arm64: dts: ti: k3-am68-sk-base-board: Add pinmux for RPi Header

 .../boot/dts/ti/k3-am68-sk-base-board.dts     | 70 ++++++++++++++++++-
 .../boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi     |  2 +-
 2 files changed, 70 insertions(+), 2 deletions(-)

-- 
2.36.1

