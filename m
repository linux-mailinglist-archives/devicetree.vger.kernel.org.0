Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 821D27067FC
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 14:23:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231613AbjEQMXt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 08:23:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231607AbjEQMXs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 08:23:48 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F7433C03
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 05:23:47 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-510dabb3989so212792a12.0
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 05:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684326225; x=1686918225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DEO+0iTUatSYrLI2WqevrbZXGB49MIWxXMqdVzHZ4OY=;
        b=u6oqUXjTJqHvMKGK83jgVhT4ZKgK5eM57JHO3kyRPiZqDxpddNbSzkiFtcMpA7nwH/
         jbH00Wdd31EllnHTGnSQAt/tlbbWGzoT1fjLoKoHQXmZmubAplxF+pZGYPP0zt3tDQFe
         AOBmK9/dqYBPdseQV5c6HohSsmaxeM1svYu4lqiGQ3erVuHpxa9Pyo5yMp07jwIb8yUd
         jq0N0fvczqdFuwCogy5MLlhfKttXh7Mdu8lDc7ARKOy6EZuv09dAxWG0hjP/mq14irlw
         9kf0AEQKMu7BDqSWYGGycXrCUSAURdqxgd1csIa4KmGTvZmx+GOLlcOE2qOlEvNp3pHO
         5kPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684326225; x=1686918225;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DEO+0iTUatSYrLI2WqevrbZXGB49MIWxXMqdVzHZ4OY=;
        b=WlVSMip+SiXS7ptReMIAwhfdu9NxdojDhSOJc0KDE1oNEcmZdWrYb6vm4IepVLPiW4
         iuUm8fN2/UzNnvULI0rT84Ypt6ufu5KJXHjK/G6tdOPtbyLzyevfJ6BCSJ0v8Kd67Z0I
         pstvB2LxCmf3NWt0z5hBcjfFU3+NsNKu4pJo5M7rJUwC6C77JpLkAnq+gAB+kBFuTN/7
         14fC9c61RaWycYvZLTWbyg3q1w2jM3boJmPtYWki880JW2B02CbQTMmnjZv0vDqFNhxr
         vUk5FOHE/wubpwHwDF/UOqXUdDrVt9aTrOfvK9dxsayCeD9k3zbTStItDnETfal4m51e
         H74A==
X-Gm-Message-State: AC+VfDx69qsoC+e6Kr4oPBXEf8w52ceBH9WMbfCuoBSRXz9k4p/kGTY5
        L+7n1Zk77BHyqwWt87FeF96ZqA==
X-Google-Smtp-Source: ACHHUZ51m76UWW0gQZgIqmd8UnLCdojyvHKBEX5z0xH05SEhuTArFB5bcpjjlBj53m9n3ClrX7oe5A==
X-Received: by 2002:aa7:c405:0:b0:50d:1e11:eb9 with SMTP id j5-20020aa7c405000000b0050d1e110eb9mr2161460edq.1.1684326225504;
        Wed, 17 May 2023 05:23:45 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:c9ff:4c84:dd21:568d])
        by smtp.gmail.com with ESMTPSA id p3-20020aa7d303000000b0050e01a965a3sm6495480edq.5.2023.05.17.05.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 05:23:45 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lars Povlsen <lars.povlsen@microchip.com>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Michael Walle <michael@walle.cc>
Cc:     Conor Dooley <conor.dooley@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        UNGLinuxDriver@microchip.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: sparx5: rename pinctrl nodes
Date:   Wed, 17 May 2023 14:23:39 +0200
Message-Id: <168432619059.440504.14452965586095962044.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220420194600.3416282-1-michael@walle.cc>
References: <20220420194600.3416282-1-michael@walle.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 20 Apr 2022 21:46:00 +0200, Michael Walle wrote:
> The pinctrl device tree binding will be converted to YAML format. Rename
> the pin nodes so they end with "-pins" to match the schema.
> 
> 

Applied, thanks!

[1/1] arm64: dts: sparx5: rename pinctrl nodes
      https://git.kernel.org/krzk/linux-dt/c/d5e64404e77c19ec5bd687b34a11eec0263f1aa8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
