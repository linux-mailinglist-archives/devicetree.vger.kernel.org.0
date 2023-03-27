Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A4B56CA12A
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 12:21:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233449AbjC0KV4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 06:21:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233592AbjC0KVx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 06:21:53 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C547E59E0
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 03:21:47 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id j11so10664617lfg.13
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 03:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679912506;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8cCLL0Ku81Lj0tFub0aTRUmlGj/bY9UaPx7F8ErIg3Q=;
        b=mPmvINEvZ8SbKpM3PZ4sWPSxTCEliy3mOHU2bLIjFSiXylMYG98J7MD0W09mp1oXvl
         oHMpXzVTxn8H1uTLJvLdxOf/UsaJTEITQhzh79MFEh+xXDDgsWP9A0Jn3Jm3OVkcIaeU
         pEWmee9OhV1BCNzlUiNv1pvL98WLZKQvUALEJd5GgWmRBeY1HnKHXag+LVwr21TGdAJF
         TSIDwYIczZMwltgJu/PPPUe88nqGfVxYhNSzY92Dtc6+Zn7jVDaW0zis58MM4YPvIh5P
         6oz9VHJWRhaEaLbmdNZW2oPBgAN1pboKntVhUyA32A6FpuTaBIPe9PHoxKHG1vi4v2sq
         Pegw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679912506;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8cCLL0Ku81Lj0tFub0aTRUmlGj/bY9UaPx7F8ErIg3Q=;
        b=G4HelbQocHXeiHP57BiAlZa8LiiNlvFcwa/mcWjikXXOvLe10y1PGkyVIefn1PBIL4
         Y8XD6Ajn7g87CeDsxS4rXXQ4B1G3rSue8ZKxUk9u9IGNsg8AoTKEDuhBz1Ghci4ClEMD
         a1GhxM/3jmAXwiwczjBSQh5Uk89hHQCOko1PtfuoMY8xis2epmAmo9r+UHtbF6u7fGor
         gOnk+LQFHlzm1DG4C4p44rSIA+dOlwcNqB1a06/xwAUCp7H0zQk45AK0vUHH5hXlhqGi
         772pm7MPLP5Kll7CJv6i6CCw2pHdrXxIh+oPh2gIFhoXXDX9lXvZ3S4Iwoi5s/GPFzOz
         bxHw==
X-Gm-Message-State: AAQBX9ckha0EYztDase3VfSkuMicx5R86b34qr7QpHIAIxTzfM63e5F2
        b6U0gJlslNgnhoKoWZxT99XEmQ==
X-Google-Smtp-Source: AKy350YsZl1lLndPLtgmqhQKTd2yzdEZ4UifTW61GDodPhv8n+hCqkK2VFpC4LzgDFm0NZPE8I1BVA==
X-Received: by 2002:ac2:54a1:0:b0:4e0:dfd0:fa9 with SMTP id w1-20020ac254a1000000b004e0dfd00fa9mr2806692lfk.56.1679912506089;
        Mon, 27 Mar 2023 03:21:46 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id y11-20020ac2420b000000b004dded2d1965sm4606933lfh.267.2023.03.27.03.21.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 03:21:45 -0700 (PDT)
Message-ID: <bf0dba24-cd67-4286-6284-d8b2ae0a181f@linaro.org>
Date:   Mon, 27 Mar 2023 13:21:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 07/11] arm64: dts: qcom: sc7180-qcard: use just "port" in
 panel
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230326155753.92007-1-krzysztof.kozlowski@linaro.org>
 <20230326155753.92007-7-krzysztof.kozlowski@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230326155753.92007-7-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/03/2023 18:57, Krzysztof Kozlowski wrote:
> The panel bindings expect to have only one port, thus they do not allow
> to use "ports" node:
> 
>    sc7280-herobrine-zombie-nvme-lte.dtb: panel: 'ports' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi | 11 +++--------
>   1 file changed, 3 insertions(+), 8 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

