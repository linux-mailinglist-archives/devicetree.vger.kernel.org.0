Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FC0A5BE009
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 10:31:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229689AbiITIaJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 04:30:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230500AbiITI3W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 04:29:22 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BE0CF53
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 01:29:20 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id x29so2110468ljq.2
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 01:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=q+qrPK+uK1obP1R6zQ8ccqdr8h0WGw3mEokOpZ/9RYA=;
        b=n4IcFmsbbihK7kruJhyLwMW46OUSjv2IxTDfKhMes67u/4zkET/1ALtl+oJO+Xrxwd
         +fw1SxdX1YZZv3p4eZl+jA+8QbBV7dkb12yt/5Hquel7h2Yz5G0s8GKt6ueCoCpRrslA
         nvcktY8/j1lS+x+CA4L34Re41UNQjJVrbgPL2C/twRwMVIVi4S0QtfHABx9u20S5U0cZ
         vzwz8TwQIOylB2QfJ8PjK2+Y0cVtp49OVK83vitzZQ9AXut+gu84Nta5LKyepMvz0YOX
         oEHGLpSsQ/g/jd4xg24rnoBKr91ZOTfLpCsIEFeyqeeSan9BEAGN6W84gtnMcqwE6YUe
         c7ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=q+qrPK+uK1obP1R6zQ8ccqdr8h0WGw3mEokOpZ/9RYA=;
        b=dVeNhyM5XZ7wCmolGlWudRiZSKMXjcZeaID2WCoWNP3+QlM9Wzz/me0jnw/qBdNNqZ
         cBO9uVd3WKserBEcTFle0WYSSb9+vMdXPwTGn7OiSPM70d3Lk0Fya9mKvnPOh4IC7BPE
         OV6SMs5o5rh54pm04ThkvBSWQ1kVDNTR5+tKKrBCS6Bno4lszaHFH1NwISuslc/hA/M6
         0OuX6Yq3ZMQbuQFS1Mv6QLMn1tUCn6slWNcgOPihZdP+ULlsT9ESskbqJFLnwvXIz2pg
         q8ywKNc3mRSAY7gexdYIJSTCh4VzE6EM1eQrVXM+pONGV9KcxnzQmcmn5gILFPidZIbh
         A5BQ==
X-Gm-Message-State: ACrzQf1e2irt1HeN1Jygyqoj4PVABITADAUAcP6Hsxh0NQVm9ljY+Q8/
        mXs3tA+ablr7UmCvRxDVx6eLpQ==
X-Google-Smtp-Source: AMsMyM6Kprnea7sEuwFMLOSo98vZQJ0lIlpS+dzRwKlUGKUEeFJ1HWosA9iODloVAjdcsbyI3bN3UA==
X-Received: by 2002:a2e:b009:0:b0:26c:3fba:c3b8 with SMTP id y9-20020a2eb009000000b0026c3fbac3b8mr5183171ljk.114.1663662558375;
        Tue, 20 Sep 2022 01:29:18 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b21-20020a056512071500b00494978b0caesm190823lfs.276.2022.09.20.01.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 01:29:17 -0700 (PDT)
Message-ID: <a94b0149-5e49-3aab-540b-ebc1b70b0799@linaro.org>
Date:   Tue, 20 Sep 2022 10:29:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: clock: add rpmhcc bindings for sdm670
Content-Language: en-US
To:     Richard Acayan <mailingradian@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <tdas@codeaurora.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220920023709.4865-1-mailingradian@gmail.com>
 <20220920023709.4865-2-mailingradian@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920023709.4865-2-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 04:37, Richard Acayan wrote:
> The Snapdragon 670 uses the RPMh mailbox for some clocks. Document its
> support.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
