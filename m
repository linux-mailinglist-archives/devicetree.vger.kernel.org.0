Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E10D4B5A0F
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 19:40:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237431AbiBNSkr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 13:40:47 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:47548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351242AbiBNSkn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 13:40:43 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53DEA657B1
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 10:40:33 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id p15so39319744ejc.7
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 10:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8VBh79+Ny4PA51B+SNydGU0RP7+vIBXuirFrG98oTUI=;
        b=EKWS4ZcN8j/y+e+UDo7BAsXTLiGLDGVs1ahspXmtcfR36HMSDxYj4hnPSyGmHAnnGB
         +o0BNZO8w66S0VO8zRU11UabZr7OR0PfCFxN5d7VnMf35XOdZ1DjnPvoO+zbAJVMildU
         ZErWmf0OHl7TzS7q/vDAk6cY3JRIzUxQrSaj5MaX3tQ8Lwx3jQaEgrVWJNAPcbq1adHh
         iF3BDX6SzSJXPHZJzbiq/clCj72pkLNkFMVbK/gkq/iWtIN49/buPAexp5UtaXj8eimY
         xOrhH+kOxVi9Vw0j4kYPv9zxx8flEN/kB8ffEI4sXUFNVY+pgvJuMIp8upux4H8YViQF
         RWRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8VBh79+Ny4PA51B+SNydGU0RP7+vIBXuirFrG98oTUI=;
        b=iccUyKPnvk4KbVQ6663UghoAStA08Ul2wCbORFfWcZerQq4zfUFRcWuCwLkIYSgj+O
         6v3f8DTIzFck85+C4KvIv5Amg+fdEGgONIie7G4iCo/zChw2SUfcVuNzK1Uves+YZHkO
         iWFdTzVb5AiKR15/g5neCrR7YaaOOaYEJxNcywnMPRzVcPIFeQbXY5m7m1OO/7+diG9R
         NIzQy1slMBotqswQJ6QD3jCClCUQE1gD/MX5XdnNjIgcrmWf7cFsSjX9/HUDbF6a7J99
         5AQ6A1B9ARUf867oi+m/NYqlvcRnlKyEhjCFOxE1bYF+2WQTJA1dciiPnRx3n1LtYe90
         IIPg==
X-Gm-Message-State: AOAM531IaR3aF/jLaJz/zsnOJxwvFA1AbuL8eC5Ai7uBeGG57TA5Gr6K
        fyTf6jjvEQPmsiOeTMZqDRlLYA==
X-Google-Smtp-Source: ABdhPJzcf/bY0fMRy6QzFYpyNVamteykkK9AxwzIMrV2bm0KQUR//QzDoLIE52Qt54+xHwPIA0ZJmg==
X-Received: by 2002:a17:906:5d0d:: with SMTP id g13mr74936ejt.351.1644864021411;
        Mon, 14 Feb 2022 10:40:21 -0800 (PST)
Received: from [192.168.0.30] (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id y16sm8076378ejd.72.2022.02.14.10.40.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Feb 2022 10:40:20 -0800 (PST)
Message-ID: <cf69e1b7-28cb-eaf1-1eaf-c4a7fc7e4ddf@linaro.org>
Date:   Mon, 14 Feb 2022 18:40:19 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v4 1/8] mfd: qcom-spmi-pmic: expose the PMIC revid
 information to clients
Content-Language: en-US
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        sumit.semwal@linaro.org, amit.pundir@linaro.org,
        john.stultz@linaro.org
References: <20220211211959.502514-1-caleb.connolly@linaro.org>
 <20220211211959.502514-2-caleb.connolly@linaro.org>
 <20220213165550.13051272@jic23-huawei>
From:   Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20220213165550.13051272@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

I've found some pretty bad bugs with this patch (specifically qcom_pmic_get()),
please do not merge, they'll be fixed in the next revision.

On 13/02/2022 16:55, Jonathan Cameron wrote:
> On Fri, 11 Feb 2022 21:19:52 +0000
> Caleb Connolly <caleb.connolly@linaro.org> wrote:
>
>> Some PMIC functions such as the RRADC need to be aware of the PMIC
>> chip revision information to implement errata or otherwise adjust
>> behaviour, export the PMIC information to enable this.
>>
>> This is specifically required to enable the RRADC to adjust
>> coefficients based on which chip fab the PMIC was produced in,
>> this can vary per unique device and therefore has to be read at
>> runtime.
>>
>> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> Hi Caleb,
>
> Looks fine to me, though obviously needs a tag from Lee as MFD maintainer.
> I'm assuming I'll take this series through IIO once everyone is happy
> with the changes and hence it'll pick up my SoB, so I'm not giving
> RBs or similar in the meantime.
>
> Thanks,
>
> Jonathan

-- 
Kind Regards,
Caleb (they/them)

