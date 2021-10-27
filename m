Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3DC143C21D
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 07:23:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239374AbhJ0F0F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Oct 2021 01:26:05 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:33452
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239385AbhJ0F0E (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 27 Oct 2021 01:26:04 -0400
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 04B5A3FFFA
        for <devicetree@vger.kernel.org>; Wed, 27 Oct 2021 05:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1635312219;
        bh=/eGAYrfmclwdx7jGRlDUTYADEJYv96FFq23ZZIcfgnc=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=Vyrua8CM600xALYD9Evx5ts2LdN+Ts8Brobivlb/vWUMiugv09rqE+HU4uhCZTAZE
         BXCn6gY15ja2N200JEXSOY46cVwDs1l+kRaTh49XxF63qFPRi/+ailg7ehF+dOvCtO
         93ioOsy3AGGmm7PYbGACN8yqXtzKuPyq7gNR/9PIFGEQTDMtxVQAAznWPyVo9xN2fd
         EWR6tswUQsSfpoGXooHdCUVw0k7y234ZGXjPUtNrCwvYQ6rG7IOeQqWvbBNrV5NZZk
         IGxWL8XbaS4NczmIpeyV9PZwCYRT1dx26KfR7UPilTRlSQR1839MhDAxzLOosvsxQD
         lxxKAU2gI5E5g==
Received: by mail-wm1-f70.google.com with SMTP id y12-20020a1c7d0c000000b0032ccaad73d0so728719wmc.5
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 22:23:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/eGAYrfmclwdx7jGRlDUTYADEJYv96FFq23ZZIcfgnc=;
        b=PjKMMlxgH8V9MbmwNNBSjHtVpgzKOswvimYGkWonljOW0YE32xrwab6Cf9NC2Q89pz
         yHlNljBfcIaFTF8C6lQmBX5J5OGIO0zRCepUFdB7CR68EBdQFfhZ97ZMYuq83gmJVtup
         xHVg/5GOaVmeYnohy+gaSOEV3gU+9sgkwzdUz25Ygt/9cFCI/DPxeWBDYVoiND6wLWnB
         Sl84jlN/3OYkO4m0MW7fXFLCbZpmETaafstM8NUxxw+Boklwd3Q2SqZBKLAMyUUbL7Dt
         6aRsVVzSAEq+tmFmszf1tOL2UAZHv333KZ35J8tPND5J970RbCn6uKGxojZZNxKU3Y61
         PB7g==
X-Gm-Message-State: AOAM532yW5vLDFm5ArJvXbvx/19IcfCL1bng12/wD8JW+uZoaZU5mEJW
        FtfDE64sqJrXl4JMCDRji3Qgrlp0keHnjGVZ57tzRQGh8d7Zr/kAGvkGC31vaUaAfMgReNI2TfN
        QN8C4WmdoomZZHnV47WwEGf68Z61GQZYZwx+amnc=
X-Received: by 2002:a05:6000:1c3:: with SMTP id t3mr4710473wrx.116.1635312217926;
        Tue, 26 Oct 2021 22:23:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzSn0tvEVIOmPrkhfc2HoML7XWosKA97vPocSy4io+emZcEKjdlxBCH/7JaC3wgfcVoNGW6yw==
X-Received: by 2002:a05:6000:1c3:: with SMTP id t3mr4710455wrx.116.1635312217804;
        Tue, 26 Oct 2021 22:23:37 -0700 (PDT)
Received: from alex.home (lfbn-lyo-1-470-249.w2-7.abo.wanadoo.fr. [2.7.60.249])
        by smtp.gmail.com with ESMTPSA id y23sm2442148wmi.43.2021.10.26.22.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 22:23:37 -0700 (PDT)
From:   Alexandre Ghiti <alexandre.ghiti@canonical.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        Support Opensource <support.opensource@diasemi.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
        linux-watchdog@vger.kernel.org
Cc:     Alexandre Ghiti <alexandre.ghiti@canonical.com>
Subject: [PATCH 1/2] dt-bindings: mfd: Fix typo "DA9093" -> "DA9063"
Date:   Wed, 27 Oct 2021 07:23:22 +0200
Message-Id: <20211027052323.1788476-1-alexandre.ghiti@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The device described is the "DA9063", not "DA9093", so fix this typo.

Signed-off-by: Alexandre Ghiti <alexandre.ghiti@canonical.com>
---
 Documentation/devicetree/bindings/mfd/da9063.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/da9063.txt b/Documentation/devicetree/bindings/mfd/da9063.txt
index 8da879935c59..91b79a21d403 100644
--- a/Documentation/devicetree/bindings/mfd/da9063.txt
+++ b/Documentation/devicetree/bindings/mfd/da9063.txt
@@ -1,6 +1,6 @@
 * Dialog DA9063/DA9063L Power Management Integrated Circuit (PMIC)
 
-DA9093 consists of a large and varied group of sub-devices (I2C Only):
+DA9063 consists of a large and varied group of sub-devices (I2C Only):
 
 Device                   Supply Names    Description
 ------                   ------------    -----------
-- 
2.30.2

