Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D0FC70541D
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231417AbjEPQjj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:39:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231367AbjEPQji (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:39:38 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA9A61BE
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:39:35 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-50bc25f0c7dso25795301a12.3
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684255174; x=1686847174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uOM20EGk7AlmC5TCcOVS+yNa72rwuod180bFASy7ans=;
        b=Z1NwInT7zQxfL8ZjnN+F/Sv5VtlLvyr5PspgmxVQBS+X7kjhUuVkb+p8xEqnf6izRC
         /3pdTJUf6FGjAE8QdwGqfoUnqk9zgcTilzuplU1+4yoZA8Om9V+JhzMywSBPgrmN0kaQ
         hIKnQXOZQ226bh6K+XPCNBWYi6qu2T1TZVxGDpgprO3iffG8Y2+V3hMKNZqfn1xnJ6JZ
         e/zZ2Nl/f1Cq9kN9FCWNEaL5jNYNrKWXNRYSmE3MiYCdKVFNnCtgI6cTFMsyQ48R9PZf
         Zzk7/OxRQ3FpGi5WcerU2E2j3v7yorKLJd0FJveBzV5ERBCyx3PIvBE2zpQqSU2mpeMv
         B2gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684255174; x=1686847174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uOM20EGk7AlmC5TCcOVS+yNa72rwuod180bFASy7ans=;
        b=YAlN195q3+GSmdK6W5itNt/Z8e6c25cqh4TC1T9fwqHcbInybH/be6rav947WeIiJl
         uGTaxWGVbarz9V/KAO8WBHbOr1uv35RqqCapbcKzFwh89Eq26keabAJx0fRYX6AkBiqW
         4nLv8prpGRr6HmVtyCUWd0n/VYkU6d9IKvGU/ivP9dGqr3xRw/4idpvrzaNTVhKJQ8Mk
         Rw3yk5lWLhK5BysYznh3o5G1hLVLs00P+efDtkqh0Ivzcm0XgBXckzu/9ETFjXp1fFXQ
         QFTI87Xk7Br8Iew0uOavDraFxn+R6ManXJhPrayQqst9zXylEFzV6noMG+EoAbmISiSB
         FpAg==
X-Gm-Message-State: AC+VfDxe3a/R3Wp2m82kxSlYihxtoenrm2HGZFzzlstdM+kGL/IDkCqF
        g+LOY2Ha93i9BeUnNjNjLQPVXQ==
X-Google-Smtp-Source: ACHHUZ79Qs8rBuLjO1ckScy5ZQXCRY+IhBdn/bb5b2ehgxG48iv2U+HO6r7EqKYdsskxswfn40vhbQ==
X-Received: by 2002:a50:fb8a:0:b0:509:d7d0:d71a with SMTP id e10-20020a50fb8a000000b00509d7d0d71amr27784307edq.26.1684255174493;
        Tue, 16 May 2023 09:39:34 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id d4-20020aa7c1c4000000b00504a356b149sm8278191edp.25.2023.05.16.09.39.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 09:39:34 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-realtek-soc@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: realtek: add missing cache properties
Date:   Tue, 16 May 2023 18:39:24 +0200
Message-Id: <168425511042.243008.5217991986993727138.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230421223151.115243-1-krzysztof.kozlowski@linaro.org>
References: <20230421223151.115243-1-krzysztof.kozlowski@linaro.org>
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


On Sat, 22 Apr 2023 00:31:50 +0200, Krzysztof Kozlowski wrote:
> As all level 2 and level 3 caches are unified, add required
> cache-unified and cache-level properties to fix warnings like:
> 
>   rtd1293-ds418j.dtb: l2-cache: 'cache-level' is a required property
>   rtd1293-ds418j.dtb: l2-cache: 'cache-unified' is a required property
> 
> 
> [...]

Applied, thanks!

Please let me know if this should go through any other tree.

[1/1] arm64: dts: realtek: add missing cache properties
      https://git.kernel.org/krzk/linux-dt/c/7a242135a44d32a6a8563fc74f11d5a100b7cf0a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
