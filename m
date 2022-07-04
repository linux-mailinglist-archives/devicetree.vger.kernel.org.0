Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A2D1565842
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 16:07:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234499AbiGDOHi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 10:07:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233278AbiGDOHh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 10:07:37 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F086DEA1
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 07:07:36 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id y16so15954163lfb.9
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 07:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=x4fKXTm7H0LeWSBK0nj/uO2XvJIMlgEnpVWVkiWm+7w=;
        b=GbRuMuSJ9GTWtUf4nqT4JXj7wrkF+Vhm+VqqurDUtKNhM3Ccbv0Ezo0XanZgcb4cMK
         qU/zySmgHxLSdPNkDoUcri67RKMzv/WoEnpUS5GbJsNjvT09cVwDYjfHoCB+ZjKwcQY3
         q36QF5Zot58/zdSOK58R26RtUW3rRHTF5vi8xdj8ttZZBjU0McikfadM9oSPV9V3XNhH
         EygGU9BwL3r6+uu5vQzr1nPvuLI7jgQ7mRen6sZlLs6z2kDhZvXCbb+hnnwct9JnqDQ5
         ++IabQrvG1S3kTYiR1cxpPsqv+AojlqSJALdsM/jFixUTdx1eFr66FqgDsGRbW2Dj+Vz
         n1jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=x4fKXTm7H0LeWSBK0nj/uO2XvJIMlgEnpVWVkiWm+7w=;
        b=17guGwjUWcmKjMTwqz2jFi9pvjfsxKkKu0on1iUyak5WWvL/RP/0/OHW3zSWpmlWkC
         ZuzGm9/Z6IwEI7g7Gn3cpMvSK+cC6Rl6PdSKM7AyG1aPpaFnruhV0QuTRIzgD4IR9zmK
         gXvWgms531sIXq8L7QNBI/PuI3T6s7Z/a6Ozcw/V89vXVJ4wt3D05+dsMiCwWEcU0cTb
         9HF7eQlD1uKS/9JvnKBRdtePyecI4DaEqrdpJ3VqPl7AV3CHrJmPsg3xTnJxLhlRC0bB
         1FKRhEZm0XupInCp//Z0ONwSmXKsDoT9wXnTcJxIOLnhTR+zedxGaKVL0KsrWyL6R7MR
         t8ag==
X-Gm-Message-State: AJIora/ronBs2RbWvStJJoiDLgDaaOSDQv1+dIQolCKtpRqIupH6cFE8
        9621mSYQxD/Xh5u0EVdnhe59Ng==
X-Google-Smtp-Source: AGRyM1sU7LjfqvHxYkOgld70CF/x1KKbK35Tt6C+X+RDcyxYx5U/gIRal8Wpy+l72as84TR9MbTGiQ==
X-Received: by 2002:a05:6512:1151:b0:481:1675:f343 with SMTP id m17-20020a056512115100b004811675f343mr18508507lfg.280.1656943654513;
        Mon, 04 Jul 2022 07:07:34 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id c9-20020a056512324900b00477b11144e9sm5158243lfr.66.2022.07.04.07.07.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 07:07:34 -0700 (PDT)
Message-ID: <4b1fe9dc-997f-32b1-6f32-3bc8333eb50f@linaro.org>
Date:   Mon, 4 Jul 2022 16:07:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: adc: Add rtq6056 adc support
Content-Language: en-US
To:     cy_huang <u0084500@gmail.com>, jic23@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     lars@metafoo.de, cy_huang@richtek.com, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <1656922179-21829-1-git-send-email-u0084500@gmail.com>
 <1656922179-21829-2-git-send-email-u0084500@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1656922179-21829-2-git-send-email-u0084500@gmail.com>
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

On 04/07/2022 10:09, cy_huang wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Add the documentation for Richtek rtq6056.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> ---
> Since v3


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
