Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09F57616F3B
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 21:56:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231381AbiKBU4r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 16:56:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229880AbiKBU4q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 16:56:46 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2E689FFD
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 13:56:45 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id cg5so78681qtb.12
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 13:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LezinHxIM/g7YL8z+NENWzds4O5w/AflVPEU1lWlKZY=;
        b=w9sx/pbHGUwWv9Z5UN0K5mv+FPBhXCKp7XOFTxC5GlkYuFPFOCSrH0lJbaRoyR9ds5
         M3nbjBZEtjaRofkiSNe/W7PL5B8sWHc4kWPU9YXp6fZd97IdyYxx8FouUzj+O58QTvGR
         WPj0JndkI4Ty3o0PI7uadzji0qC28abbkqucbhcRD0ZPO1wOn//rvRp4QN7ZtKAI3rsM
         qOLNI+KX7gbB2QpFvZKbtLYVUquIRk+26bG3dhreckluMrWktPV50KH2ljtCnFC2L8ua
         QxXi4bCDiS29bnp5oboD1IgwopNzGREkyYEYppmZPMX1uWGdZCcxXxVj8jOs440KdtzM
         XbTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LezinHxIM/g7YL8z+NENWzds4O5w/AflVPEU1lWlKZY=;
        b=2z8K2GcwTNKtPrxCutrkHe8XTmcfvLUtTBzacMLKUzvKixFdPb7twIVpH/eX4m8+x3
         2m1SIkKn2umPy3QtSmPGHsgM75h7w5eA1B3wM8nF5zHRo91ex1o5klUOjw1OGGhbe93z
         qjYqx98K9dmGJhdd0R7s2zMb1JC9MF90SMHoajIjEa6RVrc5h80SSP2wfDFCB3/Of0+o
         gi7sUitX7zBKHfHAf4jcdRBDzT3V8rd25r579wu5HLvKWJELzmy2VQ6Rvd5Iq61gJO6R
         Gd5tEucGDkZdH1LVo50MaBMitDItEKf8VZfEZRVRhdiUaLQdLZu9o3Tv8g93xxc4AkUV
         CxSQ==
X-Gm-Message-State: ACrzQf2VaBEmzHpejHko/5FOYQYXm/XYYT5X5CPilvH05Cyrp7Q3RUHJ
        sVG4yPwqjBgQq3jdSyvXQDnGvA==
X-Google-Smtp-Source: AMsMyM7PHSjcA525xUqb2mRTdLe6Qynf1IGw15HV4W1FUp7u3d2iYKbm1jQAdW6TjKmvePalyJm/UA==
X-Received: by 2002:a05:622a:608:b0:398:959b:b758 with SMTP id z8-20020a05622a060800b00398959bb758mr21736567qta.553.1667422604968;
        Wed, 02 Nov 2022 13:56:44 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id u12-20020a05620a454c00b006ea7f9d8644sm9362363qkp.96.2022.11.02.13.56.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 13:56:44 -0700 (PDT)
Message-ID: <38755e52-626d-ed01-72b5-d199af646c48@linaro.org>
Date:   Wed, 2 Nov 2022 16:56:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [RFC PATCH v2 03/11] dt-bindings: arm-smmu: fix
 clocks/clock-names schema
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
 <20221102184420.534094-4-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221102184420.534094-4-dmitry.baryshkov@linaro.org>
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
> Rework clocks/clock-names properties schema to property describe


s/property/properly/

with that:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

