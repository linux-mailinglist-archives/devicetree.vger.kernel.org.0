Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5643C4FE5CB
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 18:28:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357579AbiDLQaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 12:30:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238958AbiDLQaT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 12:30:19 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id E91D958E5E
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 09:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649780870;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=Lfkn5TYpg4K2UbIAiqP/jS0HrRHZn0tpfdIL3TtxJCc=;
        b=hw5uhdWJkshKSHTIQlDk9zYByEjdXo4/C+OCr1VYSvRis2sssIpn/EcWLj3T5GJE/6PcVt
        iGWt/8e/skVGWQAqPdwhlzl9G3sUtnHF9QGd2pV1s4qCv7gSuE8YkGzJg9j47Yoj7NU43l
        WesnPjmnUEcS/OiVVXWavQIPrVpQ3VY=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-6-VWBLe4FzOC-wF55I6fizyA-1; Tue, 12 Apr 2022 12:27:48 -0400
X-MC-Unique: VWBLe4FzOC-wF55I6fizyA-1
Received: by mail-wr1-f72.google.com with SMTP id v9-20020adfc409000000b002079e379921so1772145wrf.5
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 09:27:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lfkn5TYpg4K2UbIAiqP/jS0HrRHZn0tpfdIL3TtxJCc=;
        b=51rcsNXK9kwbGLdboz8t2H+qItxLbufAGW5qYu3gQYL5PUgHRoXWZDp9V/VjhH4jvZ
         xLNpohXb2uNr6eqGJctEudbIUfWudM5sfiHomdjjh1SbgE4UzBT508kt2aFOZf0dfUi9
         F31XqEimT0BrsdBdg3ykYMEnvd8UF2QgVEAX779o3awkFflMuRu6evsjeuEZXo7g0sek
         oXgAlPZoxplR9JNuEN7lFh9CeCyxkUbLuEmK5GpHldpGk8FZtdH0FQ65bwsxz00s6H8s
         0O7BpG/W/IiAkLDpry54jPjaNQDVg+1yVMeFLXyhk1DcCBD6ZQtTxIF4M2wWqbna7SaX
         Uhzw==
X-Gm-Message-State: AOAM533lv+82Gt2ygIvUxiKtu6+ACwKgxvKm+WRgp6W2zqg+5X42UdoF
        fZZsPGgUTrrXKJJdDzfeWD2TkqgFIhAHDNQiflXUYs7EX87ODFQAgKdseviy9Oc9JaFP4WDfpgw
        I3SZfN6VFKSdkkcVYQDKUUw==
X-Received: by 2002:a5d:5604:0:b0:207:a2a3:2f3d with SMTP id l4-20020a5d5604000000b00207a2a32f3dmr11237113wrv.358.1649780867558;
        Tue, 12 Apr 2022 09:27:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwgqa7/aV9ISwqb4HltJ51cUzLX12vmdSnwVQPSzUyImyzqg+JOJyY+2jY2yZWjjrp82c0mKw==
X-Received: by 2002:a5d:5604:0:b0:207:a2a3:2f3d with SMTP id l4-20020a5d5604000000b00207a2a32f3dmr11237093wrv.358.1649780867296;
        Tue, 12 Apr 2022 09:27:47 -0700 (PDT)
Received: from minerva.home ([92.176.231.205])
        by smtp.gmail.com with ESMTPSA id g8-20020a5d4888000000b00207a49fa6a1sm7700358wrq.81.2022.04.12.09.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 09:27:46 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        dri-devel@lists.freedesktop.org, Mark Brown <broonie@kernel.org>,
        Chen-Yu Tsai <wens@kernel.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        YueHaibing <yuehaibing@huawei.com>, devicetree@vger.kernel.org
Subject: [PATCH v3 0/5] drm/solomon: Add SSD130x OLED displays SPI support
Date:   Tue, 12 Apr 2022 18:27:24 +0200
Message-Id: <20220412162729.184783-1-javierm@redhat.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds a ssd130x-spi driver that provides a 4-wire SPI transport
support for SSD130x OLED controllers that can be accessed over a SPI bus.

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

This is a v3 that addresses the issues pointed out in v2.

Best regards,
Javier

Changes in v3:
- Drop the "sinowealth,sh1106-i2c", wasn't in a released version (Chen-Yu Tsai)
- Continue enforcing required properties for deprecated strings (Maxime Ripard)
- Add a comment to the properties required for SPI (Geert Uytterhoeven)
- Drop the "sinowealth,sh1106-i2c", wasn't in a released version (Chen-Yu Tsai)
- s/it/they in the commit description (Geert Uytterhoeven)
- Drop unnecessary blank line (Geert Uytterhoeven)
- Export variants array and use &info[ID] in device table (Andy Shevchenko)
- Drop ssd130x_spi_get_dc() helper and open code it (Geert Uytterhoeven)
- Export variants array and use &info[ID] in device table (Andy Shevchenko)
- Add Geert Uytterhoeven's Reviewed-by tag to patches.

Changes in v2:
- Drop the -i2c suffixes from the compatible strings too (Geert Uytterhoeven)
- Don't add compatible strings with an "-spi" suffix (Geert Uytterhoeven)
- Use the compatible strings that don't have "fb-i2c" (Geert Uytterhoeven).
- Drop ssd13x_variant_to_info() and just use the array index (Neil Armstrong).
- Add the same compatible strings than I2C (Geert Uytterhoeven)
- Add Mark Brown's Acked-by tag to all patches.

Javier Martinez Canillas (5):
  dt-bindings: display: ssd1307fb: Deprecate "-i2c" compatible strings
  dt-bindings: display: ssd1307fb: Extend schema for SPI controllers
  drm/solomon: Add ssd130x new compatible strings and deprecate old
    ones.
  drm/solomon: Move device info from ssd130x-i2c to the core driver
  drm/solomon: Add SSD130x OLED displays SPI support

 .../bindings/display/solomon,ssd1307fb.yaml   |  82 ++++++--
 drivers/gpu/drm/solomon/Kconfig               |   9 +
 drivers/gpu/drm/solomon/Makefile              |   1 +
 drivers/gpu/drm/solomon/ssd130x-i2c.c         |  62 +++---
 drivers/gpu/drm/solomon/ssd130x-spi.c         | 177 ++++++++++++++++++
 drivers/gpu/drm/solomon/ssd130x.c             |  36 +++-
 drivers/gpu/drm/solomon/ssd130x.h             |  14 ++
 7 files changed, 324 insertions(+), 57 deletions(-)
 create mode 100644 drivers/gpu/drm/solomon/ssd130x-spi.c

-- 
2.35.1

