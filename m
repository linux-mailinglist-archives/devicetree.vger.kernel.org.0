Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA41A611A45
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 20:40:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229870AbiJ1Sk5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 14:40:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229889AbiJ1Sk4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 14:40:56 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95ECA1C69F2
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 11:40:55 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-13bd2aea61bso7306051fac.0
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 11:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=31+stykkUZ4/Nnbkeu0GbJDIFpFhChj+cNfEHMQOYCI=;
        b=Idd1MDTAQXdraD4CVDaNCxXX85ZFyWnwiww0KNHkeBlmfRLmFIYEyhB791eiLjMqaj
         HbokQrbWhDnjcy60gXfrpXzXGpuQKP6CbVts9A+gBQO9nPUTIq3fI9Py4D1CBOAY44k/
         Q8r5C1t7SNvEC3K74pVIfg+pmhdx0GYPeD4sdQcH/XJCt96pILsi/N8av7sarDd3eAEe
         qj+ebLLVuUMPutQ+OPnHd/v1OhQcl+JalC4XsSliZJSgZcUHoebzm/H4y5ONU14oepuD
         Wlz33VrqyphQxd3ZJHdHdPTiXDSlw6C9K40AKHPMj9lRUu9zBZL+raOAxach6nwkQVn/
         LOzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=31+stykkUZ4/Nnbkeu0GbJDIFpFhChj+cNfEHMQOYCI=;
        b=1KGC5gSPa9eZ2yIEkq7/PEqfejuJqeFD1lVtsBjVt2VxPE04R5wuC4/jxY11zfVp4k
         DHALpukm0jygwmctETW6ImzSvVD3BHmCcF/wg5Cqgu+7wNLPNgJoZbxJSud3L61bBzSG
         da/4qXMtcztE4C1v/ET9HbAIG+9bbAQoibMaAyriajjV7qK6nQC3Y8DvtW7GsJwZnw+X
         X3tmRC14CLc7Bm0EuhnLJnqCtbHuAi0M5pO4LkqT+SjQgrh88lDOcd+4uIrWXnypq1Zf
         ct1T6edq96pKUpv+FhgMt8HE60SYubDq3FX7N3xiuMlJ2hftMSG/mkux6cleUHiXbxPK
         07Lg==
X-Gm-Message-State: ACrzQf36k2TmExUjTVFsq3w5sh23qDn3Ox/FJ7jE/Cq8IBPnfamm8veT
        BRQCZxc2eJXryLlfCOw32z9VtAe8tDE=
X-Google-Smtp-Source: AMsMyM4sCvcEQtsJXPR4XpFx0rkgWJka0bNRN0TI2IpQmRBNrZvKyL1vAch33hThmUqp34xleoxe3A==
X-Received: by 2002:a05:6870:968c:b0:13b:cb3c:67b9 with SMTP id o12-20020a056870968c00b0013bcb3c67b9mr341778oaq.250.1666982454595;
        Fri, 28 Oct 2022 11:40:54 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z7-20020a056830290700b0066c34486aa7sm575288otu.73.2022.10.28.11.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 11:40:53 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, michael.riesch@wolfvision.net,
        frattaroli.nicolas@gmail.com, jagan@amarulasolutions.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] Add Anbernic RG353V and RG353VS
Date:   Fri, 28 Oct 2022 13:40:41 -0500
Message-Id: <20221028184045.13113-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG353V and RG353VS handheld gaming
consoles. These devices are extremely similar to the existing
Anbernic RG353P.

Add support for the battery of the existing RG353P and RG503 too
as part of this change, as to keep things compact we must first split
the 353p devicetree into attributes common to all 353 devices and
attributes that only exist for the 353P, 353V, and 353VS devices
(which includes a different battery in the V and VS).

Lastly, add poll-interval to the parent tree so that it affects all
existing Anbernic RGxx3 devices.

Chris Morgan (4):
  dt-bindings: arm: rockchip: Add Anbernic RG353V and RG353VS
  arm64: dts: rockchip: add Anbernic RG353V and RG353VS
  arm64: dts: rockchip: add rk817 chg to RG353P and RG503
  arm64: dts: rockchip: add poll-interval to RGxx3 devices

 .../devicetree/bindings/arm/rockchip.yaml     |  10 ++
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 109 +++++++++++------
 .../dts/rockchip/rk3566-anbernic-rg353v.dts   | 114 ++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353vs.dts  |  87 +++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353x.dtsi  |  60 +++++++++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  79 ++++++++++++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   |  47 +-------
 8 files changed, 424 insertions(+), 84 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi

-- 
2.25.1

