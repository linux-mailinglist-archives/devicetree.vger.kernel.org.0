Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADEBA5A24E5
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 11:49:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245433AbiHZJtQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 05:49:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344062AbiHZJtN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 05:49:13 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6031ED7D0A
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 02:49:08 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id d23so1280495lfl.13
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 02:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=UN9UNIYBZ5uGaqYCoTZ9HAq/Y6zWrMkzm6pHK+dxe5A=;
        b=L5OXYT+liCL+/QGJXKJIyiz5VcXhwEDMb5oV0Pve/89FEkMLfV3mgowMShnYIC6CKG
         b0LHap0ys0CWPTK4HJCusslBIXgYoBy9EnQsUoUBy/9xoQNLDSivlfJdAP192l7qu2Ol
         Ymk2z1OwlXV7yoVbZYOHEF3PB4yy/c+BJ+ub38cvBeSMD4tVL8UZL9PRRCl1btg7hAwR
         D4lrN31eYUG4xEZwWSOFB8QSmG8EdPPmutENh90ugKark7fVWEUmQMNYgElpaKy01tLN
         QybG5XMkIqTG58E5N31Fb3uU8Q+e8k/JmkkKN4YCUgT1CQiYxoqP0Y8bezu9u4Ym+/ui
         iTrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=UN9UNIYBZ5uGaqYCoTZ9HAq/Y6zWrMkzm6pHK+dxe5A=;
        b=4CqdTpBntTiB0eoxpruJYiSo0ECV79i8RZa7nNF5+Ki/gg607HOLt2Slrw9ijqCZic
         7Sf9NIzwftvVSTNIaF6gHXj8VVcVHs/A5JCZMtllSGZ0xj4W1iEwqFM0aREpALiuKpWl
         QiFvbyqJ5p7j2JdzsYHH1b/f2xmcUiJp2wY+Th1sfVvLOLa53+yxdxvjhFaN/T9Id3Bc
         AlzlEdL9nTFnQTZO1qfeCER8EHMTEhub2af3IZcPoeXX6ZjMomrFXvOWkdmUIBh197cl
         XV/LDJIVQ6TBVthjB2aDtLuCWyvBXI1gCzVJJxpzwmGMvdZzCcc+EwnVAQ+bsIWK+uUv
         bUjw==
X-Gm-Message-State: ACgBeo1Ut3NdW5NMoi8wdOMqPPRMceMcPv3Mx6N8Au+ElB+C1t/qF4hc
        VqdUsxlMPb48/xz3oW2lxrOZYg==
X-Google-Smtp-Source: AA6agR6MpFJqQMrOTZPh3nHGr7fhGGF/zOA3ps/9gCfSND5LRAOU+SUC4fx2y97CPu544wYrT23ztQ==
X-Received: by 2002:a05:6512:3159:b0:492:d660:4dd7 with SMTP id s25-20020a056512315900b00492d6604dd7mr2101345lfi.204.1661507346709;
        Fri, 26 Aug 2022 02:49:06 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c6-20020ac25f66000000b0048afe02c925sm320409lfc.219.2022.08.26.02.49.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Aug 2022 02:49:06 -0700 (PDT)
Message-ID: <53c72da6-b632-058d-9e3d-b00c286d9e09@linaro.org>
Date:   Fri, 26 Aug 2022 12:49:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v2 2/5] dt-bindings: display/msm: dpu-qcm2290: add missing
 DPU opp-table
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Del Regno <angelogioacchino.delregno@somainline.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220817062059.18640-1-krzysztof.kozlowski@linaro.org>
 <20220817062059.18640-3-krzysztof.kozlowski@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220817062059.18640-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 17/08/2022 09:20, Krzysztof Kozlowski wrote:
> The 'display-controller' child (DPU) of Display SubSystem (MDSS) uses
> opp-table, so reference it which allows restricting DPU schema to fixed
> list of properties.
> 
> Fixes: 164f69d9d45a ("dt-bindings: msm: disp: add yaml schemas for QCM2290 DPU bindings")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

