Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E54A76CB836
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 09:34:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231979AbjC1Hea (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 03:34:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230380AbjC1HeL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 03:34:11 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CACB40C0
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 00:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1679988797;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=RbISS+/27S6jW4bDHr8lk+wvnbdcYB3f6YGIVizM/3Y=;
        b=QK5KgZ2RQBTIvi4Ne2IbED5n+plXV4qIv+V+CUu7K6B6fzsVoZSsBciWPVUfsskseu4oxn
        VQEM63EI3eRB3QD7pI8LGjg/WQzLteduv3bHNCapMQLB4o36suBeVgdk1q1R5LZunrGIT9
        H36/nUqeh8nFHe+uG5TbWCDliX9bXOQ=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-558-uqiqX_w5MzmXC_QZqOOG4A-1; Tue, 28 Mar 2023 03:33:16 -0400
X-MC-Unique: uqiqX_w5MzmXC_QZqOOG4A-1
Received: by mail-wm1-f69.google.com with SMTP id m27-20020a05600c3b1b00b003ee502f1b16so5829176wms.9
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 00:33:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679988795;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RbISS+/27S6jW4bDHr8lk+wvnbdcYB3f6YGIVizM/3Y=;
        b=BSdo6UgglkYbSbZgtWjFTkSGUnEyEziiLPSFOEKkJg61N9az72vXDt78oqOEOeN/WH
         7e5oWti+qiLuhrMRVhz3tdSa7WA96ozE6mIGWgDRiW0g7fg1kX+MtOl5FfMo4meTncfY
         z3i/61dSIRVz5xmWWm3ELwNt6anwKakvszhi5Vitaa73L0N8DkZ7AZKRfKXDo8V4SXZD
         pY9JGRoXfkO7nNL0pkUForImkldelduwJZhy52Km6fXtGlwaEEIONgrGFL+o8UOY1h/B
         ECTOcSh2+Bs0pvVghtq1IUA4eASqtYH2nQn9nl9waGqX2aECKr7VWSX8dNtDaO5eSmib
         JELQ==
X-Gm-Message-State: AO0yUKXS3xW+3virIRXM5xOpEuSkbAtqWzGsflM2SlieIBYxLqxPEa5e
        gFb/WgVUVRibhYUcmtb4Kk1Wo6nY7XogcbwgEfApwjyezU7tbT/m57LLAASmvnw2QmUSJ70gWP0
        fx0WpdV3/5vdCtuQOTw0MlA==
X-Received: by 2002:a7b:c5c8:0:b0:3eb:2de8:b739 with SMTP id n8-20020a7bc5c8000000b003eb2de8b739mr11276038wmk.37.1679988795168;
        Tue, 28 Mar 2023 00:33:15 -0700 (PDT)
X-Google-Smtp-Source: AK7set8lfOmpR2nW3HTghmY7jK4kUsb4kpoMtbF8MSqpuG8HfIm5O5jbiNwx/SnjQsKsrFOF8ZJmmQ==
X-Received: by 2002:a7b:c5c8:0:b0:3eb:2de8:b739 with SMTP id n8-20020a7bc5c8000000b003eb2de8b739mr11276026wmk.37.1679988794856;
        Tue, 28 Mar 2023 00:33:14 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j6-20020a05600c190600b003ef6bc71cccsm7527075wmq.27.2023.03.28.00.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 00:33:14 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Tom <tom@tom-fitzhenry.me.uk>,
        Robert Mader <robert.mader@collabora.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>,
        Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
        =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Caleb Connolly <kc@postmarketos.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Jarrah Gosbell <kernel@undef.tools>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH v3 0/2] arm64: dts: rk3399-pinephone-pro: Add display and touchscreen support
Date:   Tue, 28 Mar 2023 09:33:07 +0200
Message-Id: <20230328073309.1743112-1-javierm@redhat.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This series adds support for the display and touchscreen found in the
PinePhone Pro. It's a third version that addresses issues pointed out
by Ondrej Jirman in v2:

http://lists.infradead.org/pipermail/linux-rockchip/2023-March/037889.html

Best regards,
Javier

Changes in v3:
- Fix some ./scripts/checkpatch.pl --strict warnings.
- Add Ondrej Jirman Tested-by tag.
- Change PWM period to 50000 since 20 kHz is recommended (Ondrej Jirman).
- Remove useless comments for the panel regulators (Ondrej Jirman).
- Drop unneeded pinctrl pull down conf for pins that either already have
  a pull-down resistor or are already driven by the SoC (Ondrej Jirman).
- Remove "pwm-delay-us" property not supported in mainline (Ondrej Jirman).
- Use the correct "goodix,gt1158" compatible string (Ondrej Jirman).
- Remove "poweroff-in-suspend" not supported in mainline (Ondrej Jirman).

Changes in v2:
- Drop touchscreen node because used the wrong compatible (Ondrej Jirman).
- Fix assigned-clock-parents in vopb node (Ondrej Jirman).
- Add vopl and vopl nodes.

Martijn Braam (2):
  arm64: dts: rk3399-pinephone-pro: Add internal display support
  arm64: dts: rk3399-pinephone-pro: Add touchscreen support

 .../dts/rockchip/rk3399-pinephone-pro.dts     | 114 ++++++++++++++++++
 1 file changed, 114 insertions(+)


base-commit: 3a93e40326c8f470e71d20b4c42d36767450f38f
-- 
2.40.0

