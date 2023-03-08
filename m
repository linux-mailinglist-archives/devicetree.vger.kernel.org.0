Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DD356B01B4
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 09:40:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjCHIkU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 03:40:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230377AbjCHIj7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 03:39:59 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C54125BB6
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 00:39:57 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id cy23so62417051edb.12
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 00:39:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678264796;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oCATe+ES1QvWDk0NlxC4dgDiGw0qgM6ywBS9VU95eKQ=;
        b=SvAbix98aHr0n+4XlR2eJCiwQlHeIqX5t5/Qv+ConfYAZD8oJmse0VAK7zS6hoR9AI
         2MslmufvRsU0s4jKXcmiO27eW8Mo98spP1BnyJ3j1tRPclEEfpyQTB0iyUXd2IG39S3T
         oOG7UjkkfT0DLr5XregCqpZjy18qq/7/5idSzC7PdbM/rOaxwZTL+XWgDMH1TPsXt2RK
         smj/4w4BajVsm4Oq5v/Xj7+4DkSkcl10NxmEN3lp/yEMki70wBtZ5sk0b7a0ODiDz1dt
         TdQvO5ZXJYoUNxGkSTWxvMNEhowu4H62kg74XfTEWdeCHqt9Otnb+y8FTWVqeJsR/Kb1
         npTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678264796;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oCATe+ES1QvWDk0NlxC4dgDiGw0qgM6ywBS9VU95eKQ=;
        b=K0yf7N8H2O0y39815PxI/1FjkByaIS80unItwjXeUzxplBFMU5QUP8ckzvga0ctHpd
         Hr22tb2jxcGThzYhWkBavj0jYWcSCG/vXcwCM8bf/5hUYhmxOLwyO5y6h0kAHT7g8kgc
         UQNv3BKBvLgGdu0SPbUTOeV8/o1SZ4kOxOHoB0fNFMd0AIq2d/1wapJ/GohoTxbsgG/t
         MsMHL0DvRBEy2k9+QbU+rGoEETJFx4UWVWaPLTVCzfMtVrvbJx3MI0VChs2tA6ZQtTLX
         CUOvPBNnV96O59IY82c4GLK9IO8uo8gQG0ngoWDAjQ0RLSQpRriLsBI8QHEYaJInerD2
         +wdg==
X-Gm-Message-State: AO0yUKUFQyNK7OFwl8jfsWP9OEYeDIOxfb7pTxhBpU3NT3BUETurbOnT
        DjylTM3/k6T4F1KdxqYcxEOz8w==
X-Google-Smtp-Source: AK7set9wkUBdhf1G1i8b8fndGqKLSOFkvtThJa77CTISAHIS9U9+bfcE9q7p5tpR9nlB/XPo7ysVmg==
X-Received: by 2002:a17:906:bcda:b0:8a4:e0a2:e77f with SMTP id lw26-20020a170906bcda00b008a4e0a2e77fmr18414259ejb.34.1678264796361;
        Wed, 08 Mar 2023 00:39:56 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:bba:fbfa:8aec:a133? ([2a02:810d:15c0:828:bba:fbfa:8aec:a133])
        by smtp.gmail.com with ESMTPSA id n21-20020a17090625d500b00905a1abecbfsm7145329ejb.47.2023.03.08.00.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 00:39:55 -0800 (PST)
Message-ID: <990821fd-3271-9fe9-3bb3-a07ec57dcba0@linaro.org>
Date:   Wed, 8 Mar 2023 09:39:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] dt-bindings: soc: qcom: smd-rpm: re-add missing
 qcom,rpm-msm8994
Content-Language: en-US
To:     Petr Vorel <petr.vorel@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kathiravan T <kathirav@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230305122428.167580-1-krzysztof.kozlowski@linaro.org>
 <CAB1t1CzF+E=h9bWWwKf1vpt+ThOOxHvYZ1Nh0f5ep6A=1WZNEw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAB1t1CzF+E=h9bWWwKf1vpt+ThOOxHvYZ1Nh0f5ep6A=1WZNEw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2023 20:48, Petr Vorel wrote:
> Hi all,
> 
> Reviewed-by: Petr Vorel <petr.vorel@gmail.com>

What did you review?

Best regards,
Krzysztof

