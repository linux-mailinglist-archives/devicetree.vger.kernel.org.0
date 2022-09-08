Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F0AD5B203B
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232511AbiIHOMt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:12:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232457AbiIHOMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:12:48 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 035F3AB4D0
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:12:46 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id z23so20091274ljk.1
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 07:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=WGhGcYyxj2r+nuLOBf3Jjgz0JGbq+62pf3ROxiLfEx8=;
        b=XTuWEfKuy5xR0Ha/vLDLhc+PPQshQhifNrpFnSWLYYxFiBQoN+bjzH10En4B368sJf
         4cXectyuI6sC0+kaIM37ItwHFF7Gz/mdqrSXiitrY9xzkdEK4wGD7p8alm9j9tT4bdu1
         XCCOIpW7vJpPxDXvJ5FJjCXdHGNGbpaCcw1qfGFhcVIF+bh27hmvwwu2kDRyytn/IlWu
         ZBBkFbkaKiPlT/Y/NxuORkQkXid/4UCTbB8uAmnUMJaVM+tE2Ww9Kno14ksBT278JLE/
         7QjlNYVnaFBlH2bGHKOkHyxsim0VcZWBBk/LOyNS5KkiSn7LndmC1vxd4r7ZOK03ItWv
         4/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=WGhGcYyxj2r+nuLOBf3Jjgz0JGbq+62pf3ROxiLfEx8=;
        b=PUZE6QgIN/OcOSpNc7fITN8w4s8k5cqHLlRCC07OadbQjpqM5gekDY+FIHIhO/whWI
         XvbYE3JXITv2EG1TSIK/qI2R0G10h9thDyZNdJoQbR8640AjhKjVp3iQUH4qs4xD4Ywt
         NLLdnVx/KqNkhX4yMcgeEQhZQk1yfNvgzg0DJVnHmK4jLmx9f/Wkknr6swYaUxjEJxQF
         gdn+eMKlkjeZa2v+fnqxdMvuLhVsbaFWJh7P4ICF7JP0jsjCNPoTa8P0sdaDFP7VNG0q
         CuMbXNHrnSlvGdSuftgsSkIBIYMm9glKUkQoMbcJq6JQtpnvzXEYO8mO0g0OlCWNGqSr
         Mohw==
X-Gm-Message-State: ACgBeo2sm7XZILz0/Q35UTN2sq6McD8B1+++Q85ht15FKegdsWNfABV4
        87N/7OsywAopxEK/x6gRChnTCw==
X-Google-Smtp-Source: AA6agR6/WBJOyvWCQYBITOxYlOHszKw4mCmDVITBS5j2Z9KmnfIkRCkO2Xcb8aLIhMxQ2176CT1rEA==
X-Received: by 2002:a05:651c:d1:b0:26b:66d3:21f2 with SMTP id 17-20020a05651c00d100b0026b66d321f2mr1150209ljr.59.1662646365279;
        Thu, 08 Sep 2022 07:12:45 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r7-20020ac24d07000000b00498f570aef2sm914lfi.209.2022.09.08.07.12.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 07:12:44 -0700 (PDT)
Message-ID: <600bf160-f7cf-2a1b-81af-a52edd8ef763@linaro.org>
Date:   Thu, 8 Sep 2022 16:12:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 06/11] arm64: dts: qcom: sc7180: Drop redundant phy-names
 from DSI controller
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org,
        sean@poorly.run, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, quic_mkrishn@quicinc.com,
        agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220907000105.786265-1-bryan.odonoghue@linaro.org>
 <20220907000105.786265-7-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907000105.786265-7-bryan.odonoghue@linaro.org>
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

On 07/09/2022 02:01, Bryan O'Donoghue wrote:
> phy-names has been marked deprecated. Remove it from the sc7180 DSI
> controller block.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
