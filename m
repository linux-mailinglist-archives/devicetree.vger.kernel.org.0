Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F25255AF08F
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 18:37:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239062AbiIFQhG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 12:37:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238882AbiIFQgn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 12:36:43 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3138CDAC
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 09:12:55 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id c10so3360483ljj.2
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 09:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=/Nx3mH5ct9QYpoBU00B/ScU7zjA9VoC62pYJpkPSb+0=;
        b=C8cZQFXaa61yU4SrHQ+z2RUREsINQPfpjDxOHnk9rDEOvRE3ock2QmxnK8YSiG4XuP
         WNXQuL7nBdyL9sxZS7FPupijVONMx0NGze/N5GrovdbyBAJHPiFipLDSN9w3N6Y3nwOc
         FRp/kBBArbTAJ8Rqn+kzx/1qWM6GZDj3Yz10PFXfMV/B2045cCqeOxu04on9ZcM6y5l8
         mfy6wqW65WQZC7t2vKoiCqt8ym4b/CgyCvQGcdRVWWevj1eSWdKT9me/9OjA/LtHlZPX
         GOM1TRi1AqIVurh+LkerPnooW2qA9NpriY/2CossgrhArmaXCMUih8WDEHAiOo+UNqez
         ZXtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=/Nx3mH5ct9QYpoBU00B/ScU7zjA9VoC62pYJpkPSb+0=;
        b=vg5gDwvz+AX5RVJoPgj0HWVhsFMD63aaaptX41DisvGiFNxQ8onrZwQqIsZGfR71gF
         eWew9N2YqC/CDevB1Pl1k0GNqF3fyIPxS3Xh5mLS7HMEgpHoZ5KdVx+JhZ7oFI2UWlTr
         U2dc37BC7WRP/pB518i6TW3se0Dr0JpxtAXlcuJprIRAa3N3ZntvKHo1kztsCKrZX03l
         D1L1g3VfbuR6T95voSiZSBU0/i9TKO4JWgDkYm42KrxHStF8X/shyYF7y/cPvJfxspcr
         Vqwnz6sW2S/kNnEFZmnRlQg9GpNKHVDCtbufQdKdagghRNiCaft2G5UB1p0jsCQ4pL8+
         9Axw==
X-Gm-Message-State: ACgBeo1jB2KszRtCZYSICAS5Xyb52N5zEzHL99BTE+aYveAEA83zAmih
        Ow0IdSinVOFJsitGPwaxzRinvg==
X-Google-Smtp-Source: AA6agR4EaFe2XbhpwW6/C+wSaaX2AYP7xlORVBSPVXTkkJdhAk0LJl4qlI6kcu6z2cuYCEJOuzzoCQ==
X-Received: by 2002:a2e:83c9:0:b0:24d:a95d:7b7a with SMTP id s9-20020a2e83c9000000b0024da95d7b7amr16140667ljh.254.1662480773537;
        Tue, 06 Sep 2022 09:12:53 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e1-20020a196901000000b004947555dbc2sm1819378lfc.100.2022.09.06.09.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 09:12:53 -0700 (PDT)
Message-ID: <67657fa4-4b15-da4c-db3a-907b2a5b6d92@linaro.org>
Date:   Tue, 6 Sep 2022 18:12:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v11] dt-bindings: misc: fastrpc convert bindings to yaml
Content-Language: en-US
To:     Abel Vesa <abel.vesa@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Amol Maheshwari <amahesh@qti.qualcomm.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-remoteproc@vger.kernel.org, David Heidelberg <david@ixit.cz>
References: <20220906150102.3399115-1-abel.vesa@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906150102.3399115-1-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 17:01, Abel Vesa wrote:
> Convert Qualcomm FastRPC bindings to yaml format, so that we could validate
> dt-entries correctly and any future additions can go into yaml format.
> 

Thank you for your patch. There is something to discuss/improve.

> +
> +patternProperties:
> +  "(compute-)?cb@[0-9]*$":
> +    type: object
> +
> +    description: >
> +      Each subnode of the Fastrpc represents compute context banks available on the dsp.
> +
> +    properties:
> +      compatible:
> +        const: qcom,fastrpc-compute-cb
> +
> +      reg:
> +        maxItems: 1
> +
> +      qcom,nsession:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        default: 1
> +        description: >
> +          A value indicating how many sessions can share this context bank.
> +
> +    required:
> +      - compatible
> +      - reg

I think this was pointed previously by Rob in v4 - you need here
additionalProperties: false (on that level of indentation).

> +
> +required:
> +  - compatible
> +  - label
> +  - "#address-cells"
> +  - "#size-cells"
> +


Best regards,
Krzysztof
