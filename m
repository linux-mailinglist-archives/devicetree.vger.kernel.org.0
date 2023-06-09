Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4350672A0F2
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 19:10:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229620AbjFIRKi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 13:10:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230133AbjFIRKg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 13:10:36 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A50A1FFE
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 10:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1686330587;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=NKTMLeVuJjJu+UupiY9R8YrLvu9QU8MmD3rWpa6hb1s=;
        b=Yc1QJTEuGYVE1yH54OzpOaJjE9cqwi4IIskL3H49jaeTbnMeWTnC06E+Wi9nnruC3/34G9
        uejCDgwi3BPNQo2sY31/2OcWtY9dIoeTFiWBTxbMFdC/m4mTrrlGkXvCGyNMYroo9QglRy
        +Ob7TfgsnyfMgyBtedMDImzGZXPBKfQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-671-2SwOYb0nOIOWW0pk_aTr4A-1; Fri, 09 Jun 2023 13:09:46 -0400
X-MC-Unique: 2SwOYb0nOIOWW0pk_aTr4A-1
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-30ad885addcso863796f8f.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 10:09:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686330585; x=1688922585;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NKTMLeVuJjJu+UupiY9R8YrLvu9QU8MmD3rWpa6hb1s=;
        b=ev3gH9zEXI7PJj9U5nrk2IVne0wc/+zQIpUMFlPLRdGHOjK++fsMIC25e+6UIsFfPZ
         EY+Iyd7GW4I+YP14qWuBZ/XcINHBcniK7W7aj4xuUIiGnxR7NM2S/xaLPCfx4b19ilFH
         dgSBBGZLyWolX6sKLvd9I5WIlMzXpt8zNcn4mhpVXCsAqGFNjfQ92Qc7bfLfJfwR6MKs
         la73sXaiz1V3FSXJal0JZC6i7OJm1fPH8Bl5Z16AYQEoUt9yKUWiOpZ6Z1aCSqBxzl80
         iB7Dl8R0prfBfcpfBrn3s+0A0ZR+UtJj1yS/eJZaKvlbqz6CYcXiOb3iS3S3a+bicRa0
         VQQA==
X-Gm-Message-State: AC+VfDyZbeyf9hUiE031FOaZ3H58uTHyowJqhe2CIRTLo7RVTroO+zHf
        ZvbA0p9s378yOP9X8qXOXF/UxiS72sgjqICmR38HPlChVtRBci6UM7qFeUEJAnAT2XWkkIzyAqn
        uObYS7B4OgINSkE7KtyDMOvfQPGzyGw==
X-Received: by 2002:a5d:58cf:0:b0:307:cf71:ed8c with SMTP id o15-20020a5d58cf000000b00307cf71ed8cmr4121894wrf.35.1686330584955;
        Fri, 09 Jun 2023 10:09:44 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7O8JZIPu1qlsxJkv6bYuVB1QreUorZhNkNOZBycKwRdDH9UjGNDznFR4S5cz6Dqwhpdfc/ng==
X-Received: by 2002:a5d:58cf:0:b0:307:cf71:ed8c with SMTP id o15-20020a5d58cf000000b00307cf71ed8cmr4121875wrf.35.1686330584684;
        Fri, 09 Jun 2023 10:09:44 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id c21-20020a05600c0ad500b003f7310a3ffasm3265526wmr.2.2023.06.09.10.09.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 10:09:44 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Maxime Ripard <mripard@kernel.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/5] drm/ssd130x: A few enhancements and cleanups
Date:   Fri,  9 Jun 2023 19:09:35 +0200
Message-Id: <20230609170941.1150941-1-javierm@redhat.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

While working on adding support for the SSD132X family of 4-bit grayscale
Solomon OLED panel controllers, I noticed a few things in the driver that
can be improved and make extending to support other chip families easier.

I've split the preparatory patches in this series and will post the actual
SSD132X support as a separate patch-set once this one is merged.

Best regards,
Javier

Changes in v2:
- List per controller default width/height values in DT schema (Maxime Ripard).

Javier Martinez Canillas (5):
  drm/ssd130x: Make default width and height to be controller dependent
  dt-bindings: display: ssd1307fb: Remove default width and height
    values
  drm/ssd130x: Set the page height value in the device info data
  drm/ssd130x: Don't allocate buffers on each plane update
  drm/ssd130x: Remove hardcoded bits-per-pixel in ssd130x_buf_alloc()

 .../bindings/display/solomon,ssd1307fb.yaml   |  28 +++-
 drivers/gpu/drm/solomon/ssd130x.c             | 124 ++++++++++++------
 drivers/gpu/drm/solomon/ssd130x.h             |   6 +
 3 files changed, 113 insertions(+), 45 deletions(-)

-- 
2.40.1

