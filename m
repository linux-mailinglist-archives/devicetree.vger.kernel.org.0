Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97010562B76
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 08:22:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232365AbiGAGVL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 02:21:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234844AbiGAGVI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 02:21:08 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5BE335247
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 23:21:06 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id r18so1650180edb.9
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 23:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZM2YO5aL2fPLZnGDZo6YXlcS5+Gp2lse2aTKoGAFQwA=;
        b=MKREuGBMM/ccAEj7XgU0rnSyU/nSzE3mxRTybSqW+7O8CIf6SLw6d+pj2dq7Xc1Ri9
         0ecSZxaoAoHQu5pNw/H7YuVQR0DJo3F1j2hp7h0gCn8YBXXebRB0c7J22NOQndDuepwB
         0uv10Yk9uz8ik2uQBqOFALRXe/iXKRXYnpCS767fYHGuEvU/6ha6JF3AWDZm/PtyMwZY
         DRaYGAKlMX0jN72Bpoot0hBa52E4K6pmY3vn3QNsix1RCtuJWK0NFYMBPWog/fIgfHA6
         o7FAoZC6tvz3QXGqUvjvq8NfncRFNefr2PhSRzT3ViuPnn0WNWCkN/HYmFpxIw5CZvBM
         wO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZM2YO5aL2fPLZnGDZo6YXlcS5+Gp2lse2aTKoGAFQwA=;
        b=sA8RB7KygNxAECljhGIPqjPK67VyRl/UCeva7lDgiJnqGlDTxgp3KhMzwo+FlButsO
         DaKl7ezHd4qak61FEZH4ekAnLfj3vZqZeTZpxpAYpyr30AIlturXMPxGORPg0NRYox3p
         4VpciG0JclXp+A1u4KNg8sBGYlaKkduuBYbn/0KPygicSA5bZWc7S7X+pquYjp27fSUB
         LKHXRqeKkvm/UL8BR72Uox6EYn2AuGLgpM18QdHX8lRnfIS2t9GPH3qOwLqgwjgBINvr
         aiyRGKbBAGcF+npWeSLtMdyzTZq//radG2ymC2TNu+1fMpvqvJtmt7THZMHfp8CeExRl
         H+7g==
X-Gm-Message-State: AJIora8PDzQ1jd4WquO63fjP9MiFb+dp03JtS+TCFAOUIvgyazYugdSW
        uw/Jj0UuzR7fyt4gw5htJThXcA==
X-Google-Smtp-Source: AGRyM1tPUpJp4I5GgE/lJ1Z1sKTphOYm47JZZwku2DvLx7+XaYxWVBgObu3c7d7LqUSAL9acjvP1fA==
X-Received: by 2002:a05:6402:240a:b0:437:d2b6:3dde with SMTP id t10-20020a056402240a00b00437d2b63ddemr16777606eda.62.1656656465401;
        Thu, 30 Jun 2022 23:21:05 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p26-20020a17090635da00b007105a157706sm10068734ejb.82.2022.06.30.23.21.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 23:21:04 -0700 (PDT)
Message-ID: <1bc0670f-081e-c2b7-940c-9ec1f3940408@linaro.org>
Date:   Fri, 1 Jul 2022 08:21:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v5 1/3] dt-bindings: arm: qcom: document qcom,msm-id and
 qcom,board-id
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Kumar Gala <galak@codeaurora.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20220624180036.102510-1-krzysztof.kozlowski@linaro.org>
 <20220624180036.102510-2-krzysztof.kozlowski@linaro.org>
 <20220630223502.GA3441000-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220630223502.GA3441000-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/07/2022 00:35, Rob Herring wrote:

(...)

>>  ...
>> diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
>> new file mode 100644
>> index 000000000000..635d4ebba3fe
>> --- /dev/null
>> +++ b/include/dt-bindings/arm/qcom,ids.h
>> @@ -0,0 +1,146 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
> 
> Sigh... Pretty sure relicensing this is okay.

Indeed, I can relicense it.

> 
>> +/*
>> + * Copyright (c) 2015, The Linux Foundation. All rights reserved.
>> + * Copyright (c) 2022 Linaro Ltd
>> + * Author: Krzysztof Kozlowski <krzk@kernel.org> based on previous work of Kumar Gala.
>> + */
>> +#ifndef _DT_BINDINGS_ARM_QCOM_IDS_H
>> +#define _DT_BINDINGS_ARM_QCOM_IDS_H
>> +

(...)

>> +#define QCOM_ID_IPQ6005			453
>> +#define QCOM_ID_QRB5165			455
>> +#define QCOM_ID_SM8450			457
>> +#define QCOM_ID_SM7225			459
>> +#define QCOM_ID_SA8540P			460
>> +#define QCOM_ID_SM8450_2		480
>> +#define QCOM_ID_SM8450_3		482
> 
>> +#define QCOM_ID_SC7280			487
> 
> Not what I'd call an old SoC and not in the allowed list. Neither are a 
> bunch of others.

Correct, but these are here for other reason - patch 2. These are not
needed for the qcom,board-id property but they will be used by
drivers/soc/qcom/socinfo driver. The values are stored in shared memory
(smem) and accessible/used by Linux, bootloader and firmware. We need to
be sure each define is consistent across different software. Therefore I
consider them values matching bindings.

Best regards,
Krzysztof
