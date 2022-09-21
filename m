Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 471D05E53BC
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 21:21:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229544AbiIUTVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 15:21:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229687AbiIUTVA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 15:21:00 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9286983041
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 12:20:59 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id a14so8226789ljj.8
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 12:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=sVJ/wEl0YIO0VbRMwazefOqIAgn3eNiO/qgySSWiK/Y=;
        b=VbriHomD7SUjAsVDtR/HLh2+7IQehIeHcIob8QCCVDuH2ycBN2DDP78RL/cNUnJLuL
         5FsSH+QqvfkuCv1Pq2KBHk7CxBbRYe57QvIPLg5JnyAomZxj2mJI1uUCFlZxTdEcnVSa
         dcDfjC3cOzq/beRCQYLrqTRCT1qciWK9pv+NalQab/UkKGQxgs6gBodygoiaDEb84iLt
         QBGTpbTZUjEupzdjMewwrFd7uVuylfypRUHx0NQtOVSOAhLuIlh8DMfCG8Tj492aYxwT
         P9bvNu7CwY5rBBmDveMQauadBUGuPs+h9FrreuRoisGMAI76JaI9f8wcrdb0R7lzDTYV
         fShg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=sVJ/wEl0YIO0VbRMwazefOqIAgn3eNiO/qgySSWiK/Y=;
        b=Y6HekCYK2FeRO1V1sfkS18Jb79J/Ug/wOIZOQabMK/3nuki5urQwri/3N4U5zTd+/J
         bR8bFP0OWYyfxLJGO1FALSezzWnhtSpxDTU0vjfDxaEF9ysF/rAbT0TSdOphUimyxNyc
         ysk02R81WtPkYKfpB7TNkfgxiv7+gf8VRwy8FrGq/Jumb1+JMDoLP3nZIpyQkoAYEjNl
         2L3HfZIBPVhLiQnYZiJFp+tEytrLF+r62tPR2aickw+RtCW5HWe3gFfUGYHZ3TEhauB4
         T41jKRuJhXQIjr9ABeiMNq5g7oQyhb94J5LHYVncU5qdz2vELuQjave6YMIIKeqd6EKA
         41RQ==
X-Gm-Message-State: ACrzQf3ohbVAqyc0sjMajqY9LDVwWk2xvDrFFF8PCZZ1UEMx5qXoUXbn
        rHTY5ZE+/kMS1LFrUa7lVJunRg==
X-Google-Smtp-Source: AMsMyM5PXBgcu27Wui/lKqgtguvukLojSD6Ala6NYPauTuOe/ik/6YZUVkyp590gqYWP/Ev6TtydzQ==
X-Received: by 2002:a2e:8917:0:b0:26a:a520:db52 with SMTP id d23-20020a2e8917000000b0026aa520db52mr9106079lji.289.1663788057941;
        Wed, 21 Sep 2022 12:20:57 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e27-20020a05651c039b00b0026c5ab1883dsm568714ljp.16.2022.09.21.12.20.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 12:20:57 -0700 (PDT)
Message-ID: <d2773293-8d81-9f78-4ad4-ba52f42279f2@linaro.org>
Date:   Wed, 21 Sep 2022 21:20:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v7 4/4] arm64: defconfig: Enable Qualcomm QCE crypto
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, thara.gopinath@gmail.com,
        devicetree@vger.kernel.org, robh@kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, catalin.marinas@arm.com, will@kernel.org,
        arnd@arndb.de
References: <20220921045602.1462007-1-bhupesh.sharma@linaro.org>
 <20220921045602.1462007-5-bhupesh.sharma@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921045602.1462007-5-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 06:56, Bhupesh Sharma wrote:
> Now that the QCE crypto block is supported on several
> Qualcomm SoCs upstream, enable the same as a module in the
> arm64 defconfig.
> 
> Cc: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

