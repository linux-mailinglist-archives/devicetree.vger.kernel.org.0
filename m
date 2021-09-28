Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27E3141AC4C
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 11:52:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240038AbhI1JyS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 05:54:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240034AbhI1JyR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 05:54:17 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41A45C061740
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:52:38 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id z184-20020a1c7ec1000000b003065f0bc631so1731044wmc.0
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 02:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=GuHPLheShRlbOpi51aLOYmcYsG+bNOOwfr/gYWEALaw=;
        b=o1TDOq0LiwPkSupy54hfguLkuJ5+Ii8Gk8YO5lZ4D7rYxHjsaslijOA6FSKwUud29j
         lJRoUv3tEo7jaGRXV+GCMcS09fd6xioukRVOxvBPWjgHTBNKHvBbmOl4KMo2gMroKnF6
         jMqSklqxOsMalnsJJuUKLSejLeJYtBQuCnTtGdQUYiGgQkkibe8bhvhZBLOLnX8KCG1s
         hDi4QBQOk9xhLHaF9Hjeq24VOzSj70+VjQt9YUnG25ssF2nBDcnlyHAlF5gDhgF8EZyv
         l74Tzkhgm95uSzmZ0PjDAkrLP+tUXzKYHA5WWJs8GlhQhi15q3RAsKZHmgnAbW3rkaeq
         87AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=GuHPLheShRlbOpi51aLOYmcYsG+bNOOwfr/gYWEALaw=;
        b=dw4z09GEFqPSkLU9dfNI1MkRsNBIN8TS2NALrjJMCnxeXGU0UN9w821A0J3ydk2ZV7
         LUs+kefZBa40ha5yzTeRX1PcZ++GOT3TUZSM1es/Ffsp5KOMJ+X1AACjIMoV+AdGSLjn
         c9TULglH18XkKKjbMEP9NYHgvvSbBrRHPsJPJLllYk7Gy1nu/O/9KBSqYj4avDfVXcET
         XUmO+MtmSDNCymoEjQqbx060TP/Yq6fsa44hlKNhz9sTLFOTqE0Yj0aTjDtmfmOhFGhA
         ebzDjBwGF2+YgpUhO9SUo7TJV4mQl4I4abdONQLPNPzymtLeRCKdjNmvBlHZZvyoejCD
         EVDA==
X-Gm-Message-State: AOAM531zYrgku3+e3UhNH0QvEHeQcWS8fWwArcvv6KYMhTAusNA8qL5V
        nShIwa3tguWd/ymL5Yaiv0/n5A==
X-Google-Smtp-Source: ABdhPJzugmyfSJ6wM5od5emO0tsj0/opG3+kwzLDnnw74iHAPISXEdmJeQu+mCnvTAje7ebw3Y9mNQ==
X-Received: by 2002:a1c:2289:: with SMTP id i131mr3722335wmi.34.1632822756859;
        Tue, 28 Sep 2021 02:52:36 -0700 (PDT)
Received: from google.com ([95.148.6.233])
        by smtp.gmail.com with ESMTPSA id l17sm642980wrx.24.2021.09.28.02.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 02:52:36 -0700 (PDT)
Date:   Tue, 28 Sep 2021 10:52:34 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [RESEND PATCH v2 4/4] mfd: max14577: Do not enforce (incorrect)
 interrupt trigger type
Message-ID: <YVLl4n9O8xXuDeWo@google.com>
References: <20210602110445.33536-1-krzysztof.kozlowski@canonical.com>
 <20210602110445.33536-4-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210602110445.33536-4-krzysztof.kozlowski@canonical.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 02 Jun 2021, Krzysztof Kozlowski wrote:

> From: Krzysztof Kozlowski <krzk@kernel.org>
> 
> Interrupt line can be configured on different hardware in different way,
> even inverted.  Therefore driver should not enforce specific trigger
> type - edge falling - but instead rely on Devicetree to configure it.
> 
> The Maxim 14577/77836 datasheets describe the interrupt line as active
> low with a requirement of acknowledge from the CPU therefore the edge
> falling is not correct.
> 
> The interrupt line is shared between PMIC and charger driver, so using
> level sensitive interrupt is here especially important to avoid races.
> With an edge configuration in case if first PMIC signals interrupt
> followed shortly after by the RTC, the interrupt might not be yet
> cleared/acked thus the second one would not be noticed.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Rob Herring <robh@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Add Ack
> ---
>  Documentation/devicetree/bindings/mfd/max14577.txt | 4 ++--
>  drivers/mfd/max14577.c                             | 6 +++---
>  2 files changed, 5 insertions(+), 5 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
