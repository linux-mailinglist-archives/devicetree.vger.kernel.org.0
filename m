Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A893412F35
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 09:18:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230145AbhIUHTm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 03:19:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbhIUHTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 03:19:41 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B95C5C061756
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 00:18:10 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id t7so2992897wrw.13
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 00:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YGEAbHXSaoOeSKdNUKSp2eDYtuE34vb7kZvCNCg8WS0=;
        b=sh8yMuDbDOGoxzO4ADI0dGLvuU735gfVv5A15gwgb7x87zmV/oPf3DLR4Qpw+yc+R6
         3YD9KmSeCB74S7Vlm1P4MsvWG4zrDSqp4NUiNTfh/FvhZzLfeVgTUeFlRsVH9dktUcIB
         BDyxMD654sBYoOo93aMIGyEAM3H1gwp2Evt+KDAycCh8NSSjOsnU8XRnQ2JW1SzcRhhC
         BXU2tLDvW0TcvdDjMAQz8iQibd7+cXmtmpviuKqw49lywbiGll8djnkgpR6GdW4gXDMc
         PDbUokAXjWtNBdnh9lNxO0gxtdbJWqzSnJh/JSVdQw2F0kQ2sDAFfZJf/zFCm5ybUJLR
         PNnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YGEAbHXSaoOeSKdNUKSp2eDYtuE34vb7kZvCNCg8WS0=;
        b=fSuPkuPSz6P7Sm17jLbo2JdujxPyWtZEyDgOg3QNjmSkyPjrM7MSBqfv2pA+okcrBz
         1W4FiGlX3tV7vWddd4/nf4HxPg7HqX+l3RppcLtLLtcQD7do+PlPuUP+gUn5fMndNUsH
         BL3anuKCIaaBVGftm1s7g8gx4wB+OWmU5rSa6wwDTiWaFkSXBMo88m3MtCto7JkJRnfr
         W16QK4KSE+rdegwww8Znmw6uAGBvRQu6SFS3Qi5ImFMy69YEPdfrxJwgI/6hB2qFTNfP
         BBvbQfw4k1fESYB5PUmEE20BM3m5i1XoTMZ1MaCG6ytPTdzAJ+bLJl4rNCRMaPL1cSRL
         KSjg==
X-Gm-Message-State: AOAM530nqTiCvwPhAy98zW1+mrAg/5OIgeCPr9cps7XSRyPd0YNee4fL
        ff8ePVxN49YUqB3OT1o0O2FMf4ra1QFrdqCv
X-Google-Smtp-Source: ABdhPJwLKYS+Orv3H6DcPfO7ccXZ7yofYe1iBGfAMWonW7ouj8YancroCtZRVfWUkd3W8gGe5ERJ1A==
X-Received: by 2002:a05:6000:1379:: with SMTP id q25mr32495090wrz.280.1632208689229;
        Tue, 21 Sep 2021 00:18:09 -0700 (PDT)
Received: from localhost.localdomain (i16-les01-ntr-213-44-230-108.sfr.lns.abo.bbox.fr. [213.44.230.108])
        by smtp.gmail.com with ESMTPSA id w9sm1786918wmc.19.2021.09.21.00.18.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 00:18:08 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     tony@atomide.com
Cc:     linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v2 0/1] ARM: dts: dra7: enable BB2D module
Date:   Tue, 21 Sep 2021 09:18:06 +0200
Message-Id: <20210921071807.30978-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DRA7 & variant SoCs contains a BB2D module which is a Vivante GC320 2D accelerator.

This patchset adds the GPU node and enables it by default.

This is a follow-up of [1] & [2] but:
- using the vivante,gc bindings only
- using ti,sysc instead of hwmod

Changes since v1 at [3]:
- removed status property of bb2d node
- removed enable patches for different platforms
- fixed bb2d size format

[1] https://lore.kernel.org/linux-arm-kernel/20161118024436.13447-1-robertcnelson@gmail.com/
[2] https://lore.kernel.org/linux-arm-kernel/20161118024436.13447-1-robertcnelson@gmail.com/
[3] https://lore.kernel.org/r/20210920125306.12347-1-narmstrong@baylibre.com

Gowtham Tammana (1):
  ARM: dts: dra7: add entry for bb2d module

 arch/arm/boot/dts/dra7.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

-- 
2.25.1

