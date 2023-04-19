Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07F016E80C8
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 20:02:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231822AbjDSSCB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 14:02:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233448AbjDSSBz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 14:01:55 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DE5C83C1
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 11:01:45 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id ud9so383342ejc.7
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 11:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681927304; x=1684519304;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8TU4VKXggAA60k8u7aIEAlos+Ys8Wu2AXNC6HByLTIo=;
        b=opsK8z1/b2kbjBrlmvQN7gIcrlPzmowCfoAZ7wiBNgndbvCFYgrtPuo1zv1/JVmW7k
         Wtx8rpngvyT7fxDNSP7f+XLBNw5zS7wyT6gcasQESOoSiKBEvqs0o0n+HI2RVqPhE9z8
         IxMqqMaCwx1D4E+WLnvsvvr7OGZMfEPtDW3HzzKBd3JIZnzNU55sRgWDPONxP7GVGVRM
         ivgkBlX7+uTiNh3vtogdgAz+DXCgaf5YqaC5WAEl4MhvsM/VZ/+UxEZ9YoALfdBdnLnL
         1C4A1hYOWpXoKhp9MSxS3TbJQbKdojnfXb6+vrCoF4hXYKh6RjG7wU/zvbGfCnkiIG7T
         AM6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681927304; x=1684519304;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8TU4VKXggAA60k8u7aIEAlos+Ys8Wu2AXNC6HByLTIo=;
        b=ZICeOcbCJVCdRerJPh1u9uFBBKpYWkP1QEgt0u+cPF3gUdHJrwksI7fEYCttZmu1e3
         HTSxNz5KlAuuYEtQox+uPML1sFxVoks5vmPPpRkNzzkL2QiBITjSKQKiXIWvcjNK23zK
         jt1OKK4S3F6Yn+x1wud635Sp80m/2GmogZQtNj9KCmeBfINXkL+Ye4XFBqFby2xPrPSA
         AOu82xuX4tt015fAGP1ngD5n2s/Gl/jA+iOrbnVuyI79K86i5PGo7Yb8e+YCVVerjO1e
         zNvhWhjljM56CBjEgEprUvwzW5Gw9fKd/vgd4n5fXwy7cEeS2+Pu6YT6D0vDVx88WXU2
         WF8w==
X-Gm-Message-State: AAQBX9fIftTuU7t/6WON35rwvlhmJk+Lljmb7YoYPsurbTc9hLmRo43X
        n3pq512STT6/+zb197E2J91+fg==
X-Google-Smtp-Source: AKy350aOM58fqkMWBGIsE//WU3V8n8GZKCewOK0nDx/WScmGxIL/da+nDUnS+aqw+9bnnVJH1n/4eg==
X-Received: by 2002:a17:906:c098:b0:94e:5679:d950 with SMTP id f24-20020a170906c09800b0094e5679d950mr13391421ejz.72.1681927303028;
        Wed, 19 Apr 2023 11:01:43 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:b7d8:d88b:1fac:c802? ([2a02:810d:15c0:828:b7d8:d88b:1fac:c802])
        by smtp.gmail.com with ESMTPSA id v8-20020a1709060b4800b0094f3cb173c7sm5855032ejg.63.2023.04.19.11.01.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 11:01:42 -0700 (PDT)
Message-ID: <1da38e9a-b5b2-0c06-8d30-d9c7df1b72cb@linaro.org>
Date:   Wed, 19 Apr 2023 20:01:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH V2 1/4] dt-bindings: clock: qcom,ipq9574-gcc: Drop
 bias_pll_ubi_nc_clk input
Content-Language: en-US
To:     Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
Cc:     quic_srichara@quicinc.com, quic_sjaganat@quicinc.com,
        quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
        quic_anusha@quicinc.com, quic_poovendh@quicinc.com
References: <20230417053355.25691-1-quic_devipriy@quicinc.com>
 <20230417053355.25691-2-quic_devipriy@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230417053355.25691-2-quic_devipriy@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/04/2023 07:33, Devi Priya wrote:
> Drop unused bias_pll_ubi_nc_clk input to the clock controller.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes since V9:
> 	- Dropped the unused bias_pll_ubi_nc_clk input
> 	- Added Bjorn Andersson to the maintainers list


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

