Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3484133152F
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:49:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbhCHRss (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:48:48 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:34846 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231128AbhCHRsp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:48:45 -0500
Received: from mail-wm1-f70.google.com ([209.85.128.70])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJJzo-0000RC-8I
        for devicetree@vger.kernel.org; Mon, 08 Mar 2021 17:48:44 +0000
Received: by mail-wm1-f70.google.com with SMTP id l16so143728wmc.0
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:48:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jnNh9ESdQq+5EcjLvckU0Dxe1tNhusY1hCWeqolcbKk=;
        b=OpMCvvcmHXL42Mtbapk6/drxyv65r1TPLj5Zyb4kXFhIHr74l45R7LYVWYd7MhH5Kr
         Klf+EKD7xe+wRrc3qrtPRkoe1thc/T0smYbsxT9OYBKmzibuFAkav6m3v7Kxym1PgpGh
         lwBXF195LoHir4D/W+p3gb3qwNrOH0QHmspi0rioQQp2eDRbGaOiTyZpmZRdA7MIwm0m
         ksJMxyiYk4ljkTIKTSSvT2QKmHene4ez4vX7wgLgqvcn07lneBFrcrdXcOcBkWOQmU8Y
         neNs1GXjpJXH4LE/FEcVtg9lBXTkaJxhRqR0orAAhMF/A8DBoE0RcSmUhmGxsU9W0IlQ
         ZQtQ==
X-Gm-Message-State: AOAM532dlKu3n/L2G29ei02EyLt6Yso8c/Ez/GqBWITLaVUDj14kV0Ky
        KWyO8RXh74dneagEZJP/UyqwHvU6LSsD2ajYdHXaxodx4CB8xB0Pv7cKUSldS3GgNd2nLCXMINv
        GnQMmAti6VOQ2OrSncGK2pgW+LarL+OIBFq8PuOc=
X-Received: by 2002:a7b:cc0c:: with SMTP id f12mr23605179wmh.111.1615225723888;
        Mon, 08 Mar 2021 09:48:43 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwUaRuyx4RAtpOe0d5//r1TyywE48mqQx+LxCJ9l9WcQNO5Z2DIZ1cd0UL5cpHe6W7MSrd2mQ==
X-Received: by 2002:a7b:cc0c:: with SMTP id f12mr23605174wmh.111.1615225723756;
        Mon, 08 Mar 2021 09:48:43 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id r11sm20977867wrm.26.2021.03.08.09.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:48:43 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2] arm64: defconfig: enable Intel's eASIC N5X SoCFPGA and Keem Bay SoC
Date:   Mon,  8 Mar 2021 18:48:24 +0100
Message-Id: <20210308174824.278372-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

Enable in defconfig two Intel ARM64 architectures: the eASIC N5X SoCFPGA
and Keem Bay SoC.  This allows compile coverage when building default
config.

For the N5X (and Agilex) enable also DesignWare SPI controller in MMIO.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Hi Arnd,

You asked me to check if all drivers are enabled for these platforms.
In general the answer is yes. In particular:
1. Keem Bay is does not have much in upstream, but everything described
   in DTS is there,
2. N5X shares a lot with Agilex SoCFPGA which already (mostly) is
   supported.

Changes since v1:
1. Enable also SPI_DW_MMIO
---
 arch/arm64/configs/defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d612f633b771..9f9adcb8b0e9 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -29,6 +29,7 @@ CONFIG_KALLSYMS_ALL=y
 CONFIG_PROFILING=y
 CONFIG_ARCH_ACTIONS=y
 CONFIG_ARCH_AGILEX=y
+CONFIG_ARCH_N5X=y
 CONFIG_ARCH_SUNXI=y
 CONFIG_ARCH_ALPINE=y
 CONFIG_ARCH_BCM2835=y
@@ -41,6 +42,7 @@ CONFIG_ARCH_K3=y
 CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_ARCH_LG1K=y
 CONFIG_ARCH_HISI=y
+CONFIG_ARCH_KEEMBAY=y
 CONFIG_ARCH_MEDIATEK=y
 CONFIG_ARCH_MESON=y
 CONFIG_ARCH_MVEBU=y
@@ -465,6 +467,9 @@ CONFIG_SPI=y
 CONFIG_SPI_ARMADA_3700=y
 CONFIG_SPI_BCM2835=m
 CONFIG_SPI_BCM2835AUX=m
+CONFIG_SPI_DESIGNWARE=m
+CONFIG_SPI_DW_DMA=y
+CONFIG_SPI_DW_MMIO=m
 CONFIG_SPI_FSL_LPSPI=y
 CONFIG_SPI_FSL_QUADSPI=y
 CONFIG_SPI_NXP_FLEXSPI=y
-- 
2.25.1

