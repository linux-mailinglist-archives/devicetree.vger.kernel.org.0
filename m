Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B0CE665FE4
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 17:02:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233529AbjAKQCI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 11:02:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234417AbjAKQCG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 11:02:06 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EE141004A
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 08:02:01 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so14732130wmb.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 08:02:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DjqMdLByHpLoEIU1jYOWhc1we/OiwFPjgi5FyeOCdB8=;
        b=ZrLQdUCY74MoBu0zoirjD4mlppIWqjcPOSUeG1WAvpBSUgu0qVyNoXWIKUobMtkL5u
         E9dD6ofp7GbYoovsl5KSTm0jdpDJDvrdlszOgoG6EJreslvykd8lx8ULyf+mi1XOAf1C
         io7qfSm2S1MJHDkqQVq9e1/knS3QaeD+rZgwwzR9ZIl3zutXDtbhemiaafvjb1yrPnwo
         QI9O37nCQojkKgLOq8Ldmpgd7R/8TSK4tK++NZmb4qnz6Yd5hnr6JE76vXCpB6QpSb86
         8OQ9nbWqrNGjDm5pdq2bi78XhB7f1FJ9/gqFRbx0AhN7Y3SMr3pVJgOmzzfTDN2rxxOe
         /zHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DjqMdLByHpLoEIU1jYOWhc1we/OiwFPjgi5FyeOCdB8=;
        b=GTZkdbFVk4ZCMkRX1fmNBsJGihvPOk22TOWj2zbdW6uQSJ4g6PbWx5PD7RIF0S5WEG
         ZSzg3anfysWLRq+enA/aSd+953J8vVEy9EDe7VVUq3nQgiFG10Exl3b8DCoX08PsTS87
         ukXiA5A8qdQAMztADJOXfe23LlF0srb5HBV10Ozg2c1t36xuVQsbF6iP1MNJLhDo7U36
         un4TeXm1xI/KpgmF6sPkjbbP4weQ4rR3ppt0yP/rfk0e5RQDFamPiZ4clLlm/2xVdHBT
         adyfHBBbqbCE9os2RKFggQhmuhMdw6uhvG2ljbQZ5HyYqrAZpfGReB4E363bi/hSWLzN
         MKEg==
X-Gm-Message-State: AFqh2koFhJxzI/upcKasQ4yS61GWGNpzsxB/CMajNEXAV0x2XkUmSj5I
        m0AcqT4Mbtpr8b6xARa9XPFjWW9jt1mtVCdpASQ=
X-Google-Smtp-Source: AMrXdXuk3q7XJQY4rIfLnB0mHA1lZZLrIadu5j8SGH4zSrdf1Cl/mdJp34MgXIym+vcCtyM7TBhD1Q==
X-Received: by 2002:a05:600c:34d0:b0:3d6:b691:b80d with SMTP id d16-20020a05600c34d000b003d6b691b80dmr52090685wmq.21.1673452920157;
        Wed, 11 Jan 2023 08:02:00 -0800 (PST)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id p3-20020a05600c358300b003d1f2c3e571sm26075424wmq.33.2023.01.11.08.01.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 08:01:59 -0800 (PST)
Message-ID: <00e70137-3cc3-877e-5435-ac15f750f466@linaro.org>
Date:   Wed, 11 Jan 2023 16:01:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH V8 2/2] firmware: qcom: scm: Add wait-queue handling logic
Content-Language: en-US
To:     Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org
Cc:     agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@somainline.org, robimarko@gmail.com,
        quic_gurus@quicinc.com
References: <20230111101718.9225-1-quic_sibis@quicinc.com>
 <20230111101718.9225-3-quic_sibis@quicinc.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20230111101718.9225-3-quic_sibis@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11/01/2023 10:17, Sibi Sankar wrote:
> +static int qcom_scm_waitq_wakeup(struct qcom_scm *scm, unsigned int wq_ctx, bool wake_all)
> +{
> +	int ret;
> +
> +	ret = qcom_scm_assert_valid_wq_ctx(wq_ctx);
> +	if (ret)
> +		return ret;
> +
> +	if (wake_all)
> +		complete_all(&__scm->waitq_comp);

As you explained in v7 that there will be only one caller at any point 
in time and that will be synchronous, so complete_all here is a dead 
code, isn't it?

Adding complete_all here is missleading and will require reinit 
completion in case you want to reuse the same completion.

AFAIU, you should remove support to wake_all in this patchset and add it 
when we really can do multiple scm calls simultaneously.

--srini

--srini
> +	else
> +		complete(&__scm->waitq_comp);
> +
