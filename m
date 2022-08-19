Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01C1759A857
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 00:29:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242219AbiHSWZn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 18:25:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242756AbiHSWZa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 18:25:30 -0400
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CBC592F78
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 15:25:29 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id g5-20020a4ac4c5000000b0044af7c8c4b3so943216ooq.1
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 15:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=aqX1Kf5mOz/AgiqyqYLrtepxSO5VXZtwIuw2ur3HsRw=;
        b=c5/NlGmKSgUFpmbWYxUkvaIhiLm2d4ag8iu+ff5rjfEMof4Lq1J4A0YJP/M34iuICZ
         geT6yLFNlQWryQt46bwYcin1bYMLQaaZa4DEuGhl7u4RAZP8zUaU/lwTWhMGGMydGYxM
         tpTKRJ8QOtzyy4vh6c/k1DySH1BYOJMilvmOip/TGyqwDUBTgIBx0oADO1LsgC2DY5my
         YinSejgr0FhONKT9i2wk+ssHrbpoq+Wa0fy0QZhicz5V8oFT+umum8V2JRhgRQuvYeyl
         X/o0V5wIYt3C9phuCqsc3myhpNt32qZvwLuu138INy5XqeZnfDzC2JQhvjwWOSo2MDDI
         FmiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=aqX1Kf5mOz/AgiqyqYLrtepxSO5VXZtwIuw2ur3HsRw=;
        b=t/DbILRfEJ+n5X7Flb0irexzlhcd67m1mc+SYC8aZAktVWilxH7JnnfQ03F9aKn1Id
         Y3qsqFPrLATBz2LyQ4k6pwlFeOzjs9Bgk9yxqWmyK+tOAesXw4/mooK6g14H8MhSUGYu
         1gb6Ri72pEhLHB07eZ0mjit/DlntqG5tGIZRVhZ7CqkKJWI11kVM3/EwbtQK2YrGhxdl
         Y0547hYys8UbpGa1tmni4HC8DHS4mvQ50q2iTtSbNwuSMz86hce+R3fd5SvOxYrANeqM
         1kwd1Pqfh1z4HxC6ga/VNgy/iU6dxpHyPdNSFGw9w3/3+I63HqQYSj2JzugwWaZ/hlvK
         pXXg==
X-Gm-Message-State: ACgBeo3KqFAD2U1Ot2QZxrkL9z+XMsIpfUFb61ny2enOpdYOZdC7OmJJ
        2s9uiGFLcwzJVU477GOPYr1E9xu9U5U=
X-Google-Smtp-Source: AA6agR6wvLFT8O/6DOkvOKGVlOBv0/Xc0DI9m7AwcgrMJncMcrGpvUcl9DoDX3gmPZmYcURqFyppIQ==
X-Received: by 2002:a4a:c61a:0:b0:444:debb:320e with SMTP id l26-20020a4ac61a000000b00444debb320emr3211407ooq.12.1660947928294;
        Fri, 19 Aug 2022 15:25:28 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id ca15-20020a056830610f00b0061d31170573sm1470497otb.20.2022.08.19.15.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 15:25:26 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, cphealy@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 0/3] Add Anbernic RG353P and RG503
Date:   Fri, 19 Aug 2022 17:25:17 -0500
Message-Id: <20220819222520.3069-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add the devicetrees for the Anbernic RG353P and RG503. This enables
all the hardware that is currently supported via mainline Linux.
The remaining hardware (for both devices) includes the display panel
and the battery. The RG353P also requires drivers to be written and
mainlined for the touchscreen.

Changes since V1:
 - Corrected node names to always have only dashes (no underscores),
   except for ones that require hard-coded names (the rk817 PMIC).
 - Corrected all node aliases to always have only underscores (no
   dashes).
 - Appended "regulator" to all the regulator node names, except ones
   that require hard-coded names (the rk817 PMIC).
 - Corrected name of RG353P. Previously was called RG353.
 - Changed name of sound node from rk817-sound to just sound.
 - Changed name of gpio-keys to gpio-keys-control and removed volume
   buttons.
 - Added new node of gpio-keys-vol and added volume buttons. This
   is so we can do autorepeat on these two buttons. Note that buttons
   under gpio-keys-control remain labelled in ascending order for the
   GPIO in use.
 - Added note to adc-keys node that we deviate from the BSP kernel to
   comply with Linux input guidelines regarding gamepad menu buttons.
 - Added note to sound node that audio is reversed for both speakers
   and headphones.
 - Added additional hardware details to commit message for devicetrees.

Chris Morgan (3):
  dt-bindings: vendor-prefixes: add Anbernic
  dt-bindings: arm: rockchip: Add Anbernic RG353P and RG503
  arm64: dts: rockchip: add Anbernic RG353P and RG503

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 103 +++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  93 ++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 821 ++++++++++++++++++
 6 files changed, 1031 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi

-- 
2.25.1

