Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ACC1662209
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 10:49:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236620AbjAIJsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 04:48:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233682AbjAIJrl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 04:47:41 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED37413F32
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 01:47:09 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id m3so5840286wmq.0
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 01:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FKZOdRVhSJo3yaxrUarQJx4FQlBCZQiZZVkJFevOxtM=;
        b=ey8mA2Qpdik4m8Fl6j+lkcKYW2b48xTqXYdkAwGAM559ANUSIAbk+CVADLNpZIutzj
         fRPdSiW0RKPwMnzzxPZxhPZwyfL+9FMEMqlzlJePYi40/HtT4ovai/k6zWPZ7AwQuo3u
         zZrkhB1o5mJy/IpuRHWNlJ59pLvExgxPMy9bmqAPQC8bv3vqjd/y0f2UiZs1w7idKbHk
         V2pRmgwv7FzK2Ep0dfdvi7s/If0kI4L8/+WouRcLZO1Nfk4On4fhycVqnpEkbVbL4qWX
         V40rSXpgfkKGIqccZwqzs5iK03pz1ROfihyrqE4rSWX1f6eTHRvlK+zV9ORg+mnixl2t
         UTQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FKZOdRVhSJo3yaxrUarQJx4FQlBCZQiZZVkJFevOxtM=;
        b=TvXSokfI6r94CSeEihIa32xooKyHr3nigBem9PNSdNoBqRqmaCx4sYcOmRSzepraS2
         hjq3gmBl98ecAggZyBtfnWHK8rRyGhym5o7ncill9KcbDVTwNl4cr8B3fvaPk4GNfWWo
         JYRNmowUOBHt7lN1ldcGkQBa0whu4veuRfUmrv7lNQlwrU0mNJvXVRZ7d695/5E8j24i
         CZ1+60TzqTqqgUhw7GpxmQsCgXUA+Gazb/KNY0hwuDj/zPbxn5chP2lXeE0IIJxcYj+1
         Q/QEavPvaZGH3O+PVvXSmkO9ov9WTByqdtwx+oCvNsufm6lsOIn7u5ar7ZMGvDEpJr8o
         DveA==
X-Gm-Message-State: AFqh2kpdocPv9Oih/cB/TApeth5p2IX4kngXsZDcvqzcPpnzb0Be3kZg
        9DkqbXVNuFEBSAsw9RCw4zCiTA==
X-Google-Smtp-Source: AMrXdXuW5epZtV+HpY5xI25+04xlHHlJnY6+V4z4ksJEU4Swz5Wc6Gy1UxaqAFE3mLDJ3ppkOtIoOg==
X-Received: by 2002:a7b:c39a:0:b0:3d2:640:c4e5 with SMTP id s26-20020a7bc39a000000b003d20640c4e5mr44159365wmj.8.1673257628549;
        Mon, 09 Jan 2023 01:47:08 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h8-20020a05600c350800b003d990372dd5sm16749798wmq.20.2023.01.09.01.47.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 01:47:08 -0800 (PST)
Message-ID: <c2363f3a-1eb1-5e12-1616-b201dc05bdf3@linaro.org>
Date:   Mon, 9 Jan 2023 10:47:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 3/7] dt-bindings: display/msm: document MDSS on SM8550
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Marek <jonathan@marek.ca>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230103-topic-sm8550-upstream-mdss-dsi-v2-0-87f1c16d7635@linaro.org>
 <20230103-topic-sm8550-upstream-mdss-dsi-v2-3-87f1c16d7635@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230103-topic-sm8550-upstream-mdss-dsi-v2-3-87f1c16d7635@linaro.org>
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

On 09/01/2023 10:26, Neil Armstrong wrote:
> Document the MDSS hardware found on the Qualcomm SM8550 platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/display/msm/qcom,sm8550-mdss.yaml     | 331 +++++++++++++++++++++
>  1 file changed, 331 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

