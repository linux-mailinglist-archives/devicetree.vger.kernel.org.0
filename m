Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 958F0671554
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 08:46:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229608AbjARHqD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 02:46:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbjARHon (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 02:44:43 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04AE661D72
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 23:09:32 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id s21so4121115edi.12
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 23:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2lgj4RneNZy7/eLi0Ndco/t/yWP4AgM0h1cCtHXHKe8=;
        b=Hq+vZ0KeEBW1ot4+tWZFEBQnkR8mkQzKWjMTohbokG39jAlmjaSNfTM6tzO+9r6P0b
         DPIGIxZEmTplzR55nn3r3GjT1RagIEJa2RL/pyZ7L+sxfEShf213uyWi5ZaVR8UBgi9g
         b4KWpWPS4ky71N08jcZQEwlVTUKfiSHZNyXKq7XyQGgDfr7Fq9o8DO2opO9vcXulLkQj
         wxO/KMN8420uLEXgce2LaQGM1kv+K5A+YorBPjRhUwnUdgt1AoYCACF9NBn/F1DTgdYX
         TvYP4e07XwhwkKp7LCn6FgLWtjXCk5zyC1MmOT49XuEqmMNtLK+m7sJJ1kJ4n+wCl5Ng
         +zjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2lgj4RneNZy7/eLi0Ndco/t/yWP4AgM0h1cCtHXHKe8=;
        b=Z3Tk54BfpuTbzcwySJW7Ve4qqNGLo4Qm2kOT+5Lc2g2RllF9PV6hDH+JjQGRnaPUqU
         qxFeGHrCcRbB7G0JctF4BE9LGBAqAyarvwSdhf5CCyKxCWiyA7WYp4sNZRrzbdjTYmg9
         2kKmbh0P0cOCwuJdPAO7Rpm1KFmunuxdwPxgVGobs93qNwuYfiXOpWJoRShiGY2FBXwa
         dqD4Fgq4gHP0spLFCOU+lvGvYMkIF9r3AuwcNzb6d2fcqLgJEa+SK/OhSiHg5NreaLAm
         OhDv4ALb3he3CNqvbdI0u1rBRo1RzYxT92pvZwnGUaffsT/6ulrBz85vQeFeVLAvTy3z
         EmLA==
X-Gm-Message-State: AFqh2korZ0Oiz5jRc5KBgybcTqqr7lsoz6FdZ/ogmhRqT41u6xYDTDKS
        bAv4ob53dk2J/uRVdsA8mVXioWRvyJjhjbid
X-Google-Smtp-Source: AMrXdXt9vRns6mTotxEDnYQOe8Q6GbOwvNJETG/FOeGy84WVKfQ1s/djhCCg+VX0Otx57OBChRB2Cg==
X-Received: by 2002:a05:6402:5d4:b0:469:ee22:d97a with SMTP id n20-20020a05640205d400b00469ee22d97amr7081517edx.32.1674025770563;
        Tue, 17 Jan 2023 23:09:30 -0800 (PST)
Received: from fedora.local (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id bt16-20020a0564020a5000b00482e0c55e2bsm13596984edb.93.2023.01.17.23.09.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 23:09:30 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/7] usb: fotg210: Various improvements
Date:   Wed, 18 Jan 2023 08:09:15 +0100
Message-Id: <20230103-gemini-fotg210-usb-v2-0-100388af9810@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABybx2MC/32NQQ6CMBBFr0K6dkwpSMWV9zAspjiUSbQ1UyQaw
 t0tHMDl+z8vb1GJhCmpS7EooZkTx5DBHArVjxg8Ad8zK6NNpUtdgacnB4YhTt6UGt7JQXtC29j2
 bHWDKosOE4ETDP24qU9ME8l2vIQG/uy1W5d55DRF+e7xudzWv525BA2DaazuXY11a64PDijxGMW
 rbl3XH8bzRVPOAAAA
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Fabian Vogt <fabian@ritter-vogt.de>,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is some gradual improvements to the FOTG210 dual-mode
USB host/gadget driver.

- Create stricter device tree bindings fixing some mistakes.
  We have at least FOTG200 and FOTG210 out there. A third
  variant named FUSB220 is probably related but has a separate
  driver in the vendor code trees.

- Start to break out common code for remapping of memory and
  clock handling to begin with, move this to the core file.

- Check that the block is in the right role before
  proceeding, don't abort registration but print a warning
  if it's not.

- Assing some default speed and the OF node when the UDC
  starts. This is based on the similar pattern in the DW
  controllers.

- Implement a proper VBUS session handler calling down to
  the hardware VBUS control handler in the Gemini variant.
  This makes everything work on my hardware.

To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-usb@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: Fabian Vogt <fabian@ritter-vogt.de>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

---
Changes in v2:
- Changed a single word in the description heading on
  the DT bindings
- Link to v1: https://lore.kernel.org/r/20230103-gemini-fotg210-usb-v1-0-f2670cb4a492@linaro.org

---
Linus Walleij (7):
      dt-bindings: usb: Correct and extend FOTG210 schema
      usb: fotg210: List different variants
      usb: fotg210: Acquire memory resource in core
      usb: fotg210: Move clock handling to core
      usb: fotg210: Check role register in core
      usb: fotg210-udc: Assign of_node and speed on start
      usb: fotg210-udc: Implement VBUS session

 .../devicetree/bindings/usb/faraday,fotg210.yaml   |  7 +-
 drivers/usb/fotg210/fotg210-core.c                 | 81 +++++++++++++++++++---
 drivers/usb/fotg210/fotg210-hcd.c                  | 48 ++-----------
 drivers/usb/fotg210/fotg210-hcd.h                  |  1 +
 drivers/usb/fotg210/fotg210-udc.c                  | 68 ++++++++----------
 drivers/usb/fotg210/fotg210-udc.h                  |  2 +-
 drivers/usb/fotg210/fotg210.h                      | 27 ++++++--
 7 files changed, 136 insertions(+), 98 deletions(-)
---
base-commit: 1b929c02afd37871d5afb9d498426f83432e71c2
change-id: 20230103-gemini-fotg210-usb-95a76798706a

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>
