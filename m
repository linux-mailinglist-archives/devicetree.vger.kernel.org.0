Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3968270A090
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 22:27:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230043AbjESU06 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 16:26:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229761AbjESU05 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 16:26:57 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24B65118
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 13:26:56 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3078a3f3b5fso3635863f8f.0
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 13:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684528014; x=1687120014;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xAE6bKGD8uI4B1Ojm7oaDsntRbDY/p/o83Rm9HGs3vU=;
        b=KhQh40O1foL2uAE4MXyDZfPQ5dBQPWBnpePjc4y7//CUqlwhXfNm71R7dYxmEJwWWG
         rcaOqd+lIjIKiEE08whNoRF97O97YYF1vTCQS2xZ7QSSLDW5/OKkcyEGapsecuN9/to2
         v2BNxDmrF1a3IEzJiwbJ7osQD4vwrNfvAKgQiMfw1I++7sILIG1YSGGVeWdJCEOROapP
         wfLarCWDjHf6uPYYt0NeZ4pIgzO2tEoUuUMIFC/JxzpARfwOLfcGJz+utC+29Nof1tWj
         726P5tfBTvxjVUdwixgi/sKT1pl+HCC3hmOg+yCSbfISpiLD0/Y+qWcyKGM1JmallZq0
         dZkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684528014; x=1687120014;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xAE6bKGD8uI4B1Ojm7oaDsntRbDY/p/o83Rm9HGs3vU=;
        b=IoJTU3dvRzpGU6JcHptzdX0I3MVq4T7BVlzNkgxG6zux7pf3wTeZfcxcG/Ml3fUrv9
         YifAUdj3h9W4PEzusxtm8Yhp3XBJ4yZYSYXjmwAIeWDextRLtBHV+fDrgG88bgbLmffq
         EO6ylXl3a+UujFwGCovcyeGQcjEcSEx8gnvsnQ9rJpR9Ll6JrM72N0F+C31sm7NswON7
         prpSt0NvuuS2Bfw/0ljEGqD/KjmYpNmksbnX59oZyFDYi2B8CPxSwFn+D0/mtDZnwSX8
         /lyRtDHcydtahjzvGWU/w8z1G3nUDZE1w2nvnk6DOcr7poC1ExparRBrPgQ1/2JfewE+
         lRpA==
X-Gm-Message-State: AC+VfDzTlgIw6eKq5gONmE/T5lK8VkAcESLB3yaBbzAmyl7Lu7tDoQ2E
        66x4LsqPRtc0nYtBxzCqCFKUnA==
X-Google-Smtp-Source: ACHHUZ4uiJw3o5Q8DT0mgGSljrWF/EZLsfHVRRKzsHn/aWcqBrnB/38cAQiKQNUue0GSQcyZ6n1WNg==
X-Received: by 2002:a5d:5188:0:b0:306:43a4:86b with SMTP id k8-20020a5d5188000000b0030643a4086bmr2636003wrv.4.1684528014184;
        Fri, 19 May 2023 13:26:54 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d5251000000b003079693eff2sm6137050wrc.41.2023.05.19.13.26.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 May 2023 13:26:53 -0700 (PDT)
Message-ID: <0d0a1985-a08b-29ed-4bc4-2eea560d7ac0@linaro.org>
Date:   Fri, 19 May 2023 21:26:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/4] clk: qcom: camcc-sm8550: Add camera clock controller
 driver for SM8550
Content-Language: en-US
To:     Jagadeesh Kona <quic_jkona@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
References: <20230519155602.6642-1-quic_jkona@quicinc.com>
 <20230519155602.6642-4-quic_jkona@quicinc.com>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230519155602.6642-4-quic_jkona@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/05/2023 16:56, Jagadeesh Kona wrote:
> +MODULE_DESCRIPTION("QTI CAM_CC SM8550 Driver");

This pattern looks odd and inconsistent in our clock drivers. We mostly 
have CAMCC or VIDEOCC but occasionally have CAM_CC and VIDEO_CC.

I'd drop that underscore to, in addition to Konrad's comment on Ucase hex.

Other than that, LGTM.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
