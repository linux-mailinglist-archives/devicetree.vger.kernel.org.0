Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A45A372D477
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 00:34:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236989AbjFLWeY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 18:34:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238836AbjFLWeQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 18:34:16 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C1BC186
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 15:34:15 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b1fe3a1a73so57813131fa.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 15:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686609253; x=1689201253;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b4Xwe4WxbAGQn4xEyiGg/g3LPEJV7gNpnJJuVD6A+0c=;
        b=DRVYs/g2UZUWnA1DrW9aBSmS1eDRmfZn+mCFenQzNSFtAHaeG4EHwxeIUVDBftQ454
         bMWihmJNRrCEXMgRSSjbzQqaCA6DefDK3TxJnuOUG++3BL5YturQPJl2OArY+Jn3cPeF
         iZu9rHdNORH4HflraMBoafaXwYMReKs0fhqUA4Zzdc2l9OlX47c8GTHInWkp2KEQPYza
         dC8bgav3JmAeHQQG+vvKEmlo+mf20xEkiqUnhlFuiJHO063SBGH2YSVcisJO/saZSCSE
         GGf9ArXj4HPYfu3ZmATU1IZcNIj28iL/dPN//NyF8STn/m0g8MnsRAl0dKE8T+0cZUbp
         2PmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686609253; x=1689201253;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b4Xwe4WxbAGQn4xEyiGg/g3LPEJV7gNpnJJuVD6A+0c=;
        b=hijboWZ1i7yKytGwLglt11dAcLvy16o576rQfULJSJLsSl8cAOZTKrp7OHLY5cVQRQ
         8N8NxvCfmknFMo4hYD74djuM9ohXCzRKWIxvvg2xQi1vSD/P55g8IjRzIGtz3Hz94u8d
         eBvS84SXVX5xDZXWEbHw3RhaqEwGg40G5OKduAdVDUTnGjAq0zXYnig8WfXbyOPIdtex
         Vg//XJ3GZMDV9Mt18vE10+4Gn882Oy4mk2Qf27MUPntWw22hsyO/klyAKn9HFyl5j6dq
         o7oXhVFFYrON7E2RM1QM6p2c39r8ApDHXW3S5T4Q4IxvAOF4wNcTZhL1pN6epaPD9l0w
         sqSQ==
X-Gm-Message-State: AC+VfDwVuWNHXyfOycvcyKruKUGD9B/Ld2lBUZQcfQ9KQbYG+r5axHSQ
        tuWr7GoVnE46XX45sLQOqDZqzQ==
X-Google-Smtp-Source: ACHHUZ6tyvqHScaDyATfvo4uH8DS4TvxO9mbGbUcSUFnn+ZC3asSLnIl30nK0hdxi864tRsuXH9c2w==
X-Received: by 2002:a2e:88d9:0:b0:2b1:c023:8b88 with SMTP id a25-20020a2e88d9000000b002b1c0238b88mr3757956ljk.41.1686609253716;
        Mon, 12 Jun 2023 15:34:13 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id s16-20020a2e83d0000000b002b1a3ceb703sm1948189ljh.6.2023.06.12.15.34.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 15:34:12 -0700 (PDT)
Message-ID: <302756c2-03da-e090-137c-d056e49f58ed@linaro.org>
Date:   Tue, 13 Jun 2023 01:34:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: qcom: sc8180x: Fix adreno smmu compatible
Content-Language: en-GB
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230612220532.1884860-1-quic_bjorande@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230612220532.1884860-1-quic_bjorande@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/06/2023 01:05, Bjorn Andersson wrote:
> The adreno smmu should be compatible with qcom,adreno-smmu as well for
> per-process page tables to work.
> 
> Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sc8180x.dtsi | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

