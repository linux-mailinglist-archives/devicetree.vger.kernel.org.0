Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A0086B652C
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 12:01:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229742AbjCLLBD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 07:01:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229756AbjCLLBC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 07:01:02 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 358E92FCC2
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 04:01:01 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id g17so12229968lfv.4
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 04:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678618859;
        h=subject:in-reply-to:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jYZfawWjXMVBxW1629eKjPSTUkMUocoPnX/odlKuSj4=;
        b=KT5VVKI6R9TM/wHUi6542Q9jRw5G1xxYx//ZYNitdryHUMjb+SLHMpX1oivrfmsOJL
         wWGdl0shd2zAxKFQJ9BLltAoJDkomtS/YA4vz8CAvXanb3WMkrSorZSC6JlY4xJYilzl
         AqfDG8xqodILjbOx+FTWhBxtqSe6ickO9nT/6mHBYniJekA66h3By2G6ofFAB/JEYGc+
         lvtSn2BVHlCNG5xePniNWNGGVcNKNusaFtCvXEUtFv6Zp9uKFkjcqbsjRbbgSigfSM/U
         TjealIooFwmNrZ4qskcWODTo9DBcbsXSXydSVnIX5w/4K1Kf2z9J135DbrODhubdP9iy
         YzFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678618859;
        h=subject:in-reply-to:cc:to:from:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jYZfawWjXMVBxW1629eKjPSTUkMUocoPnX/odlKuSj4=;
        b=dHPpA4sHebVB0HLPkejPMBEkiSRRJ/IZq78jQc8A6A31AecfNAs7Z2/mfBAmIQB8II
         aqVzGDi0wWpmvC7BTw1Ae4LmbJOTIndNDWzFRa1h3vYjGbZJ2nSnkecPJjnLt4goBcqm
         nsq1PJazQaetsF8vpPzO/P+L5/QSX0wWxsGTbolNtg31VF8q+eRWq+iBfGLwSe6TzCd9
         qATtS2i5ZP8/tULBomhSoziJqWsXUJDRe6mvZ67nOA2PWkMjujHm6oCdVz6jLbUa72oX
         YbZM9dGrX0Bdw9JDAAnI1ozNkiReY64oBzkQf5bdzUDAE3/r9Nrg2B2pbRgIpKgJ+JDg
         NgHg==
X-Gm-Message-State: AO0yUKVuZ6B8yQ3yKLRwVrShmA738LIeAtinv8qCT654irx1mta1lU/5
        MaCc3pQm8hkTm1o3vdhYAL5hPb5ro0q2egHc
X-Google-Smtp-Source: AK7set8B9SaYspZr4MG2KctAZr0VkMjXB6uZNgvvxtM8dkt6KpSPgdEAGzoxudcvMCG8eIpucShHjQ==
X-Received: by 2002:ac2:4831:0:b0:4dd:b479:1ca1 with SMTP id 17-20020ac24831000000b004ddb4791ca1mr8659064lft.3.1678618859232;
        Sun, 12 Mar 2023 04:00:59 -0700 (PDT)
Received: from letter4.txt (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id f2-20020ac25322000000b004ccff7c56a8sm615079lfh.27.2023.03.12.04.00.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 04:00:58 -0700 (PDT)
Message-ID: <640db0ea.c20a0220.aab4a.159e@mx.google.com>
Date:   Sun, 12 Mar 2023 04:00:58 -0700 (PDT)
From:   Sergey Lisov <sleirsgoevy@gmail.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <b65d54e3-b78b-654b-4932-03afefa2e950@linaro.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: synopsys-dw-mshc-common: add
 "fifo-access-32bit" property
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> On 12/03/2023 11:49, Sergey Lisov wrote:
>>>
>>> Anyway, I said last time this looks compatible-specific, so I don't
>>> think we need another property.
>>>
>>> Best regards,
>>> Krzysztof
>> 
>> I agree, but I'm afraid of introducing regressions by enabling this
>> workaround on systems that don't actually need it.
> 
> I don't understand why would you enable it for systems which do not need it?

OK, then how do I find out which boards have the bug? My only idea is
"search for samsung,exynos7-dw-mshc through all devicetrees, find vendor
kernels for each of those boards, and check if they have the workaround".
Is it really that better than enabling it selectively only for
known-affected boards?

