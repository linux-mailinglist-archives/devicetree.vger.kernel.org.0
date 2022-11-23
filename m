Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0226635A1F
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 11:35:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229472AbiKWKce (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 05:32:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236464AbiKWKbc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 05:31:32 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 741FBC5B5F
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:16:02 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id k19so20852585lji.2
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oR+nT74thFGcbIER8q3m9JwKnBmR6qe6ElNikxenUz8=;
        b=JxGPcQKrEPSSUhCC6ygX1GehOAUzCEl9NshprOVA6VHzal88q1R/4JjYva6DgQIpnY
         tSUjglqAX+iKhSCvyGyemn6CyumZA7DulpMRgIoer3K0oliihzmuAExmt3TtMB/aX1ak
         oSuKa58dFXPt+nxS52HC+iNM8qz8rMTgsxKMZesczhI92haC1K2T313cBHabBfpPK7fS
         kpuFyfv/6Gb4+JFvH45PBM4U8c+lqeEgF6aiN1niU5U5a1LlfNq1UhkYydmeuxd7srae
         RxJWhgTaQlmEcNnwIb6aVksvGTHFWvyGx3D87s/aPvfphjS8ugeEHOXkNEsm6RZW2Ndj
         KgMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oR+nT74thFGcbIER8q3m9JwKnBmR6qe6ElNikxenUz8=;
        b=zQS3swEJNpwSPyMit+Erh1PehtueGAETYl4DSXni5/ciALEb0bZi2k5nVAB0uEQIUD
         LRk7EwIL7OQy0FG/jb5w2id6hqQEVfzA9NSKmniqDFkbFdnnl6LVELe9QLHR6C2/K9ZN
         XVZI6Qk94CzMKC5SHRrKoAG3p6jFDY93SD/rYwpktZM9C4Q/xAUm6arGI5+hxZrd0UPX
         WgOMVQdSUR/N6qYCwfjN8Xr4nQoLDf+0GvseQl9wG1+3zXvfW12fahH5HrNCjyclvBR6
         rFCs5SMo67CocffvHA2zzQ0L8/3X12NRfOyujT1Y2echSGR7MxbkiXOQPcIoK6bEz01/
         +TUA==
X-Gm-Message-State: ANoB5pnGArEq3Z7qOcxQG8c+sAofzh9ZBCB2ymets2xw7HQRMvnEud8a
        8EibS2iEqls9QuBJ72M3JAtDjQ==
X-Google-Smtp-Source: AA0mqf7Fr+hlU4ACIE/wbE6+CccvQNxVMBNeRpJ6RvXiJ9IIZcsq8kVQ7Lt9akKzqCQD5veG8hoJTA==
X-Received: by 2002:a2e:bc10:0:b0:277:11ec:ff2a with SMTP id b16-20020a2ebc10000000b0027711ecff2amr9288820ljf.163.1669198560808;
        Wed, 23 Nov 2022 02:16:00 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i24-20020a2ea238000000b002773a9b5898sm2162259ljm.138.2022.11.23.02.15.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 02:16:00 -0800 (PST)
Message-ID: <dd555711-7dff-faed-a618-353c8d840d9e@linaro.org>
Date:   Wed, 23 Nov 2022 11:15:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 02/11] dt-bindings: display/msm: *mdss.yaml: split
 required properties clauses
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20221122231235.3299737-1-dmitry.baryshkov@linaro.org>
 <20221122231235.3299737-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221122231235.3299737-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/11/2022 00:12, Dmitry Baryshkov wrote:
> Per Krzysztof's request, move a clause requiring 'compatible' property to
> the file where it is formally defined.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Commit msg could be a bit changed, similarly to previous one and we have
a tag for such request:
Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

