Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F0C857170B
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 12:17:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231302AbiGLKRS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 06:17:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232937AbiGLKRG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 06:17:06 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4908AD866
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 03:17:01 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id z25so13160824lfr.2
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 03:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=9oU3olIYSgVPXTMFa85tV8ExyJQuiMKpApGFhvZMPBo=;
        b=MojVtEG2Zq+hWXE9NL/53ObQxVN+nhZ8XfX8CEakxScN5cty+yF1bedwGAxc8nMxSb
         4RIjyzEgDg4zfJLtK8HbWbORhXi2xcb+OgGETHPi+B3K4QDgjel7SBcwweatz75qbM7c
         E1O4ma8sNd9Lk/njM0wk+1XHjuKVayRLdQ7QOFmKcBKSB653MACpa2y1qUP8CgqRIzU7
         85J6gGDKtIN6wc4OA9+D9EJtKFfyzDTeRi1sVLkS4HCu2mJCkSix8xiz4dxALFVZkxhS
         An2h+Aaz/wWvKYggF3ZWzyIdmN5Wwfl3aDpX2wygt68ZelAtiSyXByIKcFd8KTstQHOD
         Zgng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9oU3olIYSgVPXTMFa85tV8ExyJQuiMKpApGFhvZMPBo=;
        b=xgSLtzZQE81+xQ7Zefyn7GwI45Bf8HEP+kOgWDWzj+hl9YSVghG6JpG6sfOSSzul3B
         6FDV+y6+YL4+xLU7UHJV85+f4FmJJfU235bCcLJYyxdjDQ/XmgnRSeQubTqYz2lUweQK
         8cloDYbDOKqyYgCxS0rIRZ6lJd51X1SzxcJYYMM57tb3bZmz6+/TbS9+mAa/kpoVCU6t
         pdR0T2EzkiBGTVDB5WLHRmexoOhcpewhasR+K5tM1LX/xJPnKtr+oxtvODS+JCjrRnSr
         V2oh38dYpr9Ip7d7VoCNCcMtzYrOkWEw1RsjFkmI+RrTOH67z1oApywon43QaZPDUM2U
         lf8A==
X-Gm-Message-State: AJIora9TdA29s0ZbzJJfGVz5HqhwlkWr6bUA0L3LPOmQHVERSEkD5P+p
        l8qo52c9m1klrGMtpQlGPi+Hyg==
X-Google-Smtp-Source: AGRyM1vJ71Adp3UKmWHjagTT/cUiQs90W3qBhPxOTvbnNuDu6PN/gwG+70KWuUpJtoB7XS+gT9yXYA==
X-Received: by 2002:a05:6512:151d:b0:481:61ad:b845 with SMTP id bq29-20020a056512151d00b0048161adb845mr14156941lfb.445.1657621020265;
        Tue, 12 Jul 2022 03:17:00 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id n8-20020ac242c8000000b0047fa941067fsm2111717lfl.29.2022.07.12.03.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 03:16:59 -0700 (PDT)
Message-ID: <e6b11962-d767-4910-97b9-f0f252b9c5e1@linaro.org>
Date:   Tue, 12 Jul 2022 12:16:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v8 2/4] dt-bindings: mailbox: qcom: correct clocks for
 IPQ6018 and IPQ8074
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, konrad.dybcio@somainline.org,
        jassisinghbrar@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220712100733.34261-1-robimarko@gmail.com>
 <20220712100733.34261-2-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220712100733.34261-2-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2022 12:07, Robert Marko wrote:
> IPQ6018 APSS driver is registered by APCS as they share the same register
> space, and it uses "pll" and "xo" as inputs.
> 
> Correct the allowed clocks for IPQ6018 and IPQ8074 as they share the same
> driver to allow "pll" and "xo" as clock-names.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
