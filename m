Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7476476F2C
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 11:53:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236253AbhLPKwy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 05:52:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236247AbhLPKwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 05:52:53 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E217C06173E
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 02:52:53 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id y9so9574419pgj.5
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 02:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vw2FNJs4nF4uS7gO+XBDWiQgTVCSGOva3wsZaozniqQ=;
        b=LFVl6DqD4llCF6CzkA+4rTWVfAtPveRsRKaRE2Yszm7m8aElulu2MrHwPL9eVNpPd5
         D01Ud932wIbGbo0JNkD+uls/abjuLJRPlxJFojbE0ydN0wtWtIkiYwhLARlm+7jPDAGV
         1rMwKwDoJcAXGWSAgwOiyFvhg186EeSC1uGJ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vw2FNJs4nF4uS7gO+XBDWiQgTVCSGOva3wsZaozniqQ=;
        b=t2VOSmit9qXGpNMoNl4t9+wMNoD5YUJ8qhTi30qz4LP7cg/Rn26TYNG66aO9KnQkvZ
         9eYdu9MOvfKzfUq+UfbjVPRLvoO1nyD40A8r6LNo33bfRv/cHG0WnIBY1IwpSp+WORC9
         yebJSRUUw+M9n0M6Wf5WsAHQ0WANZEDFGGwtaCAe5eq7DOjbSS/8V0M+UUc50iULvdFU
         GHl30ogvzCjXVojO22OU0CIn7nXO+KdD9pcgqwc5n6v/v/A/wcbpWnZxWcuWd/Yrw914
         A0//zyLNT2USL5FBk0aXa2KiapkmbECuqHxwhNZXQOdD4fF2Cn7OShJ4Ysk/JNc12Q1w
         Vmzg==
X-Gm-Message-State: AOAM530RzBW6Kk/wIXMmgiPIaQlhRE7dRO2S21oeGBIK99ZHvrQ7rKx1
        qZo7t8mSPMic436v2dbyH4/BFWbo1xbUfA==
X-Google-Smtp-Source: ABdhPJzuqzGvT+rTwNq+ZzUH1SI7N2+CAMK3lVJ/UI8rrtMT3tcJP8CGbN9KOecwbQCuJALNb48ZzQ==
X-Received: by 2002:a05:6a00:24d5:b0:4ba:392b:836b with SMTP id d21-20020a056a0024d500b004ba392b836bmr3350583pfv.78.1639651972787;
        Thu, 16 Dec 2021 02:52:52 -0800 (PST)
Received: from shiro.work (p864106-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.58.106])
        by smtp.googlemail.com with ESMTPSA id w19sm4986142pjh.10.2021.12.16.02.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Dec 2021 02:52:52 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 0/3] ARM: mstar: Initial Miyoo Mini support
Date:   Thu, 16 Dec 2021 19:52:43 +0900
Message-Id: <20211216105246.3548133-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a few device tree bits to support the Miyoo Mini
which is retro emulation device based on the SigmaStar
SSD202D.

http://linux-chenxing.org/infinity2/miyoomini/

Changes since v1/Notes:
  - Fix the commit to add miyoo vendor prefix.
  - I've left the link tags as-is as using them for linking
    to background info seems acceptable.

Daniel Palmer (3):
  dt-bindings: vendor-prefixes: Add prefix for Miyoo
  dt-bindings: arm: mstar: Add compatible for Miyoo Mini
  ARM: dts: mstar: Add a dts for Miyoo Mini

 .../devicetree/bindings/arm/mstar/mstar.yaml  |  1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 ++
 arch/arm/boot/dts/Makefile                    |  1 +
 .../mstar-infinity2m-ssd202d-miyoo-mini.dts   | 25 +++++++++++++++++++
 4 files changed, 29 insertions(+)
 create mode 100644 arch/arm/boot/dts/mstar-infinity2m-ssd202d-miyoo-mini.dts

-- 
2.34.1

