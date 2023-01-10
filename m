Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BE13663CBA
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:25:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232005AbjAJJZF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:25:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237888AbjAJJYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:24:52 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FB5E544DA
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:24:49 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id i17-20020a05600c355100b003d99434b1cfso9326332wmq.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G0xm6pZSYV0zy2S2dPvMPd0PXu+EXkyVu00ABlXhNhM=;
        b=GhFAGk8Qhy6npRJLnhhVVchYynDfMMeynYBikUtnElIrZ7fzo6UmMkEimVxhfaZ4VS
         PYPbmgmvK7AsKMoGo5a4XQVuiTH76g6pkC0oi2wStHtmSMFojHJDNVPZRS4UAuYZArMl
         8p1VOgBMpUptJuc7g7BHwI8EaKt6Nety8rfbVg74gzYqpoNIgNwgABiBgpkllz0ej7/H
         LrM2naxA7W5AqqrHbO8xBCD30Fy33PXY3NVp3TjVopp5ma8NDWYdpcX9O9py4uKs5Hlq
         GbFQINXuHXXetZxmhb+DedqAEmGmKxg8+N7LVhJ1TgPHTbCVOoSziQuARaPYkLhQngZ1
         57Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G0xm6pZSYV0zy2S2dPvMPd0PXu+EXkyVu00ABlXhNhM=;
        b=wsp/LCae2+OzTYOmFMQEi5iHRvSRCxQMnOhzjl/doRtCuQTN6gO366zQnVIArUbXXZ
         zwi8ECRycF0TanJ1ao4TuMo336iS22W6udwqlrCB+RT4BC4YK1WghWl0xUJ2oI4e56Um
         7kvAj18vxsxVn0O15pwXKVCyhNZzwjTi8GiTIMXFrH5soVw7WJPMxhFm10NTD5bJWC3T
         Y/KgXNMFYC52OhakICZI4rksUFOL4oi8CjfxgjmQRWf9M4hLRKcyZRg/HidKtVdLvge4
         oc0hQjKQy9HARMJkfTq6A/wDbDwB4l3BlNa5/BC60rFZspsOjupzOrQLfHK3700qNWxb
         t1/Q==
X-Gm-Message-State: AFqh2kpWswju31cfZaRTRvxmijRPooEgQ+icRHiCrvP0h9lIinRs05J9
        ugcCK6aXk7RfBgAgB7vaUoSYzQ==
X-Google-Smtp-Source: AMrXdXvL2t9HNG1GcpNq4bX2Pj7GSFT7llm2xR0X1hP/KpAAPgfICHOtFhAEd1pv8L4Lts7vKP4Gqg==
X-Received: by 2002:a05:600c:4f54:b0:3d9:f04c:f58f with SMTP id m20-20020a05600c4f5400b003d9f04cf58fmr4872024wmq.40.1673342687626;
        Tue, 10 Jan 2023 01:24:47 -0800 (PST)
Received: from dtpc.zanders.be (78-22-137-109.access.telenet.be. [78.22.137.109])
        by smtp.gmail.com with ESMTPSA id q22-20020a05600c331600b003d9dd62deedsm13149433wmp.30.2023.01.10.01.24.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 01:24:47 -0800 (PST)
From:   Maarten Zanders <maarten.zanders@mind.be>
Cc:     krzysztof.kozlowski@linaro.org,
        Maarten Zanders <maarten.zanders@mind.be>,
        devicetree@vger.kernel.org,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
        Pavel Machek <pavel@ucw.cz>
Subject: [PATCH v2 0/2] leds: lp55xx: configure internal charge pump
Date:   Tue, 10 Jan 2023 10:23:38 +0100
Message-Id: <20230110092342.24132-1-maarten.zanders@mind.be>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A new option in the devicetree "ti,charge-pump-mode" allows the user to
configure the charge pump in a certain mode. Previously it was defaulting
to automatic mode.

v1 of the patch implemented a bool to disable the charge pump and had some
issues in the yaml binding. To avoid future modifications, implement all
possible configurations of the charge pump.

Maarten Zanders (2):
  dt-bindings: leds-lp55xx: add ti,charge-pump-mode
  leds: lp55xx: configure internal charge pump

 .../devicetree/bindings/leds/leds-lp55xx.yaml |  8 +++++++
 drivers/leds/leds-lp5521.c                    | 12 +++++-----
 drivers/leds/leds-lp5523.c                    | 18 ++++++++++-----
 drivers/leds/leds-lp55xx-common.c             | 22 +++++++++++++++++++
 drivers/leds/leds-lp8501.c                    |  8 +++++--
 include/linux/platform_data/leds-lp55xx.h     |  9 ++++++++
 6 files changed, 64 insertions(+), 13 deletions(-)

-- 
2.37.3

