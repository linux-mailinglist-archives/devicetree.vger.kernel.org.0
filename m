Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A16B566423
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 09:35:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231153AbiGEHcN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 03:32:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231179AbiGEHcM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 03:32:12 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38C7512D3D
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 00:32:11 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id y18so2580681ljj.6
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 00:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PWneuAJ9+BwtDVWX9EGVrMHRNI896xMJ1kd4ynHr8vA=;
        b=Bd0hIYTRjsE866WnBumwJ4N178mSBPnEgdW+5z5AbhQXGu6dq4k5hZbq+y/Y4hY2Yi
         2DoQI6N+fRk3DLZzvywAmL2wMBjPwr4Hl92kX/ASdIlGPKu5TlUtOEyfIbQqbMcI5aIP
         hHjzvabj7XyymG0+hTc50l0jz9N/GSSE3K8ZAWP72zcrvf0OeYlMVYhkzPZ7jv6luo/8
         FkIKPGux8uETIZBzf2QAf77IMDYIFxKvi+VUy2IHT3aOTje4PupYS7eLeKGpLD3RCbKe
         OTA6/oAw/s8tUxn6aMyJLLHGYiKBcAzNaGeihLi/kl7fCSS+9rh2eI3LCocMVu2MwY8E
         YMNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PWneuAJ9+BwtDVWX9EGVrMHRNI896xMJ1kd4ynHr8vA=;
        b=jLZGoL/0+2rtsdjY/SR9Mu1Cqs0xsO/FuvYyYckak5OyitPaY+nU38ZvARezYrw1fd
         UQ8BKe0sTM+VhUWBICBFOxiUWuLbADcUFNF7UKFQ8g0dED5vvm6/7npt7F72tc+jpojo
         WygiDzzn9OdzO4AcDb9WYkNcPNQPJxye4o3wKgUSzsiT5+P3onWH1cauzmI0aVS2suQO
         qjW1jk3nu0Xfqlks2Tm2Lx5HjqJ4oMLKRvisvODfTQmCqJjNcNvnjp/QTBEu7Cp6LkSR
         nr1zGZvJyNFsaEjV4y8pHdnLJyf785du8O0jQZyyI6b8NzkCa9sH77JOTN702OZLemuy
         J+0Q==
X-Gm-Message-State: AJIora/h8vA/F8jDmYqtEp850D5rlKhBouXv49mpFe9qJ74pQYw9ZZfH
        4m5+HqUWCjhYkEikcNuHirIxVg==
X-Google-Smtp-Source: AGRyM1tu57jxC+VL6f4xpGAMXs2L40hmkgOX5GUMFpKXSFLtpuT2ISONGdNcPCCxbtLI+XvdQNsG7A==
X-Received: by 2002:a2e:84c8:0:b0:24b:50bb:de7d with SMTP id q8-20020a2e84c8000000b0024b50bbde7dmr19039347ljh.40.1657006329594;
        Tue, 05 Jul 2022 00:32:09 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id z18-20020a05651c11d200b0025a9bbe511fsm5406628ljo.70.2022.07.05.00.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 00:32:09 -0700 (PDT)
Message-ID: <61708384-6c29-6bb6-aef0-8bad061c1f7c@linaro.org>
Date:   Tue, 5 Jul 2022 09:32:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] ASoC: dt-bindings: qcom,sdm845: convert to dtschema
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220704153824.23226-1-krzysztof.kozlowski@linaro.org>
 <YsMaW6cO2fEfTGPz@gerhold.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsMaW6cO2fEfTGPz@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/07/2022 18:50, Stephan Gerhold wrote:
> On Mon, Jul 04, 2022 at 05:38:24PM +0200, Krzysztof Kozlowski wrote:
>> Convert the Samsung SDM845 sound card bindings to DT schema.
>>
> 
> Nitpick: s/Samsung/Qualcomm

Yes, thanks.

> 
>> Changes during conversion: do not require 'codec' under dai-links - not
>> present in all nodes of examples and DTS; not required by the driver.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  .../devicetree/bindings/sound/qcom,sdm845.txt |  91 ----------
>>  .../bindings/sound/qcom,sdm845.yaml           | 166 ++++++++++++++++++
>>  2 files changed, 166 insertions(+), 91 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/sound/qcom,sdm845.txt
>>  create mode 100644 Documentation/devicetree/bindings/sound/qcom,sdm845.yaml
>>
> 
> Can you check if you can just add the compatibles to the existing
> qcom,sm8250.yaml? It should be more or less identical given that the DT
> parsing code in the driver is shared between all these SoCs.
> I already added the MSM8916 compatibles there a while ago.
> 
> It also documents some additional properties ("pin-switches", "widgets")
> that are supported for SDM845 through the common code but are missing
> in its binding documentation.

I thought about merging these but then I would have to disallow these
properties, as I assumed these are not valid for SDM845. Are you saying
that pin-switches and widgets are actually valid for SDM845?

Best regards,
Krzysztof
