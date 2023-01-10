Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A82C8663D9F
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 11:12:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238045AbjAJKMQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 05:12:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231614AbjAJKL7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 05:11:59 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A5A6544F7
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 02:11:52 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id h16so11150311wrz.12
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 02:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jwoFAzmVct79bqJZEwpYCPbEy1KK9a8Xos32k6CB9ok=;
        b=rll1yyrS+IMjOPKuwpE7YSGZemxZTB6eFOYDpBF+hnLf8pmgI92TRe2Uyf6umZaBH2
         dTewi4vtWoQvnsco1Y0GwBjco3YRBwE9eNJfS+spQmmdTIpaRZA8SQNDa8+Um6qcEI9n
         JzXiXLmKMuFZSvfxX+EUUFKYorZhohkXFIDMQGNmdgFsWGpqD+CbAqN6ibV0fM4yRPWo
         MdgnfslqwGcrq7rEOA9stDMeBRwZqR6nPqorJVQ3DGSsOiILzftPzHsGjPwAFPxBpBs0
         zMdQwV8oK5cftcPpzfopRSmC+l/dsUZvzR523Ia7oFaRmtCUdOuEc9Udn9skxNgqDANr
         bvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jwoFAzmVct79bqJZEwpYCPbEy1KK9a8Xos32k6CB9ok=;
        b=uVvS4l09sS7OidEhEjBqb/roZRs/Qc6ZUmNpUxyxJZvuCFma+s8lOROGn7mz2WS4uV
         oUw+9/xhsrI7ihP3geVg/bf26cUvp7TkAVgk/vZ2Md0MKg9uCN742JydX9F/ixlFosQU
         ncCBpxDTaasSZDz1BdYjVtldj+ZpFMdZ98AD2VsK8A5WengFjvz0ADftS1NolTlyxGqf
         g/0ynkqYLnav+AK6k54mKBqjXJYHwjHZ8jb5pcuIQco2LRtwkAjydUAkWrHQoOfoaAeB
         Tw9OrfV6AggfonxgB0f6z3S/2bmDiqckh2txFjGgiNG5I1i1FwAKWVOvkNt6Z/ryfO+z
         yjZA==
X-Gm-Message-State: AFqh2koDJZ2gOtlBoCyJ+GK1Mvqu085513NAWQts7PVHbyKfMJErQ/1w
        K0t6cpthHD+oGZheLOwhGOrPYeDu7nS0mdx1
X-Google-Smtp-Source: AMrXdXsZPpkq9cPmTR37ia51zvuv0bKJrlVZp8tgAuoG6eS7DKgEpCtJM1QJDTWTu2GwMRdxUu4i1A==
X-Received: by 2002:adf:a3c9:0:b0:2b9:d6ba:21ef with SMTP id m9-20020adfa3c9000000b002b9d6ba21efmr13649879wrb.65.1673345511049;
        Tue, 10 Jan 2023 02:11:51 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u24-20020adfa198000000b002bc84c55758sm2521030wru.63.2023.01.10.02.11.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 02:11:50 -0800 (PST)
Message-ID: <a81b8f5c-9d41-e612-8d77-abf280898c48@linaro.org>
Date:   Tue, 10 Jan 2023 11:11:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v4 3/3] dt-bindings: firmware: qcom: scm: Separate VMIDs
 from header to bindings
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>
References: <20230109130523.298971-1-konrad.dybcio@linaro.org>
 <20230109130523.298971-3-konrad.dybcio@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230109130523.298971-3-konrad.dybcio@linaro.org>
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

On 09/01/2023 14:05, Konrad Dybcio wrote:
> The SCM VMIDs represent predefined mappings that come from the
> irreplaceable and non-omittable firmware that comes with every
> Qualcomm SoC (unless you steal engineering samples from the factory)
> and help clarify otherwise totally magic numbers which we are
> required to pass to the secure world for some parts of the SoC to
> work at all (with modem being the prime example).
> 
> On top of that, with changes to the rmtfs binding, secure VMIDs will
> become useful to have in device trees for readability. Separate them
> out and add to include/dt-bindings.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> v3 -> v4:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

