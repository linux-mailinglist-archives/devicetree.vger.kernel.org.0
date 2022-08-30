Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6079A5A66BA
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 16:56:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229512AbiH3O4w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 10:56:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229633AbiH3O4v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 10:56:51 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6E0211C156
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 07:56:49 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id z6so15884470lfu.9
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 07:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=SFuf6cO9xSesX47vp+nMPNrkFWqJziAxRMGo0ItDIgE=;
        b=Jmo1pgNLku6CVfOzFwkt15dNf1DJMvKCXQM2TnIjZZg8mE5vEHR7YfiRfMRkn/Ogbt
         10dY9eIBheBYNnMVtNYkkjdfSU2cwx/GYYWBmfBGFP1YmsIiX5/vdS7xHowZHGnDupjF
         uFsh1ZcvHxUDS9DMXV9XTm6Hbe+jM/5CPs0kgROImgRw7npk7FBe/TMr66hyQM/OHLtS
         jAYVzrQI6AG/MY6kKM39MKHNBDe3QvpbX32ySfOBi4dySrWzSfuCv6lp7lff6GtT+irO
         69fyBXianxsE4xDX2M/wXn0eal/kBkUymX5DyBsZTzh8cmzxFnhyQoBDorqz1Z6JUtI4
         B8rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=SFuf6cO9xSesX47vp+nMPNrkFWqJziAxRMGo0ItDIgE=;
        b=r0H8uXCDgm7NmXpRf3HOViZHXQWN13Nc8KhlavUHD8sogxkNiiXCaVjC9gaWWnReEf
         r0uH8DtXd3xzzYEDHTEEmLVGAYUMIIQx6cJq77yrwLInRSxG+QaBhAMrKr4uWlY6fHam
         XXbifNgqkp1R/c0a5ur9YBxK9+k1v1WSsvOLZTsTz2rkT18ozJf45cf2YbQuwZfi1mNg
         SK8jL2gMpmpypKSEHPe4cdF/YfEy991fjlReUPmIDau2rwCDoOquBKetzVtltDQDULHQ
         fV7O1XVIGhmr/mKt/LS5a5Qnb1CrltjILacoINgeOA9+BEwtS0mINBQ0bgQ6gIiRrB2Q
         duiw==
X-Gm-Message-State: ACgBeo34gOHNPFdS2U332QQrFdYClEnFZHIYrsxysZaS0KvTElIMdKFp
        Wh72duWh+VppK1Gd8pFtGNFDCw==
X-Google-Smtp-Source: AA6agR6lhPdWWgHOUG9Pri/Ny+/ow2NiSK17zEyYPAyiDpOb5/SqP2iJpFFQIpvyknqSAhWop0RG8Q==
X-Received: by 2002:a05:6512:3d9e:b0:494:5ea8:8eba with SMTP id k30-20020a0565123d9e00b004945ea88ebamr5201536lfv.635.1661871408179;
        Tue, 30 Aug 2022 07:56:48 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id s10-20020a2e150a000000b00261cf313b83sm1768756ljd.18.2022.08.30.07.56.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 07:56:47 -0700 (PDT)
Message-ID: <e7c40568-b08d-e34c-81da-d979e31fec47@linaro.org>
Date:   Tue, 30 Aug 2022 17:56:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 02/15] dt-bindings: clocks: qcom,mmcc: define
 clocks/clock-names for MSM8960
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220623120418.250589-1-dmitry.baryshkov@linaro.org>
 <20220623120418.250589-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220623120418.250589-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/06/2022 15:04, Dmitry Baryshkov wrote:
> Define clock/clock-names properties of the MMCC device node to be used
> on MSM8960/APQ8064 platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
