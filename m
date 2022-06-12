Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4253D547BC8
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 21:31:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234305AbiFLTbR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 15:31:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234856AbiFLTaL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 15:30:11 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89A7041FB9
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:09 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id h1so3421538plf.11
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/o2Y6AjEmhBUVI8vWJ11wRlaSeJBqxeukDVIIQuIGjU=;
        b=j+o5uqK+cgI3UFVOq1bK0w/K2m/6HdkPaRADz0Shd30n6BXuLz+AgnmHsORFBtARCr
         7q87Yaotd8tghn51AEpQDqEG4UifsYzBbHj6mJYsBhW82IbDWtYWLyHW+YkPk930hYAh
         KvJConOt4qBJNxEXdLhpMSEloPiOQApT3SXYc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/o2Y6AjEmhBUVI8vWJ11wRlaSeJBqxeukDVIIQuIGjU=;
        b=SDhZbqFquRp23KwYCpkucZ/XJarkrSByT2QpBuO65oFXkE8Rtg1nKav0ZyWTdppIVA
         sgwk3rFEX3wwDybEX13LG3acLKjmTDHxQnurQ7Ax0vN1eKYmFBfE945vnCwKvn/jsahh
         pc4JKv/nZqkZEszHIloSBqJaqXhCUXBR8XLkY42KdpNPktc38PbKLSLiYXle0nZSHYts
         7L7PKNudOzpZ9xlOnUv3bB7DLAUv/4e5d6Olf5z1OvTv9lDR2/4DNCK4PMUe8UrVgtu0
         XIAKW5BTy8SGtKZZEWHZomq85tQBeUShw2apiMmq0YbD9HFGtTBYmzSBGKMZoU9pD+i/
         Gi/g==
X-Gm-Message-State: AOAM5336U4YwvzrLT0J2Gf2y5Kpv+tAe//KL/ccRta9SIEIBIb7YyTmZ
        DQm2O2pQMQKVnEKuHVW7w2Oq/w==
X-Google-Smtp-Source: ABdhPJyaPk5oM6scagXtdJWDu5BvR1Bn81dax6ahPVlieZ9FETn0m7MvYh/njWhFh2ZC24HGEU9oqA==
X-Received: by 2002:a17:90b:388c:b0:1e2:f376:b8d with SMTP id mu12-20020a17090b388c00b001e2f3760b8dmr11628007pjb.148.1655062209027;
        Sun, 12 Jun 2022 12:30:09 -0700 (PDT)
Received: from localhost.localdomain ([50.45.132.243])
        by smtp.gmail.com with ESMTPSA id i62-20020a628741000000b0050dc76281bdsm3603607pfe.151.2022.06.12.12.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 12:30:08 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 00/12] PXA168 clock fixes
Date:   Sun, 12 Jun 2022 12:29:25 -0700
Message-Id: <20220612192937.162952-1-doug@schmorgal.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

Hello,

I have been working on bringing the PXA168 support in the kernel up to
snuff. I found several mistakes in the clock muxing, and began work on
getting the SDHC controllers hooked up properly. I've been testing these
changes on a device that uses the PXA168 (Chumby 8).

I'm a little unsure if I'm following the correct approach in the last
two patches, and would definitely appreciate some feedback if there is
a more appropriate way to handle this situation where two peripherals
share a clock enable in a single register. In particular, I wasn't sure
if creating the shared clocks without a parent at all would be okay:

[11/12] dt-bindings: marvell,pxa168: add clock ids for SDH AXI clocks
[12/12] clk: mmp: pxa168: control shared SDH bits with separate clock

I'm aware that checkpatch warns about the long lines, but I was unsure
if that actually mattered given that the existing file also has the
warnings.

I plan on continuing to work on additional PXA168 fixes over time.

Thanks,
Doug

