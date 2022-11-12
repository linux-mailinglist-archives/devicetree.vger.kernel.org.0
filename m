Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20C8C626948
	for <lists+devicetree@lfdr.de>; Sat, 12 Nov 2022 12:49:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234584AbiKLLtW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Nov 2022 06:49:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233681AbiKLLtV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Nov 2022 06:49:21 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB44713DF7
        for <devicetree@vger.kernel.org>; Sat, 12 Nov 2022 03:49:19 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id d20so7237326ljc.12
        for <devicetree@vger.kernel.org>; Sat, 12 Nov 2022 03:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Aiz88a/UWF1mDwyihRN1pRlhLSpbfmr9kqBgpQ71UU=;
        b=sPZeq5gP66O2VJ4OcWwMEAJdanitpwOUakQLTc5Yu1E0hjroGMz1iYVnpepAS4l+lf
         LvDaHj/ywGRIsNHrRRps9EvcTv85o68RU5+mhnSLzPFv2gBD0pdegvmH6/qI96FsTgef
         J5yZinsafX/z25K5VFK8sa1JIoMBGlEA0MOG+WSLeIHjhPHSG6MSk3vOLQqU/YhNfvpX
         9ANGSFtmfKUfuauL3Qxpxld3N5pdUE1Uc/5pnt0ppovO7q+cEmonBGdCajO7u47EeQht
         WLVoEc4hiMgQHYZTuGpVf0b0SU1hkIPDQvZJAsHsbJk0ehiz4PPHb2VszrCNxuXvC1eF
         sy0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Aiz88a/UWF1mDwyihRN1pRlhLSpbfmr9kqBgpQ71UU=;
        b=caOMj3ZbhDN4FC1Nq9vUQRiCLfISELfiRkiXDcKwsC9Qf4lyV8OFXiUoR2sGFVedqn
         /y1SGpg+4w46AciegOW7myuwej9zrqlKqnCY/7CzjBRgWxQeRClKvk5Zxj9ZtGXoOGk9
         igZ5zzsAmVGwmpP3stTWubcHYl826iIcj7XKV9jqGY28phbygSUqYA6asB8L5qst+FCK
         IWdGGRVQRb7jFGlbHCztljbt+Yq1QyWUCFclQnwOdsMbadgXE4HzGYUS+Lx6qlITj61d
         azd0celt9Ru+C7GyXX8ximRBzdfEGEziHiHqMvAIsEVydY9PrV3GQap8zeT2ITJMGg+W
         sErw==
X-Gm-Message-State: ANoB5pmErfUVDMhIp8zmX/lmfem70sEwrSi4ekaEcEVJGS3BbMj/thp1
        gLM2ToZPX4SEQDuAW8Lwih3NQw==
X-Google-Smtp-Source: AA0mqf76UNssSrdqRc8o2C9SAs0oBaiwKLfmyBfB/2INeKn33JZw6A2p7qfaYjWtgNm8ZFiXroWhXQ==
X-Received: by 2002:a2e:300b:0:b0:277:31c3:c9a3 with SMTP id w11-20020a2e300b000000b0027731c3c9a3mr1733250ljw.473.1668253758283;
        Sat, 12 Nov 2022 03:49:18 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d13-20020a19f24d000000b0049ad2619becsm836125lfk.131.2022.11.12.03.49.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 03:49:17 -0800 (PST)
Message-ID: <a8a4f889-d69c-c6bc-25b6-755f8d6d934c@linaro.org>
Date:   Sat, 12 Nov 2022 14:49:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 2/3] phy: qcom-qmp-usb: drop sc8280xp reference-clock
 source
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111093857.11360-1-johan+linaro@kernel.org>
 <20221111093857.11360-3-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111093857.11360-3-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/11/2022 12:38, Johan Hovold wrote:
> The source clock for the reference clock is not used by the PHY directly
> and should not be described by the devicetree (instead this relationship
> should be modelled in the clock driver).
> 
> Drop the driver management of the reference-clock source for SC8280XP.
> 
> Once the other clock drivers have been updated, the corresponding change
> can be done also for the other QMP v4 platforms.

It would be nice to also understand, how does this apply to the sm8250's 
usb+dp PHY, which has ref_clk_src, but no ref clock.

Bjorn, any comments?

Other than this question:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

