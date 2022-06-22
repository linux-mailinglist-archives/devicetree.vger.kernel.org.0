Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20FB85547B8
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:12:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230270AbiFVKSs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 06:18:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240007AbiFVKSC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 06:18:02 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB8323AA7F
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 03:17:44 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id fd6so20434264edb.5
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 03:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DQPzhLkCcJI8ldGFjIADNQSWV6EO/+ffmPDrz1yeX30=;
        b=PGx+Ahz12NaRmeCr+O6B3+4SkuZekFVrMgWXLrvClujp6p4uz6e5KJLpNskB7H9VTI
         Mr2vRO9JMOba7JS2RgS+aoRDrU0OKkiaK6VOTFdUzI8bXlkc+a72jpJu2DnEqdTzQONi
         uddKlIavldLx/OPlnYNXtJU35UIs2kMECZYhJsEAO3AGgc+RfSCQ5ccsl8vz5ZEMk2Ws
         CiAtNIwM5Z+LoaBMRL6noPvJsWaq3hjl6XOFDwEyssECJlA17SjtRXzz85I1okmRH+mT
         k7UItd/agz3gkBZsygAWGeirEdxjhU4AOFSQ7GgcZVrkcz0m18Xiqk8CVMSLV6muI1g4
         /mmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DQPzhLkCcJI8ldGFjIADNQSWV6EO/+ffmPDrz1yeX30=;
        b=P4YJrneWvL6Ex1pttEWY9zeJEtS64IkH51N3uWv7/hKH7cK01/acWbxryDqibbnYi9
         kPVAP7VWJGURBAOLDEcEhd9TQygh8ri7puUPGimNDxta2tuCOxWx2+CD47jPruf1MTdA
         aNMd7EKJGKCdgv7ayM9VgHeBBfqgX9KMCvVpis3QsGHOhOP5f520i9pefgjLMsfzol0g
         KMs5xjWFnrY9onERfOKCebyeOX3Rra9D64h8dAk/2YyGgxgpyVT8EZY1KQcTkNE18sXc
         WpnyyBKnr2/JTWcf4wLNvAhf7GhLo3GtsX4IyUrf8XDc3QLt5taPDpWgLkYoE34LbHHJ
         MrJg==
X-Gm-Message-State: AJIora/MYzXLCv5dsEk1A91N+OfneTRgwWwz+hJjLrR6Cnk24EE2WJOO
        yU43Kw3sHQdezd6ZrvImeJlfDg==
X-Google-Smtp-Source: AGRyM1tsEWhNXd63w2o3Kp41hvPXfubp4BEke76zLyoZkQZIYZom+EPX59smbU4/AUkHkbRmZgW3Hg==
X-Received: by 2002:a05:6402:27cc:b0:42d:de10:4b6c with SMTP id c12-20020a05640227cc00b0042dde104b6cmr3361673ede.424.1655893063381;
        Wed, 22 Jun 2022 03:17:43 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ky4-20020a170907778400b006fe921fcb2dsm9028707ejc.49.2022.06.22.03.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 03:17:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     steven_lee@aspeedtech.com, linux-kernel@vger.kernel.org,
        andrew@aj.id.au, joel@jms.id.au, krzysztof.kozlowski@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        chen.kenyy@inventec.com, linux-aspeed@lists.ozlabs.org,
        robh+dt@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        krzysztof.kozlowski+dt@linaro.org
Cc:     David_Wang6097@jabil.com
Subject: Re: (subset) [PATCH 5/7] ARM: dts: ast2600-evb: fix board compatible
Date:   Wed, 22 Jun 2022 12:17:37 +0200
Message-Id: <165589305701.29629.16558823726381499116.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220529104928.79636-5-krzysztof.kozlowski@linaro.org>
References: <20220529104928.79636-1-krzysztof.kozlowski@linaro.org> <20220529104928.79636-5-krzysztof.kozlowski@linaro.org>
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

On Sun, 29 May 2022 12:49:26 +0200, Krzysztof Kozlowski wrote:
> The AST2600 EVB board should have dedicated compatible.
> 
> 

Applied, thanks!

[5/7] ARM: dts: ast2600-evb: fix board compatible
      https://git.kernel.org/krzk/linux/c/aa5e06208500a0db41473caebdee5a2e81d5a277

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
