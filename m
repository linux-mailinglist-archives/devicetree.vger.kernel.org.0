Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52FA4597849
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 22:54:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233004AbiHQUuD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 16:50:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234060AbiHQUuC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 16:50:02 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AF3DAB058
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 13:50:01 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-11c896b879bso120345fac.3
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 13:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=Kj7nd/oOWCdZSLjpIf6h5++NZuNC0VAuYUM21DpxBuI=;
        b=M/Qa5xz88flKnIixli+edU9SWVwpP219EgqX2g1B13uHGtwvDIrfFe5WvD0rXO5gnn
         y4l58jg4OdmdGeFbT+LSsuuuBFuFweXO5a7LIQYNt/LDNvg/ECGinRsx75s6hzI7q/Nu
         gzaDM37vVfJ0KiHW7eEG9Pt8ji2zvBjVGRpImp2UBIjZt1Y3w0bddtMXPxPXhoIJQlGj
         ncpv9fjOtDDniI/Cxwhsa3Rhb/4YqIr7Aw8LO+5qK8v8/pvtEd8AQWNjVmW7JL5gvy6l
         Zxy85GSHDCuV4/f5uja/HqQnTstGja33k4OCXKhftcwjmFyf7IxkBHQuyKgoLf1gvk54
         AOYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=Kj7nd/oOWCdZSLjpIf6h5++NZuNC0VAuYUM21DpxBuI=;
        b=KTT8SvH8mU8dhZoOqR5XXRkLNVE/aNSw3ZFU8A05fMisEn+ZKbFTm/VzXKps5VtJkw
         fHo9bUF1nPjq/EUdEqPreU5JxDe0t/+kCTMuAR81rqpPmcBN1zXJ08NxAHPQeASd7LxE
         v8yrE6g/7tRhSyVIzngseOSVyx7EPstRqpvYqQvI3cYsWxq2JhEw0O/hEnU/6gsPyJMk
         GcLmgMueSg1vhuZwtbOHFaV+cmNU7jwNnwF4OBPy8VkGqIQ+jlwQu7saxzLmhL/3pQdE
         NNBaXTL5Adl8qMI9FVdXex8GO9Wer/KkE8wJN2OrMI/iG+FacqZhxX12trXOfMj5EEQO
         f+dQ==
X-Gm-Message-State: ACgBeo2Ts+cSjTAecgzV+of6AjE1N9vb3HuUbzHC0eGGdcsGOu+nhgff
        ArDlLwI8s79MAq6ltIiA2hJt8uMqeR8=
X-Google-Smtp-Source: AA6agR6cUwnMe1FBWKRXBMM63J0KQoWlvb08QVkyMWf14Ayz0gXGfHbpRU8pPufPtEC5VDos/vDq/g==
X-Received: by 2002:a05:6870:56a8:b0:11c:3b32:e16a with SMTP id p40-20020a05687056a800b0011c3b32e16amr2621441oao.117.1660769400656;
        Wed, 17 Aug 2022 13:50:00 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o66-20020acad745000000b00342d2d79a98sm3203321oig.42.2022.08.17.13.49.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 13:50:00 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add Anbernic RG353 and RG503
Date:   Wed, 17 Aug 2022 15:49:51 -0500
Message-Id: <20220817204954.28135-1-macroalpha82@gmail.com>
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

Add the devicetrees for the Anbernic RG353 and RG503. This enables
all the hardware that is currently supported via mainline Linux.
The remaining hardware (for both devices) includes the display panel
and the battery. The 353 also requires drivers to be written and
mainlined for the touchscreen.

Chris Morgan (3):
  dt-bindings: vendor-prefixes: add Anbernic
  dt-bindings: arm: rockchip: Add Anbernic RG353 and RG503
  arm64: dts: rockchip: add Anbernic RG353 and RG503

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg353.dts    | 103 +++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  93 ++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 807 ++++++++++++++++++
 6 files changed, 1017 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi

-- 
2.25.1

