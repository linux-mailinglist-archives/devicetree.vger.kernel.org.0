Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EEE075E270
	for <lists+devicetree@lfdr.de>; Sun, 23 Jul 2023 16:09:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbjGWOJH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Jul 2023 10:09:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229626AbjGWOJG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Jul 2023 10:09:06 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A4892691
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 07:08:46 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3fc02a92dcfso27205545e9.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jul 2023 07:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690121295; x=1690726095;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uMHFOpN8dCQzirwYvbZZTFJXmJn2LDjFCTJbeswbnxU=;
        b=XG/58N02kpDOjPukeYV1EQN34n+dBiqrTjv70TFzku9I9ZCJZItP8n5ME+jd3PXita
         bYZW4cli9AwMlKss2dHHMiPTz7exku3u3mT9rn/QdWttXhho1UxXR0R5nDPVux53STjl
         Jdd8M8yBY0pMf7/3R2ZXEIuhxXpKjKhjcYrCgXzTtrxcdWCQ3Zzp3jUrB+ZRSEOFa3x+
         2jprA2NBV5AnFJgCCF1QwqMmt1pfS0WGDVuesiKgcjqlLCONQSj2hDF4caA1tZOXZEos
         n/WC9qt/fKsyX+I4ojOM4+xg8Gcq3mLqToC2c0VCEcqYh88HT/o75zqZsr5ZQthpRt0B
         kDYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690121295; x=1690726095;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uMHFOpN8dCQzirwYvbZZTFJXmJn2LDjFCTJbeswbnxU=;
        b=TIn6Z/NGHvyYN28DJwI8+qIKT/pjCzw4l5S87VW4Sl5/B0ehjokImMnYCFHTOR9zR1
         QuMg6fNq7LuG9QCjVLDimQv3qcTi7OeS6WgvW+KHOHSALnuw9LUe4oVbySNTm4GjprYj
         Fxqy9tJJofSQrfZoiNh0CHricbWlHVO4HstPVCKra02v9IAa1UJWzWuVF/YTx6VkpMzn
         hN65ntyPApL34f1WgZm/qO7LYEJdGpUPamB79UHxY0DddCPK7IUxiyvbA2O3b12Mkzkc
         0V30s2NOg11RpBffFFDH0a4RxtQO8wrcztavP5VoR0hDIVlkROJfmOFiQksVjg9ktab/
         HtXw==
X-Gm-Message-State: ABy/qLYQmArMUfhqVL1cxWuvbM0hlLQi6hRlieFKCBgqA7bpP+LEkq1z
        6kPq9SBK1upPW0aaXj6Wxo5EjQ==
X-Google-Smtp-Source: APBJJlGAvQeJv6UVRWAgX5S6bpwg7RgpsSx8o9aqpnbM+/1UnHXuubPaYqr8YPDHeNKkw4BzfUq1sg==
X-Received: by 2002:a5d:4a06:0:b0:30f:af06:7320 with SMTP id m6-20020a5d4a06000000b0030faf067320mr4579891wrq.23.1690121294681;
        Sun, 23 Jul 2023 07:08:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id m12-20020adff38c000000b003145559a691sm9822586wro.41.2023.07.23.07.08.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jul 2023 07:08:14 -0700 (PDT)
Message-ID: <24ea1af2-2304-f4f9-e83e-7ae7101e7edd@linaro.org>
Date:   Sun, 23 Jul 2023 16:08:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 04/11] arm64: dts: qcom: sdm630: Drop RPM bus clocks
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230721-topic-rpm_clk_cleanup-v1-0-cf6cd5c621d5@linaro.org>
 <20230721-topic-rpm_clk_cleanup-v1-4-cf6cd5c621d5@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230721-topic-rpm_clk_cleanup-v1-4-cf6cd5c621d5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2023 17:36, Konrad Dybcio wrote:
> These clocks are now handled from within the icc framework and are
> no longer registered from within the CCF. Remove them.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm630.dtsi | 29 ++++-------------------------
>  1 file changed, 4 insertions(+), 25 deletions(-)
> 

Are you sure you removed all of the instances? I think usb still has RPM
bus clocks.

Best regards,
Krzysztof

