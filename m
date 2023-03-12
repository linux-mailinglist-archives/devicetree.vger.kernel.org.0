Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1D296B6857
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 17:43:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230509AbjCLQno (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 12:43:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbjCLQnn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 12:43:43 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3750323D87
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 09:43:42 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id i28so12871562lfv.0
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 09:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678639420;
        h=subject:in-reply-to:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MKTinlG5kM8KUglYqEy7kn40PH2Oa+0TdD9V1KN73Hg=;
        b=j6cIay4vy9AvPQNIaC45DfWNiPjZr0qBHVibUFSWRq8IbVbOJBf5rkGVIv+E3aKJ39
         VrZ4kX4SdQEzX+RZ8CmI8wit2m4JH+FYeoWqhkYoiLtSFwSXzyHc3TmaaudDbpKLxU0x
         LP4+gje9ytBejIrSW/ZcSqDHmVXKZ80G1JsJYBhobwJO7Lv0kVnpuGZPqEvTuNmEreqC
         rVZ90T20lc/kvgAvDJ88jHlLGUvaH5A9tkfZvy8CvUp+kEU5lOE/SwsN4IiMjUQohAQK
         nZTNLYjK2S2L5PIMQ6c0l4pYCD1DnNFJ0hMW9UqkPK6Nf1MDb+AmnEObWayiCk1fe0KQ
         0Pdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678639420;
        h=subject:in-reply-to:cc:to:from:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MKTinlG5kM8KUglYqEy7kn40PH2Oa+0TdD9V1KN73Hg=;
        b=LxR8VJuqhcungbr/lOiaoXJ6SPhkjoon7Pltrf3EekeW2gar9cBoAQtF767zbH9RR9
         UY5MMMSznaPMZqXGjAGD7dcl01C3cTIaUnYRbNIQDdoAdxYw6wdPTFLdwrUl4PORGS/B
         UZY7GY9ESNvP4fPyTS+MVCjwqNeADQl9DiyX0vJ+/m1Fg4mt9GD8hZc0G6dkGfcMbIWY
         S4+fHmyds4p9z3Bsv1xb9TQfAZ5RIt93LHhqFNBZ/bxdn6+0CbmAqtFQ4OHQirTm0ysq
         wdofWcgO2+2m4tMZWXyTvBpriPe8Bfh93hbUaOWLLxr28WMimDNKQF1SQVd80U9DHCu9
         SdoA==
X-Gm-Message-State: AO0yUKW8ZUPvddygX5lbJZfWlZ5ySu7UMIfQxueBLHSH/JFpnASvc/yz
        m3Ot6uTmy7tUK7AxUtvVDsNosxFA12wgHfNx
X-Google-Smtp-Source: AK7set/RDSvbTYIAothvXK4Z/PWVvtgCCwBYeVcw44E7Qx0pkSnp2r5aVqfZYJ81RAVZw4SslJCNpw==
X-Received: by 2002:a19:ae01:0:b0:4b4:9068:2c0b with SMTP id f1-20020a19ae01000000b004b490682c0bmr10393180lfc.2.1678639419946;
        Sun, 12 Mar 2023 09:43:39 -0700 (PDT)
Received: from letter6.txt (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id v2-20020a197402000000b004d53e991be0sm690427lfe.146.2023.03.12.09.43.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 09:43:39 -0700 (PDT)
Message-ID: <640e013b.190a0220.38f43.17f4@mx.google.com>
Date:   Sun, 12 Mar 2023 09:43:39 -0700 (PDT)
From:   Sergey Lisov <sleirsgoevy@gmail.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <c9f8d89e-7420-a049-907c-60e3fa551548@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: exynos-dw-mshc-common: add exynos78xx
 variants
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Bindings and DTS (and driver) are always separate.

Okay, will split the patch.

> Compatibles must be specific.

No, this way you'd have tons of identical compatibles that only differ in
the exynosXXXX digits, and are functionally equivalent.

> That's non-bisectable change (also breaking other users of DTS), so you
> need to explain in commit msg rationale - devices were never compatible
> and using exynos7 does not work in certain cases.

Valid point.

