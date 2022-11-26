Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64A5663969F
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 15:46:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229589AbiKZOqd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 09:46:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbiKZOqc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 09:46:32 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10C2212766
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 06:46:31 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id e15so415309ljl.7
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 06:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6cZq8OT8F2u1G+4KG5gAMpwVp5A0HMoWu/Eqh8dw+/I=;
        b=O/f4KfYlk4WCT/fyRp+lpMRV2476Va8uYDvN74Dii3D2KJinIBhs0Gw9QTEW898DI+
         OBNZr3b9HiW8hk/34tqUR0bdke9WGmA8/cnQ6HL+XoOkT/N6VKwA+GX17LCzNjZzTsUS
         cp7zcm1rguf4JKlilXLNBPA8UYruJpz2BdenOFaTqps8YIQQ6f/TR2tSiUJSiQSwEWq0
         7mTTMtYIuraGbbGGWDXOWz3j1Uz/8hRHW8jfRvCBABRDT9MmaHH/umQENZciqdJP2uF+
         EVpH0/z1W2RdNudceST+0Lok3UaGNMgZkxNzuzS+Y8vDesoXbUjBRNOKN4eKX6dbrHrD
         r54g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6cZq8OT8F2u1G+4KG5gAMpwVp5A0HMoWu/Eqh8dw+/I=;
        b=kYeM99BaaPzroWztCCtD9hFMveXI7CsMnupV4uZxCma61xuWsWfKj9/8DxsU1Ts8VC
         DDJP6JdOxVazYpDH0BTd7B7b9jVJ0hmhpFRZJO0g3HoloWIEkhCCfpjs3Sw48Y11Yl5D
         nCm/x6eKrcWtOD1n0k9gyv2NPxuH9rcuj5pAbKbtTXQ8RkRNZXbdv23ygFwv9cNfesZ9
         mb2zh6J/XeSi/NfiBG+svtiFap73ARuKF51pfjDtMeruoA/EkU+r9YY7MMovLizTjkTc
         Y6Y2Egs6SBqKWG/5zt6iZmKE/ArtFa5yX+4vd4ncbeobz6uzKBE6aoGqPmSFv3C2h1FV
         f3KA==
X-Gm-Message-State: ANoB5pnv7tOJ7rgJjgBYO1jD1FQKer8akChrb3pBIUBzE1bJpRE/Euns
        2OfA+Cy2q6CVXxep5dfwXVSamw==
X-Google-Smtp-Source: AA0mqf7l3fakUd44VH4Y1atC95rlxJUi7tt32oesGR4CbTxFRdKiko9XXZCSiCq5OA1bGwKmQYKjyA==
X-Received: by 2002:a2e:3a1a:0:b0:278:f073:d3c0 with SMTP id h26-20020a2e3a1a000000b00278f073d3c0mr15168000lja.357.1669473989436;
        Sat, 26 Nov 2022 06:46:29 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b12-20020a05651c032c00b0027741daec09sm643691ljp.107.2022.11.26.06.46.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Nov 2022 06:46:29 -0800 (PST)
Message-ID: <b3a9f5e2-56ca-b112-e0f5-563404dcb05e@linaro.org>
Date:   Sat, 26 Nov 2022 15:46:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 08/18] dt-bindings: msm: dsi-controller-main: Add vdd*
 descriptions back in
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org, dianders@chromium.org,
        david@ixit.cz, krzysztof.kozlowski+dt@linaro.org,
        swboyd@chromium.org, konrad.dybcio@somainline.org,
        agross@kernel.org, andersson@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20221124004801.361232-1-bryan.odonoghue@linaro.org>
 <20221124004801.361232-9-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221124004801.361232-9-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/11/2022 01:47, Bryan O'Donoghue wrote:
> When converting from .txt to .yaml we didn't include descriptions for the
> existing regulator supplies.
> 
> - vdd
> - vdda
> - vddio
> 
> Add those descriptions into the yaml now as they were prior to the
> conversion. In the .txt description we marked these regulators as required,
> however, that requirement appears to have been in error.
> 
> Taking the example of sc7180-trogdor-wormdingler.dtsi. The avdd and avee
> come from GPIO controlled external regulators, not the SoC and in this case
> there's no need for vddio to power an I/O bus. Similarly the regulators for
> the LCD are controlled by the panel driver not by the dsi-ctrl driver.
> 
> It would be possible to connect a different type of panel to the DSI bus
> here in which case we may or may not want to make use of vdd, vdda or
> vddio.
> 
> This is also the case for older chipsets like apq8064, msm8916 etc the vdd*
> regulators in the dsi-ctrl block are helpers not dependencies.
> 
> Add the description of vdd, vdda and vddio back in for the existing
> upstream dts where vdd, vdda or vddio are already declared but, don't
> declare those regulators required - they are not SoC requirements.
> 
> Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bindings")
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/display/msm/dsi-controller-main.yaml    | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> index 0fbb0c04f4b06..bcbcbdca1a78a 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> @@ -133,6 +133,18 @@ properties:
>        - port@0
>        - port@1
>  
> +  vdd-supply:
> +    description:
> +      vdd regulator device node

I see my comment was not really implemented. I asked:
1. vdd->VDD
2. Drop "device node". It's not a device node. It's a VDD regulator.


Best regards,
Krzysztof

