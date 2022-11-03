Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8641C617E8A
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 14:57:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230156AbiKCN5t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 09:57:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230193AbiKCN5s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 09:57:48 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0492F14022
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 06:57:48 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id a27so1217699qtw.10
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 06:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ivkl6noHgtHxnX4HkMC2J/JKiOsQACja2BSXGG6Zr60=;
        b=NKgDYXtDWPA0b4HED1ao/6boMXAV3OGZXjeZrS/VcwcYD/TBlPD2cZUzmHVd4KXGMr
         Zl3MlJubi7RpgMRPsZgfnAtqs4hw6A+zB6lVMtco/R4+6G6BQmCYg6bk9Pwl+FhizR8N
         LMkHSdQraUw72Q3OeHb0ck8HXtjdxA5yaJ6pSdARUR+wCnJ2h+PR9RpJthz8+1DaTriY
         UG9NL6vE3sG+dh8rJvwg6xLXznrtp1gHaVO4en3lIzlzQZLhIvlttj2uZNghySmkC3bK
         58/+e1cA12+NGJJ2dypxoA+iHOPvAW53biZeXiGJrAZTreqzH26oHXuJ4olcRwDJ+a6O
         j0XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ivkl6noHgtHxnX4HkMC2J/JKiOsQACja2BSXGG6Zr60=;
        b=o7yX+Ob33sNIb5vcPt7NqFlk8vBPTf/0dy66ZbodlXRco1eja5n7C4tQ6zsuJ2QpKz
         zuPP76TLmlSRBa1V4KeJO+4EUtYROg5QMCcBHCSG5iS7RUDaqpftAFKCndimjvU89Kgs
         z51PcEa9Ut4nO+Z6L2qolitC1DTsKo5Ta5MQaTuM/4MtNIzWCkigouaZyQhUk6EliLvo
         ezemqBvo238Jzm5AaiIErgCjpQt2vgvFwHCHFSTmAPcfjpQspFXmM/v0+z+i7d9tmKw0
         QHYmjyV37PqYjPtfa3MTp7c5ZxsDzl06rPg6BhCLGPZj/K+yQRfjJTdvoycmtzGfRjPr
         Z6CQ==
X-Gm-Message-State: ACrzQf1vuAKmuiIdLVXsu8C2NYVDGWZZ0aN9vVILP3g4WtmX8KQbgNI5
        l9k/KsZBdCra4eU1IsRuBLO7hw==
X-Google-Smtp-Source: AMsMyM5PekZTVYkWuW+S4tREDd0YGuQ6PJTYu6qu6hX1kmnSyXtTOdVPhIHfXXJ16H0Am0bA/S2Xpg==
X-Received: by 2002:a05:622a:3d0:b0:39a:5634:eee2 with SMTP id k16-20020a05622a03d000b0039a5634eee2mr24806810qtx.660.1667483867178;
        Thu, 03 Nov 2022 06:57:47 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:a35d:9f85:e3f7:d9fb? ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id i19-20020ac860d3000000b003a5612c3f28sm54720qtm.56.2022.11.03.06.57.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 06:57:46 -0700 (PDT)
Message-ID: <6f6163f4-95ee-61d8-3442-88d1f2cfedbe@linaro.org>
Date:   Thu, 3 Nov 2022 09:57:45 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 2/8] dt-bindings: display/msm: add sm8350 and sm8450
 DSI PHYs
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
References: <20221102231309.583587-1-dmitry.baryshkov@linaro.org>
 <20221102231309.583587-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221102231309.583587-3-dmitry.baryshkov@linaro.org>
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

On 02/11/2022 19:13, Dmitry Baryshkov wrote:
> SM8350 and SM8450 platforms use the same driver and same bindings as the
> existing 7nm DSI PHYs. Add corresponding compatibility strings.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

