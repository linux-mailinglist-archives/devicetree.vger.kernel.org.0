Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AE4A758F1E
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 09:36:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbjGSHg3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 03:36:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230129AbjGSHgU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 03:36:20 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E92E91BF2
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 00:36:16 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-51e590a8ab5so8970088a12.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 00:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689752175; x=1692344175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q/eA8pKJcHiUXAdf7PMzIQmFbGywWXqPi31I+AY3YSI=;
        b=zcw/4+UMUKRHWSV7ZaaICpSL1K1a5aGEZVjOWGjjENfPt5MZHpNNbx42sUroUBI11f
         bnNAb2iUqJDbigI/T2qj390igCk0o4WiQ/VhvlZWDxZFBAyjz9JrFIe623zRUffi1mWP
         1pPyYKT7xKnJPhIugP57JpDNgHDgirDZyGbf39+xK4mgyE0F4+nAbLVntqK1eJwPqLvN
         aModvdvWKl9GTgcJ5p89N7dkQuaZR62Qf7AHHO4GZR7Xd/6Kd5uutZfnFdMAjIBDE2Vb
         aKEYPQXR0XYDhZvnul1rSIzysI5hcLUBc07CdEH0J3NAAjYNiXusUxpC+Y4o8Ohftl2y
         LJqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689752175; x=1692344175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q/eA8pKJcHiUXAdf7PMzIQmFbGywWXqPi31I+AY3YSI=;
        b=FNtJRq6Ow6a6oJjZTLvlaYCBAY4WFzlv1QW6A/OCucxiJ0GhgpBJhUVDD9tFgzMNg7
         UZ+knlyUq02fKh2oqdIKawbkzzUGhyhtR5+Ck5TctnugFBZdRsDGs195ItYwFpDkgj07
         Ylp0Onmqt/n5GWNtPAOjN7TWhLU/f0QYhyNVPOqfk6TPX1yLnMZuaI2sPI1FhvWMCl4J
         HuzMHWEPWKUsCjt8bCPBJFgwL17T9APZWaGqNY+9Ep48FzasdeMxIJrcP5q5QhTIggMQ
         iy3ymfgfcq6SFdugc1d8lxPeTg76/MrPz3uLomSzX4iMcI7hNkWJHYT076/Pg+2OGDER
         W4fA==
X-Gm-Message-State: ABy/qLYK4v6uBuhiawuDpuqhgV8Ga4yVTR7RuD2Xit+zk3m84yXpkJni
        OwpdzlWFbAUAcHEZIqGgdpImCLSgFxXiTupqr3EJcQ==
X-Google-Smtp-Source: APBJJlGOf4hGTqkGyxwxOYlRSiFB90/uKqYCcXvS/KlM16eAlPWxbD8qeAUOU7RY51/m+vT3NlEWyQ==
X-Received: by 2002:aa7:d708:0:b0:51a:265a:8fca with SMTP id t8-20020aa7d708000000b0051a265a8fcamr1995135edq.27.1689752175402;
        Wed, 19 Jul 2023 00:36:15 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id v5-20020aa7cd45000000b0051e069ebee3sm2310594edw.14.2023.07.19.00.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 00:36:14 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Artur Weber <aweber.kernel@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v6] ARM: dts: exynos: Add Samsung Galaxy Tab 3 8.0 boards
Date:   Wed, 19 Jul 2023 09:36:09 +0200
Message-Id: <168975215984.14599.9189608478970320917.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230714101229.30641-1-aweber.kernel@gmail.com>
References: <20230714101229.30641-1-aweber.kernel@gmail.com>
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


On Fri, 14 Jul 2023 12:12:29 +0200, Artur Weber wrote:
> Introduce support for the Galaxy Tab 3 8.0 series of boards:
> 
>  - Samsung Galaxy Tab 3 8.0 WiFi (SM-T310/lt01wifi)
>  - Samsung Galaxy Tab 3 8.0 3G (SM-T311/lt013g)
>  - Samsung Galaxy Tab 3 8.0 LTE (SM-T315/lt01lte)
> 
> What works:
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: exynos: Add Samsung Galaxy Tab 3 8.0 boards
      https://git.kernel.org/krzk/linux/c/ee37a457af1d166f090ec68de26f94447d899c8a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
