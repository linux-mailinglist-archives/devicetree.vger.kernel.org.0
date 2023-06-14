Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5910A72FE8F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 14:26:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244565AbjFNM0f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 08:26:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244494AbjFNM0X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 08:26:23 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ECAC1FD6
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:26:21 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f736e0c9a8so4646805e9.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686745580; x=1689337580;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rCGZgPTN0ui8g7pQQlxPZJI9/q3booqlqt8bk21UjiA=;
        b=WU1cNnrrs1fxkHbmtMjC7MfeuyTXL3wGtNJmCdw6cwLRDDbaxnfch1c0GcwZ6p5wNR
         UoV4l2Ozl9Y9HPHt3m5EKygp1HYHe9eODxI0oqM/BDFMamoevIkDt2Rcsd7kHxaaqw4X
         t5ZN/QgmbTrh2BAZYmMRNCHoiAPZZO+EVfiZh1HwqA4Gq/mm+CuNNKsbaxaJ1bXbF6p7
         pykJIw7WcQ/K2z0mAWjq0Y/ftovr9itnPnf/S35M5aUzURT/1E7H++7yEOYx/wlfzskH
         Ro3RLM+hqyGxVyuWKpxObUVsM2Nfd9vrtGbwYFPrkZ75H2Z5bowl/bsTjMD7+JZrWch6
         3fmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686745580; x=1689337580;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rCGZgPTN0ui8g7pQQlxPZJI9/q3booqlqt8bk21UjiA=;
        b=O/wsFXK98jT6uCughqG2liksogm9oUIy3rgdBnYeQu3MCtwu+u/wSLhGBoTndm52zQ
         DZcz021N4U+IYaBSl165ZRHXlIlHPMUHBesjm1/2LyJ75rDaAH2HUg2WRDFPQsHiF7FO
         itosyPk+o7t1tt8W8ab3Fe+w9hsfCX+tljiNlc18U50jWQxxqCVtRdjBGPmyXHhlD9FG
         9OxYXocQsfqW0ZaugWj4BpYiysgA/MbZxkl3H2nP4PBfzBR7WVkefnq0iJT7qF9WRDb7
         q2APhz+KXuBRW/7YzQICl/TfofRNWtizWCs6khQD2Zlm4052Ydde5s021j/QR9FVEk05
         IbLA==
X-Gm-Message-State: AC+VfDzfUZCUgrtJzFwMBKzHO6k/cTDP7uCTtEStXdAW9Ap0EazAYC0b
        qpVxATjQ1d0uL4xMckIXIgA6Ug==
X-Google-Smtp-Source: ACHHUZ5R4OIibcUus+EsC3XM4mzWHxrF1vkfSX14Dposly4TshGA87vyxhkTEVBXrb2sCP+j5GY16g==
X-Received: by 2002:a05:600c:3792:b0:3f7:e548:6611 with SMTP id o18-20020a05600c379200b003f7e5486611mr9165673wmr.40.1686745580440;
        Wed, 14 Jun 2023 05:26:20 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id l8-20020a1c7908000000b003f7f4dc6d14sm17114217wme.14.2023.06.14.05.26.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 05:26:19 -0700 (PDT)
Message-ID: <2f9675b8-da1d-05b7-4f8d-6751ab7f89f8@linaro.org>
Date:   Wed, 14 Jun 2023 13:26:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/8] arm64: dts: qcom: msm8939-sony-tulip: Fix l10-l12
 regulator voltages
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230530-msm8939-regulators-v1-0-a3c3ac833567@gerhold.net>
 <20230530-msm8939-regulators-v1-3-a3c3ac833567@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230530-msm8939-regulators-v1-3-a3c3ac833567@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2023 08:16, Stephan Gerhold wrote:
> msm8939-sony-xperia-kanuti-tulip.dts has several regulator voltages
> that do not quite seem to match what is used in the vendor kernel.
> In particular:
> 
>   - l10 is fixed at 2.8V [1, 2]
>   - l11/l12 are 2.95V max [1]
> 
> [1]: https://github.com/sonyxperiadev/kernel/blob/aosp/LA.BR.1.3.3_rb2.14/arch/arm/boot/dts/qcom/msm8939-regulator.dtsi
> [2]: https://github.com/sonyxperiadev/kernel/blob/aosp/LA.BR.1.3.3_rb2.14/arch/arm/boot/dts/qcom/msm8939-kanuti_tulip.dtsi#L671C1-L673
> 
> Fixes: f1134f738fad ("arm64: dts: qcom: Add msm8939 Sony Xperia M4 Aqua")
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

I think I probably just copied the Square regulator setup here, so 
thanks for doing this extra work.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

