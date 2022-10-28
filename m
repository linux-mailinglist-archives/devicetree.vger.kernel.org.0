Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB7B4611D1C
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 00:03:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229846AbiJ1WDU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 18:03:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229965AbiJ1WDT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 18:03:19 -0400
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60F5924C137
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 15:03:17 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id l9so4357518qkk.11
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 15:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JEh1m2BZsGPhLegWl0gI6K0SksICnbu5WCO4CkZ7SZk=;
        b=iE2tyRua7hVzAgJU0AOezFIvb6TZDPJ6VKUc5wp+v6b3b6bkutzeyAx7RK+dUY20eW
         Fkhu3wmRBT3HgfhLdAj+oA/cxL602LVDLS4yf2/KX66HwRRIxCJfEczlUOmx1fZ1RN3D
         2JgCU4HW5mpEJV9D20hzgBpEBWFcJC8aRi2X7zOJRKzNfktPm8myGxKXqpvaH1b03CAf
         ROP6ZbS/Pi9LudbS/GoxMADywODGedJhyEEWR78ZcF756lb6AW6MDglWYRNg4kc3aELx
         J2dy+C+6/SfWmVTyadbHNvZYoj5O2fhHzW3fgO4a5rdmfMB0Ia74FA3o1J/r4IJVBinl
         pPJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JEh1m2BZsGPhLegWl0gI6K0SksICnbu5WCO4CkZ7SZk=;
        b=jMkEEhJjMJqt9pJSXeduuuisbJt3PbfX8q3bhnVCYThqiGc4kzB+yc5cb6eCWsxBt1
         b7mibHcRu7vnOgNXewqMBCc2Gf+y95Et655yoZM+DAZswdqbDa8+wcS3L0nbrMHG3VdF
         uQFGcz3Y8/S6JWyqgaX5/N1OFTQDg/OqciGZfhjRQLtWhvnxf8/VJdLa2B0hgx2340sf
         RbLzCYSctMZnb7gP/5eVkf25/sumFuV4xEqxtzWnor/x/fcDSF4rwkEGXVo/BqgFqSt3
         y0DwhxFUg0nJL9SELaqOYtVPWDIia7tHms9Z/Hv/Lz9peP3BCokMgU5Bt8F7Ozl+9JUd
         J0Uw==
X-Gm-Message-State: ACrzQf21CVradoKkTfpmXuLyF4fkDmoYjimL7bX4UygVFX/2q/Zp2yy5
        0VS2Iy1nhISrfIV69+99cgPsZg==
X-Google-Smtp-Source: AMsMyM4w5sAgV/4A4vdJFca6Nzd/ep28S3kElmPq1FpynnhrFrhjL8xYOXuVz2Rtf4HQ6enD2yiZFg==
X-Received: by 2002:a37:f50b:0:b0:6fa:12f2:974c with SMTP id l11-20020a37f50b000000b006fa12f2974cmr698344qkk.171.1666994596489;
        Fri, 28 Oct 2022 15:03:16 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id m8-20020a05620a24c800b006ce515196a7sm3787913qkn.8.2022.10.28.15.03.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 15:03:15 -0700 (PDT)
Message-ID: <eeeefa55-1782-2768-8d47-0f315ed9888b@linaro.org>
Date:   Fri, 28 Oct 2022 18:03:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v1 8/9] arm64: dts: qcom: sm8350-hdk: Enable display & dsi
 nodes
Content-Language: en-US
To:     Robert Foss <robert.foss@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@linux.ie,
        daniel@ffwll.ch, quic_kalyant@quicinc.com, swboyd@chromium.org,
        angelogioacchino.delregno@somainline.org, loic.poulain@linaro.org,
        quic_vpolimer@quicinc.com, vkoul@kernel.org, dianders@chromium.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Jonathan Marek <jonathan@marek.ca>, vinod.koul@linaro.org,
        quic_jesszhan@quicinc.com
References: <20221028120812.339100-1-robert.foss@linaro.org>
 <20221028120812.339100-9-robert.foss@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221028120812.339100-9-robert.foss@linaro.org>
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

On 28/10/2022 08:08, Robert Foss wrote:
> Enable the display subsystem and the dsi0 output for
> the sm8350-hdk board.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> index e6deb08c6da0..6e07feb4b3b2 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> @@ -213,10 +213,32 @@ &cdsp {
>  	firmware-name = "qcom/sm8350/cdsp.mbn";
>  };
>  
> +&dispcc {
> +	status = "okay";
> +};
> +
> +&dsi0 {
> +	status = "okay";

Status is the last property.


Best regards,
Krzysztof

