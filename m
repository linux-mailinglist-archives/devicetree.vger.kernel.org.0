Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64E255811AA
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 13:10:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238700AbiGZLKf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 07:10:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238784AbiGZLKe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 07:10:34 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71EE62C673
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:10:33 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id b34so10918532ljr.7
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PQoT/9aESy6cKgnq3qKItMEedeT8sT0bie9jvIUX+0E=;
        b=TyAjvgK6vMsf4yFceEPO32ykAZ2EroeXpFWIixcUnNwQ5uKhKmpbad0GqaTnHbRb+D
         Xls3tg65nC+2PzCb/an+blW795LXivyMPziF5T69PxBOdhfQcXTwcqc5n/asKiZrxar5
         VJCMFKzvVPvqHR62UFo22S37g6JjcfQOOtUqMoSQM689w1c2oMnVzSsPoCC0hj4HixLu
         e5moXJwDYErZgvOSBfyR4+TbtbncAJgj6On8fMcoM+87ui5AOUhdlxlHPbY/7NA0u5DP
         RJmo6mmgGEFxBeAECZRcox20aZExKFx/T4G2IUSTzQBvswodZQwsFA6ui4sZ5qyC7sMN
         mTVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PQoT/9aESy6cKgnq3qKItMEedeT8sT0bie9jvIUX+0E=;
        b=ITE8LgSNVtwmSRmGSkJuxVLvz1pGpKP8EN74XFrgPWm7JdRvoUN6hv/Ukye2lz4BQp
         +cEMAeZjxw0hleXEPhLEQyYq2FXH8l5gfrAP4vOBoqKNuRkrTEBLimzxIr+nyfiTjyz/
         nGPICZ9vLwHG2LbaDVu6yA30b5TZh/SQDvjH6WOzi6dj7RcN+zn4cWOWKYFb9fHX10de
         qVCHYbUj4IxidzPlXgxYYNj64kOsYp9gZtEF3TwnrTe2jOt8YCKYJHD2+48SgXAsiEHS
         +X+xk8OiZ3y8Kyi3egr6krcFnaa3akkrt8B2le8BWXXFSb/d1FeS19wl0MTP3rXTobjo
         dlAw==
X-Gm-Message-State: AJIora8n0zj8hCnxqWhXM2Chv+pkfmaTEdMdUpqMlC2IakncyCmwm+fF
        0+DqK0BX7BRBHq36RCE7jVz1zQ==
X-Google-Smtp-Source: AGRyM1vF4sBG9hH+Oh/N7qzQCKfItcHFL6WlkggHt+XBLNrJA6pFgXPHP/pQ9K4RqSU/GBa6wT++mg==
X-Received: by 2002:a05:651c:2328:b0:25e:14b2:9aca with SMTP id bi40-20020a05651c232800b0025e14b29acamr850580ljb.437.1658833831523;
        Tue, 26 Jul 2022 04:10:31 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id t26-20020ac24c1a000000b0048a7b5ee999sm2215561lfq.209.2022.07.26.04.10.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 04:10:31 -0700 (PDT)
Message-ID: <6316f6ad-b5ce-33f2-a074-a3f6f0db2da3@linaro.org>
Date:   Tue, 26 Jul 2022 13:10:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 4/7] arm64: dts: qcom: msm8996: fix supported-hw in
 cpufreq OPP tables
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Yassine Oudjana <yassine.oudjana@gmail.com>
References: <20220724140421.1933004-1-dmitry.baryshkov@linaro.org>
 <20220724140421.1933004-5-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220724140421.1933004-5-dmitry.baryshkov@linaro.org>
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

On 24/07/2022 16:04, Dmitry Baryshkov wrote:
> Adjust MSM8996 cpufreq tables according to tables in msm-3.18. Some of
> the frequencies are not supported on speed bins other than 0. Also other
> speed bins support intermediate topmost frequencies, not supported on
> speed bin 0. Implement all these differencies.
> 
> Fixes: 90173a954a22 ("arm64: dts: qcom: msm8996: Add CPU opps")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
