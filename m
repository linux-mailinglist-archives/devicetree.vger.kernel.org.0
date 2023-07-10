Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB2A474D0B5
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 10:58:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230482AbjGJI6n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 04:58:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229863AbjGJI6m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 04:58:42 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01B7BC3
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 01:58:40 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b6b98ac328so61869881fa.0
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 01:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688979519; x=1691571519;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u1UIiLg+gT8qOjGtWi3Tbab4/yTpTJvmt9y9TmQ5/zA=;
        b=EQKuXWGbXfD9YroxK3ye/LIBLgh8YRx5MkDCKqZXONhJuzG8BXXQYniZadZGY4K5ho
         RDEeah0l91/2rkYjwDeRRXf3dy/9k90efi0Tq86lx/V83eJ1bqeuDWx1EVkGoqwlcyrn
         N8frMSSbQdl5q9wfS2nyJSaYEt7W1GcFj+5mR2qSa+qhTGvmn/f/l+Db9e6N3hcisjaq
         dx75ofebgpR9tpbI1BPpGBwdsnVqzA+SIQebZG4ho7lFOW69eMGpKtjnWhVQ7ntPOdHF
         9RWm0S7zYjWTpU76mU4kILQchki9fH4qSpGGyhPho+qEX1V2FW7QJaeUjgwI7i4egQ7Q
         7leg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688979519; x=1691571519;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u1UIiLg+gT8qOjGtWi3Tbab4/yTpTJvmt9y9TmQ5/zA=;
        b=AiWVa+Rq8H5D7QVxzy1ELr8ZP3M7z0pNKGW+3zP7HqVhni7VQzATwFH1NawotzVkVw
         GsLguynMLwnC0VcFlkXJLydz2WMzfF50uGuM9MZ5KdI+5+hGcouV6jI4fhRas/ATwlMh
         gpo9LE8SgDRGx76Q9CYz9rb4TsKcu83wd9glf0lBS1/tjWRbbw4bHWbPN8nZlu+E+SZp
         MHNkQRAOAEazR8yzLrax7q0l1FO7Gq+8/Q3hsNm6LJ/cfW/KsykIyk+gGUOjSHHriwKP
         8lsQ3bDud9nS8ff5AsaVcgtOtI6bXQoFbgKpv2w4OoGvYhylHUjaSDnvqvr66t5hP1Y7
         /AvA==
X-Gm-Message-State: ABy/qLZdJITHULMcNd5QbTFrGHomFmmV15/goTfeNbPza8BLKM3aJay3
        vT7xuAbhpW4Fi81lPDFTS8HHqQ==
X-Google-Smtp-Source: APBJJlERlzwAqBH/Uv5aSLjcEewODCu8JlenZIe3+3H6pzXx2WIrny8mnU1JjbuxVqM8sFJI3AhPwQ==
X-Received: by 2002:a2e:9497:0:b0:2b6:decf:5cbd with SMTP id c23-20020a2e9497000000b002b6decf5cbdmr8633024ljh.36.1688979519283;
        Mon, 10 Jul 2023 01:58:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id ay26-20020a170906d29a00b009887f4e0291sm5800767ejb.27.2023.07.10.01.58.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 01:58:38 -0700 (PDT)
Message-ID: <db81d100-1ed6-19a1-14f6-8cacf71bb1bd@linaro.org>
Date:   Mon, 10 Jul 2023 10:58:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/5] dt-bindings: display: msm: dp-controller: document
 SM8250 compatible
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20230709041926.4052245-1-dmitry.baryshkov@linaro.org>
 <20230709041926.4052245-2-dmitry.baryshkov@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230709041926.4052245-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/07/2023 06:19, Dmitry Baryshkov wrote:
> It looks like DP controlled on SM8250 is the same as DP controller on
> SM8350. Use the SM8350 compatible as fallback for SM8250.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

