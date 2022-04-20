Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6736D508486
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 11:10:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377020AbiDTJNK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 05:13:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346543AbiDTJNJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 05:13:09 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3D9F2A26E
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 02:10:23 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id r13so2175526ejd.5
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 02:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=jJsxXV8EMMhthRc3vB8IfBBVtPfucIwecsNFn+e8HbE=;
        b=ZJMGtco/H9XPuW2SE4ktBATyGVY/N+aP1nFYKbziT8wGZGBVAnWk749IhbRXRgl5yW
         qBY8zfG9oZtKzN6Rp5jaUAVd2VZ+YIEbYzdbUcP4Oz4qaCdbmjppy38zs+tIumAEEIzB
         4t/0uUa9d0DW+4Eia1hD04owbrh5J/xWcdsg6nLHp3ZZZ97nVWc1SjUL002MAjaG9mbw
         szvrKsy1WIqtm+MJkX5ko3OJxgfBhVvryKOy0YWFwvlM/HNWamSzIpljjGWWtdyZvBVF
         R8A/Wwc+Bs+TTam0U2XmeF8ceTOHq3gCdw4dE4l2yfn5j8XMCmfXJfLZqgqivITG44NA
         yL1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jJsxXV8EMMhthRc3vB8IfBBVtPfucIwecsNFn+e8HbE=;
        b=D/gXKzIJ6xv0/Anzp8xKHfadcIzRMO2FXeERsU0T/7IstoX4SNWOQzHt9hynVY/8jt
         QtLa0Kxej2H2JF/prIBzYxh89exWFN6W3OeZ4QWPZTOzqvy35338mF7lHG1Igb6pegwH
         q32J4geNKFD6TTx1glb/SyK4pRDBUQqQMkyMHQkzweRQH0p1j4WG/WdA6btBYNEZlzas
         85XlJt4ybntxqHgL/WMV89dnXkSYD+MnsgezZRDB8IovSJL9sGlHWuh/VEaa1QRDCbBc
         SK3Mk6R9NZVlI3Ng/3EclDNmo2/OybaFmJzZtqjdzhH0Onvozk3ndI0g2fY1PuCOuYeB
         7UCg==
X-Gm-Message-State: AOAM530Wz1Z/H35EkOG51TM7Ery3Ir/Eiyyed9TCXunZ6G5WrzFu9k1d
        6Gg70q2iZt2dXxFCxvtRJVlClg==
X-Google-Smtp-Source: ABdhPJxFcMytroUnW++2h6HEflko848F6MeBqWaGooGJAcQB4r9SyVe5rLHNDiEaEAeAD29JfXsPqg==
X-Received: by 2002:a17:906:730c:b0:6f0:f69:b2e with SMTP id di12-20020a170906730c00b006f00f690b2emr77312ejc.276.1650445822302;
        Wed, 20 Apr 2022 02:10:22 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r3-20020aa7d583000000b00420a8b66566sm9727057edq.97.2022.04.20.02.10.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 02:10:21 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Luka Perkov <luka.perkov@sartura.hr>, Andrew Lunn <andrew@lunn.ch>,
        Russell King <linux@armlinux.org.uk>,
        devicetree@vger.kernel.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vladimir Vid <vladimir.vid@sartura.hr>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Luka Kovacic <luka.kovacic@sartura.hr>
Subject: Re: [PATCH 1/2] ARM: dts: marvell: align SPI NOR node name with dtschema
Date:   Wed, 20 Apr 2022 11:10:13 +0200
Message-Id: <165044570802.75184.1383491192018211849.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407143234.295426-1-krzysztof.kozlowski@linaro.org>
References: <20220407143234.295426-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 7 Apr 2022 16:32:33 +0200, Krzysztof Kozlowski wrote:
> The node names should be generic and SPI NOR dtschema expects "flash".
> 
> 

Looks like no one wants to take this, so let me take care of it.

Applied, thanks!

[1/2] ARM: dts: marvell: align SPI NOR node name with dtschema
      commit: 9cc510ff788ce2f93e45c64767a8215363735a2e
[2/2] arm64: dts: marvell: align SPI NOR node name with dtschema
      commit: 456e580bf08fd9a0f499ad64fbe1a2b6e89add0d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
