Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E38586694D9
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 11:54:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241480AbjAMKyt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 05:54:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbjAMKxg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 05:53:36 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B066377ACA
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 02:51:52 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id qk9so51421866ejc.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 02:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L5ppnIDMo0EKEQ5x8wu9TLbI/U/h2/1RVK4E+dW/ATs=;
        b=HODng3khsUvrnBijSa71wwVYWOC5vPVUbezxvmcDrrrmGUR3/EJItm7mXDLe8Qo3xi
         uuB3yPi/DWmphGtrS9whx0gEneUfpjmAa4mYxvsrOrW5GfpK5ZzQ7BKCJCkF4zoGJtfN
         ZB4iBmh7H5+JDOc2z7CmEmW6Y5ceOs+kp4RTXWnO2chTLOzZQqJwGzqdU8hhV2Td/wbP
         8Jektm4ALD5C0uwnpG/Wnu1KOSUqwZe7q3e8IiGYnBVx1kzThlFcef+yuAaGsP67KVbB
         ABWE4O8kicC/Bd/+qUhM5j7h4L7BruBW/8C7Dg6t2pg+6FALiqWPAtbh2ImwHLxDe37g
         3qbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L5ppnIDMo0EKEQ5x8wu9TLbI/U/h2/1RVK4E+dW/ATs=;
        b=BGQSJOPP2mTmNcnE+B9uQlgSAdmIqc3nfBQYeBON2Fi9SIuniVLWSpem3q0EkS+47g
         OFEbHup1gxKsrcKPLCI/UcNwyLtfqj8fytb2aEBhy5Meeua22jaRLRkhjV0ICyPMmkHE
         xXNHd6sLQmneARTM1VW8TH62AhpdFF9M9nN1hDiT1F0iGIxQuwanOvXurgknwZ6fJh5I
         FujO0JNaE2Q4SlFAHnfsZJYbSOWHTpyi114AFYGSAcBBJ+Z6zQeiKGhBa2GZ52ZJgz1v
         CK+gWtHnY/9f3A2LU6ikyJziX0tE0DyXoLry/WmpE02VNJ3M3nW7hitC2JnPOn8cf2Fp
         APWQ==
X-Gm-Message-State: AFqh2kou75TRQYC6tOrD6GHQRXvuWAzoTZ707vFe+pdWNnPp8NQCLHD1
        xoEiEO0iJua7Q69Yv/PP05R3nQ==
X-Google-Smtp-Source: AMrXdXvQYrsj/6FZbtm1vlc9fQ7Y74YNxw0DhodO0eqpTfuV44BI3ujTzR8Vh3yg9P1WrYvyIHO5pA==
X-Received: by 2002:a17:907:3ad8:b0:85d:3771:18b7 with SMTP id fi24-20020a1709073ad800b0085d377118b7mr8265849ejc.70.1673607111238;
        Fri, 13 Jan 2023 02:51:51 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u1-20020a1709061da100b0086b7ffb3b92sm146352ejh.205.2023.01.13.02.51.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 02:51:50 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, Nishanth Menon <nm@ti.com>,
        linux-kernel@vger.kernel.org,
        Santosh Shilimkar <ssantosh@kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: keystone: align LED node names with dtschema
Date:   Fri, 13 Jan 2023 11:51:40 +0100
Message-Id: <167360709872.32944.1314408179053256075.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221125144123.477005-1-krzysztof.kozlowski@linaro.org>
References: <20221125144123.477005-1-krzysztof.kozlowski@linaro.org>
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

On Fri, 25 Nov 2022 15:41:23 +0100, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern:
> 
>   keystone-k2hk-evm.dtb: leds: 'debug1_1', 'debug1_2', 'debug2', 'debug3' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
> 
> 

Applied, thanks!

[1/1] ARM: dts: keystone: align LED node names with dtschema
      https://git.kernel.org/krzk/linux-dt/c/e2bb8c4f8ceff39620093596426ed1143326362e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
