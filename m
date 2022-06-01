Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5387A53AA65
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 17:47:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354417AbiFAPro (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 11:47:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346769AbiFAPrn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 11:47:43 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70E9A31209
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 08:47:42 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id a15so3417098lfb.9
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 08:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=03l9qZ1zqgnkEYg4B8WIYYOsQsvsRpptjIAToBGQAPQ=;
        b=wC6HwTBZ/wjGhipRi4sC8Rx0F2OeLaKSyfu5JhVWkSoxtP5PLKMC6wGUBmJ6UbYq+s
         TPVUu/lI+pwzd98F/UnK+VCSkflWpcpOH1pDuleF+QfaF9g9akVsWJbaE0dDjELoJGJ+
         FGfBYXZ9wWpuDSSFDMkgbjk7x17HGX12o2rGcUnWubDTgxM1CqQsUGb17nTN/1VSbsHo
         LMLG58sKSraMt2SupApLdwcmt6l8BzvZg/hNSujDgEHYxu6PZnP8wEzwZTBVAUjWxHjg
         jiFp5CryFIRmThjeFwU0id00YgcCZoDhGUztaSzHEt4GgUSM98zA/Ui0/elCsdm+Dc24
         EEoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=03l9qZ1zqgnkEYg4B8WIYYOsQsvsRpptjIAToBGQAPQ=;
        b=t4eoAlxHJbttzUm2xY/1Kt8ZkXuK0YyPmxnJenyT2My77EfvO0jMVtV4oDejIx4rZs
         4wkTH65qvTHrktlTMsbOUibcahcI/6k10KGaj6TC7ke2Qcx1ckmEhBfz0EXd9zP2VQm4
         ybxF2Vl8ht0PhN9XwBmFB6DoABQJm/SGZMyDdJbSd1peWzwThZIFqst73pnFFRfhrhUV
         ZIHSjiqz6W+AiaWujcTJ+AmHn1t8wlMqF1iIMszuyPSImgCbpL8jbX5Ie0n3jvTv/1AT
         0JujLJ3xsjbNGFfXoltghJaddRDEgH/E6MHFhz5MEcPdNAv53ef5f5Ghd5FnOgwc6L5I
         9tvw==
X-Gm-Message-State: AOAM5303Y3rw3AA5C9k7vDlPNpD+R1gl3vbMcfzBGXoRybfcqC8FEfhr
        KI2RK7hNlowIUxDjnEaeY8X59g==
X-Google-Smtp-Source: ABdhPJz3bxHBbvrhIIoXVv4logFZR7XRhjx9E7U8qShR3z07zVy59hKdo8FgbWIWVW59oJq7qYP2uA==
X-Received: by 2002:a05:6512:2347:b0:478:5a69:6dc4 with SMTP id p7-20020a056512234700b004785a696dc4mr59859lfu.478.1654098460722;
        Wed, 01 Jun 2022 08:47:40 -0700 (PDT)
Received: from panikiel.wifi.semihalf.net ([83.142.187.86])
        by smtp.gmail.com with ESMTPSA id f10-20020a19380a000000b00478ad871b25sm431219lfa.145.2022.06.01.08.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 08:47:40 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     arnd@arndb.de, olof@lixom.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        amstan@chromium.org, upstream@semihalf.com,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH v2 0/5] Add Chameleon v3 devicetree
Date:   Wed,  1 Jun 2022 17:46:42 +0200
Message-Id: <20220601154647.80071-1-pan@semihalf.com>
X-Mailer: git-send-email 2.36.1.255.ge46751e96f-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Google Chameleon v3 is a board made for testing both video and audio
interfaces of external devices. It acts as a base board for the
Mercury+ AA1 module.

socfpga_arria10_mercury_aa1.dtsi and socfpga_arria10_chameleonv3.dts
have also been sent to u-boot:
https://lists.denx.de/pipermail/u-boot/2022-May/485107.html
https://lists.denx.de/pipermail/u-boot/2022-May/485111.html

v2 changes:
 - split first patch into three
 - move sdmmc-ecc node to socfpga_arria10.dtsi (instead of removing it entirely)
 - use generic names for dts node names
 - keep the enclustra,mercury-aa1 compatible

Paweł Anikiel (5):
  ARM: dts: socfpga: Change Mercury+ AA1 dts to dtsi
  ARM: dts: socfpga: Move sdmmc-ecc node to Arria 10 dts
  ARM: dts: socfpga: Add atsha204a node to Mercury+ AA1 dts
  ARM: dts: socfpga: Add Google Chameleon v3 devicetree
  dt-bindings: altera: Add Chameleon v3 board

 .../devicetree/bindings/arm/altera.yaml       |  1 +
 arch/arm/boot/dts/Makefile                    |  2 +-
 arch/arm/boot/dts/socfpga_arria10.dtsi        | 10 +++
 .../boot/dts/socfpga_arria10_chameleonv3.dts  | 90 +++++++++++++++++++
 ...1.dts => socfpga_arria10_mercury_aa1.dtsi} | 49 ++--------
 5 files changed, 110 insertions(+), 42 deletions(-)
 create mode 100644 arch/arm/boot/dts/socfpga_arria10_chameleonv3.dts
 rename arch/arm/boot/dts/{socfpga_arria10_mercury_aa1.dts => socfpga_arria10_mercury_aa1.dtsi} (70%)

-- 
2.36.1.255.ge46751e96f-goog

