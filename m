Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6F1A66224C
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 11:01:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236932AbjAIKBG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 05:01:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231777AbjAIKAf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 05:00:35 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5C64175AA
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 01:59:36 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id m3so5863854wmq.0
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 01:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+Cn4vLeVySoBtqVu3i41sS2U3Dt5cRoRgiGZVokmaYA=;
        b=q4AYeeRaibX7fUgiXkPtELQBLJ0kUN05+wyCDe6L3i2eK7oPhTomiBOt6eT3u5F9Ld
         1fuZ4+l3AgKXVPYUDY/08kPnKo94oALnGFF6UeF+5qiRcAUPjX2IqeQwtadDluJY1VL5
         ndIAwNeUBRRqNTDwD5m/Eu/bQCy0CoRHSR2Qmf+YIrDK6+iqr9iZzOVKJJcZ5xstms5z
         L74fDxuHfftSR/DFNqQG9rj4XQQ0Fe2k2DtwBskfQcgyrRWvInLRUY3MuyJSrQvZgZnD
         fk/5djVGFzQPsHyPlw1/z4KUfVK4Y6BIw9y46Q9YgkxUaVlj4mYPa5FT7dVXHN6gYQ+t
         8F6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Cn4vLeVySoBtqVu3i41sS2U3Dt5cRoRgiGZVokmaYA=;
        b=3Hdq8s7c8pEuYF9u7pTFmT+ZfdJBFe3NNhzREJ+zksFpKnK+dB5+A9H81rBXoeRZ+k
         yHgnm7vrmA5FqH9y18fbji34jW98ExMr3lvsIIFJSH+nE5jcWn9SWfPBLDPQdn/B3vJ4
         IJh18CMrNLnG+lwjXJhfGqiMvLYg+qzNvjjzdtqLSay6FDXjX/OL+9H+Pdy0ng+M2VSn
         WMhWNk/ilIivxFz7spCpeYsrAj/fZlUU4mcjixR/rW3Y/rG3mhbjLO3KYLwgtBqvndbS
         6zBhSgVHtNpcMKskmoYvPXafg19yvwzS9WrJYGVRiVhqRgmFRUt3NVKXcRzeXL2yj2fK
         xTPg==
X-Gm-Message-State: AFqh2kqnekqDPoxxvxzzdfOkHQSgC3t1le0qh4MsWlDN62T6aveXQymM
        H8L45vlCgrLw/lE+tLEUWzFLaw==
X-Google-Smtp-Source: AMrXdXumq0LLDXjebDPOt/mbrfyEvhtsOKdsYIqeFv1T90LrZOYUbvJ/vcGt8U4kT2anrYBvrbe3cw==
X-Received: by 2002:a05:600c:1d89:b0:3d3:58cb:f6a6 with SMTP id p9-20020a05600c1d8900b003d358cbf6a6mr45676516wms.41.1673258375373;
        Mon, 09 Jan 2023 01:59:35 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id iv14-20020a05600c548e00b003b47b80cec3sm17318996wmb.42.2023.01.09.01.59.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 01:59:34 -0800 (PST)
Message-ID: <1c2312e6-73cc-af77-3ce5-75de2bc70213@linaro.org>
Date:   Mon, 9 Jan 2023 10:59:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: display/msm: gpu: add rbcpr clock
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20230109054407.330839-1-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230109054407.330839-1-dmitry.baryshkov@linaro.org>
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

On 09/01/2023 06:44, Dmitry Baryshkov wrote:
> Describe the RBCPR clock used on msm8996 (A530), MSM8998 (A540) and
> SDM630/660 (A508/A512).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/display/msm/gpu.yaml | 2 ++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

