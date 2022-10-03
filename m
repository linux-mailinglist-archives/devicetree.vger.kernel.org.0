Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F166F5F33A9
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 18:35:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbiJCQf5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 12:35:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbiJCQfy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 12:35:54 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0663C22BF5
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 09:35:53 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id f11so14918383wrm.6
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 09:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=6/dF8rBfUMyBaFhtuYnjWkTkXQrw25IALlskTtksXYk=;
        b=ojrX52/nO+I/G6KBCtjlfXeksO3PKaZD5SoYYS0hSUkla4Q4Lx3daMD/DUeIPn8bva
         /pl9IFSkSdHLRBm96aFPTP8HuvzhGIuvmePOLNurflW9bnDMyW6MBARvwSWl3f0WrrNB
         SnTLpRLom53VddsvtowXnrW0JErCZaCBRA2jmR3H/ov7TvpgjMydTlBn26S47bjw5RXE
         eaDdq1WZjAg+XWSAzFl8jqR+wO/vcFvSguk23+GzM/prHB0C16QKHSyZ5FbwaI8Kq7H8
         sClUC6PLd9XbsC/RhRsf3bPEuZLUBYRqxB8dw9LdKw8De0+0hNoD0Yk4uyew8CK6Ddwm
         InCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=6/dF8rBfUMyBaFhtuYnjWkTkXQrw25IALlskTtksXYk=;
        b=ilg26rSW9H0FUGjM/S8ETTntuMcmsENfWgcIg2aq3nV5zMDDr3w4nTUgdwh9YLddy1
         s/SepSifMXAqkI1PquERTL2cNFdVZi3bkZ7g+3EKoaoK5fzda5nxruDbQgQcEGK+rhQW
         CncMS3At3vSgfxhj1CjCqO5zxYZvk/INYp4+F874PbKrs3kYBhZkW+JP+1gY/TZvEHZy
         p6yFYsLKztk7oL9RXy3KXQpV5a9/wcVmzaF+DeAxudaYc9+2MrMNzy/kjRD2ALlmjEXn
         me+QDwUHjpWrsQwLijKN4QyrTolH9CR8qGWv4WeXZD+sWuZepNXGVf28im2m/rSUisE/
         bPTg==
X-Gm-Message-State: ACrzQf3ZnlNztWbsDOatPfHKYVQNzG3rUJA7mb08NpKiaJ9g5Lww5qQ4
        TNPJAXTmsAQyLlBKPvU4PwoWEg==
X-Google-Smtp-Source: AMsMyM5vSIrvc7PawgjxdxIbfkKMH/l0WEKsZokLBPjiLUMjS0NZ6hx35j6pMNzK/mzUBSLXrr5cGA==
X-Received: by 2002:a5d:47a1:0:b0:22a:2979:4899 with SMTP id 1-20020a5d47a1000000b0022a29794899mr13011260wrb.349.1664814952648;
        Mon, 03 Oct 2022 09:35:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf? ([2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf])
        by smtp.gmail.com with ESMTPSA id p17-20020a05600c431100b003b571601e4fsm11612976wme.16.2022.10.03.09.35.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 09:35:52 -0700 (PDT)
Message-ID: <8dc1dd09-e2fb-1466-cefe-c76ee8f1d5a9@linaro.org>
Date:   Mon, 3 Oct 2022 18:35:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 11/23] ARM: dts: qcom: apq8064-sony-xperia-lagan-yuga: use
 labels to patch device tree
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
 <20220930185236.867655-12-dmitry.baryshkov@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220930185236.867655-12-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2022 20:52, Dmitry Baryshkov wrote:
> Use labels to add device-specific properties to DT nodes rather than
> duplicating SoC DT structure in the device DT.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   .../qcom-apq8064-sony-xperia-lagan-yuga.dts   | 649 +++++++++---------
>   1 file changed, 318 insertions(+), 331 deletions(-)
> 

<snip>

Quite hard to read, but not sure if it can't be done any better...


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
