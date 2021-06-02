Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE2B83992CC
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 20:47:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbhFBSt2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 14:49:28 -0400
Received: from egress-ip33b.ess.de.barracuda.com ([18.185.115.237]:48616 "EHLO
        egress-ip33b.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229586AbhFBSt1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 14:49:27 -0400
X-Greylist: delayed 1491 seconds by postgrey-1.27 at vger.kernel.org; Wed, 02 Jun 2021 14:49:27 EDT
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198]) by mx-outbound17-233.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 02 Jun 2021 18:47:29 +0000
Received: by mail-oi1-f198.google.com with SMTP id q190-20020aca75c70000b02901ec900ac3ffso1604598oic.21
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 11:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KEGCRt3uOZqX53YuTFiFU2vEwyP0//rw3ursuv7fj80=;
        b=ZBpLCUUXNrc0k5o/f79aafSuSAVNtU93eKW7TTXajlrH9DQiy92GiQ96YnBSEvM43E
         wNOdx+4y6kPvbIy3OD4HjvALg0gOoejiwCfEbpRFIXS3IXc9Pe9J/xXd3pME9SEpGDnk
         eZRX8/aRcpUyfpKXFLkqi7zh2aq1X6BcfQ1lc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KEGCRt3uOZqX53YuTFiFU2vEwyP0//rw3ursuv7fj80=;
        b=nLpMOBv/+Pa5FkbG1gluNt11rlf3d/W1HdNmVPl9lGhu3XZQx1r1135GlWsD6SLDWL
         mmA2OawmPdTOxmLFUWXABhg5UveH5te4GQtBl8d7sHlKeM42zHiTXD3uhEGsV72JNiMP
         yUPwBeIZH5Qbew9OkHyOvsHF+HTWylco0R1YQwBQrpQYhsI+mPsJI7iqcqOfbdOq3RRm
         mo1PxZ15P0tFCTpa7eQ0wAiz/I4Xyk2slWMtYtOurAhJDHaNN+nrwvqQPPmXisJR7mgT
         qEQUHPJvjs7GExKnHD6HYDclO169896juqDwH2it5Njvbe6qJvMb2VxANGxaimObzERw
         MJVw==
X-Gm-Message-State: AOAM532hlinidV1ENAUWL7jBpbwyIJjQRtRF8kuFynpMk5gtaMvVAb6o
        NXzbUFPVVD2q0P2yIbMOZiQ9/Bj604DhGfKm7m9mTgpjQj7WtgGw9oiv2gSeXJooy8U4UCVLxu5
        zx32P+Wy+9SY8cyD40wlVFDB8N6Zn/BvBcosGzOaySfYGogT15CxUlMoU5w==
X-Received: by 2002:a17:90b:4d82:: with SMTP id oj2mr31615915pjb.61.1622658170766;
        Wed, 02 Jun 2021 11:22:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwCJ6fu0GQ+J4RgbknSvQn1cUkTXn8J94cdkx298iFeBjrGMq3+M30tJLTf5bxTYkKy1+Te2Q==
X-Received: by 2002:a17:90b:4d82:: with SMTP id oj2mr31615895pjb.61.1622658170452;
        Wed, 02 Jun 2021 11:22:50 -0700 (PDT)
Received: from localhost.localdomain ([49.207.197.28])
        by smtp.gmail.com with ESMTPSA id 14sm290904pfj.25.2021.06.02.11.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 11:22:50 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: [0/2] arm64: Initial support for Texas Instruments J721E EAIK 
Date:   Wed,  2 Jun 2021 23:52:35 +0530
Message-Id: <20210602182237.12632-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1622659649-304585-5410-66772-1
X-BESS-VER: 2019.1_20210527.1616
X-BESS-Apparent-Source-IP: 209.85.167.198
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.232668 [from 
        cloudscan13-100.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>
 
J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
for TI’s J721E SoC. This series intoduces the basic support for J721E
EAIK.

Sinthu Raja (2):
  dt-bindings: arm: ti: Add bindings for J721E EAIK
  arm64: dts: ti: Add support for J721E EAIK

 .../devicetree/bindings/arm/ti/k3.yaml        |   2 +
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 arch/arm64/boot/dts/ti/k3-j721e-eaik.dts      | 343 ++++++++++++++++++
 3 files changed, 347 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-eaik.dts


base-commit: 231bc539066760aaa44d46818c85b14ca2f56d9f
-- 
2.31.1

