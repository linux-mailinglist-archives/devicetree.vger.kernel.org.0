Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7775E4F0C53
	for <lists+devicetree@lfdr.de>; Sun,  3 Apr 2022 21:40:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376354AbiDCTmT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Apr 2022 15:42:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376345AbiDCTmS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Apr 2022 15:42:18 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80FD427B1D
        for <devicetree@vger.kernel.org>; Sun,  3 Apr 2022 12:40:23 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 17so10386631ljw.8
        for <devicetree@vger.kernel.org>; Sun, 03 Apr 2022 12:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HtO1Op4EULGuNh03X4DV2PvRHFpqexefkL4qM7EQ8hs=;
        b=Vva63TToIflctX178TlzjoBSwvG9ymyH8fkUFzsJbWemLSthhs3fmUiyct2jJXfuul
         cBWrmGUChH7mrrtvKlbT+UvTMA1kr4EGroRz89d9ZgRjBKqjhw8b6Pjx9Drm+2KP3ffr
         qCaQcnpudkB1x6f/TsesEIgup+s8tupM0OkNckNeY94nH0LSyoG4CwZboW/Hdt25PAcJ
         sQFqduKzh+wRrNkQBH2bKey2AY958WP2O9dI5/Wdtz/wZ0MDwOZqcOy8Lz7GFJgKEqMC
         KQo46IBKc9PhJAb+EVBtnQVsPyqsfla9tpQgL26rsToQlejCjGBroM2zOCQ3JxObDDsq
         /ggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HtO1Op4EULGuNh03X4DV2PvRHFpqexefkL4qM7EQ8hs=;
        b=XOgr+bSW1O5DT0byRaS6ASakqF1R3zcprXJhWWINrKG44dqKufe0RgNzMA5Kv+h73x
         7XcJBa/qOEuG+GguvD8r8T946klSBaqCvVtmUpnioUjRLLmIgO1snIPehiUGf00dwxtt
         6i5+rZdGrjZII80YzdF0DYJHYXIfbxmVPfvT0XnVxYTE+PbbHv/cnGyP0B6jcL+ebUo0
         86U/e7aCWgxvGkN/PALPwvTLX1T9EMOUWGz5gx5cOnpJeVGIUICpbM42ONukNX6I4aIE
         mMrK4YFGrPQtFH9s9vdpkYnYnuzoa/zlNtXA8zcCf/BsCU8T5eP3il5JjCSiXFguvOI+
         So8Q==
X-Gm-Message-State: AOAM533Vqg8svqzrc1Vn1ERs0dyWNcnuMN+dzDen/Gf3aPvCbGMZHUNW
        nwRrO+109s8w9OHAppekHypaKg==
X-Google-Smtp-Source: ABdhPJw7jctSDj8NStIfPObweDUKTSouSVeuWxido0zNdu27djMaTmXtm8LsIEAvN6zkHp/iSjViQA==
X-Received: by 2002:a2e:3615:0:b0:24a:fc28:f0b3 with SMTP id d21-20020a2e3615000000b0024afc28f0b3mr10332615lja.4.1649014821787;
        Sun, 03 Apr 2022 12:40:21 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z16-20020a2e9650000000b0024af767c536sm860592ljh.19.2022.04.03.12.40.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Apr 2022 12:40:21 -0700 (PDT)
Message-ID: <19015645-86ce-5a7e-e2a7-d4af01417b74@linaro.org>
Date:   Sun, 3 Apr 2022 22:40:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/5] arm64: dts: qcom: msm8996: Revamp reserved memory
Content-Language: en-GB
To:     Yassine Oudjana <y.oudjana@protonmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Raffaele Tranquillini <raffaele.tranquillini@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210926190555.278589-1-y.oudjana@protonmail.com>
 <20210926190555.278589-2-y.oudjana@protonmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20210926190555.278589-2-y.oudjana@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/09/2021 22:06, Yassine Oudjana wrote:
> Fix a total overlap between zap_shader_region and slpi_region, and rename
> all regions to match the naming convention in other Qualcomm SoC device trees.
> 
> Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>

Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org> #db820c

-- 
With best wishes
Dmitry
