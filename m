Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E325841C060
	for <lists+devicetree@lfdr.de>; Wed, 29 Sep 2021 10:13:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244511AbhI2IPd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 04:15:33 -0400
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192]:37360 "EHLO
        egress-ip33a.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243413AbhI2IPc (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 29 Sep 2021 04:15:32 -0400
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198]) by mx-outbound11-76.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 29 Sep 2021 08:13:44 +0000
Received: by mail-pl1-f198.google.com with SMTP id m5-20020a170902bb8500b0013a2b785187so881710pls.11
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 01:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jyUHhAJLzD6O3a6IUoTM/lbGK/I4j4fcLqNq/50FmGI=;
        b=VhZiptaKBaZiEvbekdn3/OEcfe/szf37n/rzJJJ6nOBS7e08FGHlUxC9MXPoxVaJLp
         HXb3/mSQJEwHSCqlP/Wp0KwCfuK0vnkmr/+gnrcj6Hb8UySl8+Zg/3dZQD5j1w8xmg0U
         SIdFOqyo/u0l2xhQdiOzt9Mr7NPl6meQ+XsLU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jyUHhAJLzD6O3a6IUoTM/lbGK/I4j4fcLqNq/50FmGI=;
        b=70eFv9DeLBO4/bYQEsTUj5beUm05hKPk2ofAWUU3e/tGX1Xvy1jmAdahEadFoEr0I7
         7XXJ7htXd79yKdXX7cuHXH05zYqzO7VoAgPMMxDtOc5whj7RexkVwFXUnlwdTcyUutJr
         AvGLRDEhjJ1DZnmSeXsYbkhujaq3auoVRX/qxdPiVCe0Mgf1ZNrT+c2l/Em3QVEcnmTh
         SKjuoIsHltwxn6lDIKl7mXU0+DOaKtzxbW19EWNtntrlgTvStqXFBlnpbibclhsNC6lZ
         e97ipHeeeLL1UIjmHvhUoQeuUF08CWp+VVoECC+X8U55o2SrSFTlO01S5UAHmFqr722l
         Frxg==
X-Gm-Message-State: AOAM531+f3r8nyhjAffIFVEhOp3WiLoooWjGn3PJc/DMDCE67gRkgO0U
        jaHV/8cyEsMZ3+qMIUMLrF/KFOljGE4C34gecKOyefPZLHlDqGDjK/okw9X6OlKFYEEcN4izrqV
        SSztVJxU9ZLRAnj3vg9mlFAg+WCozXLjKSnV6DJgzsFsYfBOP6zjxbUmJeQ==
X-Received: by 2002:a17:90b:30d4:: with SMTP id hi20mr4954935pjb.233.1632903223450;
        Wed, 29 Sep 2021 01:13:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJybYluRGy2VA5Ncx5orI97NxdCKCUiMFs/73xU4nhlAJ79pcVD1saM0tjYkmPcSvv8IiWqduQ==
X-Received: by 2002:a17:90b:30d4:: with SMTP id hi20mr4954909pjb.233.1632903223123;
        Wed, 29 Sep 2021 01:13:43 -0700 (PDT)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id k14sm1152026pji.45.2021.09.29.01.13.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Sep 2021 01:13:42 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V3 0/4] arm64: dts: ti: Add support for J721E starter kit
Date:   Wed, 29 Sep 2021 13:43:29 +0530
Message-Id: <20210929081333.26454-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1632903223-302892-1130-19165-1
X-BESS-VER: 2019.1_20210928.1746
X-BESS-Apparent-Source-IP: 209.85.214.198
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.234800 [from 
        cloudscan21-80.eu-central-1b.ess.aws.cudaops.com]
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

Hi,
This series of patches add support for J721e Starter kit(SK)[1]. J721e SK
is a low cost, small form factor board designed for TI’s J721E SoC.

Changes in V3:
- Introduced IPC sub mailbox nodes patch.
- Introduced DDR carveout memory nodes patch.
- Updated board name to starter kit
- Fixed DTS binding errors.
- Updated commit message, $subject which includes adding board URL, 

V2: https://lore.kernel.org/all/20210602182237.12632-1-sinthu.raja@ti.com/
V1: https://lore.kernel.org/all/20210602182237.12632-1-sinthu.raja@ti.com/

[1]https://www.ti.com/tool/SK-TDA4VM

Sinthu Raja (4):
  dt-bindings: arm: ti: Add compatible for J721E SK
  arm64: dts: ti: Add support for J721E SK
  arm64: dts: ti: k3-j721e-sk: Add IPC sub-mailbox nodes
  arm64: dts: ti: k3-j721e-sk: Add DDR carveout memory nodes

 .../devicetree/bindings/arm/ti/k3.yaml        |    1 +
 arch/arm64/boot/dts/ti/Makefile               |    1 +
 arch/arm64/boot/dts/ti/k3-j721e-sk.dts        | 1002 +++++++++++++++++
 3 files changed, 1004 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-sk.dts

-- 
2.31.1

