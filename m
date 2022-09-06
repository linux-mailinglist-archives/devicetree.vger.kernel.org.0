Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F7F85AF684
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 23:03:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229588AbiIFVDb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 17:03:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiIFVD3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 17:03:29 -0400
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EF04A9252
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 14:03:29 -0700 (PDT)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-11ee4649dfcso31357546fac.1
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 14:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=8OCqte8bw957ToiqfHE6kwSsjH6IEbLsFmDroA2WG2A=;
        b=eSokP+nKzU/ij599hqlrzGIkFlJ4jKVnpx64U9jIUH1aGiGSpy70B/qDKyE71iOacZ
         oXD/Q/UrIFciu1vKVUho3LHzveEsFOyuTE6BKJUKlRkRtH/HBlyyqVHgfy9uDgQqGi4m
         SuK04hmtWV4PwOoJ224OkNOCKxQwo0mm3G7G+C45XLVinqrFNR4UoMILjt575Z+hr6WS
         oRSqvHANufHC8kpPu0XKaocy5uKboeLf7FWOwfXsoGmRLmBWbrkxLELUn1VzWXpQy8Gs
         Um4QH+0rVMRYc7jXpUCemtq/uJa1E5Wz1LIwptJ6gaXyKc721SasXqoGyzay1VLVSm6b
         OcHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=8OCqte8bw957ToiqfHE6kwSsjH6IEbLsFmDroA2WG2A=;
        b=3P7+xVyvqCW66Mvscc7KN21wq5QIQXat2LryNOCkk2lMzbfpQCCkOucFGtc8K7n0zk
         3YXTkCGfWeO2tsUC1BfoeXYc6Lr4jCXt3QA93SVpTJAqfkrLVIcaOg6+rK/v7MtIRJpG
         u+zyZ6Rq81AV4J1v7JGYQfYDqvZ+PbvuVlBmkQ3y3D8LaFDk2KzPtyCtYJLSHobjH7rw
         NCEo2PsGQsZ4Ho1y/Ix6v/E/n3dP6fXZPyruHfbmQIDwg0aDiy5wb1TJz7dCgaN443gW
         9LFGf1og3nAwdmVJTrL3RHss6OT89jj7zLSkd0JbQg9i0Mi7z29afQIcdKpCexf2W6W7
         s2zw==
X-Gm-Message-State: ACgBeo1++iKPphzvkPLoJNZkJO2JepsdodMGaT/xx/hQ/s1QP4Iu98MN
        BTnqhzDkjhK97I1LzC7o9gAAwdML8O8=
X-Google-Smtp-Source: AA6agR5w8cGnkn6eCjVICzIQp4KTFqMB9m0pJn4kysQNnpJuNnnAtW8f49JGwBgZNaWv2kGFXKgrzQ==
X-Received: by 2002:a54:4e8d:0:b0:32e:aa9e:6c50 with SMTP id c13-20020a544e8d000000b0032eaa9e6c50mr116111oiy.73.1662498208089;
        Tue, 06 Sep 2022 14:03:28 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id t8-20020a4ad0a8000000b004357ccfc8bfsm4482846oor.7.2022.09.06.14.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 14:03:27 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, heiko@sntech.de,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        pgwipeout@gmail.com, cphealy@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v3 0/3] Add Anbernic RG353P and RG503
Date:   Tue,  6 Sep 2022 16:03:21 -0500
Message-Id: <20220906210324.28986-1-macroalpha82@gmail.com>
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

Changes since V2:
 - Renamed buttons to be consistent with their externally labelled
   function. Internal labels (such as sw11) would not allow for reuse
   of as many buttons in the rgxx3.dtsi tree.
 - Removed pinctrl for LCD related functions. These will be re-added
   when the panel drivers are ready.
 - Changed name of cw2015@62 to power-monitor@62 to keep it generic.

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
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   |  94 ++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  87 ++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 831 ++++++++++++++++++
 6 files changed, 1026 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi

-- 
2.25.1

