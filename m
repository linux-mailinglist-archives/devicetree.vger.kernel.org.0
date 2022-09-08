Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59F4B5B2039
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:12:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232585AbiIHOMp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:12:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232383AbiIHOMm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:12:42 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F14FBB284E
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:12:41 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id bt10so27956784lfb.1
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 07:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=jUSmjcuuEOc6RsGf/xaat9VRuACGbvirG2Spg97aZmQ=;
        b=t4V27mP2k3MsPwrpAooGeynYJtGp7k7Q8qSWvuK28qDITmnywPpPfZh+KkrEbABZiE
         Zp5pknL3eyI3CbeREwIttd7If+7mTTLhmlwpAvTYYz4oJ+HAzqPR4Vkpf1Q//uZeGm+w
         5S7qHxBeMcErcpaaISCUWzFA39s1VxaBq/vlSz9a/dqahMy7SiA0uOxXzBbSMyVP2uF/
         VqKabgEuudRpssnRchJCT86ga4AImmccWvLNWfZdYSjpxUAwkEyrU0jl9lgSaeT7Tt1N
         rRflaBS0z7Y/OywW88i/jFAdQzFMmkOLPnMm0DyEUJLDArFeO1DgYKVERecbTFeW6/1U
         Xkhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=jUSmjcuuEOc6RsGf/xaat9VRuACGbvirG2Spg97aZmQ=;
        b=llvB3jSwJClxn4P5sP8+/twrnAiGY6BBfpr3A5cZEnrRq4XmgRXbhG6bMz2K2MnJoT
         TbRg9czIO2levu27gNvstZO5BCc+LOU5AkLufPhguX3BBEDMOnBYG3b6Jc6uOPjP400G
         3LwRcNWdcfaZ7UKY5+rdW/lyEMu1zzdc2KmdnF7IrgiDjdzvtdguq4lxgb1jn5d9ly0+
         3bsP7GFjwe40wUgsGL2c9/SovDwOttqndxdmtJXE0+aQ946s5GGtRYSTZ33y2mv/iR8w
         DMXzqeaqGHFvnrkgrxBQ47k3Gz9flFMcKglO1Og75R2UI47P6LkPPKwHBp/ipJB1n9ew
         rtMQ==
X-Gm-Message-State: ACgBeo1b2PAZ8IB3h8eSLBlJRuGmTj7rucdH32SL/e69SeZgYhzfwbrl
        S+SG42o/iu56KPwO41Q/KFhJpA==
X-Google-Smtp-Source: AA6agR6iz94pcOeeeiYljXnU4i9V6woBFvThMfEp2cj/62BTr/iTkdKSQj9nWG01G9tXY1Sx055EcQ==
X-Received: by 2002:a05:6512:12c8:b0:494:a211:db7b with SMTP id p8-20020a05651212c800b00494a211db7bmr2631509lfg.182.1662646359979;
        Thu, 08 Sep 2022 07:12:39 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d2-20020ac25ec2000000b00497a1f92a72sm1378605lfq.221.2022.09.08.07.12.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 07:12:39 -0700 (PDT)
Message-ID: <009288a9-0049-134b-14cb-344219d3cb8e@linaro.org>
Date:   Thu, 8 Sep 2022 16:12:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 05/11] arm64: dts: qcom: msm8996: Drop redundant phy-names
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
 <20220907000105.786265-6-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907000105.786265-6-bryan.odonoghue@linaro.org>
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

On 07/09/2022 02:00, Bryan O'Donoghue wrote:
> phy-names has been marked deprecated. Remove it from the msm8996 DSI
> controller block.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
