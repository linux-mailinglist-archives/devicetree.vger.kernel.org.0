Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 308AE616F30
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 21:55:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231310AbiKBUzI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 16:55:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230504AbiKBUzG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 16:55:06 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92C64A194
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 13:55:05 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id t16so13312588qvm.9
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 13:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OXUvCOmLRFj9V68bWV7FWt2GZPLPNIKne6rJYA5H4CU=;
        b=D1CQ9NtJXqPYE+vCPKr8iASAXv0p5iWoGL9eZG4QDqTyTmWqwJVNEiW5+qYfkXIug/
         uRYLmM+HHhEKiy+JI4h9xhHI5G+pPndloIVCl5zf8Zwp8ApcFy43qMjZY+8bkYoHHrm2
         8090vMlfGQbJ1ivIbwh641L4kkj3x3MTfHHuVEdRnurml6Wz1CSAPfqheOjqDjJ2HhV9
         Vxb8pMk/NhjW/KJChu7uDe8HkHsHG1Vb94KUnX1C2WzeslOB++L0imyHYV6mvKbyi0tk
         Tlv9rCGXBpAOIJ0jQOKiRN3EYsFMBNAiNj+cPWxv7EuCC98qp0Ch/SyScpW8xRzjmojQ
         OCog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OXUvCOmLRFj9V68bWV7FWt2GZPLPNIKne6rJYA5H4CU=;
        b=LJNIvn2lFRY7YrUlZKTeZSSqUKqTf6pUFUgy4IcjRx4l4oZWaksNx1um3TrpYtQG6X
         KOd2m7oub8NBKYDFJjMFR1BhKGyucXKhl6aw6KO9xNu2ptN/ggCKDCK4ZcuYmrho1Hfa
         yX/FWXI5poFHYB3R9by8v0g5LfeJGRWbqMmOcMhDERAIQoO/a+VZGrxtxTkTN1Vzum2M
         +WlsSCWgV2aMnyDyA98T0wiN2yWCmWGf92i0zfwANvR2nQQGh0wSaOUwSrxdIqCUhn9P
         xa05k/Rk2d8Qu5V6IvmiLH9091Z1tnOAb6kr/5xzcuXLuRzaKmYIVxN1rfAbmYk50KSr
         nB9A==
X-Gm-Message-State: ACrzQf0CG7mqnDGXVJHRtSvG8AmUHMxJ5YUFnkNVaBFFzzkDFIDzZUCa
        g9tZJPT6USDMiisDso8WDRG39g==
X-Google-Smtp-Source: AMsMyM7+29i6Elah2pR6EE8TlOoJQ4k6UjG6XeeZiHQ3jSqRDTJWquBOM9BrGIlRXeploqkyfUUhpg==
X-Received: by 2002:a05:6214:5182:b0:4bb:a323:4ca5 with SMTP id kl2-20020a056214518200b004bba3234ca5mr23147068qvb.121.1667422504780;
        Wed, 02 Nov 2022 13:55:04 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id u7-20020a05620a430700b006eed75805a2sm9176959qko.126.2022.11.02.13.55.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 13:55:04 -0700 (PDT)
Message-ID: <1af9189f-2a59-7c4d-6582-ee222051ee8c@linaro.org>
Date:   Wed, 2 Nov 2022 16:55:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [RFC PATCH v2 01/11] arm64: dts: qcom: msm8996: change order of
 SMMU clocks on this platform
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, freedreno@lists.freedesktop.org
References: <20221102184420.534094-1-dmitry.baryshkov@linaro.org>
 <20221102184420.534094-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221102184420.534094-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/11/2022 14:44, Dmitry Baryshkov wrote:
> Change order of SMMU clocks to match the schema.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

