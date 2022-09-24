Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07BC85E8AD1
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 11:30:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233435AbiIXJal (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 05:30:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233578AbiIXJak (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 05:30:40 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7F2FA59A7
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:30:39 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id u18so3681025lfo.8
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=IBvwqmIkee/mEk1eD5GIAynGE3bP9mLepq0/KSN1Z5Y=;
        b=XZ1V4ejxRvmjCcZUTxWLHU12whSdot5qtCzG6oCYK6lVY1sbvj3TqsS7MmDuj3M/8q
         3mF7YzORN893U9RMGOufMBgrwH3MAF9+ZBAMZaO1moTwyN3ChbdwRDeG66XDJEUjZGto
         0AF7g9mDbsnKceV7OtfpiOQ/aEDh5OuikwbkSi3Z47ga65fmbUnFLwWA0SYYxMkQThBI
         qNH2+Q8cX5psWunN+vWGyocL9pasWSehkiaZygVhfqC1uWvO9Kuap8aqEdhTosJGiuLv
         +zjktXpKqf89QVPX0kuq4GtlvHNuRGcah9Xs+u6kHqeBcz4dvOIn2xkAEO/4OPcBFaKp
         AhiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=IBvwqmIkee/mEk1eD5GIAynGE3bP9mLepq0/KSN1Z5Y=;
        b=ouCUYmW1bkmCBre2ReCMb1l1Wl/Uqhe1cf18yuZp7tq7migjBMwshFFCdFFSHjA2bU
         5rQOrv+j+Y03gncFo2AqtbH4cL8uyd537/sKKwTO4g8bMQJKwFgyzIUy1fNkdgBaiqMI
         +bFcb/vp4PhBYX6Uk3BErRY/JfYsmfxeI3l21NKJWBOr+aV946z5OKdSu2vMJRzVzERm
         puJzq/TG+jAuGT8YvogghH7//OTAwS+NjBvaj0MOTOFbCTakIIL7k/Gd5n0ndKodsiPZ
         YfmydLcPsGDu5YIMAd3t4JsWjBtUMuEoVcQGsPmPggnMYXGABEhsV0d6ciubSCROO0o5
         tWvg==
X-Gm-Message-State: ACrzQf0JNJDc+6Hkd4qjQDma2rqMZUlk7XvoUoGDu1raxSiTZTDymePW
        mzQj1TQma87nWBf3pP0SLGCJgA==
X-Google-Smtp-Source: AMsMyM4eY6Bb3ZQLBJIB0SXUbmPPatP5oPnH7NvZJ+Ska+7Q2v6jFE1iNDM12lNRUivZONcelFXghg==
X-Received: by 2002:a05:6512:2a8f:b0:49a:db9f:d498 with SMTP id dt15-20020a0565122a8f00b0049adb9fd498mr5158098lfb.435.1664011838085;
        Sat, 24 Sep 2022 02:30:38 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t3-20020ac25483000000b0049a5a59aa68sm1840353lfk.10.2022.09.24.02.30.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 02:30:37 -0700 (PDT)
Message-ID: <40cd341c-da16-7de1-bcb4-58d1d568ec43@linaro.org>
Date:   Sat, 24 Sep 2022 11:30:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 2/9] ARM: dts: qcom-msm8974: change DSI PHY node name to
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
References: <20220924090108.166934-1-dmitry.baryshkov@linaro.org>
 <20220924090108.166934-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220924090108.166934-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/09/2022 11:01, Dmitry Baryshkov wrote:
> Change DSI PHY node names from custom 'dsi-phy' to the generic 'phy'.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

