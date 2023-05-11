Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8C826FF1BE
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 14:44:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236695AbjEKMoE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 08:44:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237548AbjEKMoC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 08:44:02 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C55F54C20
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 05:44:00 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-50bd37ca954so79052748a12.0
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 05:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683809039; x=1686401039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PdfQGMlpeoCbkZvcv6OWcFiX2es4qTzJGp0AOHUXJmo=;
        b=grWIT6g50txZ7coCIaDGI2Psetgs88kWDSl/E/p6y38+eQ1e+3rF9++NyzTATp76rW
         T1891vrrzmmRyikcP7LBvuZtTvoAqp+lWW9gijjDGE2NreTSd4e0rBOH+Igq2kVgftPL
         aH9o/dK77YBchBJKeMA80P9dVmIkilyHbwuc3OiNm4npyEhSXmyuqzDoX4duXsAc5uwV
         9g9ABW6ZdIC/hgHxFfmj3AQvsVrojvGGxcZxK9XoZDyql2AlmIb4+300gLPlTMGAoGGs
         xtUmr1Fw8wEImYSoeHoSyq6VikfNFEaGoaq/bPAKKOA5+V44r5oF+FGpyrDwBv3n6+ur
         rttA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683809039; x=1686401039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PdfQGMlpeoCbkZvcv6OWcFiX2es4qTzJGp0AOHUXJmo=;
        b=kDBBW4ZV4wFY7ygUY/ecOjI+DwfS7M4wufyIJPFPI/z90k0nN6H3RtKi97bUCHUNmt
         pnECsWUkBGhYWZYimyYPPOF1P778gpTtc7nRQZDqTv/xC908rBgd9JCUZBMZct4tG1jQ
         RRO80cSgyJ70lLfEJxrUXxLzH2bVDmODehKMBRoCwsLeu+Wav7fNiOp1m3GdKAem0dGr
         q7NnBeFDSJlP3uR5gjr0uTWG9za0Bnagv/YbDFLiAj8h6537Vvh1XaYQ9rLMK75fekyq
         ekUYNdvWRapPuZpn90mta2P5f8ixOif6zddyZeU2dhHq9Ch/NPyD7zKah7aIcjt0+5jn
         vEPw==
X-Gm-Message-State: AC+VfDx0MnlZMAXHHLIOSOyVetyoXEAbSMiU3IahacFz8SF0ipclMJBn
        uNhpm9ukAf36EFl7PFXgqB6oEg==
X-Google-Smtp-Source: ACHHUZ6qKAnCJZCQBEaCrFhFG4CCkLG66pgdtTElF/udXUIxo92lQeLIN7BSMnJ+7xrwL/M6JH1tDA==
X-Received: by 2002:a17:907:3f22:b0:96a:2b4:eb69 with SMTP id hq34-20020a1709073f2200b0096a02b4eb69mr7680215ejc.31.1683809039260;
        Thu, 11 May 2023 05:43:59 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:41e7:1b68:d38e:1348])
        by smtp.gmail.com with ESMTPSA id t27-20020a170906269b00b0096616aef7e5sm4073675ejc.149.2023.05.11.05.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 05:43:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] ARM: dts: ste: align UART node name with bindings
Date:   Thu, 11 May 2023 14:43:54 +0200
Message-Id: <168380903252.184807.5434491458801772510.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123151519.369158-1-krzysztof.kozlowski@linaro.org>
References: <20230123151519.369158-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 23 Jan 2023 16:15:18 +0100, Krzysztof Kozlowski wrote:
> Bindings expect UART/serial node names to be "serial".
> 
> 

Applied, thanks!

[1/1] ARM: dts: ste: align UART node name with bindings
      https://git.kernel.org/krzk/linux-dt/c/cc386f5c670d58fbc41dc7ee8f2281aa74b58f9e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
