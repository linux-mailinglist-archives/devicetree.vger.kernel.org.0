Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A712C501ED2
	for <lists+devicetree@lfdr.de>; Fri, 15 Apr 2022 01:05:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347419AbiDNXHx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 19:07:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345432AbiDNXHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 19:07:50 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B448C7E4
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 16:05:23 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id r13so8758885wrr.9
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 16:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cqbncAiho8303q0iTDUorkGh7mctfY5GQfcEt9FjT+k=;
        b=IE32e1xGSGVvvIiGpD6JFstnFc5A9cOCySq/7l5Pe75wqBayA+WDwkbnlm1c4E1E6l
         eMnpsXBqTwJbCwN2VnNsfPnf3TjvBYKT/QcROivUUyzG/0UX7wzcD946hO6sZuRmIg0w
         J/T9U1Qzz10DmDua7VwNKutgPsgPhrDzRAQVzXSgyW1vbrteS2ZdxHyQ+ZuVte5EemKD
         HsfB/UhVG4156NFXSY995j4FbyruJKZjIFMDbUSdgStab+jVBLtAvtxPhsRzO2oJ/mw2
         YSwOgvii2+zqSkYGqe+9oAS/aGblRYa6eLBAORugR8zkpuueaZIiFyeHUUGih2gsaKtI
         Gbgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cqbncAiho8303q0iTDUorkGh7mctfY5GQfcEt9FjT+k=;
        b=FWTDjyNs+/T0dsCcXpHyeL3OrTbQxPX7dpE8SrE4sA/sYokeRtKSRHvlAfsvlRgNae
         9F1eBA/orbiKmbRUUjnpgqZP0YeVzQ9lEFeU1GFxR1jrDO1u4IxKq1i57K4+P3VhgNWn
         I1ZpOjRPJD2NhEV435/ttuEojZWU3jZIai0b68DVloBepNY3kfX5io1UxH7dM/qyotD5
         l8zUIcyCqGHd/eRm5UWijpbiAv3xYvyU8NsetKzq6DImcVuMDDl94zbkpKkvRkpJ+OCC
         iQY/hmpcrIJ/hfg6eo1NrdIdZV92gcjklXN7gZDF3rQXJkqcRS0TxaaNipI5BkLI9FIj
         h+Lw==
X-Gm-Message-State: AOAM532rJrrIa3Dx+s1gk9h/ljIDEOmvgB6BJUBznx2qjobAzy5U+Xie
        1BpXTr59Q2dGZurZSgCgn90vZw==
X-Google-Smtp-Source: ABdhPJxVfwm1SwCIjdsCx34k6DzMct33pFlxb5jhfPbOYUIJC8uLwKA033nFbjut0YWM4nCi4ncqog==
X-Received: by 2002:adf:e189:0:b0:207:a0e8:be49 with SMTP id az9-20020adfe189000000b00207a0e8be49mr3562055wrb.130.1649977522587;
        Thu, 14 Apr 2022 16:05:22 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id i4-20020a05600c354400b0038e9c5924d6sm6965445wmq.29.2022.04.14.16.05.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Apr 2022 16:05:21 -0700 (PDT)
Message-ID: <9de68f8f-edc3-6318-d7ad-43a66ef5d4a8@linaro.org>
Date:   Fri, 15 Apr 2022 00:05:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sm8250: Add camcc DT node
Content-Language: en-US
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     dmitry.baryshkov@linaro.org, jonathan@marek.ca, hfink@snap.com,
        jgrahsl@snap.com
References: <20220413231736.991368-1-bryan.odonoghue@linaro.org>
 <20220413231736.991368-2-bryan.odonoghue@linaro.org>
 <358215a0-6f00-7594-bd4e-8f4e8be93473@linaro.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <358215a0-6f00-7594-bd4e-8f4e8be93473@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2022 08:41, Vladimir Zapolskiy wrote:
>> +            clocks = <&gcc GCC_VIDEO_AHB_CLK>,
> 
> I believe it should be GCC_CAMERA_AHB_CLK.
> 
>> +                 <&rpmhcc RPMH_CXO_CLK>,
>> +                 <&rpmhcc RPMH_CXO_CLK_A>;
>> +            clock-names = "iface", "bi_tcxo", "bi_tcxo_ao";
> 
> I see that the driver references to "sleep_clk", which won't be found
> automatically, since it's name is "sleep-clk", so, it might be reasonable
> to add it to the list.

Yep agreed.

---
bod
