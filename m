Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 219C757E724
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 21:16:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235400AbiGVTQA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 15:16:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231149AbiGVTQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 15:16:00 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A079101F9
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 12:15:58 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id y11so9074090lfs.6
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 12:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lDcr6lA6wTvJ7xcFBXD+24WTV1qMn/yJTavRAkd9iGE=;
        b=ilbCTarj/wnEjMbDmJxl2o954q9xKRhNUNea+2SMOboq81M/BCRCKqvsXSGxHPV57V
         SbAc0oUcrCWqqzr9eASqxwsnsmws+q0MsNSLz4sEsNko2MdraFVAiC7gOnj9oVR2SdLK
         5bg24FVpqNRAJA3hfRhtNnTX+9qMd1Swy2jcnXqzePcNeFzkaYH1DkA7yvRoZsysKt7J
         Diwl3mNT9PiIN3FbyxUdr31X10ji5CPz4cOhGH0s1467mMZ2i3b4OOG7sMMKRcMQHUk0
         W3xNGdFxYZwcel5RddsqfleFFqbJaU6ivvv9hkTp0wS7aO2JTVpthlZtqI7FePGWwZbz
         yiYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lDcr6lA6wTvJ7xcFBXD+24WTV1qMn/yJTavRAkd9iGE=;
        b=WFyEKfKIassWGSolrpYPyCfiqg+qZKRMfdhbnikRu9vMGbyjNcwfI8r8DTcGCpagsS
         WmLwe2nsyCEjh6uvRLh9Xly8NG8Boj6dkq8qLEsXjgDZTh44F1zHGdxWN65SQiUlLcav
         sIkCvCzKKzK7HPK771Gg2wMaaGtY/M0QX8uDxI6LXM0+waW6k7PTatLHfEgUyymX6SDp
         URTIjjdgiJY9o9sLisHwi2VZBuvIlZMS8lcdNlufOgII9s40TZ6bA9mGXoyGq3tUBX4W
         Pd3un4hvB5wv4Cb30yxZi5zEuJ5SOue2cultkCetQhXE66xICYd3LNPXMxq2rKzaGCit
         Wu/g==
X-Gm-Message-State: AJIora/7BQfmUXTI8nRvQ5Og0a1GnrFbqVlYWMcLaR+i/yhalgbovpaL
        TjsnTKgccxjKkyU1h1xkTiVmLQ==
X-Google-Smtp-Source: AGRyM1uljkuyb3A0AYTb0jGs5xTpnu6p3SPVNgMDaAZRVeBWKSRW0DeDhK1nbzG+uCmXUAw7q4zhxw==
X-Received: by 2002:a19:6745:0:b0:48a:76be:ef7a with SMTP id e5-20020a196745000000b0048a76beef7amr541545lfj.220.1658517356553;
        Fri, 22 Jul 2022 12:15:56 -0700 (PDT)
Received: from krzk-bin.home (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id f7-20020a0565123b0700b0047255d211d7sm287484lfv.262.2022.07.22.12.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jul 2022 12:15:56 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Marek Belisko <marek@goldelico.com>,
        "H. Nikolaus Schaller" <hns@goldelico.com>,
        Pratyush Yadav <p.yadav@ti.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/1] dt-bindings: spi/display/panel: drop SPI CPHA and CPOL
Date:   Fri, 22 Jul 2022 21:15:38 +0200
Message-Id: <20220722191539.90641-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Rebased on Linus' master

Changes since v1
================
1. Rework patchset as Rob suggested, so there is only one patch - changing spi
   and display/panel.
v1: https://lore.kernel.org/all/20220721153155.245336-2-krzysztof.kozlowski@linaro.org/

Merging
=======
I guess via DT or SPI tree. I don't expect conflicts with display/panel tree
(at least nothing visible now in linux-next).

Description
===========
The spi-cpha and spi-cpol properties are device specific and should be
accepted only if device really needs them.  Inspired by [1].

[1] https://lore.kernel.org/all/20220718220012.GA3625497-robh@kernel.org/

Best regards,
Krzysztof

Krzysztof Kozlowski (1):
  spi/panel: dt-bindings: drop CPHA and CPOL from common properties

 .../bindings/display/panel/lgphilips,lb035q02.yaml    |  3 +++
 .../bindings/display/panel/samsung,ld9040.yaml        |  3 +++
 .../bindings/display/panel/sitronix,st7789v.yaml      |  3 +++
 .../devicetree/bindings/display/panel/tpo,td.yaml     |  3 +++
 .../devicetree/bindings/spi/spi-controller.yaml       | 11 +++++++++++
 .../devicetree/bindings/spi/spi-peripheral-props.yaml | 10 ----------
 6 files changed, 23 insertions(+), 10 deletions(-)

-- 
2.34.1

