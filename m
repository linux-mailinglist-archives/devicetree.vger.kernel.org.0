Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12A39661A61
	for <lists+devicetree@lfdr.de>; Sun,  8 Jan 2023 23:17:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231410AbjAHWRh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 17:17:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjAHWRg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 17:17:36 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D9C711143
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 14:17:33 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id y18so3594280ljk.11
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 14:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oz4lnXq6zsv6hP/Mmlcfiy6rqGfdQvTRhmdQMJNbZiw=;
        b=R6MQHjysGHcISIPjYvCKEHfJ3bKwxcifjHORZSvbsljfF2On6qZOCq8z9UnzHwzABJ
         yjUpx/OoqRUr1MlfA/UURLULjE0mDBgVkQKogTn+0J8dh7Y3GMYOykIRMmT7rtEdV1s3
         6QM5ozL6w8BfAAjsvX9UOviF8cormULQPTOah2dQFc2ZVuxOAq3vMIsEpfEe2OHXa1/W
         EvaMPZfDpR+GZzcjydp5h77T91urWrThRX04qmpvwhqnhM9rtin62xcZpOsyRxba3bk7
         M4rh4qrPYGeJsnu42iNIHiDYP6Cqk73ocPbNGkbtmggGs0SzW3YFEefyW8Y3WIgJIibn
         hFvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oz4lnXq6zsv6hP/Mmlcfiy6rqGfdQvTRhmdQMJNbZiw=;
        b=1muuQ61MrHksh0j/UP3tPDlXnnasqaXUQ6Aygm+DTy/+IjwuZMQ1Af8XnHH5AO9Ui9
         GGOrXH3l/gToqD8xtMOvyjh6S70oawZtiUEwdu9mm7ngNrneoTNaCCoOaPJ7dko948aW
         6qlAlh0YyWOum8wxvwIafalT4hcRrzLUu0NvKcK7UlKdpsyoWpNYXkP/7t3TQKnz1EsU
         w93lBdid3+LxAzGf9ZmwdH9h5O4yQSOPEtiJ64n/iPfM6dpMgF9wi7YRVuoBNwa/970v
         02/6z1Ycn7dZgKLJmggKgkxDkKYdm6rfLDbHRsFzMXP8abcmzY6o/P6Vnil48edjaXuk
         OJ8Q==
X-Gm-Message-State: AFqh2kqArDYhQeYXkYAaLDzG1UPcLkLfIowntdH8jgT7XV3CtoIjsQ28
        9y7DGqVNTEmOwTfUqnSwqQYW/w==
X-Google-Smtp-Source: AMrXdXtGM6I56my/2fgVoHR1BvQfwPTPkgimjsiGQFXvfD9wtD3PMh/xmupc4zqACwPqkJd1UnzQZA==
X-Received: by 2002:a2e:b5ad:0:b0:27f:b693:59de with SMTP id f13-20020a2eb5ad000000b0027fb69359demr13049192ljn.42.1673216251675;
        Sun, 08 Jan 2023 14:17:31 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id f19-20020ac25333000000b004cb2e3089a7sm1246240lfh.38.2023.01.08.14.17.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Jan 2023 14:17:31 -0800 (PST)
Message-ID: <94172b72-4eaf-b7ce-d3fa-f181db779deb@linaro.org>
Date:   Mon, 9 Jan 2023 00:17:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 01/16] dt-bindings: clock: qcom,gcc-msm8998: drop
 core_bi_pll_test_se
Content-Language: en-GB
To:     Rob Herring <robh@kernel.org>
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org
References: <20221228185237.3111988-1-dmitry.baryshkov@linaro.org>
 <20221228185237.3111988-2-dmitry.baryshkov@linaro.org>
 <167320330549.188812.3791526731906955387.robh@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <167320330549.188812.3791526731906955387.robh@kernel.org>
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

On 08/01/2023 20:41, Rob Herring wrote:
> 
> On Wed, 28 Dec 2022 20:52:22 +0200, Dmitry Baryshkov wrote:
>> The test clock apparently it's not used by anyone upstream. Remove it.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   .../devicetree/bindings/clock/qcom,gcc-msm8998.yaml         | 6 +-----
>>   1 file changed, 1 insertion(+), 5 deletions(-)
>>
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Just at the point when we decided to keep the clock in bindings and just 
drop it from the driver :-(


-- 
With best wishes
Dmitry

