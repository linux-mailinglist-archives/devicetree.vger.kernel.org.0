Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4B3D4D13BE
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 10:49:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230056AbiCHJuO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 04:50:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239327AbiCHJuN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 04:50:13 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32F59340C3
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 01:49:16 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id b5so27574663wrr.2
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 01:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=02UDf1pdb0U70hOLizwodglM9/0MIkQTrFbx130jmiE=;
        b=TjZphH9hgyELIqRwTi2WvGdoGj1J9+ko37q3Dy+QljjxZrcmoDk6pGD+9BkVeoWGl1
         c9cQYim68QjDDKBJC75LgOBARQdj4uHxDI5dHKKBf7O/my4JRPQbITljSvXVICz+kIzQ
         uzMuCIEvQpgxiO7KMGkHAA9CI20uLtfq+mC2kUGMuJymhFoQsgvBfeH8Dh37Ijctf9/1
         j9s1H20UTvvd4CNKc+lJbQwbO0zPanfu1nuz0cHXv/0abJA/1RsruwvnID4aMwSvIGmN
         GPY9CCl/Vys09GOCr4GHKBC8J9A02W7kZrjPxLAvuU0LUvaGFMMvdelTSF37S0lPxzqf
         ddAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=02UDf1pdb0U70hOLizwodglM9/0MIkQTrFbx130jmiE=;
        b=r0WS4rz8lUmH7sVcSiy9X1VJCZfibS1B7CRpDqfFTSDoGy85cOAvgR42zrO+s3t+71
         +WGe+8Pj5aFCqti3V6WPxqHxQs3IQg+o2YhtP3MQFzgah6K5N8WjDXPOKUGWTuQr4jRr
         JPMao/L5cTETaH9GhEldsJ0cTqKyufmCSNQsLG2yrvyoOtpfex0OkO14gST6cUm0WvBl
         2LqNbEyXY4cKNjPlBTx2CKyOOZGgBU+NDdbRHtFI4qCM4xr8AQFS8xV+6R3zh4EAp7Zn
         lisyzmd4tqLeOGQ/LJg6io/EjraLKjd4XGPuvsYaSenm3i5HJU4BFOM2EoKTrM8s7u57
         h2cw==
X-Gm-Message-State: AOAM530tjGA9+swz/U+YACWT1YUNKG8GoSaJq5QkgTDS0ZlMzJlxQhno
        KMIDeubJ0ldTeqDifXVIwDEdPg==
X-Google-Smtp-Source: ABdhPJwJl4t5Tn7r80HbhzAHKE1pKs8GUwcFZWPV2LvK0bS7AXZojL7riB/OQzKcrK/Px9dayrwCYg==
X-Received: by 2002:adf:fa46:0:b0:1f1:d99a:4b1 with SMTP id y6-20020adffa46000000b001f1d99a04b1mr11663745wrr.516.1646732954621;
        Tue, 08 Mar 2022 01:49:14 -0800 (PST)
Received: from prec5560.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id z3-20020a1cf403000000b0037d1f4a2201sm1684885wma.21.2022.03.08.01.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 01:49:14 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
        matthias.bgg@gmail.com, robert.foss@linaro.org,
        laurent.pinchart@ideasonboard.com, xji@analogixsemi.com,
        hsinyi@chromium.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Chen-Yu Tsai <wenst@chromium.org>, arnd@arndb.de
Subject: [PATCH v2 0/2] Revert vendor property from anx7625 bindings
Date:   Tue,  8 Mar 2022 10:49:09 +0100
Message-Id: <20220308094911.2680291-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

An issue[1] related to how the V4L2_FWNODE_BUS_TYPE_PARALLEL flag is mis-used
was found in recent addition to the anx7625 driver.

As used currently CPI (camera parallel interface) and DPI
(display parallel interface) would share the
V4L2_FWNODE_BUS_TYPE_PARALLEL enum. I think that would be perfectly
functional, but it is not what V4L2_FWNODE_BUS_TYPE_PARALLEL is
documented to represent. As far as I can see it's only intended to
represent CPI.

Instead of having V4L2_FWNODE_BUS_TYPE_PARALLEL represent two
standards, I think they should be split. And possibly
V4L2_FWNODE_BUS_TYPE_PARALLEL should be renamed for CPI, but that is a
separate story. This would provide for the neatest and most legible
solution. If this solution is implemented, this range would be
incorrect. Additionally the snippet reverted in 2/2 of this series
would no longer be valid.

As it stands V4L2_FWNODE_BUS_TYPE_PARALLEL was used to represent DPI
due to not being caught in the review process.

In order to not introduce this issue into the ABI, let's revert the changes
to the anx7625 dt-binding related to this.

[1] https://lore.kernel.org/all/YiTruiCIkyxs3jTC@pendragon.ideasonboard.com/

Robert Foss (2):
  dt-bindings: drm/bridge: anx7625: Revert DPI support
  Revert "arm64: dts: mt8183: jacuzzi: Fix bus properties in anx's DSI
    endpoint"

 .../display/bridge/analogix,anx7625.yaml      | 19 +------------------
 .../dts/mediatek/mt8183-kukui-jacuzzi.dtsi    |  2 --
 2 files changed, 1 insertion(+), 20 deletions(-)

-- 
2.32.0

