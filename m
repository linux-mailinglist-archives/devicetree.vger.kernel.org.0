Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BA575EF236
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 11:37:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231949AbiI2JhT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 05:37:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235153AbiI2Jgv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 05:36:51 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16C7C147680
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 02:36:35 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id u18so1377832lfo.8
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 02:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ww6o0U2i2zJudwjdhnCm//cb1qt3k7L9xG3fGtIOJ0Y=;
        b=OSVXqv00/DBEjGvA0lWQtx0UoVTvunrlz3LSwOOhP1LROKbXDjxZwbQcFnBdn/q4hi
         fmXDXJlLPDms9ZLZZLyuSQ0atE2+f0w4QTrjLdi/W87F3QUTHl29bnNUuwcvz18r9z5d
         YEOL0A0SMER1G1NSI5AdBSxFsPlbaQzAX74iN/sm43FkRv/Xkd0pX88qLyCWb+xTjLZB
         iDqo09iDozXCNGH8QMvnasXxnTcsbAVtIH09EHTF2Ju6u9CGemeNBvorL4hUwMfLANXF
         Fr5LfX7Wj0l1XEm7aKwLZR6dYkRjWoLwmKR18NWR1p7oVZ1FxyigqwXKj+0XqZY++5UQ
         ybPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ww6o0U2i2zJudwjdhnCm//cb1qt3k7L9xG3fGtIOJ0Y=;
        b=SkI/89Kjr0e23xo4fAfjcyUk4RHB7pOBJXLU/HrLpg88Rf9oLmBAEarhSoY9PhP8pU
         8qomLU8pEng1Q3UP/KBmIOzDBxRE//5kdUjHJzIKH7yMfT7JYII/R1c8o9h/mb0z/LXv
         DiFnuTzwYUykxxZd7Os5OcLxTuJrKuFNDDX79hxKXlg538LDX7bDmfw4g7WR24vbFrDz
         lqfCFJjIjei75d9bJLF0EX6KmcRhPs4DBPlp76jlcOdTZJ6UdaRLm15yPFrIsehnK2pK
         Jv5Uv9vI2XbBbJ67ghyy8ZBQopfNPjeFR3E0kjTg5hsj1OGklrc45gZHRZZypq5jnpyC
         LjmA==
X-Gm-Message-State: ACrzQf27FdHyq7jH01UpvET0yEn9+S9IDYTfMWjhiW1TswoVkW4f+QFW
        IEvqSInN2Aac+zaAfzpGRPb1GQ==
X-Google-Smtp-Source: AMsMyM4Dy/g46rErBOUXB26zHgJUerXIox3jFEOJ+JO/d1gOihHxqiQK0J4+5dHNIj1rAVf/D9KgUg==
X-Received: by 2002:a05:6512:3f08:b0:4a1:af5e:5643 with SMTP id y8-20020a0565123f0800b004a1af5e5643mr1012675lfa.86.1664444194280;
        Thu, 29 Sep 2022 02:36:34 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s14-20020a19770e000000b0048b08e25979sm733803lfc.199.2022.09.29.02.36.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 02:36:33 -0700 (PDT)
Message-ID: <869ac2b0-b643-310e-7b32-0e81edef6e15@linaro.org>
Date:   Thu, 29 Sep 2022 11:36:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/2] ARM: dts: qcom-apq8064: change HDMI PHY node name to
 generic one
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
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220924094347.178666-1-dmitry.baryshkov@linaro.org>
 <20220924094347.178666-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220924094347.178666-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/09/2022 11:43, Dmitry Baryshkov wrote:
> Change HDMI PHY node names from custom 'hdmi-phy' to the generic 'phy'.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

