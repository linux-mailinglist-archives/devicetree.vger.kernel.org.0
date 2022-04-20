Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E038508ED4
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 19:47:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381315AbiDTRti (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 13:49:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245568AbiDTRtd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 13:49:33 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71ED446163
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 10:46:46 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id m15-20020a7bca4f000000b0038fdc1394b1so4220968wml.2
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 10:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Y0o19LlMLuvTnI/xl7SjhLZ4yjEbM01KZ2JzTFRO+wU=;
        b=K754ebAivn6X/9ER/aJ29m5lYECSX3zg3dPY0WZsEgvffqb2iEvH54j1KHGcZi6m9t
         +pL4xSL615v1HrTsFT1E1+lvfuarpSgBeQEnr+o6EqnmG12SfLJ1vHv0UROE7PuMVDZS
         lasMp/amHfMMIxKOkHpccnI9KAZhwOF73jpA2AeNJWN4uMaducamqBbDZ+9V518/B2gJ
         AO0QEWc5oRm8n8ddLvJ5j7AQQbugOPoh236ac29n990DqasvW9lYY5DK0FqOMAmcc1yy
         Nzr9ButMWwAgM3WhD1fuPrvSBcRwDp1HUQd1XT8wvmYNE3dD4I4lQheoFwg1+lhwatAV
         pj2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Y0o19LlMLuvTnI/xl7SjhLZ4yjEbM01KZ2JzTFRO+wU=;
        b=n9hiwFYYGkfyfN0wflVLkbKYo42jD89AneyuM6zyFE4Ln6ar+aEREijWv/F9+0VxP3
         E3VIoSJ7ki9LMrSscpo18r77ST1aOPiwN+jhRzYO/JRPFLVB0X+7lsiFYM6zrEAjde4B
         lcEOwRaZ5Rfb1dnqypTlSR1/q5++AnlzeSne5LzIC41S0ALIomuTiZDG5FlkmMEaoM4i
         rYpHUq8cap4xvBXsp+WAL6QwbQSqoNPSybQ+e8ZClAzPncO4LjIlyCcqWpyK0mSUXjnl
         JHbaXTcTW4mgQonIYgQMtOoSVKOYnkpnUQduAQZbS8OZ0YWUPbiPKnxaiNbk+EQNCORR
         pung==
X-Gm-Message-State: AOAM533nYGuQXjymrNHOiojPrvPndS9/RBNNkavrYfDHeA2pFPCMXyJB
        bC6drrHDh4LTqxs0QY9HW3pHyg==
X-Google-Smtp-Source: ABdhPJy4aiKqzcNlk3U2xq0/sZJ8FBAJfPZTjiM9up9l4jWht1pw6P6GPr9hofMGDUjHCxjRXhT7Uw==
X-Received: by 2002:a1c:7416:0:b0:38e:b8b7:e271 with SMTP id p22-20020a1c7416000000b0038eb8b7e271mr4705827wmc.7.1650476805039;
        Wed, 20 Apr 2022 10:46:45 -0700 (PDT)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id z6-20020a056000110600b00207aa9eec98sm374297wrw.30.2022.04.20.10.46.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 10:46:44 -0700 (PDT)
Message-ID: <e8ac9fab-85af-8f3c-eb68-c2d4d2f7f046@linaro.org>
Date:   Wed, 20 Apr 2022 18:46:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/3] soundwire: qcom: add runtime pm support
Content-Language: en-US
To:     Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        robh+dt@kernel.org, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, quic_srivasam@quicinc.com
References: <20220228172528.3489-1-srinivas.kandagatla@linaro.org>
 <20220228172528.3489-2-srinivas.kandagatla@linaro.org>
 <10eb3973-03c4-74cd-d28a-014fc280cdf8@linux.intel.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <10eb3973-03c4-74cd-d28a-014fc280cdf8@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20/04/2022 18:39, Pierre-Louis Bossart wrote:
>> @@ -1197,12 +1224,23 @@ static int qcom_swrm_get_port_config(struct qcom_swrm_ctrl *ctrl)
>>   static int swrm_reg_show(struct seq_file *s_file, void *data)
>>   {
>>   	struct qcom_swrm_ctrl *swrm = s_file->private;
>> -	int reg, reg_val;
>> +	int reg, reg_val, ret;
>> +
>> +	ret = pm_runtime_get_sync(swrm->dev);
>> +	if (ret < 0 && ret != -EACCES) {
>> +		dev_err_ratelimited(swrm->dev,
>> +				    "pm_runtime_get_sync failed in %s, ret %d\n",
>> +				    __func__, ret);
>> +		pm_runtime_put_noidle(swrm->dev);
> ... here it's missing?
> 
> I have a fix ready but thought I would check first if this was intentional

Its not intentional.


> 
> https://github.com/thesofproject/linux/pull/3602/commits/6353eec8dc971c5f0fda0166ae1777f71784ea32

Fix looks good.

--srini
> 
