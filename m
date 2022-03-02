Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D94C04CB350
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 01:35:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229758AbiCBX4j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 18:56:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229744AbiCBX4i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 18:56:38 -0500
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31056E02B
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 15:55:54 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id j2so6866850ybu.0
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 15:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k8nlddZ/AsXirg2qg8zuLLRb6b9AsuKxIWbTpdb5n7o=;
        b=qXIu8G+NMa/j3lA6WJhGcAK/jWocTppZoFEO/KFj0GMqQrDp2ejDZ3JTUncuwYWsty
         +JWzSgaefCaLjln+GG2L4gQx7furNHx7S0YRZYiRr4Z7GcrWrNPfWZVmqrCl23yFOenR
         M8yu5kFkVQA0Y8nliv+nD74qds3iU2PZ1tj7Ll0p2XzwsGEGZqxETIEtOTugYK427ejq
         g9n9ckCwhh24/M4IIhkIkDwxVxGLrs8b8U8GJ4ojJuQzF3njNBkeY85q5SrYoc1Rd4Mw
         /29rFLGWzKT1TBT507hmvRF++2flnvnF/y6x+cs7UeRgMMaZYVZ1DfnQDBItstYrjby+
         15Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k8nlddZ/AsXirg2qg8zuLLRb6b9AsuKxIWbTpdb5n7o=;
        b=xpsduAHDzXrshLhthiLo9ioCVzGx615CvKTWnHNd13HzRZzhKqG2qZqdxcQl9hSmX8
         QwwM+hxw73p6zlcQkux8bNXzlWfzVE/9rj3mOFM27QZElePuOJNadX2ceKm7VmU3x9Zt
         kC0459eM43fFX5RcqbXgpSvjsgNZhiQv2WOtRupsYzTVr+UwzkwTcHW4uXl+z6xJnP1r
         uH95W6x46fwWYlRi9ie1yrg3CeFmFpT+yQIlp4TtnJtEeT3C1NeKR4HQy9+tZl1jYq5M
         OZkFXx+961qOcVzFUfI5FOsNnFSQzZ/x9fzm8waGEzq9V2YfLYS9dLRrUKwjJ9b8SJNU
         85Ng==
X-Gm-Message-State: AOAM533aqEFsU75gQhEbfg+jTjhn2q2xA3GqKhvZ4TU2zY+pak2geVC/
        dFvB95nMvUX3T8ks4m9L9iy0Y6ODuI0=
X-Google-Smtp-Source: ABdhPJw12W9VdaIJJJr391d3MGiSvTAqRcSgmSWwUAN+4VMjCitlDiUa0OntL4gh7sCU8VDPUQJxCQ==
X-Received: by 2002:a05:6830:1daa:b0:5af:2431:3764 with SMTP id z10-20020a0568301daa00b005af24313764mr17192831oti.27.1646263581254;
        Wed, 02 Mar 2022 15:26:21 -0800 (PST)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id fs3-20020a056870f78300b000d75f1d9b89sm234925oab.54.2022.03.02.15.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 15:26:19 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
        robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org,
        mbrugger@suse.com, arnaud.ferraris@collabora.com,
        knaerzche@gmail.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3 v4] rk808: Convert bindings to yaml
Date:   Wed,  2 Mar 2022 17:26:09 -0600
Message-Id: <20220302232612.25455-1-macroalpha82@gmail.com>
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
needed to be updated to add a now-mandatory #clock-cells value.

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

Chris Morgan (3):
  arm64: dts: rockchip: Remove vcc13 and vcc14 for rk808
  dts: rockchip: Add #clock-cells value for rk805
  dt-bindings: mfd: rk808: Convert bindings to yaml

 .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
 .../bindings/mfd/rockchip,rk805.yaml          | 219 +++++++++
 .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
 .../bindings/mfd/rockchip,rk809.yaml          | 284 +++++++++++
 .../bindings/mfd/rockchip,rk817.yaml          | 330 +++++++++++++
 .../bindings/mfd/rockchip,rk818.yaml          | 282 +++++++++++
 arch/arm/boot/dts/rv1108-elgin-r1.dts         |   1 +
 arch/arm/boot/dts/rv1108-evb.dts              |   1 +
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |   1 +
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts |   2 -
 .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |   2 -
 11 files changed, 1375 insertions(+), 469 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml

-- 
2.25.1

