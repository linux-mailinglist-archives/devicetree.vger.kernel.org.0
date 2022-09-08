Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C3E45B2059
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:18:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbiIHOSA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:18:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231666AbiIHOR7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:17:59 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F629D740F
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:17:54 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id i26so12224305lfp.11
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 07:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=8/WneAIH4doGZWwalQYiIRIPWbn6dY3tzQchBDy6uq8=;
        b=FW3NoVsk/D0Nf3JbkkTKy/wW5LGJUF6TucHDO5cDKLvBTnSC1Yi10PBSCfzXp5kIvj
         VF/j/gCFY5s6lhqw4xknnQn92Z74hzDmuxlxblmy8IQyrUbpvjuM/VCZsHFnEogQWFPQ
         h5yRCq3kYolxf8LMP759YSutYbxuix/6DjulZfkDB93YBSMqI3vg3S1QlTJtBEDW5Yh8
         Xcb+KZRu70DtccNSnYn57w5eCiCEXMsgze0Nc7XcF6e/8W2d9Z0FiSKY6vhE6XUqTits
         d1jQVqWO5WIwxAecj9clvgBRR6YS8BsnmRFEmFrfs1ALQC9Wdi/fs8MSC0eC9NE0tPvA
         D7bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=8/WneAIH4doGZWwalQYiIRIPWbn6dY3tzQchBDy6uq8=;
        b=Hb9WCls9lZwXR9ObU9q6EGwAO77fxCmKco3yntZlfthANCKYpy1Q7JMCanTajNulSp
         zguM4tlc7v1H8FMVJhUdy51xn3Pq5PSJn4lYFUSjOVwawNzWJNqDliuEoLMMZ8VVUGE5
         CUMZdhU22JOD50fK5+aVil02BVWC+x7c7L+m1st7stf3wzwakVziQSjwkMZ0K/JzgGwP
         cxqTeyXgiqxsnH72UfK8Hfjg9KYaoO7H0HlgYS8bCXHRkcpDJ1n1tnvcrbyJniZf1Tl9
         x+JJ3FyXs+AVDZdtERvo6qD9YGtUJwwS83wEncQidRSUZwo+VJU9TpSbDnxs4q+8RIj4
         tORQ==
X-Gm-Message-State: ACgBeo37a3X0e5EWAsqLAY+0zVjf2iRq5VjmPYaUkVDFrszmXZ495DWc
        FmQveMpqoHiECtFTvK+NNaRXcg==
X-Google-Smtp-Source: AA6agR4mHUGqtjIx4fWu+AWyjmDlfv8bavpAUqYbTfxi3wJ8vaWjQj312qDOFEZGYwmEJx35Mt6jZQ==
X-Received: by 2002:a05:6512:2201:b0:492:f874:39fa with SMTP id h1-20020a056512220100b00492f87439famr2713913lfu.365.1662646670821;
        Thu, 08 Sep 2022 07:17:50 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k5-20020ac257c5000000b00492e98c27ebsm3049186lfo.91.2022.09.08.07.17.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 07:17:50 -0700 (PDT)
Message-ID: <83818ffc-bc38-0d3a-b225-d6671c6a1f3c@linaro.org>
Date:   Thu, 8 Sep 2022 16:17:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2] dt-bindings: iommu: mediatek: mt8195: Fix max
 interrupts
Content-Language: en-US
To:     matthias.bgg@kernel.org, Yong Wu <yong.wu@mediatek.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Matthias Brugger <mbrugger@suse.com>
References: <20220908141529.1478-1-matthias.bgg@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220908141529.1478-1-matthias.bgg@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 16:15, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> The mt8195-iommu-infra has five banks and one interrupt for each.
> Reflect that in the binding.
> 
> Signed-off-by: Matthias Brugger <mbrugger@suse.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
