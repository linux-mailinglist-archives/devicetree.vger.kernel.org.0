Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BA65574948
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:44:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235549AbiGNJn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:43:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbiGNJn5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:43:57 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED0E2F5B4
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:43:56 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id bx13so1537685ljb.1
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wbCsquwN1alwH8J3M5l4Cq/ivX95MU45M7AXoqrgl2Q=;
        b=VDTrfZBM8ClaRXetfV8CdxQ52IOBK9xRGfCl1ywFDqNZYyUfYrotPyc/Jyc9V237jq
         dQTXDJFu29YJ70kaqVKRgMLFp9d2FxNHQa7y0u4ey/KbcZqg/UltpGjY/uF2PvToXPJP
         7oazL/GFF7SdJ04NIjspWjFwsoo4iJ1NiQNi1aMTygLwiwChwtxyb9HD7mBWxhDnUZpj
         zpbqM0JIzN8Cbt5oQ80Czb8RobDEtf/x8WAT5LtaejgrCupwDwwpaSy/Dz5eAnrl+2Gp
         p1dwI/uae5d40inFHeYY1UFLyuct6WfsBXuGryhmhDNa7G8c6jP0NBY0tjlBMO5U9/d6
         BsyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wbCsquwN1alwH8J3M5l4Cq/ivX95MU45M7AXoqrgl2Q=;
        b=4XNIymzk15Rpf0Nlc5ouVZ4QXdMZrV2CKC4ngdpZSDUNs3uxpFw30NguL5hCFHTMJw
         m2XH7OiZcmub3oMlIdqjxcsOAtFDOgNvC38h+1LnMCzrleRntpZxFGczJhqC+ec9gYzg
         vwm8UAvLOMuXAih7JpCvVw7R3fnk0f9Yz7PHeP/ogk/9SN3IST4xfU+hFO50i3S2ZIGc
         rMx+sZrPhTOCsoTOUumKpr8YpdsITDletG8DqPXkGDh8cJiSiHbZ0MNhtIfRMYHYdmw0
         GgWtyURFuT+4qKh9l0Vf58RDu6nBGK3ZyOrx/N5yE8jPO8J4JdVARzKsdRkHY9i+O90+
         Cc2A==
X-Gm-Message-State: AJIora9nMbwfkCBgk1w4OfkO0jo6yNNz/y0O3AW7fwlwbn1pic6vejMI
        ptRl6Zaeq+SvlyBs1ccIJ5qDMA==
X-Google-Smtp-Source: AGRyM1u8QlejMdqMFEqmtkhj/2HQFasgTk3M/jud4cK/2ArinXKI5Fjk/WF8hOCTkbuUXx2INzsrHg==
X-Received: by 2002:a05:651c:243:b0:25d:9aa4:d7c9 with SMTP id x3-20020a05651c024300b0025d9aa4d7c9mr1424686ljn.35.1657791835374;
        Thu, 14 Jul 2022 02:43:55 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id w23-20020a2ea3d7000000b0025bf6099cdbsm191079lje.78.2022.07.14.02.43.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:43:54 -0700 (PDT)
Message-ID: <6e47e212-27a0-0adc-40c4-dea272fd2d72@linaro.org>
Date:   Thu, 14 Jul 2022 11:43:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 8/9] dt-bindings: msm/dp: add missing properties
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
References: <20220710084133.30976-1-dmitry.baryshkov@linaro.org>
 <20220710084133.30976-9-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220710084133.30976-9-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/07/2022 10:41, Dmitry Baryshkov wrote:
> Document missing definitions for opp-table (DP controller OPPs), aux-bus
> (DP AUX BUS) and data-lanes (DP/eDP lanes mapping) properties.
> 
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/display/msm/dp-controller.yaml          | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
