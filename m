Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6ED49619FE3
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 19:29:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232047AbiKDS3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 14:29:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232053AbiKDS3e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 14:29:34 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 612F9A44E
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 11:29:31 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id h24so3537513qta.7
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 11:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rw4BpqJZxha3Wydoc46zcEGyhFGGo7LUD5zP55YjGoc=;
        b=dKzg1peGVvaOYb5V3V8Ci2QmNL55+dR23COoCJ7Zpfot4+5jLpVYwxo3aZMRPNFtkl
         s++4gjsCvoyMl7XrO3eFL7b+vbwFxkiFqe7boar91f0rjUaT/OaPeDXw4w3X2QIgYNwy
         3QeveHh9JlOq8hsCydzYxwfsOmWJLxK8QW6zCjgzTAJizGggTeCCdty7jqXNN1UAGZKr
         /b7ym+jBmBKNu9z98LinObXcRoFGyzYLsfIuyfh1PubpsDEcPMpt2V9m+VLZPZsCa4iB
         JSh9gSEa+YUUelVU5+Yxh60Prdbq5HCqI1dVQvfXcUdMaNZTze0n/Rj5b9Ged+GpvyCX
         MRFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rw4BpqJZxha3Wydoc46zcEGyhFGGo7LUD5zP55YjGoc=;
        b=bfkNq90DuZNb31GmVEjOQ1PmZ0Wv0rCHtlyaEv8FDCdfGn8f854hjg0gOqqHcRaWxG
         wLuoz3GQ52c6TTObvVGAYKbUWqeGxQ4ns/xImLev4vCBNyvr1VUCql1pfSIMY2gP+scH
         zg0bcWQfo9BeBnf+vWm4XI+pXD0iX5r6EjFDAY6AK+gDAcbWKoDw5ScPHUCxdJS6G4xY
         EZuH04R2Lla6LCzJDVs4AUo6dwYzEM/vdd2N/WVuDx0ku2rwJmGJmM9nmwA3BrQGsGFG
         TGwduxEZsAf24hkByttAOrCOiobY5Be1TCXCQ+4kZbJPXtZ2ygl5JAh5LlPpaRANdZY+
         bhgw==
X-Gm-Message-State: ACrzQf2KURUX/D+dGDv2pqSmPSteXShqJOUHEg8xOz5KvcDwBo908AZZ
        ViogMBTFQCNB4mfXy67u3sspYg==
X-Google-Smtp-Source: AMsMyM4GJjWfktvfLHV6GWR02PPssI2BywrNwj37NdCyM/Q/Kk5BJKEqGr2Q1LpxU4TqrMItop4viw==
X-Received: by 2002:a05:622a:5cd:b0:39c:fcaf:7b36 with SMTP id d13-20020a05622a05cd00b0039cfcaf7b36mr29603898qtb.117.1667586570572;
        Fri, 04 Nov 2022 11:29:30 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id m17-20020ae9e711000000b006e42a8e9f9bsm3272968qka.121.2022.11.04.11.29.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 11:29:29 -0700 (PDT)
Message-ID: <ad221e40-cf88-e021-582d-7d992dce6c61@linaro.org>
Date:   Fri, 4 Nov 2022 14:29:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 3/9] dt-bindings: arm: qcom: Document msm8956 and msm8976
 SoC and devices
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, agross@kernel.org
Cc:     andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lee@kernel.org, ulf.hansson@linaro.org,
        srinivas.kandagatla@linaro.org, jic23@kernel.org, lars@metafoo.de,
        keescook@chromium.org, tony.luck@intel.com, gpiccoli@igalia.com,
        bhupesh.sharma@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-hardening@vger.kernel.org, marijn.suijten@somainline.org,
        kernel@collabora.com, luca@z3ntu.xyz, a39.skl@gmail.com
References: <20221104172122.252761-1-angelogioacchino.delregno@collabora.com>
 <20221104172122.252761-4-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104172122.252761-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/11/2022 13:21, AngeloGioacchino Del Regno wrote:
> From: Marijn Suijten <marijn.suijten@somainline.org>
> 
> Note that msm8976 is omitted as a compatible, since there are currently
> no boards/devices using it.
> 
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Actually, you should also change include/dt-bindings/arm/qcom,ids.h

and add a patch for drivers/soc/qcom/socinfo.c

Best regards,
Krzysztof

