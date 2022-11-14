Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FCD262827A
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 15:28:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236178AbiKNO2U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 09:28:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbiKNO2U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 09:28:20 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FCB12A27A
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 06:28:19 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id u2so13401206ljl.3
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 06:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I2hxniYKLGyV+EHyjHrD79GQs+/AJ83hMjmcQgieqoY=;
        b=pzNawZgDUf/VTCaFxHOC08rH/TLQJ/xL9hSmflupYASbh8e74ItwAdyuFhcY49QCT1
         4P2e37NsGYYYuuXt20BlDXWD5EDsNiIE6xyG2Zi7facGZQogfTeLEyRtf6JniLrtcbny
         yZhpuV9JjbhS0ORi0QMA83430h16GvincP769IhmTI2NiR18kBFkmEG8nqBssTYmsQHr
         rKlsP+ySPXU2Dwyygzl4Uv7kdwY9J+tLfQL+eUDSuqskOLMurF+OCIzjfUMqBLQHoXx9
         74YHkrvPat8YJdPRZYjtCIAlsaTjksdWZNSgFjyyECFTCFMcLu0JXkNlL1istP1uean4
         L6Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I2hxniYKLGyV+EHyjHrD79GQs+/AJ83hMjmcQgieqoY=;
        b=N2V5IWJkLcre/R9UMdB4PA/mCQljCvzZO1crwEBEc+1vPpI8IepmY6yiT2Us4pbbOb
         aAZAacVPtLSnRuVgEj8dBgHRopfu4nj2dE0hrGSmokSHdz5lxssz9tdJpXaHQXImre9G
         M5Rzs2XB09S+HTqwvshkF75QsadPmE2ATZ07yWMC0hnnsbFNq9eDUkdQnqdWv7x4b76y
         Ap/pVqmBMwqoSIQQlvB1DPTIKQVoZqNi/V2zImg4XJ0VhHGFUwlU55pvl6GLGHyioVGn
         cuS3meFnExAgzdz1eaD+vkzsCs8rvDByfyx9l06OcP688xM7E5C36hYNtpg2uH6VcsJp
         Bm3Q==
X-Gm-Message-State: ANoB5pnTh4nKt2VEAFSbObSG+MtZJ/P587PvVcjou27WvhbGVOxbXbpZ
        J3piqNQILMXuULyWeVIoLKxzTg==
X-Google-Smtp-Source: AA0mqf5B1pMtPoMXQFTS26ascT0uH7tA2nnKESsQar5QB/eDV4YcDhI+fElLajWQ09HLSjlOpRZsaQ==
X-Received: by 2002:a2e:6817:0:b0:278:f852:e75f with SMTP id c23-20020a2e6817000000b00278f852e75fmr2777272lja.433.1668436097500;
        Mon, 14 Nov 2022 06:28:17 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id i19-20020a2ea233000000b002775d0ae776sm1896409ljm.14.2022.11.14.06.28.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 06:28:16 -0800 (PST)
Message-ID: <0ae09be0-cb1b-dc27-943b-db64ca97b8c7@linaro.org>
Date:   Mon, 14 Nov 2022 15:28:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 2/2] drivers: arm-smmu-impl: Add QDU1000 and QRU1000
 iommu implementation
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221026190534.4004945-1-quic_molvera@quicinc.com>
 <20221026190534.4004945-3-quic_molvera@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221026190534.4004945-3-quic_molvera@quicinc.com>
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

On 26/10/2022 21:05, Melody Olvera wrote:
> Add compatible for Qualcomm QDU1000 and QRU1000 SoCs to add iommu
> support for them.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> index b2708de25ea3..0580a381a04b 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> @@ -426,6 +426,7 @@ static struct arm_smmu_device *qcom_smmu_create(struct arm_smmu_device *smmu,
>  static const struct of_device_id __maybe_unused qcom_smmu_impl_of_match[] = {
>  	{ .compatible = "qcom,msm8998-smmu-v2" },
>  	{ .compatible = "qcom,qcm2290-smmu-500" },
> +	{ .compatible = "qcom,qdu1000-smmu-500" },

The patch was applied but it contradicts work here:
https://lore.kernel.org/all/20221102184420.534094-12-dmitry.baryshkov@linaro.org/
which explicitly asks not to add such compatibles...

Best regards,
Krzysztof

