Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33AA1508488
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 11:10:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377040AbiDTJNN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 05:13:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377046AbiDTJNM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 05:13:12 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 726BF2AC7F
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 02:10:26 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id z99so1425416ede.5
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 02:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=CW7ss/SfIduEfosB0bJE6aZJ+mUWxaKEHg5jy2t+LL0=;
        b=nbfRX9jYhWBbKHxqEzKD/L2tUdHsjXi08CkbX3BwKY6LyTkYjApwgVONqzUDfi6FQs
         xgB8pSAi30b7y/G34qKGviIYrtQAGOspXJguVdVZavBzxNu8kmEnty3VBGkyb/bE6/R4
         UkpvuppvrK3hA4YCvoQY6LNaF5paELjpv6Tl/mpJpC1T1dtMQrNO7dhjl+wpWYXKamoq
         E8hpAfLyL2Ffmsk4K9ob9H4gp0knJTgjSQOFkpQ6L1flBwMFNBfk0Ut3KJze0q1OWGbm
         aNP9KenU3XTQnzCgLBY0QHOWlUNoIdWnDEijnJd7kUaElJ590HBseIcraLXEyaxqlif9
         NpWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CW7ss/SfIduEfosB0bJE6aZJ+mUWxaKEHg5jy2t+LL0=;
        b=r+8IkwqNbw7dB6i/zUHMQ4Wg9hXVfYlDF4nLHb6N2M4Uyc/ty24zX8RaeRtpc+lalG
         qpTLD73EkSgXGVQBdGUALgL8s0j4o5jfkM7FOnmB6Wu3UMJH0woZdvYKDp/9dYfKF7Q/
         Iu0+xKUdMaOETCNOzr1EP6kgJobdbmC4qNVlkzGofCVZzG7OWbuYWDNg6QP1N0OHTlCX
         4M4jT8udljAR4OXHq+BFlyiqg3D6h9HUBE8KCGv6vbnKapEYg1nabD6YlY6vkB+T/ZA5
         WxJicXp+XLpCjc6YW1d84pZyeIZVjAsq4R2OF94z1xTeoP3qwGsjzCE4ns8+t3SC0c9I
         +V/g==
X-Gm-Message-State: AOAM532tdnG3DvVp4mMVd46vMyNECJdaYs9+csWgMq7o9pQkJF1JigU6
        JinIaRMQE24KCBoehq9qC9hH/A==
X-Google-Smtp-Source: ABdhPJwcCzesZSaAEqQinHvzpf+j5DC/nCnw50/23JlU7UmOtoKfMpUOJAlwTajn7V9XTLr/UdMJMA==
X-Received: by 2002:a05:6402:3318:b0:41d:893e:4d6 with SMTP id e24-20020a056402331800b0041d893e04d6mr21866356eda.225.1650445824763;
        Wed, 20 Apr 2022 02:10:24 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r3-20020aa7d583000000b00420a8b66566sm9727057edq.97.2022.04.20.02.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 02:10:23 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        devicetree@vger.kernel.org,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        UNGLinuxDriver@microchip.com
Subject: Re: (subset) [PATCH 2/2] arm64: dts: microchip: align SPI NOR node name with dtschema
Date:   Wed, 20 Apr 2022 11:10:14 +0200
Message-Id: <165044570802.75184.311784035555489676.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407143223.295344-2-krzysztof.kozlowski@linaro.org>
References: <20220407143223.295344-1-krzysztof.kozlowski@linaro.org> <20220407143223.295344-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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

On Thu, 7 Apr 2022 16:32:23 +0200, Krzysztof Kozlowski wrote:
> The node names should be generic and SPI NOR dtschema expects "flash".
> 
> 

Looks like no one wants to take this, so let me take care of it.

Applied, thanks!

[2/2] arm64: dts: microchip: align SPI NOR node name with dtschema
      commit: b5ff234ffa602bea7f7409dea427596fbe72561c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
