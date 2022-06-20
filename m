Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFBCC55175E
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 13:25:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232170AbiFTLZ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 07:25:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241629AbiFTLZZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 07:25:25 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE3DC15FE1
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:25:22 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id ej4so10709855edb.7
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=DTXXy1/OCsW2Bkbm2psSKwXvY8nsnMyv09s1yapleco=;
        b=MpRaRbvG4hjyS3sKGcmd+DxweimMjno5nUgMH6io8XFa+wudKONmI2p8dJVqdg7qVl
         ZxtmATxD1KHHggoe8ed5C5ASG24w09vZ9AC7fYIFq+Not5zlaYyyFXu+8b0lCNumOpLq
         OZW71JQK6wsfxU0wMiDgNkIPp0Zw5p1Gt9za7RU0mSBPPFVy715jJ7+NWvMqM2k5L9xl
         s+dTdJ4mwhKuuJQf4qU/sqi4QXIM+ljaGNfj37GkNlHA+ckevkWXMttlNr3NV1y8XGXZ
         vhGDtimD6CfH3xJnag41C3g36/fh1affIguGz76HUAUaxbkM7NC75+W4OIRNB8h3BEW+
         4tOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=DTXXy1/OCsW2Bkbm2psSKwXvY8nsnMyv09s1yapleco=;
        b=onJ57QJ9OlGnGnv0lSJJn3CmrF04sta+YtLZ9o2d6gjq5x3tSeGusw9oPbhxMXouM0
         DEjcuUuSKWTMaudXsKHTf6NlMgQKzCIoMNX//fAyyWxJNRQUdeSTbtYFIO9C7rDXqyE8
         8ZfDRPT6xw67hudrlscCb9Jk9E26PkEuQ38BIe59Y9C12V8kjtJhRNeEvjrVl3uPIon/
         rbDjOQFF77wDhjZ7HVZC3N9oyGS/r238VaV+ppals4w4prbE0nWLTln2ZThTguMaLYSY
         MNr5yxZxgwyeFVP0ifNFPmM3+fXelDVVu391wn5OCswLNU+bP+y1XH8leHcur/Bqy1Ag
         i3gw==
X-Gm-Message-State: AJIora89ypAoJr4H+KMWnIkNvl6eI2Zy/WvO7oE8/G/DqiQCU/WXQZJl
        KF+NHQ3dePn2dOk0AmnYoHcQtA==
X-Google-Smtp-Source: AGRyM1veJkjmtg4MOBTfgr8qtYkFyhlp570FZg22TkNvW5Gk9XzEHCupYnBft5XdpdTyOu+rnADobw==
X-Received: by 2002:a05:6402:ca6:b0:435:8009:aa37 with SMTP id cn6-20020a0564020ca600b004358009aa37mr6719989edb.183.1655724321417;
        Mon, 20 Jun 2022 04:25:21 -0700 (PDT)
Received: from [192.168.0.209] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id e7-20020a50ec87000000b0043561e0c9adsm7508788edr.52.2022.06.20.04.25.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 04:25:20 -0700 (PDT)
Message-ID: <01494531-9acc-1c8b-8d1d-969e96f4d6ac@linaro.org>
Date:   Mon, 20 Jun 2022 13:25:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] arm64: dts: qcom: msm8916: add xo clocks to rpmcc and
 a53pll
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220620010519.1533364-1-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220620010519.1533364-1-dmitry.baryshkov@linaro.org>
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

On 20/06/2022 03:05, Dmitry Baryshkov wrote:
> Both a53pll and rpmcc make use of xo as a clock parent. Add it to the
> respective device nodes.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
