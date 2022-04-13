Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30CD14FEFF0
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 08:37:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229914AbiDMGju (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 02:39:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233002AbiDMGjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 02:39:49 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF93E52B00
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 23:37:26 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id t11so1833435eju.13
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 23:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=L2+K9dFepGLkCzuE8Vegw2gTnmbd7yYcc2wcM+3tE6M=;
        b=TMWlkGyDuqZPBlzzAUi0m0kmdT5srlS9slVSloQvgv5BjHG2OdUUF0qlHHQ0+VfAZx
         tBsIXiOvuAmhaEL9Ezrq8hog2fP/n6rQn9JMBJprPOOzCWIeznXyaZAxLGLtmhjZ8wm+
         DObenLbe+4CZ2ulGU65S8g7iixGQEtRFF/HtLDTEVyPXryuCY/v2OtnZO86xBPjyKRLu
         mSbIKLr3dLZv1CEfyVKGZ7IZXRLA1MDLfwaWFfDYpJyBwnBKB4/XCyuM5+N1w4w9TMb8
         TxO5j+Vtb8rd4eSU10an66HKJ2GBCxIU3ajXe2PL6FIkQlFfCcNzA+fCHuASm9ZO7yHm
         6fFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=L2+K9dFepGLkCzuE8Vegw2gTnmbd7yYcc2wcM+3tE6M=;
        b=6W8BBl/VB8n0lhTHhAF8OeYFN8Umc3xrX+liLuAPfA7nxqGZIpezwpaeJ6NYhOBbjn
         Sm8msZWZLRpMDcVH7fc3rK0tQQ9Pul5RMGu7JC+3Wppe4PP5mrQGDZHXTKrFNP+DpCsR
         24l3aRGHpvnetFE8BgsJbZpAICMIYGl6V/8lavKBL0pXAB9JtHsU3YQ7I4jTCoBhki4p
         CE5cGohL1MT6GTHqO/kCop+sIGyld4u9uZ5EsHFeuy0CnzUrwBrfcOxmimJ9VOaU1TBq
         Yoru+JD3rXJG5CJn6QrJ3tbe0axp3uE6+3QERi5cwa7/ntYbeHSneMj7mTb1UmikcP/w
         UuWg==
X-Gm-Message-State: AOAM532ZqSNZQK8tc+aNu8WKBdQVeswMH8tGATHEaU5ypOyKrApKKiid
        9320v1XiyF1rQjDvR+z7xNarPA==
X-Google-Smtp-Source: ABdhPJxxfRfaX+I00TqE1PWHzu+5jBnSTb9E9ARm5cWpaGhCyvb0c2Wf2r6TMuae4ZkJn+WeWD7+bQ==
X-Received: by 2002:a17:907:96a9:b0:6e0:db4a:ba8d with SMTP id hd41-20020a17090796a900b006e0db4aba8dmr38877725ejc.87.1649831845519;
        Tue, 12 Apr 2022 23:37:25 -0700 (PDT)
Received: from [192.168.0.201] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id r18-20020a05640251d200b0041d1600ab09sm802488edd.54.2022.04.12.23.37.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 23:37:25 -0700 (PDT)
Message-ID: <c2a7f2e0-1a21-bb0c-9221-c184cfaa3626@linaro.org>
Date:   Wed, 13 Apr 2022 08:37:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v13 4/9] dt-bindings: clock: Add bindings for SP7021 clock
 driver
Content-Language: en-US
To:     Qin Jian <qinjian@cqplus1.com>
Cc:     robh+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        tglx@linutronix.de, maz@kernel.org, p.zabel@pengutronix.de,
        linux@armlinux.org.uk, arnd@arndb.de,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <cover.1649659095.git.qinjian@cqplus1.com>
 <f8d5675d1bc32962af6379f78a171ed35b181ebc.1649659095.git.qinjian@cqplus1.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f8d5675d1bc32962af6379f78a171ed35b181ebc.1649659095.git.qinjian@cqplus1.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/04/2022 08:49, Qin Jian wrote:
> Add documentation to describe Sunplus SP7021 clock driver bindings.

(...)

> diff --git a/include/dt-bindings/clock/sp-sp7021.h b/include/dt-bindings/clock/sp-sp7021.h
> new file mode 100644
> index 000000000..de8ef5601
> --- /dev/null
> +++ b/include/dt-bindings/clock/sp-sp7021.h
> @@ -0,0 +1,90 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (C) Sunplus Technology Co., Ltd.
> + *       All rights reserved.
> + */
> +#ifndef _DT_BINDINGS_CLOCK_SUNPLUS_SP7021_H
> +#define _DT_BINDINGS_CLOCK_SUNPLUS_SP7021_H
> +
> +#define XTAL            27000000

This looks like frequency which usually does not belong to bindings. Why
do you need it here?


Best regards,
Krzysztof
