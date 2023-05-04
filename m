Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECEC66F6479
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 07:38:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbjEDFiM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 01:38:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229620AbjEDFiL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 01:38:11 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A3171FD2
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 22:38:09 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f139de8cefso7063501e87.0
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 22:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683178687; x=1685770687;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N0R/6F2fDA3fu8mo8fWH6D8UVAdWTIeYQHAz2BF8A7M=;
        b=bfn0/HMvcBVJDgWNnpzJsnesLE8K6/m3MFi1HoH4VER63n7gN2u81R43c3ajjwlv5L
         bEZSrabsqUBOY4J6Zglqs8mFPAP8SBTVzNdzrH9we8xemBMKzOisg/Kbhl3oLSYGmalK
         XIflo+kawSg4cInSY+jF7jvntPnVqK5CiUTeYNdPOYLsiuwpNI+MtlDcNEzIVZGhEgnU
         +m/9gvXLy/SfB3hgFU5ptVkHCnlDyGmtiIw9C4Ux9lJm000n1vuscwWth3gZrCBDE4cE
         UUMBqOyiv2DVSFQYZS8uU4eSuSPpzW7Pf4eYr6qmdoV9Bewu9o9/2wYNpVY+VBfuyKvr
         d7EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683178687; x=1685770687;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N0R/6F2fDA3fu8mo8fWH6D8UVAdWTIeYQHAz2BF8A7M=;
        b=Zz1wp0DgP5copg7exY57fPAp6HFUPyuMoVR+iMDEDzTFoSAyZkzH2ydJ2XnVR+at9t
         WWve4Gl3rmrRZZENtDhdfWPcUWFdaqRM7kDoB+e/rPkQW/fe59tk6IY9wIjlfS6Sw3cO
         t4yKKxyf5TjanPbsIYc7Ydm8898embkLbjrQ/kJru5z4ZIpVqHwLDwMW7cWGn6L1/v2y
         0BEkZOrjO1wO1UpacT4XsGz5mgF/3w7xSjlpLrZHpK0kjG0dcrGgjRIY67zYbzryoRaK
         U+oYnqIGllSx3HRMdlGc+ZGNaenjBN8eU//HBbVkhm8/E/RB8f7sTm3Cq1ZzE47ADumF
         nQpA==
X-Gm-Message-State: AC+VfDxbXxHuos15rRxO+spE8a+ZfjA5O9MPf5f5eFNB/w0tmPim9zzW
        CHckMtgcOh/z0nyDPLVDPc4vbGx3Jt+rT+ooHCc=
X-Google-Smtp-Source: ACHHUZ76yYL3ywZVQ6Yu/fDMSAsiT3rJarLzVrQWNbXGO3uWBruX3rTTID5e65AnCBa/CLR0i8HsFg==
X-Received: by 2002:a2e:98c2:0:b0:2a9:fa39:235e with SMTP id s2-20020a2e98c2000000b002a9fa39235emr418542ljj.26.1683178687461;
        Wed, 03 May 2023 22:38:07 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id p12-20020a2ea40c000000b002ac6b18999asm1030515ljn.4.2023.05.03.22.38.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 22:38:07 -0700 (PDT)
Message-ID: <47bba0ca-745a-6236-79c1-506258cf237b@linaro.org>
Date:   Thu, 4 May 2023 07:38:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH V3 0/3] Add video clock controller driver for SM8450
To:     Taniya Das <quic_tdas@quicinc.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_skakitap@quicinc.com, quic_jkona@quicinc.com
References: <20230503105937.24911-1-quic_tdas@quicinc.com>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230503105937.24911-1-quic_tdas@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3.05.2023 12:59, Taniya Das wrote:
> From: Satya Priya Kakitapalli <quic_skakitap@quicinc.com>
> 
> Add bindings, driver and DT node for video clock controller on SM8450.
Nice!

Did you test it with techpack/video or do you have some upstream
changes pending?

I've got sm8350 working locally and sc8280xp as a WIP, hopefully
heading upstream soon..

Konrad
> 
> Taniya Das (3):
>   dt-bindings: clock: qcom: Add SM8450 video clock controller
>   clk: qcom: videocc-sm8450: Add video clock controller driver for
>     SM8450
>   arm64: dts: qcom: sm8450: Add video clock controller
> 
>  .../bindings/clock/qcom,sm8450-videocc.yaml   |  77 +++
>  arch/arm64/boot/dts/qcom/sm8450.dtsi          |  12 +
>  drivers/clk/qcom/Kconfig                      |   9 +
>  drivers/clk/qcom/Makefile                     |   1 +
>  drivers/clk/qcom/videocc-sm8450.c             | 459 ++++++++++++++++++
>  .../dt-bindings/clock/qcom,sm8450-videocc.h   |  38 ++
>  6 files changed, 596 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
>  create mode 100644 drivers/clk/qcom/videocc-sm8450.c
>  create mode 100644 include/dt-bindings/clock/qcom,sm8450-videocc.h
> 
