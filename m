Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2989F5B1AE4
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 13:08:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229748AbiIHLIJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 07:08:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbiIHLIH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 07:08:07 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC7ABC58FA
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 04:08:05 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id by6so19423622ljb.11
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 04:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=nl/gX4imOToZho5UFDxzEpyUWNGOIGDYdp1e4bXjgB4=;
        b=j4lsWoDPctiBxd4wxmRuYGfMFJUNfe6PRsJpgILjez06ENaILpJhI0wLm4tSj63ChR
         bn8gyjis9Ciho+TYSJQXe2wUPMtVdJfD8Ml1WXBz/oGvhv+A3BE6U9xT23Deze2FeuSM
         aijopf1+NZPC+3ITBTtV6ovL9q1psr0hV/POn30nqhXjWbnRfnuvXEoxJaiDGoOx5FSp
         DTKWwvcNO8r95D55qJF++4jWV5OeP8ne/6BQto18dLkiQza9+Ec08uxjjVzhUfgXj9De
         8sDhZzDvmgQTHxpeK/0mi9VtAazViATWUiPMdDyQYWjlFRUntnuRxmLoqmtgfolfO5uv
         8/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=nl/gX4imOToZho5UFDxzEpyUWNGOIGDYdp1e4bXjgB4=;
        b=v3kDc0In1o3m95Bwhh54eVhA1gAMuhujDe3XQYO/tZsrqMIr3bRQ5Ql413Ivmxy0JU
         JrYxdGQIDHPhzIspTylu25N3Re+Zc+SJMDLHyexg/WB8IvIzLPJ+xC3RNSy5DJNBNofY
         b2yRStc6DapZl+qqClBSuXGS4v07DmbmAVqGMC9mTnGaY1E/EHx6goiWKr6U5HTZnGZZ
         XU7DJayf+/kYKZC+y9nlT42mrlRmdDoUFXtHS25WBcdgwIrfiUpGRn3wiAwrUwBH5q+a
         vagIuJFe/Itm+2arJyvEesdiGNkdWbzaVTtQKuEcjCJYzPLMCQolGOJZQkRgtrJxNY/D
         Io/g==
X-Gm-Message-State: ACgBeo2JVa3bGEx3uRLsleGSOtsCunK2bvUNT1gkncLHPh9a5hzjf27f
        oTIIrHu3myPlBGH6r/UsDH2ChQ==
X-Google-Smtp-Source: AA6agR6a67h3FkF7g5VWCRuxJI82Pbb2Odo+CPi7d5MSQ24A3s8wKjqKWAGxCHM/STfol0ZZgMU3wQ==
X-Received: by 2002:a2e:9b91:0:b0:26a:ce59:c517 with SMTP id z17-20020a2e9b91000000b0026ace59c517mr2037370lji.181.1662635284068;
        Thu, 08 Sep 2022 04:08:04 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id n27-20020a05651203fb00b0049488c97d39sm2985477lfq.212.2022.09.08.04.08.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 04:08:03 -0700 (PDT)
Message-ID: <ba44cf8a-a4d4-3f8e-91ab-43002b73c312@linaro.org>
Date:   Thu, 8 Sep 2022 13:08:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/3] clk: qcom: gcc-sdm845: use device tree match data
Content-Language: en-US
To:     Richard Acayan <mailingradian@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     andersson@kernel.org, agross@kernel.org,
        konrad.dybcio@somainline.org, mturquette@baylibre.com,
        sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, tdas@codeaurora.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, caleb@connolly.tech,
        jo@jsfamily.in
References: <20220907223927.139858-1-mailingradian@gmail.com>
 <20220907223927.139858-3-mailingradian@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907223927.139858-3-mailingradian@gmail.com>
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

On 08/09/2022 00:39, Richard Acayan wrote:
> This driver will support more than one SoC's set of clocks, and set of
> GDSCs. This behavior would be unclean with hard-coded static variables.
> Support it by grabbing clocks, GDSCs, and BCRs in the match data.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
