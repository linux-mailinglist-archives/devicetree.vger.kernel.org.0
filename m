Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C70E45811B7
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 13:15:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232802AbiGZLPD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 07:15:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbiGZLPB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 07:15:01 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C16C3122E
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:14:59 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id z13so15731612ljj.6
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 04:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=oKdoyoN9nV1k0WPDhaASmXz+sLWK4waatCHeRbneQ7Q=;
        b=iONnJlIraFb64HSC5Epc+qg86VFS+2DWHPFsIKnWkUCm2chDqif0/SbDwwVxs3nTwP
         WsxZy7AfTa/L8anSlFP1/HwK1TyPpKgatqxkG8Aspnvu7mJvvD3Fxk0WCzsbU+Oeq+RN
         lXwppRVnwZBCyRtiwok2A0btssijWXYm0xVoDzEJrn/U+gv3Kmb/dadDaUHSq7Fqr8Jx
         JnjGfZtL38y6HWoIoiID0Q3mY5hA1uuYNi1T1AXXwxVln29i3l32mj0NuUlIMkbn82oY
         id05sbNhFxoabp8cqk0pTU2Ojhf+MkGwnsVveVrl2lDeXN3F9veADvOnoG4GWDEpbwFE
         gDiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=oKdoyoN9nV1k0WPDhaASmXz+sLWK4waatCHeRbneQ7Q=;
        b=rDwD2f2j9DUiwUJNygYcd+acgL6qw5u0zo6jOLQ6ODFc+hjAi9wF5dd2XXweT2RNzE
         HkXRD95h4MKM246Z/LBOF33n3A5i73qq2QWPnw+nFLYnpCZu9CXdgyuFMNWiP6+Djt5I
         no8ySTfqcjpK8mE0K+7S5d3PtFRXKVUAx57SXwAuuc+rHRH78VVhsTVo/i1/SXLq0wVN
         Spl8WzVarcBMRF5vmI9UGVrGO1FWisYESeP7V3mNaYUqly2Tz0AkM40CfY9wk9o6jalv
         HjKczlmACAOzU8PnSdnUK3S4dMSrFWeZyNrP+/kfSlC0k858/Ai1w7gliVQxLqeb0PrF
         unIg==
X-Gm-Message-State: AJIora+F4LU37Z7y+Npr3qUCUH+gC8UPllk/u5uv1nHzFjFbWFjaMXPD
        GzWhGdHeRWXKxcEnQM2GuRBtng==
X-Google-Smtp-Source: AGRyM1vNC3ThDADki7cDkV3KRm4MQp1oog1SjOnMpOsZrauao3FmXctCM5yMTSJjaY0t29SsaZYocw==
X-Received: by 2002:a05:651c:54a:b0:25d:6c19:448 with SMTP id q10-20020a05651c054a00b0025d6c190448mr5903808ljp.239.1658834096584;
        Tue, 26 Jul 2022 04:14:56 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id d11-20020a194f0b000000b00489ec9e377fsm3157659lfb.120.2022.07.26.04.14.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 04:14:56 -0700 (PDT)
Message-ID: <3e64462f-5db7-74b9-dd96-b2fdbb80920e@linaro.org>
Date:   Tue, 26 Jul 2022 13:14:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/3] ARM: dts: qcom: pm8226: Add node for the GPIOs
Content-Language: en-US
To:     =?UTF-8?Q?Matti_Lehtim=c3=a4ki?= <matti.lehtimaki@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220724172442.87830-1-matti.lehtimaki@gmail.com>
 <20220724172442.87830-2-matti.lehtimaki@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220724172442.87830-2-matti.lehtimaki@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/07/2022 19:24, Matti Lehtimäki wrote:
> The PM8226 provides 8 GPIOs. Add a node to support them.
> 
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> ---
> (no changes since v2)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
