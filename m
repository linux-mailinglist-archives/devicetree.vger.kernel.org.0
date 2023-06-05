Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 281E4722005
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 09:49:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbjFEHs5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 03:48:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbjFEHs4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 03:48:56 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D382094
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 00:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1685951290;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=VGkR4tMfNbDgtB0o7CKTM6cPx5ZMqgLHeB2CGeYB4eI=;
        b=PKomrvETIESO4Ihc4rDtP8UpoAPeuvscynfVxuniMwsIy8sJY0DuT8pcV9R2ZhrljVdQy4
        B928qgJdhhfHr7IdIZvSGKLlBHbv4qGEkQMDtMg/1DrYtB+9N/UWRUEjHYbhGqsfdf2c1G
        mqbsEY7SfEWq8FOZcSL16yZiuyB7HTw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-21-7KxenBTWNLSSQYF6tDIr3Q-1; Mon, 05 Jun 2023 03:48:08 -0400
X-MC-Unique: 7KxenBTWNLSSQYF6tDIr3Q-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-3f5df65f9f4so21889415e9.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 00:48:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685951287; x=1688543287;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VGkR4tMfNbDgtB0o7CKTM6cPx5ZMqgLHeB2CGeYB4eI=;
        b=CU5nUmmKtVgnyYs9WZ1Ky7apZ9XcJp2BQyZVVyHrG3LmyBS7sEhc1maqa3oIRBuPiy
         KneTA0KD9WCJQBAm6Mxfvz4kD+JG4PxEHPJA1QXlziBZa10SFXAtV4c+cLAPzoVXjvJp
         Z7vaAYU0XyI5Hg4qJkK+o53aRyNCoIpgSZrTXXkIkA0x5EIm1Ak8V2B823zXpR1mVRAX
         Rf0VjbsXKLEZLnWdUnICeqTZBg1r3UQ/UukqvZ9qDT/49u3YF2O6EDUO3F3kcIL5Lqri
         ywTSKgQy1CUWCPNQiebMofh9BM06ACNFJTRLuwsTokU+6nggFBN398+kkRGhR8dUkE5z
         Wpww==
X-Gm-Message-State: AC+VfDxHvXhN9VewbJz6EKngo7CPUA8o1NsCd4fXBSFvIFAs/8PGRmAh
        AU+3gizhWGFuKbG9vbPlKBgOoFbVj0XrmC4NViNLxF6g9n3kwGyXGxBzNbwZ5mFnuSajx4Y/mO+
        n3Zj3DvZ4wW2E2BfYY3J5Vg==
X-Received: by 2002:a1c:4b04:0:b0:3f7:246e:cd2e with SMTP id y4-20020a1c4b04000000b003f7246ecd2emr5265793wma.23.1685951287248;
        Mon, 05 Jun 2023 00:48:07 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6HJOy+bVutAb7WQLT6j3pU44tUaR1qLXEO8VnPsMONwfgesftWuRQxvkdzmRmRsnT2DMy9OA==
X-Received: by 2002:a1c:4b04:0:b0:3f7:246e:cd2e with SMTP id y4-20020a1c4b04000000b003f7246ecd2emr5265786wma.23.1685951286962;
        Mon, 05 Jun 2023 00:48:06 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id q21-20020a1ce915000000b003f4fb5532a1sm9715192wmc.43.2023.06.05.00.48.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 00:48:06 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Thomas Zimmermann <tzimmermann@suse.de>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Maxime Ripard <mripard@kernel.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH 0/5] drm/ssd130x: A few enhancements and cleanups
Date:   Mon,  5 Jun 2023 09:47:48 +0200
Message-Id: <20230605074753.562332-1-javierm@redhat.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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


Javier Martinez Canillas (5):
  drm/ssd130x: Make default width and height to be controller dependent
  dt-bindings: display: ssd1307fb: Remove default width and height
    values
  drm/ssd130x: Set the page height value in the device info data
  drm/ssd130x: Don't allocate buffers on each plane update
  drm/ssd130x: Remove hardcoded bits-per-pixel in ssd130x_buf_alloc()

 .../bindings/display/solomon,ssd1307fb.yaml   |   8 +-
 drivers/gpu/drm/solomon/ssd130x.c             | 124 ++++++++++++------
 drivers/gpu/drm/solomon/ssd130x.h             |   6 +
 3 files changed, 93 insertions(+), 45 deletions(-)

-- 
2.40.1

