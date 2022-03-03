Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A0364CC727
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 21:40:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232822AbiCCUkv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 15:40:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235141AbiCCUku (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 15:40:50 -0500
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9978A35855
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 12:40:01 -0800 (PST)
Received: by mail-oo1-xc36.google.com with SMTP id 6-20020a4a0906000000b0031d7eb98d31so7146325ooa.10
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 12:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qFWNiYfT/exRn7zivV1/ZTbgY+ZtV8tc1JcYbFAZ3oo=;
        b=QExztgCOdebUtk75ajJaI8HVK+gaNzD/7p0nZeni7azUOgdBJ7eBDJvzH98YWT8bR2
         1ST58QqVXnBhrUzG0OrocCPdwPYrZzTWFvHaxbzKkpds0xyNHzYq8QrefcOnNpj+pk5v
         IKk/n3zrODdFQ2NUJixbtdNoSDHkBL+dgM+bLZ98jBleFX+dFD1312GkRs911ZA3v4LW
         OjV/FQE26yoOrhoR8LGNqvENgFjEkGqsAav0hCmmTM3o97/kJETlTLxr+2EHMLRhQpil
         ZBDJl0haxMRfdTN2doKYulk/K6qiK9Ek7m6FxZyPQ7gxqP+gxj2O7qKUh3G/vedO2Sq5
         4fKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qFWNiYfT/exRn7zivV1/ZTbgY+ZtV8tc1JcYbFAZ3oo=;
        b=wCCWFANKXho8yNWs2B9LQ6mBPTJA7lRxZHxo7TDfTjWzp5PXu7W4/JkWNy+xz4HrQk
         4zMFaNoTFU9US0y3w9mDLvvFEC7J0Su4trQouyTtMp+mUrOZ6/TxHqKVunTp9/F57Uvy
         k8ONYIhElytcZRIe7xY2xZajec19DVsDZo6B5OV0Whjh7Pvv0lxn0bYkTT3v32qyG0Ln
         7II6BUfITpW9prCpevOAp7zjrwKYn9XemT7hivVOLUlsNv3IS8FxVS9C+O8AjIYOGU1A
         1Q+exZagPDGxW2Eexh+2N44qm8/T73fC/bmVVx+LFtH2Zxni3i0JJLhte0Ah5PGEgTwI
         qmrw==
X-Gm-Message-State: AOAM532E/UzQiF8LleqKeW5mDorTc3DcRnRmFPmqLsuB47tZAWMLT28D
        BxbcIXMbDj5QeTFRGsnGETasfbIJnbc=
X-Google-Smtp-Source: ABdhPJwSSJumhw7NJ4LZW8N9McJ7wl3nKU1oDZTUffwWS2Oa/5tKJdVBEPTVMSklWNaX/gITvvxxgw==
X-Received: by 2002:a05:6870:d910:b0:d7:1042:c5f3 with SMTP id gq16-20020a056870d91000b000d71042c5f3mr5438411oab.176.1646340000606;
        Thu, 03 Mar 2022 12:40:00 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id l84-20020aca3e57000000b002d97bda3872sm1487822oia.55.2022.03.03.12.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 12:40:00 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
        robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org,
        mbrugger@suse.com, arnaud.ferraris@collabora.com,
        knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4 v5] rk808: Convert bindings to yaml
Date:   Thu,  3 Mar 2022 14:39:54 -0600
Message-Id: <20220303203958.4904-1-macroalpha82@gmail.com>
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

Convert the rk808 bindings into yaml format. In order to accomplish
this some bindings for the rk809 had to be updated to remove
non-existent vcc inputs. Additionally, some bindings for the rk805
needed to be updated to add a now-mandatory #clock-cells value, and
a regulator for a board using the rk818 PMIC needed to be renamed.

Changes from V4:
 - The latest version of yamllint, dt_binding_check, and dtbs_check now
   return no errors for arm and arm64.
 - Added DCDC_BOOST regulator for rk818 to documentation.
 - Renamed regulator for rk3188-px3-evb from SWITCH_REG1 to SWITCH_REG
   to match driver and other rk818 boards.

Changes from V3:
 - yamllint, dt_binding_check, and dtbs_check now returns no errors for
   arm and arm64.
 - Updated rk809 bindings for the rk3399-pinebook-pro and the
   rk3399-roc-pc to remove regulator inputs vcc13 and vcc14. These are
   not valid regulators and appear to be holdovers from the original
   rk3399 schematic.
 - Updated rk805 bindings for the rv1108-elgin-r1, rv1108-evb, and
   rk3328-a1 to add a now mandatory #clock-cells parameter.
 - Made clock-output-names for rk805, rk809, and rk817 a max of 2 if
   the #clock-cells is 1, and a max of 1 if the #clock-cells is 0.
   Even though these PMICs only support a single clock output enforcing
   this in the schema would require us to modify the driver.

Changes from V2:
 - Dropped language about battery. I'm keeping the commits entirely
   separate.
 - Added vddio-supply for rk809 and rk818, since after examining the
   datasheet I can confirm such a supply exists.

Changes from V1:
 - Removed generic descriptions.
 - Added maxItems to clock-output-names. Max items is 2 per the driver.
 - Added unevaluatedProperties as false to regulators.
 - Correct i2c node.
 - Added note about the battery.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Chris Morgan (4):
  arm64: dts: rockchip: Remove vcc13 and vcc14 for rk808
  dts: rockchip: Add #clock-cells value for rk805
  dts: rockchip: Update regulator name for PX3
  dt-bindings: mfd: rk808: Convert bindings to yaml

 .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
 .../bindings/mfd/rockchip,rk805.yaml          | 219 +++++++++
 .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
 .../bindings/mfd/rockchip,rk809.yaml          | 284 +++++++++++
 .../bindings/mfd/rockchip,rk817.yaml          | 330 +++++++++++++
 .../bindings/mfd/rockchip,rk818.yaml          | 282 +++++++++++
 arch/arm/boot/dts/rk3188-px3-evb.dts          |   2 +-
 arch/arm/boot/dts/rv1108-elgin-r1.dts         |   1 +
 arch/arm/boot/dts/rv1108-evb.dts              |   1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |   1 +
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts |   2 -
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |   2 -
 12 files changed, 1376 insertions(+), 470 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml

-- 
2.25.1

