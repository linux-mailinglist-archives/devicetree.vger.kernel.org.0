Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAF6555471B
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:11:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244742AbiFVKOw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 06:14:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235630AbiFVKOt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 06:14:49 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7266A3AA56
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 03:14:48 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id m32-20020a05600c3b2000b0039756bb41f2so8655444wms.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 03:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GVGI728rV0ZlRWovIbavmx1jiCPdP4ulmg/ao4WGVQI=;
        b=yoiHxxi5Fr39G7nZrf1FVVgYDNTvIwZpMJLS+6LkGjtzOAHa52SoGoig5UatCG/WTK
         WXVfxU968FGk6TWEYWrDy7thi3ufeC9SL20xOaupG3Rn9Zouk0rhJ9Mt+OwkFzvLymap
         MDFLITscxmWMvMFWXc8+aUx+i6uU6AWnDQP/WDoPYW4aGadGnMjowqREx31PLALojP+W
         bNYEmzDzeUmqLzGlcvp7VGjZyXUtuoW4SqE3X1C+sdWxxX0IAmNSobDJ/Jb4IQUR7fMJ
         gCDbxw+fT7sMu+lnGjNptk/4Eiq3rWtKU3zV175CjeJmSpiz7PEQkzSOYZxK7daINu61
         oIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GVGI728rV0ZlRWovIbavmx1jiCPdP4ulmg/ao4WGVQI=;
        b=x4G/CRlecAaceE2kUhfv/g0LT7X6/dTauC/+5JIB7PjNaOuq/673y5Dzdm7uIMLVpu
         xldT82TyCcz/9o01iSd+Ve2NY/2bVxVf1ylO17ydveJ8whffkRCJUe92M9aadQ13CkrN
         1B3WvRSGkWlbDWxkPsuAhfiXj5MK/Jpr+k5Sl2eq6DK1eSCVUr68jsDgbluAaxtf8lxn
         zVZ2CemqgqZ7whEPniTXrCnUuDGoCjp/58m570qJFqC0nIKoO5z/0sWfgcrkZC92rjsh
         7s0ufhndUlPXeu3kzAzFR5cHh5+UguGUyHUkISHhXEBWPJp2FlpDjmmBVxIMDkk5476+
         JwKw==
X-Gm-Message-State: AJIora9M5xoxEPR4R9pVDq6ompbaaHZIPoeHGdk/MDME0bajXMPEcuR/
        qFtvBQHoh0o5AMajhngu5YSb1Q==
X-Google-Smtp-Source: AGRyM1uWZMKFzyzyVi3Mcy3CPedN1dz613U3U0JixHOgaUFg8RD7jRt6Bu0VCBWdyY2qNmAVJTIYcA==
X-Received: by 2002:a1c:4e15:0:b0:3a0:1990:afeb with SMTP id g21-20020a1c4e15000000b003a01990afebmr13313618wmh.137.1655892887112;
        Wed, 22 Jun 2022 03:14:47 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w5-20020a05600018c500b00210320d9fbfsm22184549wrq.18.2022.06.22.03.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 03:14:46 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     chen.kenyy@inventec.com, devicetree@vger.kernel.org,
        Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
        joel@jms.id.au, robh+dt@kernel.org, krzysztof.kozlowski@linaro.org,
        steven_lee@aspeedtech.com, andrew@aj.id.au,
        linux-aspeed@lists.ozlabs.org,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     David_Wang6097@jabil.com
Subject: Re: (subset) [PATCH 2/7] dt-bindings: arm: aspeed: document board compatibles
Date:   Wed, 22 Jun 2022 12:14:44 +0200
Message-Id: <165589284658.28441.1588047978357747292.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220529104928.79636-2-krzysztof.kozlowski@linaro.org>
References: <20220529104928.79636-1-krzysztof.kozlowski@linaro.org> <20220529104928.79636-2-krzysztof.kozlowski@linaro.org>
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

On Sun, 29 May 2022 12:49:23 +0200, Krzysztof Kozlowski wrote:
> Document all compatibles used in existing upstreamed Aspeed AST2400,
> AST2500 and AST2600 based boards.
> 
> 

Applied, thanks!

[2/7] dt-bindings: arm: aspeed: document board compatibles
      https://git.kernel.org/krzk/linux-dt/c/ae8980247d5af8528145713e07f1338abc57a00d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
