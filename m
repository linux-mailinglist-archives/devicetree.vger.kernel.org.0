Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DCBF6BBCCE
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 19:57:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230212AbjCOS5i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 14:57:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232623AbjCOS5h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 14:57:37 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 574481DBAD
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 11:57:36 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id r27so25517395lfe.10
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 11:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678906654;
        h=subject:in-reply-to:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=g+Z6yMufViGivHBpi3ybAlT526oTlR6qrL1yn4estsw=;
        b=OkIq98wv6L2ZdNeoE3MDLfVGXm56bsoejk4ZRlxz+sKGkxVY8FZOWvi+qF6EYHhw9B
         NYFabJFIlcmLLyMqiDh/Ehm8Mf7Z50Luo7AabEu7mI8ZzPwc0rs6QPPmcLzhTIBYBwuc
         1HmaQbRwUr5Smk/4AsNTTpW+AfyoAnEgm7L8v5mWYoo6SWVaHrNqtJgwG5zn3+u4uZ0C
         WNwc9a897FBA7NLhqSCFQm8wEX532Gqt1kgMLHhpl5iHK4AGjzsPGaJ6NKE3fKELlMjS
         pGGlGdPZgtM23bvksNxirb3xIolRW9Bp4Eapw7sCE6YY/0x2hHMNpiqcpHMjxFw1UVga
         8jRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678906654;
        h=subject:in-reply-to:cc:to:from:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g+Z6yMufViGivHBpi3ybAlT526oTlR6qrL1yn4estsw=;
        b=RjE+A/Mlicbm6Bpx3qe/oiQ2CV3sZg7XANTMSG+I7OSLfjHP1XkTDaYelFRVxahzkB
         YnlcCqPwlaMkE4CTqflUhqm3zbmHBmMMD06Kyxv56XyXgQfeGG83f9HYWHBaxAl9+I4s
         kBpty2HyNfILjD3GYEaF6ZGJppVgDgDsMyfmhCdQCvgRCO2vEjvhXKlSuvwV3beGti1f
         8YrEcJFppkiyvr1hxJ/s68jmdk59QotjXdhftcPMR072UY90CAO/tjuMkOpspe/z1X1C
         cFwvYafyl3A2WU8xk+LjYpsQ+C5Fmrne+QR57HoqG19T3hxgfSdhbZVibst//CGdNAUz
         Yh3g==
X-Gm-Message-State: AO0yUKVCb5SHePWuYUfAVsAE/joo2KUDRho6FamNLO8ztUij7pmLv3Qo
        JGnfBE6CbFobQm/di3zj6CKft/T/T9ySIOjm
X-Google-Smtp-Source: AK7set/NG5W4apOZwiskwnkFo4dtGcsIMBB6VqqvRqSc5hZoV5tTkp7wZL40rkxJq0DE2fk7xQEdKA==
X-Received: by 2002:a19:ae0f:0:b0:4d2:c70a:fe24 with SMTP id f15-20020a19ae0f000000b004d2c70afe24mr2147320lfc.1.1678906654402;
        Wed, 15 Mar 2023 11:57:34 -0700 (PDT)
Received: from letter.txt (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id w13-20020a05651203cd00b004cc9c2932a9sm913242lfp.302.2023.03.15.11.57.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 11:57:34 -0700 (PDT)
Message-ID: <6412151e.050a0220.83a6d.3303@mx.google.com>
Date:   Wed, 15 Mar 2023 11:57:34 -0700 (PDT)
From:   Sergey Lisov <sleirsgoevy@gmail.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <1bd962b1-2fbc-9bdb-8b7a-9f2c70c316e2@linaro.org>
Subject: Re: [PATCH v5 1/3] dt-bindings: exynos-dw-mshc-common: add exynos7885
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

>> +      - samsung,exynos7885-dw-mshc
>> +      - samsung,exynos7885-dw-mshc-smu
> 
> What about the if-then at the end? Since this is pretty compatible with
> exynos7, then I would expect being added also there.

Makes sense. Also it probably makes sense to add "samsung,exynos7-dw-mshc"
as a fallback compatible to the jackpotlte.dts, because it probably
somewhat worked for whoever contributed that.

