Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22DC45E9C46
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 10:45:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234480AbiIZIo6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 04:44:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233189AbiIZIo4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 04:44:56 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 582C065DA
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 01:44:54 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id w8so9668469lft.12
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 01:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=AjNBpQiXKyCIczkdcFeT8Sqv3YnomJydcomPufWvUsM=;
        b=FW+lutjF1v1p2CfZpdzEe2gUivlAVRcG9V+bDcNXM6wregXlfJ0uunhsiCMhWEymq3
         XaUFJZ2KvZEPpb/1gFFrDapqGRyqKDoDH1hYU4Rc5oLfIHGYVDnroTUUxZ8wjgFw7WZ0
         9ofT4TvGzVgzXxwXnYpUWLPjvbPiF+udFj9QaQVPnn6PKVI9buT/czh0JmLRS5bgGjL5
         wPmSls5HSMvt6S48zkbrW8Lkc1jGkkt6wyBlczICxBbewhvAuu3VkHysY7DhsZ/pHekx
         WS9ErSZWKld1JhnSU4AMrNb12DCfFfd4s1ActmDEykEL4T+51RTZQ/aNTmO5GgKfWpnN
         15zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=AjNBpQiXKyCIczkdcFeT8Sqv3YnomJydcomPufWvUsM=;
        b=fzXeEliK8K5W1FVtnzHBBaioVkxGFORTOhW05uzNDZI8nZ5BaKxFGHCBPGKuLWWgrR
         jZe0vSXedkP4N0aGBWPe+V2HpLlYQF+XSX7exBHZQfW7MZFKN9x9Af1YyDzmFpdCdNHe
         gVs6Sp/lTCnAYOGmLPBmy4HsLpfx9V+nIZOpC6uIlEHaAAk9PSlw//5tZNA9NYVqBarS
         3PlIklGN6d1hhYsDg/EZ0sIl9/sctVyXRdPR1MpRdrQinYUOFNCkO3iMb5tnZ1JWugcA
         H5YuDXXLJ8I2gLWbdB1KtLtBg5J7dJavk7hKuTfMBYHUBWH1oxIT7+m5xzdO23WKl3ml
         RrDw==
X-Gm-Message-State: ACrzQf22geVhAKRb3wPafBRBEXl+gnGg06ZNxAfdyNKa4OosBESyQ83E
        ro36z38rldRJ/Bbho3ijKKWmcA==
X-Google-Smtp-Source: AMsMyM7vnFmTj1/BWZJHATJUtK7+0ejBaLnVdRCjRJXJnfy8aE4xn8hlK4C30pX7XiAo9yADNmzWmQ==
X-Received: by 2002:a05:6512:3f90:b0:497:ab3d:5f12 with SMTP id x16-20020a0565123f9000b00497ab3d5f12mr7944923lfa.421.1664181892742;
        Mon, 26 Sep 2022 01:44:52 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o9-20020a05651205c900b004979ec19387sm2457048lfo.305.2022.09.26.01.44.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 01:44:18 -0700 (PDT)
Message-ID: <f9caffad-b1b4-539e-9ccf-6b827f34be32@linaro.org>
Date:   Mon, 26 Sep 2022 10:44:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] ARM: dts: qcom: pmx65: use node name "gpio" for spmi-gpio
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220925190622.111505-1-luca@z3ntu.xyz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220925190622.111505-1-luca@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/09/2022 21:06, Luca Weiss wrote:
> All other usages of qcom,spmi-gpio use the gpio@ node name, and this is
> also validated by the dt binding check. Fix it.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

