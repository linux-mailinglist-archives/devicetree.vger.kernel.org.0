Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60B77673724
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 12:41:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230516AbjASLlj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 06:41:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230471AbjASLlN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 06:41:13 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 663544A1D2
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 03:41:10 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id i4so937594wrs.9
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 03:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WoyFT0cbatPpquHGlGmq+CVFexdYi8Sb0FFBdBRA/oU=;
        b=lE8lhn4kFosWwH1F5qK1+ReSvndnaCAYkFudXTg9+yBHvpo6GgiU5mozLyMMqDsC0b
         mLOAjD/z1oFckMHuPzYe15fLVfUDc6ye5Gpj9kc3Ni22S706bJtojGWVdtprUHUNBbvI
         6GYAP3Qc75vLUkrRz8PcKI41DiMsdpL9gKknOjEfAKKH7bfXcs9NviVJHcbMdZnmCOaO
         yQlHG7jv+bQ7ve7pjNDwHKxXRDJX87MMCeQMBQO1sFrkgs9XXx6/7TS1XRCNxvhxy2qu
         VszYqHpEqdt/yZ3/6o86mcJLgRmA+GHbtF+uPokecf7LtzwrPrfXWZK+Lvc0pXFDTall
         903g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WoyFT0cbatPpquHGlGmq+CVFexdYi8Sb0FFBdBRA/oU=;
        b=xLs6sGSK0g07pI8MfmDrnoyyZWlaIgExBeBytLF1Z4Lzw3IG9057OE4e8bdS20b2lE
         cXn/Kw3ciNpfhIVIEXVIgIGvF+PVGjj3B7ahh9iYT4OE7f8gPiuCgiuUQgm/Zl64Frp3
         FoJPcDiez7sSUaaOgODMfjZZMv2yhVza8fKC6nULgb1eN3S9eHRgKaYDgg7aQxn+yFGy
         NHA/P9918Lhae6yf7llaXoRqy2W2hNtvHoyArSsgrJExPyp5KaNICBdatxQFznW6NWHk
         ETPi93GyhgyT09NK6Ms/Xf85m8VMvDGdjTU2jeVAqnMgiLfhX+7tynPbQfgXuCk6VCxx
         XdKQ==
X-Gm-Message-State: AFqh2kooycKJ6YnMc/i0AeJNmyJBTrPp6RbDpvhkAGjmh0YGTNH42fSQ
        TxdW5te/EPxjvKeyvxn2DrLEpQ==
X-Google-Smtp-Source: AMrXdXs218++12twDEoYyYduIE1B+u+Btq8eB2DlNmjlIceQN0Uugn7LpFeuozQboOEFKkErDv6NZg==
X-Received: by 2002:a5d:5b0e:0:b0:2bd:e873:e20c with SMTP id bx14-20020a5d5b0e000000b002bde873e20cmr11350111wrb.70.1674128469007;
        Thu, 19 Jan 2023 03:41:09 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b13-20020a05600003cd00b002be07cbefb2sm11806849wrg.18.2023.01.19.03.41.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 03:41:08 -0800 (PST)
Message-ID: <660bb2a3-79f8-b657-782a-50ec61dc8932@linaro.org>
Date:   Thu, 19 Jan 2023 12:41:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v4 3/7] dt-bindings: mailbox: qcom: correct the list of
 platforms using clocks
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230118132254.2356209-1-dmitry.baryshkov@linaro.org>
 <20230118132254.2356209-4-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230118132254.2356209-4-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 14:22, Dmitry Baryshkov wrote:
> The schema incorrectly lists some of the platforms in the statement
> requiring clocks/clock-names. Correct this by moving platforms not
> requiring additional clocks to the separate clause.
> 
> Fixes: 0d17014e9189 ("dt-bindings: mailbox: Add binding for SDX55 APCS")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

