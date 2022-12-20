Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2132B651701
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 01:05:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232394AbiLTAFs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Dec 2022 19:05:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232455AbiLTAFq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Dec 2022 19:05:46 -0500
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com [IPv6:2607:f8b0:4864:20::e29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39C5F284
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 16:05:43 -0800 (PST)
Received: by mail-vs1-xe29.google.com with SMTP id k185so10397152vsc.2
        for <devicetree@vger.kernel.org>; Mon, 19 Dec 2022 16:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=criticallink.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x550/OsiWnsnhCUH29zWgidKchxtQqaOBRoxd0yhd7E=;
        b=GPj+5IMRq85Ho5NoEcvHo8LtajbZsJ8dG9i7MTd85YImxaRBB9aIQq4hcxc7u2Tsl5
         tcbkTr/hO7d0u5DKnxFhxpd5R1inx8+cbEcDnTG30hIGAU7zmmOJA8cFNXcZv3T7jUD/
         p8OwhospT1ni8Y5B4jX6AGJ3DI/bHVaDthDgexvKds2CBJ30AhagUJOlt9y8Jwi8EVVr
         mtqVYCLFgObGhUCwYtNaK1218e5khIWj46SQ2IHsDTfsUT05yG75qXYjj6Ahu8gb6YSL
         +Bnv8Vv3UO71PjYB7jlNhyJ+Me8xEhwBO+DvayhrZydv7+c+9Lg+/39aUgSHApbel9M6
         J6Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x550/OsiWnsnhCUH29zWgidKchxtQqaOBRoxd0yhd7E=;
        b=OzUrkL0zikLmA/OkVpKhHjA9gljmA/vqfA/Lg0eWTqNLJRA6D8XlhFlx/Ez5+oR+XL
         JEEBJ4ZWUJZItcY+gjQHv1Q35e0p2pDAdqtBL7OIW3q6mZRN3Rrf70MTpe9AIE5sUYEe
         +q8z4VjFe+Thp7CCyjv/cSBsSchYpD4T+m3DICvrvhtOfar3/AuoW5IO9HA31b6vIshR
         6RY6Y+1yexeh6V7XK4UIF4XEB/SWsQNLpVktQLMHSoM0hSfV3pDO8Z7hSAtEu71WMxSR
         +TjozUcIoTKMzepiL9Idw5bm3xVWdKJ8HVQZSP4r8ZwVIVLDWk0nr3hL4WgaOmMprSri
         u+lw==
X-Gm-Message-State: AFqh2krg4ThNpqVJFnxZa1cXeUQqZ7sKvgZoLGXO7Rmbmd108yfc7lEn
        katN7b85dNjMSZnUOFiqbAt7sTJuDe5TnwZO
X-Google-Smtp-Source: AMrXdXtxeE+xv5Ro1p1xozvtIVG8oryRUQqJ43vEvCn0SHdJtiWMLmXV4nqIUbrxWF9bWawfoWGDyg==
X-Received: by 2002:a67:af1a:0:b0:3ac:df02:e954 with SMTP id v26-20020a67af1a000000b003acdf02e954mr3720164vsl.10.1671494742304;
        Mon, 19 Dec 2022 16:05:42 -0800 (PST)
Received: from jcormier-MS-7A93.syr.criticallink.com (static-72-90-70-109.syrcny.fios.verizon.net. [72.90.70.109])
        by smtp.gmail.com with ESMTPSA id o70-20020a374149000000b006e702033b15sm7721430qka.66.2022.12.19.16.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 16:05:41 -0800 (PST)
From:   "Cormier, Jonathan" <jcormier@criticallink.com>
To:     linux-hwmon@vger.kernel.org
Cc:     "Cormier, Jonathan" <jcormier@criticallink.com>,
        Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bob Duke <bduke@criticallink.com>,
        John Pruitt <jpruitt@criticallink.com>
Subject: [PATCH v2 0/2] hwmon: ltc2945: Add binding and shunt resistor support
Date:   Mon, 19 Dec 2022 19:04:53 -0500
Message-Id: <20221220000457.1163446-1-jcormier@criticallink.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221214220727.1350784-1-jcormier@criticallink.com>
References: <20221214220727.1350784-1-jcormier@criticallink.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Added the ability to specify the value of the shunt resistor in the
device tree instead of assuming it is 1 milliOhm.

Would be good to backport as well

Changes since v1:
- Add devicetree match table
- Add kerneldoc for the ltc2945_data struct
- Cleanup excesive comments about the shunt resistor
- Switch to device_property_read_u32()

Cormier, Jonathan (1):
  dt-bindings: hwmon: adi,ltc2945: Add binding

John Pruitt (1):
  hwmon: ltc2945: Allow setting shunt resistor

 .../bindings/hwmon/adi,ltc2945.yaml           | 50 +++++++++++
 drivers/hwmon/ltc2945.c                       | 86 ++++++++++++++-----
 2 files changed, 115 insertions(+), 21 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/adi,ltc2945.yaml

--
2.25.1
