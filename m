Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2ED5746752A
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 11:34:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243430AbhLCKiL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 05:38:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243244AbhLCKiK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 05:38:10 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF0E8C06174A
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 02:34:46 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id k37-20020a05600c1ca500b00330cb84834fso4496953wms.2
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 02:34:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=n+Dus3eHmtLufPbm4SvZ5gg6kEi5fp5P2DSRbOjthl8=;
        b=uXuxTTbtb1pN1Bppn4P4bzToqQCL0jT41EcDem7jrDSh1wJMTvb6ZpJAsn1fMwQdfC
         VPNpuh05dOaHSi35Bhr3i1B6t2zjDgWjWScVacdHFne5KzH+pdZKIBt2TfjUmGLQb9QF
         DZ/WH9CZy98FKZ/ma1jHWueRlGBnNVUDkggbuvyc5cKGzjsssRE36RAgGdVEn11oxsrx
         rYewZPbOI33v8gfkXIi7CPxzlFoRNB9xJ6hWeahuUrD6pDW3IoDg+UwuBwNrjF8P5b6S
         C4aTgJVkUW5uwMU+d7o4gXXoRGH3eYAQNojRVcf/4ON69b0Vd5l51k0fKO3+o4qxFR67
         km5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=n+Dus3eHmtLufPbm4SvZ5gg6kEi5fp5P2DSRbOjthl8=;
        b=wP+m5w3yp3qC5GVb1WPTE0iM42sdkwlUcATAphJyCCzHPFYfz7xBJ3/8f47/hcdOGC
         ebZFFGSQ8UNbrlYgcbGlIclScGdfszxF6Rrohn6L/E1jxrzoHJpmtepl2boLi5RZ+un4
         Cjl+7Tp8sz7FGCMWECrt02Fi1mJCCRXK46JtsIRiNkh1g4UyiVo4Iq3LBQ9HRSFSD/dE
         rATQDtxFpqxwYTfluIw9PqxaPjBOxV/QhUINonoBlDBLBYrQUKEXu3Aqu4G3Wg6jspqC
         ixwlbYajYK67rsfr4UHQaeJI0CpMUwKGExZHBWvg+zpeVjfHpEJoGECCA47nogIPicFY
         VsdA==
X-Gm-Message-State: AOAM531T/WIXjSvWV8BHD/WzgVNJucTxrqgEKhc1yEB3Czy2/uWwKXKV
        m6ymDCy5OhZxRmA3MDtkWUx+Bw==
X-Google-Smtp-Source: ABdhPJw1oCGhQfauYMuvEYvwt9fqxymm+tx/pLU4hWhduokdPxXKS+1uo5bUH/HJIh+mk4s3NC6y7g==
X-Received: by 2002:a05:600c:6022:: with SMTP id az34mr14086321wmb.22.1638527685467;
        Fri, 03 Dec 2021 02:34:45 -0800 (PST)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id g198sm2321262wme.23.2021.12.03.02.34.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 02:34:45 -0800 (PST)
Subject: Re: [PATCH 0/5] ASoC: qcom: apq8016_sbc: Allow routing audio through
 QDSP6
To:     Stephan Gerhold <stephan@gerhold.net>,
        Mark Brown <broonie@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20211202145505.58852-1-stephan@gerhold.net>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <d8fd4999-0ecf-dd8b-ee4e-094063e941bb@linaro.org>
Date:   Fri, 3 Dec 2021 10:34:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211202145505.58852-1-stephan@gerhold.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stephan,

On 02/12/2021 14:55, Stephan Gerhold wrote:
> This series makes it possible to route audio through the combined
> audio/modem DSP on MSM8916/APQ8016 devices instead of bypassing it using
> the LPASS drivers. This is necessary to support certain functionality such
> as voice call audio. See PATCH 4/5 for details.
> 
> Also, qcom,apq8016-sbc.txt is converted to DT schema by adding it to the
> existing qcom,sm8250.yaml. The bindings are similar enough that it is easier
> to share a single schema instead of duplicating everything into multiple ones.

Yes this is really a good start, we should at some point in time move to 
a common yaml file, currently most of the dsp based dt-bindings very 
simillar, except some codec specific routings.


> 
> Stephan Gerhold (5):
>    ASoC: dt-bindings: qcom: sm8250: Drop redundant MultiMedia routes
>    ASoC: dt-bindings: qcom: sm8250: Document "aux-devs"
>    ASoC: dt-bindings: qcom: apq8016-sbc: Move to qcom,sm8250 DT schema
>    ASoC: dt-bindings: qcom: Document qcom,msm8916-qdsp6-sndcard
>      compatible
>    ASoC: qcom: apq8016_sbc: Allow routing audio through QDSP6
> 


--srini
>   .../bindings/sound/qcom,apq8016-sbc.txt       |  96 -------------
>   .../bindings/sound/qcom,sm8250.yaml           | 136 +++++++++++++++++-
>   sound/soc/qcom/apq8016_sbc.c                  | 134 ++++++++++++++++-
>   3 files changed, 259 insertions(+), 107 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/sound/qcom,apq8016-sbc.txt
> 
