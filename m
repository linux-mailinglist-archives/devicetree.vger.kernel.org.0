Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A67F646B63
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 10:05:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229696AbiLHJFD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 04:05:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230210AbiLHJEQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 04:04:16 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B1A74F1AC
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 01:03:36 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id h10so849267ljk.11
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 01:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zEvaXwfwqSzOoHW10MEDPIfbZ9OLutRaMA8i2YGQwvI=;
        b=aIkzLftuSRZKtfnIFiekFOrwTJsxp/QyAB/6XfYm9E8xgXWpK5EanAZgNkhW46QHHf
         VVM1iI9wQ0q75uDJ+M/wrVlDiTmDzgioer1m8oPZGz9FHyBD1cvbO7sHWsvcHkLUdfdN
         WpOdRHA+UlcX/Xy92NaFlZhaTN/0LcNyTX4OF5gQ0ZJ+tYanQLuZG8NJWT9N+fkA8upT
         NFjAO5+Mi3XvZ57qdoZOQzTM5Geq4b/F3RXVV+fBoYWy5JeHfNi83fM50q7jZ67Fs+Z8
         LQ0FiJHYcmB6rUYz46nUZJJPPDZ7az9LSvOEgIohRWsndh5RCrsybkYz8LaZ5pl6dc7H
         tUHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zEvaXwfwqSzOoHW10MEDPIfbZ9OLutRaMA8i2YGQwvI=;
        b=oNiimmtlqwU71P/EkICsjronFOdxtaz0tp3zp1O/qon8ikRxJ4vdhOHL2vxl07DcWd
         1U7i0jdyWuzsGMEa0rOJNsZXlk86IsBeJ3eT4wfXQyXZvkwBcQ9vBPy8YYgO51Lgdcfs
         bnOwgI51X13NsD9ZWCr3tZDaOl7E7rz+wgDWdmisfLxtGn/Tu5kE4F8AsUvYcKBgDhIj
         kQncS5ubhT5p1FQ8U35ujH9y9lu4ReN7xxHGopb1Kisvch8Sa2iF/Ko+xf01WOnE9ujU
         cl3lrn+ofsfgj3rt7l1mqBmsNbS6cE+MrJ/nwjL7tcshtphBPYjrFKhTc8pBGJjdPOFt
         JWgw==
X-Gm-Message-State: ANoB5pkV2+Wmv6GY7f1nw93Ok5RpsBy5db84y+1jHQ2/Mj8D83xL/6PI
        +sls6rQnxXdsaRiKi/yp3/dZ7sfqJgSyvvZ6HaQ=
X-Google-Smtp-Source: AA0mqf6O33YWpaLk6sFSSTi+41ETMZdxHV8vPSwu4LnLTcj1qhWk9Zs4fkhnpaXAEDKpj5+y+hfk4g==
X-Received: by 2002:a2e:a804:0:b0:277:81ff:c2c7 with SMTP id l4-20020a2ea804000000b0027781ffc2c7mr27471475ljq.23.1670490214614;
        Thu, 08 Dec 2022 01:03:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b26-20020a2e895a000000b00279e0b8bae7sm1689484ljk.65.2022.12.08.01.03.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Dec 2022 01:03:34 -0800 (PST)
Message-ID: <ac374e10-fb5b-c56c-7c76-b131446533fe@linaro.org>
Date:   Thu, 8 Dec 2022 10:03:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [RESEND PATCH v2 1/3] dt-bindings: power: Add starfive,jh71xx-pmu
Content-Language: en-US
To:     Walker Chen <walker.chen@starfivetech.com>,
        linux-riscv@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        linux-kernel@vger.kernel.org
References: <20221208084523.9733-1-walker.chen@starfivetech.com>
 <20221208084523.9733-2-walker.chen@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221208084523.9733-2-walker.chen@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/12/2022 09:45, Walker Chen wrote:
> Add bindings for Power Management Unit (PMU) on the StarFive JH71XX SoC.
> 
> Signed-off-by: Walker Chen <walker.chen@starfivetech.com>



> +    };
> diff --git a/include/dt-bindings/power/starfive,jh7110-pmu.h b/include/dt-bindings/power/starfive,jh7110-pmu.h
> new file mode 100644
> index 000000000000..73c6a79a2181
> --- /dev/null
> +++ b/include/dt-bindings/power/starfive,jh7110-pmu.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */

Why different license than the bindings? MIT is pretty compatible, but
if it does not matter for you, keep same licenses as bindings.

> +/*
> + * Copyright (C) 2022 StarFive Technology Co., Ltd.
> + * Author: Walker Chen <walker.chen@starfivetech.com>
> + */
> +#ifndef __DT_BINDINGS_POWER_JH7110_POWER_H__
> +#define __DT_BINDINGS_POWER_JH7110_POWER_H__
> +
> +#define JH7110_PD_SYSTOP	0
> +#define JH7110_PD_CPU		1
> +#define JH7110_PD_GPUA		2
> +#define JH7110_PD_VDEC		3
> +#define JH7110_PD_VOUT		4
> +#define JH7110_PD_ISP		5
> +#define JH7110_PD_VENC		6
> +
> +#endif

Best regards,
Krzysztof

