Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66EA7639800
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 20:04:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229631AbiKZTEf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 14:04:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbiKZTEe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 14:04:34 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C5F01AF00
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 11:04:32 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id bn5so8709516ljb.2
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 11:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JQJ0hoJWhx/J0XU85Lnws4+lfntD5Pjffo9diT48BKM=;
        b=byEv63T1rRbgnn0P6JpqyTCTFqbXB8M7NxaRs0DCgDSRm4OWS+v9iqs+hN3MtDL5mK
         hhVMuSW2Y0i6eEvl13CNQw8zM5Yn38jQwHgdFSe5B334d2aFFAcucGuNadbmj27vb9aW
         XJAs7YsziTyVmLJ14CrlR3v+0jjMyGiu/Ff3pxBq4P1pqi96ZUH0wvefwykK2r2rTiMD
         SosipYkKBAEKNLlVrqkFIAoGxFLkUBtG9bBlAcPv70YPQSM6+JDmocLSJbgTsC1BPLo2
         mEZoTKFG0SrYm0ZA3IQXmPwV0XA/VxfmA/Z04U0Tu5UvHIiXk4j6j1FtAqyrI4zsBlcS
         3h0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JQJ0hoJWhx/J0XU85Lnws4+lfntD5Pjffo9diT48BKM=;
        b=pJE00V8UdbkbRMbgqLMRY8tr3K/AeduY070a8kwmWFN5i81ocQ6rd3B2ZIroo2byZF
         F4tgmDJSdo5FaK8pmgnR7NZauGAv05SDV97W7xWnvQ6ptmgrUNZT7FqKUktD7l1q2Vmd
         khYlhcu3rc/mK33Rg+7eNoopDbpjaLodZkdFlqKllkdXupgQZLKjPv9tdsn3wObsT3Os
         2aUnBcTGqMCcx71zR0eGSwUtxcFqbEecR3NpmlmK5w7Gyt50n3A9uzLn0YpeSaz70ZjC
         CvPNR8p7NqwwvRr8Nerz9WD5lz8KdDvgAz9p2B22fEk/J/SCoQA5EplEbfzwfMniKZVA
         f4Kw==
X-Gm-Message-State: ANoB5pnEKZPGRtDbNrx+I4b0BgWfl+YSGBcYRzR/rKOhPAXh23fQPOZi
        /CFWChj3uRcsYZnTS/zPQSRqnw==
X-Google-Smtp-Source: AA0mqf7HxRVrGNL/rJzJF3mGojM4AEr4ENY68xddSsDi72yUwBZX+pS2vJIsrZQM6JDfPwuCrzOqtQ==
X-Received: by 2002:a2e:2a41:0:b0:277:77a:b53b with SMTP id q62-20020a2e2a41000000b00277077ab53bmr14252832ljq.59.1669489470877;
        Sat, 26 Nov 2022 11:04:30 -0800 (PST)
Received: from [192.168.1.8] ([185.24.52.156])
        by smtp.gmail.com with ESMTPSA id t8-20020ac25488000000b0048a8c907fe9sm996746lfk.167.2022.11.26.11.04.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Nov 2022 11:04:30 -0800 (PST)
Message-ID: <e4be5aee-b7e2-1705-daba-f4bd2521ae4c@linaro.org>
Date:   Sat, 26 Nov 2022 21:04:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 18/18] arm64: dts: qcom: sm8250: Add compat
 qcom,sm8250-dsi-ctrl
Content-Language: en-GB
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run,
        airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
        dianders@chromium.org, david@ixit.cz,
        krzysztof.kozlowski+dt@linaro.org, swboyd@chromium.org,
        konrad.dybcio@somainline.org, agross@kernel.org,
        andersson@kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org
References: <20221125123638.823261-1-bryan.odonoghue@linaro.org>
 <20221125123638.823261-19-bryan.odonoghue@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221125123638.823261-19-bryan.odonoghue@linaro.org>
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

On 25/11/2022 14:36, Bryan O'Donoghue wrote:
> Add silicon specific compatible qcom,sm8250-dsi-ctrl to the
> mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
> for sm8250 against the yaml documentation.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8250.dtsi | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

