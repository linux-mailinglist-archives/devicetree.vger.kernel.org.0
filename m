Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B6494FC67E
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 23:14:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238851AbiDKVPI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 17:15:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230435AbiDKVPH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 17:15:07 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B52682A739
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 14:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649711571;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=n0gtWVG0aimnuoPQwNXoXZOG0mpWKStMnE3++TkqLKY=;
        b=ERHTTA/9vs5a8UrmVCQMG+cGbGNIlvH1yfEvV7E4PNR/QSF2ve/7K3K/rxUbBAfrY+v26/
        9njcoGv5EQ4O69mxr7Xy6j7aBc44WdZ7pKpbJiqBaIud18NbcCe8pDznLVqVIK5slZ3RZv
        ykPVhpBoJTR6CbLHy+wNXerhA2EwqWk=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-112-ZnPTZVaQNLePGE_UTOcM1w-1; Mon, 11 Apr 2022 17:12:50 -0400
X-MC-Unique: ZnPTZVaQNLePGE_UTOcM1w-1
Received: by mail-wm1-f72.google.com with SMTP id j20-20020a05600c1c1400b0038eb5cb35ecso196745wms.9
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 14:12:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=n0gtWVG0aimnuoPQwNXoXZOG0mpWKStMnE3++TkqLKY=;
        b=42UO2sA7Yw7QlQCbJ5Q6y6O9rVuJyRIo1JvOqs/HZ3nCgaroiYg8SPwiLvVbAE0XFe
         mlAAG6+BOWo231Qz1WvNBfVauPj3TDQMqOhcyc1tCBvW6ve7ldokjKsLW2VMMLkNLg3o
         VsJYysXKFSW/iq5ehKQTWl0VFS/9FvCWyeNvMZVjoVRsBrU60z3DcBuHk5kWwMFU+MxR
         T5xYslIcaZQ6FWfuMzUTxekbD0XdExBUU2EFP7CUrO+XPLzkym9Aenr/zeFE4vea5scG
         wG/a2m2bolOa1UQ1pp3vplSzaFaQDNFzdJ6Va00UOzGN25wUNBZv+ibhzdaWymIO64NG
         LD7A==
X-Gm-Message-State: AOAM531ww0ajev1GbCmvtGf4Q+DG03EBIJPoPKfwUWf0TGOTwvSrejYP
        9gLHsvUyh+9SVUFVV+DCS9FoYhJ4fMS2Wtma48+EqnE1FnvtgW+ZBDX85JRvm/M2NWhSBk3UsTC
        ndogDUbI40JWCzcUI1ieYOg==
X-Received: by 2002:a05:600c:198f:b0:38c:a9e9:754a with SMTP id t15-20020a05600c198f00b0038ca9e9754amr985267wmq.146.1649711569444;
        Mon, 11 Apr 2022 14:12:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzIG64xz0G/zDMtKH809CxNshjqiDFUCpZN0F0DuF+gDgN8/smhV2a82KJnAYzO7uRz0AUIkA==
X-Received: by 2002:a05:600c:198f:b0:38c:a9e9:754a with SMTP id t15-20020a05600c198f00b0038ca9e9754amr985248wmq.146.1649711569194;
        Mon, 11 Apr 2022 14:12:49 -0700 (PDT)
Received: from minerva.home ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id l9-20020a5d6d89000000b00203d62072c4sm28723722wrs.43.2022.04.11.14.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 14:12:48 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>, dri-devel@lists.freedesktop.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Mark Brown <broonie@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        YueHaibing <yuehaibing@huawei.com>, devicetree@vger.kernel.org
Subject: [PATCH v2 0/5] drm/solomon: Add SSD130x OLED displays SPI support
Date:   Mon, 11 Apr 2022 23:12:38 +0200
Message-Id: <20220411211243.11121-1-javierm@redhat.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds a ssd130x-spi driver that provides a 4-wire SPI transport
support for SSD130x OLED controllers that can be accessed through a SPI.

The driver is quite similar to existing ssd130x-i2c driver that is used by
I2C controllers, but there is a difference in the protocol used by SSD130x
depending on the transport used. The details are in patch #4 description.

Patch #1 just makes the current ssd130x-i2c compatible strings in the DT
binding to be deprecated, and add new ones that don't have an "fb-i2c".

Patch #2 extends the DT binding with the properties needed to support SPI.

Patch #3 adds the new compatible strings to the OF device ID table in the
ssd130x-i2c DRM driver and deprecate the old ones.

Patch #4 moves the device info for the different SSD130x variants from
the ssd130x-i2c transport driver to the ssd130x core driver.

Finally patch #5 adds the ssd130x-spi DRM driver for the OLED controllers
that come with a 4-wire SPI interface, instead of an I2C interface.

This is a v2 that addresses the issues pointed out in v1.

Best regards,
Javier

Changes in v2:
- Drop the -i2c suffixes from the compatible strings too (Geert Uytterhoeven).
- Don't add compatible strings with an "-spi" suffix (Geert Uytterhoeven).
- Drop ssd13x_variant_to_info() and just use the array index (Neil Armstrong).
- Add Mark Brown's Acked-by tag to all patches.

Javier Martinez Canillas (5):
  dt-bindings: display: ssd1307fb: Deprecate "-i2c" compatible strings
  dt-bindings: display: ssd1307fb: Extend schema for SPI controllers
  drm/solomon: Add ssd130x new compatible strings and deprecate old
    ones.
  drm/solomon: Move device info from ssd130x-i2c to the core driver
  drm/solomon: Add SSD130x OLED displays SPI support

 .../bindings/display/solomon,ssd1307fb.yaml   |  74 +++++--
 drivers/gpu/drm/solomon/Kconfig               |   9 +
 drivers/gpu/drm/solomon/Makefile              |   1 +
 drivers/gpu/drm/solomon/ssd130x-i2c.c         |  64 +++---
 drivers/gpu/drm/solomon/ssd130x-spi.c         | 184 ++++++++++++++++++
 drivers/gpu/drm/solomon/ssd130x.c             |  45 ++++-
 drivers/gpu/drm/solomon/ssd130x.h             |  12 ++
 7 files changed, 332 insertions(+), 57 deletions(-)
 create mode 100644 drivers/gpu/drm/solomon/ssd130x-spi.c

-- 
2.35.1

