Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0474553A616
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 15:42:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345582AbiFANmg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 09:42:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236397AbiFANmf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 09:42:35 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C879040E42
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 06:42:33 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id e25so2403106wra.11
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 06:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0GytTj9uVTzJjxEXvcs09ax+kKcNDhJOHsmTGe+kH8w=;
        b=vkNdWZInZ7+8GlW7lJ8mbeICVbcaP8DQoN8ZodMXz63//NHmpWtnr9eII0esKGgrJ7
         XZYBnkrr/L3WwHZ8NWSVcJnc0y8O0CKd/oiv2XSilDkMaPN5i8KVJRKsC/hPW24GHylB
         54AL2z6qZj0V3FbKgFf+vjfTlrH8rXmrt1f7q9DazKENMR+nluo+ffa+1nO4G5bQ7sSc
         v2M78eXcOhW+t4BcTtF+Bxy/0iWu1NsuO0my9VSoIk+281lWAsZo28aNYazzWoN5si3Z
         pzuXUwv/h9Iqp9KRhqZRzgiHF9iW4Z9pvq8vLWzBaE61/yL/BNOcVhI8MTRK33xydOlV
         d1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0GytTj9uVTzJjxEXvcs09ax+kKcNDhJOHsmTGe+kH8w=;
        b=SJq1Yw/9xtfd+wFug14udVv4EkgBM3kP6WnXaMIFxp1O4+XCPHg23tbWzxnq5Fo8Zp
         Q2OIk26IE9EX1qo2SGgyPXe7OYvRaZCvjzSmZdni4lYA1LU6UX60rG0CKMOqtMaCYogM
         ccqKboLN9gXpyWFTo6YzI//JokyeSUOim9x5LCPyJ1U8tzvwVQbgkQTbQyBd1JtPMbRq
         THEJCIYLw6dX23FWozY2PbqL05gRyE8cqPqSjD+zatF/yd8vap37oYHlAtUfcSQSt5jz
         h52/fuuHo7llb4JKU4YrBszo6BYMVK+2IYxZeMbLMWCHCp7nEAgfkKTDF/TdoD2NXiT8
         XdNQ==
X-Gm-Message-State: AOAM530A7vQnH95/hKyVp8KF8xQm+3aDrFOi54EQxCVbe83ev9Erh5g6
        A1+XHLlM1llICd8NbJbdCCeJUQ==
X-Google-Smtp-Source: ABdhPJw0w+np9l1PjYluSYsyZUX4C+fqmoxAweXAcsxF3ASzI26AfWihFIw/6vfhS7xpLk/6VmugwQ==
X-Received: by 2002:adf:f789:0:b0:210:3534:636c with SMTP id q9-20020adff789000000b002103534636cmr12231263wrp.273.1654090952330;
        Wed, 01 Jun 2022 06:42:32 -0700 (PDT)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id j26-20020a05600c1c1a00b003973e27b789sm7304163wms.27.2022.06.01.06.42.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 06:42:31 -0700 (PDT)
Message-ID: <2a520eaf-c1de-aa91-3029-83f5469cdbb0@linaro.org>
Date:   Wed, 1 Jun 2022 14:42:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2] ASoC: qcom: soundwire: Add support for controlling
 audio CGCR from HLOS
Content-Language: en-US
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc:     Stephen Boyd <swboyd@chromium.org>, agross@kernel.org,
        alsa-devel@alsa-project.org, bgoswami@quicinc.com,
        bjorn.andersson@linaro.org, broonie@kernel.org,
        devicetree@vger.kernel.org, judyhsiao@chromium.org,
        lgirdwood@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, perex@perex.cz,
        quic_plai@quicinc.com, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, tiwai@suse.com, vkoul@kernel.org
References: <1652877755-25120-1-git-send-email-quic_srivasam@quicinc.com>
 <CAE-0n53g9rWks+euk5KHBzmJNEB3xLbJzMgCxN52DO5x+9-Wgg@mail.gmail.com>
 <51b8aca1-e038-4907-e973-ebdbebaf9b28@quicinc.com>
 <YpaXZ6KfApGebkBy@google.com>
 <7c74868d-624b-c18e-b377-026e70813fcc@quicinc.com>
 <1ec64a99-cfcf-c903-935b-d1bb0617c284@linaro.org>
 <61c151e2-c44c-3b84-9fed-a83abef83c17@quicinc.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <61c151e2-c44c-3b84-9fed-a83abef83c17@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 01/06/2022 14:15, Srinivasa Rao Mandadapu wrote:
>>>>>>> +       ctrl->audio_cgcr = devm_reset_control_get_exclusive(dev, 
>>>>>>> "swr_audio_cgcr");
>>>>>>> +       if (IS_ERR(ctrl->audio_cgcr))
>>>>>>> +               dev_err(dev, "Failed to get audio_cgcr reset 
>>>>>>> required for soundwire-v1.6.0\n");
>>>>>> Why is there no return on error here? Is the reset optional?
>>>>> Yes it's optional. For older platforms this is not required.
>>>> If it's optional then either there should be no error message, or the
>>>> error message should only be logged when the version is >= 1.6.0. There
>>>> are few things worse than a kernel log riddled with misleading error
>>>> messages.
>>>
>>> In that case, it can be done like below. Kindly let me know your 
>>> opinion on this.
>>>
>>> if (ctrl->version >= 0x01060000) {
>>
>> This is not true 1.7+ variants do not require anything as such.
> 
> I think it applies for all upcoming versions as Qualcomm Hardware team. 
> Here is the not from HW Team.

Am testing sm8450 which has 1.7.0 and it does not require/have such control.

I dont understand what is the issue in adding a flag to
struct qcom_swrm_data.

This should give finer control rather than matching anything > 1.6.


--srini
> 
