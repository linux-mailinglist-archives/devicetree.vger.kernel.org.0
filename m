Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C6C33A3C45
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 08:50:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231252AbhFKGwx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 02:52:53 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:48880 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230269AbhFKGww (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 02:52:52 -0400
Received: from mail-wr1-f72.google.com ([209.85.221.72])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lrb0I-0001NS-Bv
        for devicetree@vger.kernel.org; Fri, 11 Jun 2021 06:50:54 +0000
Received: by mail-wr1-f72.google.com with SMTP id t14-20020adfe44e0000b029011851efa802so2147210wrm.11
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 23:50:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MFwg4dzMT+GNp+7cUeqFsxComPsZ7z1fOjFQNUeqhI0=;
        b=CSWkXf8BvmAsZhMZQVF2JiTKrSJ1FetZHzvesD2klrUTfWGZ8KMxJRRwGxMUEY7/Rt
         f9zy9mUyUEkpPbsZe9kEGu+tDf5uxpyElY4bDQE/ja1niE5lMfzvweEoSDwou4NOPsrb
         uBmmgZUopR7ApIYcPEJD0wpXToEIgN+NvKUMBrlRcF4djVx38W5ZYsghBwPGfoj7rcw4
         D2hg+mR4PXIkQPfCDexh9iODRvpGh91cJ4jPDE7I1dURYGUvH1J9WFhLxttbWyqaOIyk
         5zlXNKHgq1IwCLvYqLlA7vgBa5OYAB6bA1QTjMnkW3WuEqsIxCqx+VEn44kG8EUer6oB
         gY+g==
X-Gm-Message-State: AOAM532Op3XD5DTD9KW+V/5I8EmVfgoThJ80vlJKUInYdh+0f0aBAZSY
        OG7rSQiGmGX0Z8bkUOrw+pyTSVyuU/Jsmp1p/0UjyyM1RoNW66lQp1Gb8Enu51KBeqTnah26xMJ
        Bf9oDjmPIjI4vbPpF+zXpWaImVvDkW1OdiLyxTG8=
X-Received: by 2002:adf:e5c7:: with SMTP id a7mr2174153wrn.117.1623394254112;
        Thu, 10 Jun 2021 23:50:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy31T/BcShcrMp6vqZMVXq+YF3HnLvUjMIbmy/dslDGjk5mBhfMArMfNaYMDS2ArUSnzgf7uw==
X-Received: by 2002:adf:e5c7:: with SMTP id a7mr2174138wrn.117.1623394254009;
        Thu, 10 Jun 2021 23:50:54 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id z5sm6045020wrv.67.2021.06.10.23.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 23:50:53 -0700 (PDT)
Subject: Re: [PATCH v1] of: reserved-memory: Add stub for
 RESERVEDMEM_OF_DECLARE()
To:     Dmitry Osipenko <digetx@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20210610162313.20942-1-digetx@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <5f599a94-5977-981d-5271-3075be27c348@canonical.com>
Date:   Fri, 11 Jun 2021 08:50:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210610162313.20942-1-digetx@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/06/2021 18:23, Dmitry Osipenko wrote:
> The reserved-memory Kconfig could be disabled when drivers are
> compile-tested. In this case RESERVEDMEM_OF_DECLARE() produces a
> noisy warning about the orphaned __reservedmem_of_table section.
> Add the missing stub that fixes the warning. In particular this is
> needed for compile-testing of NVIDIA Tegra210 memory driver which
> uses reserved-memory.
> 
> Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  include/linux/of.h              | 11 +++++++----
>  include/linux/of_reserved_mem.h |  8 ++++++--
>  2 files changed, 13 insertions(+), 6 deletions(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
