Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB5835E9C51
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 10:45:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234489AbiIZIpk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 04:45:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234492AbiIZIp1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 04:45:27 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D5C71E735
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 01:45:19 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id p5so6562950ljc.13
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 01:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=cvU2XIchiMDiV+hHdATDuRH6mCZwoYVvJBbGawSOFdU=;
        b=nrYPAVdO2/tD7bq9ceNtVu9kgPqU0TKFLtBGCo2FuWhIyxYA4lzQto7Lcyjb/8jgD9
         SOZ39eK7qq17yccSxF3Xjs7EpuPL5Xg0FgT8QUAdGOVGMpGnLmwFaHzer0M2zWw/f44z
         oToNkQLXiENJdz42GwYC35JalYbaglk5f4CqSn9L85fp9TpkJ6JIv/MC5CmtR3wTAlO8
         R6/iLJ4q/hwvWLvoA5IQMPyp47ft/X+LLdwhUNv5UXnbVLHYqVOAuUz4s+YOaDqIhZjy
         0xW0EK/9M4MNc7ZXlo5D8phtvvveoBiTCzo2T6wtiJUq8tPnfHdEggjPQwux4GQO4GNZ
         Lzqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=cvU2XIchiMDiV+hHdATDuRH6mCZwoYVvJBbGawSOFdU=;
        b=wrzYOQpZDtWLD+ckWFrXaoCM2c0+NJ5dDcGquwzjfc0FGmajggF/m+hkow5L1adzNn
         fCREmhDNgyJGowjL05Wbt6oXoWinUDTsT2tI3TmHbmV7hvZPgG/L4P0BGeH51IC953hb
         3Oc2vzk94FTL7SJlqMXfyRain/rG3FnpiVgBdH7ylMJHM5ptT5s9VLRSqcIaBKLrKFZy
         QzyX7GHwMiReNKyU89LC0saXLK9qxWRlmb3ac5keCMlbNtw0ddgYpkDS4hel7Ld7lPM3
         Bbrkt+Pb3NbAgDVLzGnNtBR2903yWXujYKClE7KCipzBMkNsC3u4hoHJvFIA7XWaZ3z6
         rFKA==
X-Gm-Message-State: ACrzQf1W0Auvl1uH3v3aGaZLBgFnarSNRnqIiutDPpTTcqi+TjNbUCfS
        gdXHR/fnRPRm+1DVZtX66zZm5A==
X-Google-Smtp-Source: AMsMyM5i3aN/WA4Sd2IbhQ5KutZppfLPvpeYPcGu4eRt1sKcYvdGILc0SkJWXPqluMHiqxy6yGg2/w==
X-Received: by 2002:a2e:5d0:0:b0:26a:9a2d:ca90 with SMTP id 199-20020a2e05d0000000b0026a9a2dca90mr6673501ljf.102.1664181917400;
        Mon, 26 Sep 2022 01:45:17 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g11-20020ac24d8b000000b00497a61453a9sm2461802lfe.243.2022.09.26.01.44.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 01:44:56 -0700 (PDT)
Message-ID: <55e543fd-ce7d-14d6-e4cf-37901ed88b63@linaro.org>
Date:   Mon, 26 Sep 2022 10:44:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/2] ARM: dts: qcom: fix msm8974 tsens compatible
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220925161317.76356-1-luca@z3ntu.xyz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220925161317.76356-1-luca@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/09/2022 18:13, Luca Weiss wrote:
> Bindings mandate the use of the fallback compatible qcom,tsens-v0_1 for
> msm8974. Add it to fix the warning.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

