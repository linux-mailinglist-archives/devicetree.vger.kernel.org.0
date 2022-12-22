Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E310F65489C
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 23:39:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235762AbiLVWjc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 17:39:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230324AbiLVWjb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 17:39:31 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAA8220340
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 14:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1671748723;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=TE23DSdNWuSZ0vKWHoTlUXd7XsU2QKplwAo6+35hXVY=;
        b=e+64sIAHPWsK7naYsrLLHD+nbzB5DWS2V1/rT0r8LLNR0fBYayBty8pzgIYZauDlnaLeTX
        xMIljlEdT5bT9nD1sHUZXLGAS1lnUvB0n7ZASuw/ZISGTbr/wCv4elBQiqR9RsYgsHnmHK
        /8VCglt8FblQHpJS20mugiiJ7Q/SUeg=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-530-NQYT5jAbNpOpQZkE12cCNw-1; Thu, 22 Dec 2022 17:38:42 -0500
X-MC-Unique: NQYT5jAbNpOpQZkE12cCNw-1
Received: by mail-wm1-f71.google.com with SMTP id c7-20020a1c3507000000b003d355c13ba8so1365334wma.6
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 14:38:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TE23DSdNWuSZ0vKWHoTlUXd7XsU2QKplwAo6+35hXVY=;
        b=mGLaIYTNOXP6j84GBHUmSyjL37LhFl9MEzOYM4Ksko25GeBnyGTnYPPqv9S33TwG3U
         aHpx3z4MrO57XQ5bW8BIUaC1oIdG94h4baXciaSTp/IIrdgAWTmvWwJb+I5BN3kHr2hr
         jWaur37w42rtN91mFmNR8JF7PYuCra9vf0fnulYYbJOBsAZg5jQIQEc/FQoaKemsG4A5
         ycqYJiQw9L9yq4iUGMzhwuF2z92RJ1yMg9YBORMFDvTiHsymxZig5LzgeJxqVCjf/etO
         6+fBdPHzBbg9ZJO1Iut6qmehHgbstgaqVEnNFkeoB2wYF2B7mkhxFE/8nfXuWR+LLik8
         x8iw==
X-Gm-Message-State: AFqh2koIMfgSdnJ6e8AC05o7Eoyl2Ehl1xLgOWP0+AvdsCisJoK8fjhh
        Yu2gEWy/FDmFrsmKOfE+aSH+7Vieuw88UeoCSwv8s8jaYqiB9ejpcMDmqSC2cMFxUZYx+X+ESGV
        fBHpf1bFm224PvARlcIXm6A==
X-Received: by 2002:a05:600c:1ca5:b0:3d1:d746:7bca with SMTP id k37-20020a05600c1ca500b003d1d7467bcamr5584849wms.4.1671748721374;
        Thu, 22 Dec 2022 14:38:41 -0800 (PST)
X-Google-Smtp-Source: AMrXdXt17D6lN1ULKnX6zKVXMwfCh9S42fx9uklw7XxdwaE+3NeI3tkubhfYDOtnhDoxlw6v3WzhTQ==
X-Received: by 2002:a05:600c:1ca5:b0:3d1:d746:7bca with SMTP id k37-20020a05600c1ca500b003d1d7467bcamr5584825wms.4.1671748721075;
        Thu, 22 Dec 2022 14:38:41 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n25-20020a7bc5d9000000b003d969a595fbsm2386239wmk.10.2022.12.22.14.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 14:38:40 -0800 (PST)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Ondrej Jirman <megi@xff.cz>, Robert Mader <robert.mader@posteo.de>,
        Peter Robinson <pbrobinson@gmail.com>,
        =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
        Martijn Braam <martijn@brixit.nl>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Caleb Connolly <kc@postmarketos.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH 0/4] Add PinePhone Pro display support
Date:   Thu, 22 Dec 2022 23:38:26 +0100
Message-Id: <20221222223830.2494900-1-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
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

The patches were tested on a PinePhone Pro Explorer Edition using a Fedora
37 Workstation image.

Best regards,
Javier


Javier Martinez Canillas (2):
  dt-bindings: display: Add Himax HX8394 panel controller bindings
  MAINTAINERS: Add entry for Himax HX8394 panel controller driver

Kamil Trzciński (1):
  drm: panel: Add Himax HX8394 panel controller driver

Ondrej Jirman (1):
  arm64: dts: rk3399-pinephone-pro: Add internal display support

 .../bindings/display/panel/himax,hx8394.yaml  |  68 +++
 MAINTAINERS                                   |   7 +
 .../dts/rockchip/rk3399-pinephone-pro.dts     | 124 +++++
 drivers/gpu/drm/panel/Kconfig                 |  12 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-himax-hx8394.c    | 460 ++++++++++++++++++
 6 files changed, 672 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx8394.c

-- 
2.38.1

