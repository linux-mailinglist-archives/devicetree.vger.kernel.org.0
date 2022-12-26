Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AE796562E9
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 14:50:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229850AbiLZNuM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 08:50:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiLZNuL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 08:50:11 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C8531081
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 05:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1672062563;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=zUK8ohDvHrqcANf/NgU5DC4WBrgNFcEfShtnNkgckEM=;
        b=O4MI79toXJnEL7uzduGYR9A2y3+ObMwOyFBlON8EAmeYRDjWbao+ELwsc3ap8z5aijVjwW
        PVSYsjmt7x3xokGugenWapj812X40MePXf54Tp4pFMHwUeZCT/xEyYcGsZDQmwSZp1poT+
        Pfty1GG6KAB61pSyhjrdpoG446/NOl4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-348-CWf-TmqhOIyD7S7EyeynlA-1; Mon, 26 Dec 2022 08:49:21 -0500
X-MC-Unique: CWf-TmqhOIyD7S7EyeynlA-1
Received: by mail-wm1-f70.google.com with SMTP id bg10-20020a05600c3c8a00b003d9717d882eso4541682wmb.2
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 05:49:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zUK8ohDvHrqcANf/NgU5DC4WBrgNFcEfShtnNkgckEM=;
        b=nss4RwFVwzvuWM0X5o1dwSqXjcn+zAwz/ZaQTadVtCr+VZrJE5UmYMy3hn9uT8scrU
         ujuaNGaAi2R78mH3Bgx7QB/tdvoDghmPl/QfQdE8mE5SGFrIBlu7SQU2wp5QIx2QkFdx
         sOzjIDcwbW863Aidvrtqhhrh6VLK3JCAQ0+MEzl/0Ih9b/48lIE6HlYlO+90czl2G5YL
         48q/GOH9acLpPF27unK9d4vMsLb8pGmLkZU7gFjB3T9d1vQIy3EysR+i/gm4MqQnhcyg
         FVU6Kgf6E6ZBGY7A03wAjfZyhNM4g/KS3oop/3/iIICW9jv0BSJbkkPxkAPCZc5+bIpM
         QU2g==
X-Gm-Message-State: AFqh2kovIdZ/VKRFDkP7fmXUsZyTfiG4ESCgkipB81pvOAJu2kE1eG27
        eQTwVSl7L/o7x/4dA2WqNeEUlIXzImJIAV+CfKFJxObSr6vkTZkUqfAxK2wcC6LKgXIwsKifiEk
        LWr+JeyDtF3pgI5eUaZUQvg==
X-Received: by 2002:a5d:53cd:0:b0:261:d8be:3047 with SMTP id a13-20020a5d53cd000000b00261d8be3047mr12086638wrw.3.1672062560710;
        Mon, 26 Dec 2022 05:49:20 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtsZFk+AKv2denQ6Lk8VrO7aAH7Y5BneyC/FpbtIetK0t17olrLdqcrM70WD3U/nREM6lduGQ==
X-Received: by 2002:a5d:53cd:0:b0:261:d8be:3047 with SMTP id a13-20020a5d53cd000000b00261d8be3047mr12086623wrw.3.1672062560498;
        Mon, 26 Dec 2022 05:49:20 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id a18-20020adfed12000000b0027cfd9463d7sm3340947wro.110.2022.12.26.05.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 05:49:19 -0800 (PST)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Ondrej Jirman <megi@xff.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Robert Mader <robert.mader@posteo.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Martijn Braam <martijn@brixit.nl>,
        Peter Robinson <pbrobinson@gmail.com>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/4] Add PinePhone Pro display support
Date:   Mon, 26 Dec 2022 14:49:04 +0100
Message-Id: <20221226134909.2822179-1-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series add support for the display present in the PinePhone Pro.

Patch #1 adds a driver for panels using the Himax HX8394 panel controller,
such as the HSD060BHW4 720x1440 TFT LCD panel present in the PinePhone Pro.

Patch #2 adds a devicetree binding schema for this driver and patch #3 adds
an entry for the driver in the MAINTAINERS file.

Finally patch #4 adds the needed devicetree nodes in the PinePhone Pro DTS,
to enable both the display and the touchscreen. This makes the upstream DTS
much more usable and will allow for example to enable support for the phone
in the Fedora distribution.

I only added myself as the maintainer for the driver because I don't know
if Kamil and Ondrej that worked in the driver would be interested. Please
let me know folks if you are, and I can add you too in the next revision.

This is a v2 of the patch-set that addresses issues pointed out in v1:

https://lore.kernel.org/all/20221222223830.2494900-1-javierm@redhat.com/T/#m692655a06093fe8df0d8748b3df338e57494af2a

The patches were tested on a PinePhone Pro Explorer Edition using a Fedora
37 Workstation image.

Best regards,
Javier

Changes in v2:
- Add year to driver's copyright notice (Sam Ravnborg)
- Remove unused <video/display_timing.h> header include (Sam Ravnborg).
- Use mipi_dsi_dcs_write_seq() helper and drop custom macro (Sam Ravnborg).
- Drop unnecessary info messages and move useful one to debug (Sam Ravnborg).
- Drop redundant "bindings" in subject (Krzysztof Kozlowski).
- Drop "device tree bindings" in title (Krzysztof Kozlowski).
- Put port next to other "true" properties (Krzysztof Kozlowski).
- Add Krzysztof Kozlowski's Reviewed-by tag.
- Fix regulator node names (Maya Matuszczyk).
- Drop non-existent "poweroff-in-suspend" property (Maya Matuszczyk).
- Remove unnecessary comments in panel node (Maya Matuszczyk).

Javier Martinez Canillas (2):
  dt-bindings: display: Add Himax HX8394 panel controller
  MAINTAINERS: Add entry for Himax HX8394 panel controller driver

Kamil Trzciński (1):
  drm: panel: Add Himax HX8394 panel controller driver

Ondrej Jirman (1):
  arm64: dts: rk3399-pinephone-pro: Add internal display support

 .../bindings/display/panel/himax,hx8394.yaml  |  65 +++
 MAINTAINERS                                   |   7 +
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 123 +++++
 drivers/gpu/drm/panel/Kconfig                 |  12 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-himax-hx8394.c    | 446 ++++++++++++++++++
 6 files changed, 654 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx8394.c

-- 
2.38.1

