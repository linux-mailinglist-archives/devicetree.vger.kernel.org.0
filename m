Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A76D963EB53
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 09:42:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbiLAImi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 03:42:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbiLAImg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 03:42:36 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2EED2BC3
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 00:42:34 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id z17so1250325pff.1
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 00:42:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wUAbzcFVK3ZVITG+2l0a+xKU9wkLH90MaXKWziyaZMU=;
        b=XMafgRnPXr3IThGMY0Kq7ugDvt8kIojuxnOikwBHoRWG3AOjnaOxKgo5j78aV2lGUv
         VU0PdkmKb+AjhopRlrKe19lR1pWSDWbhQxX9n1lDhc6Ym3hFbmkP7L7fB/nFGtRyi5e+
         r3gOgaH78vSTqZxhRBqIEepFi6tiNXg3Bi2vM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wUAbzcFVK3ZVITG+2l0a+xKU9wkLH90MaXKWziyaZMU=;
        b=cqBLwHpHZYEpwx/BiRyJqXzVdydpyONlx7LVgKfrS4Qw9Qf49pbV+UD4n2d8M7yrHE
         fRNvJCrAY7pgVp86z9RDJ/7ce8nrhisodq/zi4WOthsN9dLB2AU8VEZGJQR6o7L6eJ37
         duzXvrMVs4UPqOUpIGHvfeZzxZppVkeF/hQO8WBtfQh32M53GH3pin7bupTeARWPs5SC
         tNkZUgPLPc+TRH7cFigKd9uxM1afzMxyjfcAZ7MouuYg+RL08NhjnUPI8rEgIG/pTEag
         zRSVym8LljOk8E0C8Koyd2aT4x+exRWZ2uId5wepJ1FeFs5gNNwH3CsezlUETbPee8JJ
         ixzg==
X-Gm-Message-State: ANoB5pk3Q6VVJL7X/VvbVBYPi6DNK4cMUsSCfsgqj02szu8+Dy1/s76f
        6B4EtNGrb+RaCTtbI3c+lgqmsQ==
X-Google-Smtp-Source: AA0mqf4DVjDswN2LkRCBiGdapBmzeJV1WAJKCUf6aSfstFW/XOkPpCzHjNsjqlwZB823ZPCU2MWwIA==
X-Received: by 2002:a63:6f4b:0:b0:470:5619:4d7d with SMTP id k72-20020a636f4b000000b0047056194d7dmr57777194pgc.301.1669884154448;
        Thu, 01 Dec 2022 00:42:34 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2416:fa4e:4eeb:fcde])
        by smtp.gmail.com with ESMTPSA id j5-20020a170902690500b001708c4ebbaesm2932293plk.309.2022.12.01.00.42.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 00:42:34 -0800 (PST)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>
Subject: [PATCH 0/4] arm64: dts: mediatek: Fix systimer clock description
Date:   Thu,  1 Dec 2022 16:42:25 +0800
Message-Id: <20221201084229.3464449-1-wenst@chromium.org>
X-Mailer: git-send-email 2.38.1.584.g0f3c55d4c2-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This series fixes the clock description for the systimer block. The
systimer is fed by the main 26 MHz oscillator, and internally divides
the clock, normally by 2.

However this ended up being modeled in various incorrect ways, such as
the clock divider being in the TOPCKGEN block, or as a standalone 13 MHz
oscillator.

This series fixes the description of the systimer clock input in an ABI
compatible way, i.e. the clock rate of the input clock remains the same
at 13 MHz. The clock is now modeled as a divide-by-2 fixed factor clock
being fed by the main oscillator.

An added benefit is that in Linux the systimer no longer requires the
main SoC clk driver to do an early init dance.

Please have a look.

The next step would be to fix up the systimer driver in a backward
compatible way and have it read the divider value from hardware.


Regards
ChenYu

Chen-Yu Tsai (4):
  arm64: dts: mediatek: mt8183: Fix systimer 13 MHz clock description
  arm64: dts: mediatek: mt8192: Fix systimer 13 MHz clock description
  arm64: dts: mediatek: mt8195: Fix systimer 13 MHz clock description
  arm64: dts: mediatek: mt8186: Fix systimer 13 MHz clock description

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 12 ++++++++++--
 arch/arm64/boot/dts/mediatek/mt8186.dtsi |  8 +++++---
 arch/arm64/boot/dts/mediatek/mt8192.dtsi | 12 ++++++++++--
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 11 ++++++++++-
 4 files changed, 35 insertions(+), 8 deletions(-)

-- 
2.38.1.584.g0f3c55d4c2-goog

