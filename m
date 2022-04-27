Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2212B511D03
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:34:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242420AbiD0QSF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 12:18:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243760AbiD0QPX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 12:15:23 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E14B3ECCBE
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:11:41 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id d6so2512231ede.8
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 09:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FHQXh9gRHSuCtKpw4S8gNEXf40YtVi/37N45wueEtCE=;
        b=whQlgOgZ1T4nh5vFwqRU4TA9h4eZzMhFhfvjD1KFTbysCz1xTn36hj8mp0McdsPks0
         hfh6AymX7rYfW6UPr06z0ltHndyGPdP2oMwtiqrhFyYt6Kp7xDItzu1cCiLUK9wXmMSi
         KB17ptN8Yagim/pv3z0Qd5PP/3XfuXvfO2znNw4Gq0l5gZTHLsiKAvbUZ8Myr71028Jr
         1ReMRE/IZsMmJqBGrFZnWzIeLdyybOmS6ZtjJWsyGsin41kMW35dKxzqELef5NQVbGqe
         MZYYlw0zdvbglPcQxzqEjR9/73RCe3Z2N5Ytp0mOeFE6NacKQLdIxyHTPdXz1wcg47/l
         pzsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FHQXh9gRHSuCtKpw4S8gNEXf40YtVi/37N45wueEtCE=;
        b=MNWw9VlQzaDQey6SxZpvdJc+YRR8a1X/V6+YyqjFLr1RL6DPMyohjIGWxbnIRNUU+D
         iLpcEqMgC5TXNIZ3Tk79akeP6LOGu1GHJ3q45+QU0AoFqAc+xfzAE112oprkokdu1YdM
         O5M38dWjNeC/wuPBDmeOpHP6HMVVKWGuZZlAUQw0xw+GAa4g+PTBUfjLHTos9psKIy4h
         mqLEN/SYEPbZuFGn4xmjgj/uThKT8shaTA/Efd2vH5rCpcRIa0F8dTDr23vl+fbGiYBi
         hmoWvIUY33aFRyBK4yBgTaI7DNqht5Kaid2awWK/chUc0VEI4/FrR1vTaBndk+l/x786
         K6Ig==
X-Gm-Message-State: AOAM531qYY978Ggj6tCEbGlSEkwcb18xwa5vZbOKynFqVSQoXr/SMMmz
        jWr74rh6b34uUYV3TD7pYtV+zw==
X-Google-Smtp-Source: ABdhPJy/QgE4GcAklbebq4FtmcUymveQXY2Wss5nt06fNQ1+geuX8b6wnTlKKIZ0cRgMRpDbpMGaEQ==
X-Received: by 2002:aa7:c70f:0:b0:425:f70d:b34 with SMTP id i15-20020aa7c70f000000b00425f70d0b34mr12765572edq.306.1651075899438;
        Wed, 27 Apr 2022 09:11:39 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id m1-20020a170906234100b006ef83025804sm7124610eja.87.2022.04.27.09.11.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 09:11:37 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Vinod Koul <vkoul@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        dmaengine@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/6] dmaengine/ARM: use proper 'dma-channels/requests' properties
Date:   Wed, 27 Apr 2022 18:11:20 +0200
Message-Id: <20220427161126.647073-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
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

The core DT schema defines generic 'dma-channels' and 'dma-requests'
properties, so in preparation to moving bindings to DT schema, convert
existing users of '#dma-channels' and '#dma-requests' to the generic
variant.

Not tested on hardware.

IMPORTANT
=========
The patchset is not bisectable! The DTS patches should be applied a
release *after* driver change is accepted.

Changes since v1
================
1. Add missing TI patches.

See also:
[1] https://lore.kernel.org/linux-devicetree/fedb56be-f275-aabb-cdf5-dbd394b8a7bd@linaro.org/T/#m6235f451045c337d70a62dc65eab9a716618550b

Best regards,
Krzysztof
