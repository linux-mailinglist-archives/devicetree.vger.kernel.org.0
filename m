Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8454D51AC1F
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 20:03:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353605AbiEDSGe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 14:06:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359503AbiEDSGK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 14:06:10 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3F1C50065
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 10:21:25 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-ed9a75c453so1828019fac.11
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 10:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9n/gYaMXgcCZlV28IfDsqzUgEbw6Cm4b4IvQduwf58c=;
        b=URCvwKrzTw+0bKXGIC30/P9Qmnuoja20WathMGlfr5Bij3lHqaaOpZCQGIqiWkgsht
         qMqCvuoTcvYpBlP268kDKZt4RhVE2TRi32z1VUtKdQRIbghA0qC+OkxEv5SO/ohKc4bT
         jS0fZd4eXcsLMEnKn+NHt0gL5yHonwip7rU30iq1iD3KWJb/Vdq8K+Mc7d2Ndla7fy+Y
         gvqJzwWnbHTY2vTRPp6S6/Vsmrf1SiqK8f1S00+5DguiDzRIw2zaHefDHXRAboEml+o4
         fzgAM9pOd2LnaxLhkiNvWkiRUgUj8l3QXod4CPazXu+KBGSVC9AyfjD/yALWrVKm7hTl
         J0pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9n/gYaMXgcCZlV28IfDsqzUgEbw6Cm4b4IvQduwf58c=;
        b=3ebFPLVWLuXgSjWzvTQ7593Z+7YxHZCAsYgAYtNQi6UKhFBaJzCTZ1SDKWl9165QOm
         3W6JgPUrDeFMlb6df3jiIF423DhYlSYqUVWOFfDxwbwCvZg+/H+qn2BIc02tzQE0kaCV
         LzQr0EE0CEUriudyRf2Ez8uzKqdfV5UtA/ZcQWToiVETLMVn0iq1OpiiHQG5zCiRx2te
         F8xzmRevXi0in2oz+zDUM8yUOZm3JUZdTGx8Y3H+q620H6XYZXqnV0Phsyljjr+E6+aG
         GtazpY5f7QIT6CzLyV+Ut4nDbOe6kB8HCpoUC/R/sO1v0h1jC84XOdfWY8EfSF/A90VA
         tnpg==
X-Gm-Message-State: AOAM531n5ajdo+JyUGRUDqxHYi6e16NbD4sdpDYbW1clFX5r/xW5sSiK
        eg5bx++Wi9iVh8LU9ovLA68MOw==
X-Google-Smtp-Source: ABdhPJxEQcWx97eQw7JXT1MlcsjE1ykXP2/W+UaCBS1ZibafH/U99WwFONjRsa3ICRAjO4ioX3uXuw==
X-Received: by 2002:a05:6870:b025:b0:e6:283a:9553 with SMTP id y37-20020a056870b02500b000e6283a9553mr265748oae.62.1651684885322;
        Wed, 04 May 2022 10:21:25 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a7-20020a056870b14700b000ead8b89484sm5785452oal.5.2022.05.04.10.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 10:21:24 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 1/3] ARM: dts: msm8974-FP2: Add support for touchscreen
Date:   Wed,  4 May 2022 12:21:10 -0500
Message-Id: <165168485227.3730817.16953717180733466594.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220421214243.352469-1-luca@z3ntu.xyz>
References: <20220421214243.352469-1-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Apr 2022 23:42:41 +0200, Luca Weiss wrote:
> Configure the touchscreen found on the new display module of the FP2.
> To add some detail, FP2 has two different screen/touchscreen variants
> ("display module"), the old module has Synaptics touchscreen, the new
> one this Ilitek touchscreen.
> 
> We're only supporting the new display module for now.
> 
> [...]

Applied, thanks!

[1/3] ARM: dts: msm8974-FP2: Add support for touchscreen
      commit: 88044abcde58ebf810f4be49ee2555ecc333bad4
[2/3] ARM: dts: msm8974-FP2: Configure charger
      commit: da281bf9345a8bcde224976b83d6ad7899830e97
[3/3] ARM: dts: msm8974-FP2: Add supplies for remoteprocs
      commit: fb5e339fb1bc9eb7f34b341d995e4ab39c03588e

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
