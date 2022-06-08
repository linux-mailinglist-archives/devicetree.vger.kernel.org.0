Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7068543090
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 14:38:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239766AbiFHMix (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 08:38:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239345AbiFHMiQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 08:38:16 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AD6E2CDB21
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 05:38:15 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id me5so40661378ejb.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 05:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=aEGXQECe4H9Yr1drGqc8tKF4uy6G/ckZC8sU26gHtJg=;
        b=b0/e4QaChXD6ECkdPGCyuGyJUawjE5WGDcCNngEWwicQcNjDBbxo96ujUWEmtKrU2G
         ZMV1/fftHeM20VSZ1GnA3cO3UI2z2DsvrBZNPz7+jiUrFVPZIBy0sgoNg5p0Pfy1zMZF
         YNPucSatWgbT1iWYyD9lZJ1QDWLyJbfaTO/sOfHHfuGk6h60/vmfjohGEYeGC7QA6Ijl
         sMHq3Sn0Kc6zK80Gnb/dC/bhil/qMHH5H6HB6ULVl1KM9OQgbQSpzqcyx6JC0Ie/CTlr
         vOsO7I/mJ97tFrhOLU/JqhZnShBHwZR5U33m/zhkDAyJ/AmCyI1K/R4Fp11qMP6Sc0TM
         rxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aEGXQECe4H9Yr1drGqc8tKF4uy6G/ckZC8sU26gHtJg=;
        b=zeAFE/1YvQET1u5RH0llITc6b9mUPZzUQ/qBCdLrg32UHO4naCssaI1rENWJT+gP2h
         PgoMmKxZ/N1YHEjMd57a8l6LLJ5ze/EGnOD8S5BTGcI2YOd/QdTfPBFeFS7UUxSsphu8
         UM/iDdNhqg5bD2+GojN2TAphJhH45eCQwJIGYz5x46ed3s8952Mp8FfUbHVsynr1+sQN
         yjHUWAJXRBfTibrS4JlQx2i/sztnHoV/NXMsOJfkez0w6qzKFbY1+IZc1b+R/QyM5jbv
         KBXhSxj1zuGePfEStCYbo3UapcYcBVKx1wwoIf2bewtBn9Z691Rpkf2vtciz5Xi901rC
         HG9Q==
X-Gm-Message-State: AOAM53028Y99IQazkwIQwfAZ4/vef2OoKlM4Z1IGLcec/JtJkWjouz29
        8ZEgIMHe16YFoOhp43Ji0G6vyQ==
X-Google-Smtp-Source: ABdhPJw2db8NS2pKzLZNRjdCIdLmNenvGRa27Y2xy0C/8AXs/h3fBZJZTn7uOXirBYfkc7BesWdcBA==
X-Received: by 2002:a17:906:414f:b0:711:ce99:69ec with SMTP id l15-20020a170906414f00b00711ce9969ecmr14718867ejk.724.1654691894016;
        Wed, 08 Jun 2022 05:38:14 -0700 (PDT)
Received: from [192.168.0.192] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id t20-20020a1709066bd400b006fea3702e56sm9102856ejs.79.2022.06.08.05.38.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 05:38:13 -0700 (PDT)
Message-ID: <1fa92614-d08f-162a-da3a-28fa9388d314@linaro.org>
Date:   Wed, 8 Jun 2022 14:38:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 03/12] dt-bindings: display/msm: hdmi: mark
 hdmi-mux-supply as deprecated
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org>
 <20220608120723.2987843-4-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220608120723.2987843-4-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2022 14:07, Dmitry Baryshkov wrote:
> hdmi-mux-supply is not used by the SoC's HDMI block, it is thought to
> power up the external logic. Thus it should not be a part of HDMI
> bindings, but it should be declared at some other device in the DT (like
> HDMI mux, bridge, etc). Mark it as deprecated.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
