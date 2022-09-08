Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64F5C5B203E
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:13:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232587AbiIHONL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:13:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231124AbiIHOND (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:13:03 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43D0EB07F1
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:12:52 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id w8so27883472lft.12
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 07:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=CABBHj6GcCNX2cJxlglZLC9Ls/ZaddgB19BlDsUJ2Ig=;
        b=EVxDx41DDAGPIvQy0XA0K51X1QCJDWzcmUp+d7zipnxh1XCQAKpTNhh9WuSTJebz39
         hRagImbaRniKfQWbW3FnzO3HSbPYnnWLpz6k+QOO53coAv79SZqkNbYTiHfztQJKuhuz
         7U7/n9ZtiRa+q2YnKP0r0xi9Sugr1U7oq9vJpGsO9DfS1U4bLRN6yaDrwDAT2Oeqz0fJ
         Y7aAQs0lbpQgPdy7Pzr6XIWKa/lVsDcz057VekfG57RMCRRqTVUf2p+NHN2njgILPR7c
         ye9uBNxKXs5GNUdRZGaiytKMNtawggWH1wZDa5woOnvW9P5MTxVUzlD77xjsM6AUIazm
         OhLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=CABBHj6GcCNX2cJxlglZLC9Ls/ZaddgB19BlDsUJ2Ig=;
        b=r4I3sEEBGUPCdEMzTYenbf/juGErT8jctbWEj6oxYZb3mqUiWS/2NgpS1h/KylW49g
         Vbz75RIybL3UQRaZHEoPXTQE8TSLg6XBd8GAps3hzmatWD5U3iT8uEteLVV0prdEtYHr
         SahfiD16K6jq4kAtdEZML1Nj9X31en1z5sIMfrxuMPvsp3hequjl/u9479Pz6xnd/P1O
         K4t7jMBUkpHV8AH9a47nrtnXfi1YXu16BbEwJVB5CA8jPlyd8BwANQGaJDWW8+Hf9J4n
         Zbq0dca2K8Wjge2a1Tq7Rb5MAHRhBpr6MoyK0iBn4BQYXEWFsZAAoLG5kya4zrqswlra
         2ucw==
X-Gm-Message-State: ACgBeo0uQRuwLPXgCdRj/mBAOiGDYAAoR1DITr7gRKaRFcs0rpBBfIv8
        YD6nGe+I+b8fi7Ov9MqYtbxXEA==
X-Google-Smtp-Source: AA6agR73Rs7bLYPvkTuv7ltLnGKTH5sE/80TjjI/fabarfbhIf5OIU4XEdVxFbbrFR1gLyQ5tSij2g==
X-Received: by 2002:a05:6512:1101:b0:492:da22:bc58 with SMTP id l1-20020a056512110100b00492da22bc58mr2940664lfg.219.1662646370565;
        Thu, 08 Sep 2022 07:12:50 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e4-20020a2ea544000000b0025d5eb5dde7sm1274202ljn.104.2022.09.08.07.12.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 07:12:49 -0700 (PDT)
Message-ID: <2a22024b-eb5f-491a-28c4-1bd6e31d2a0f@linaro.org>
Date:   Thu, 8 Sep 2022 16:12:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 07/11] arm64: dts: qcom: sc7280: Drop redundant phy-names
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
 <20220907000105.786265-8-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907000105.786265-8-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 02:01, Bryan O'Donoghue wrote:
> phy-names has been marked deprecated. Remove it from the sc7280 DSI
> controller block.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
