Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5806639791
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 19:10:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiKZSJD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 13:09:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbiKZSJC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 13:09:02 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAD9C101D9
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 10:08:58 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id bs21so10954223wrb.4
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 10:08:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=14HxlRV+SCHhU12Rhd+agDyzR52gxT5y8aPZsUnVBcQ=;
        b=JSUOpnXVUL/GtjGB+U5r8O3XJS4oO27vbjQDsLdJ/FGIJwOWh64sgz7OetrwgWMst1
         KrwUMvbwqF2PHIhNvMwFnwMJwvCh5oCq9NeTbMC0koYwiyCcUMUfFWMoNBgWQWIi2JbK
         KclHHIy1Bl2rI4igM/+Z0pkMB2rCxdjNgOr/NllrCeUSiSA+YGceRa5Z76k6Buc4lU5u
         y5iNQcvrw2ImTH9iCOLtAwOCuuuWrS2+AYNeNdF3amFmXCsGGX0GM01XcoyI6loLInRP
         uVsBJMKKeKn2nDwhkRwsy/Ba4ft5IAxbKs8jRxMXRKnmlbHVpo0zW8c/PPvtVotGuUlC
         U8Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=14HxlRV+SCHhU12Rhd+agDyzR52gxT5y8aPZsUnVBcQ=;
        b=SFLcWSSQbMClLOGF4GWyWzYLAEMf7ZnVStQx4A02ywkYy1mK+sR6Pwy0MLhuNlHA5o
         sYMbbXYrw0imIc8WDRw3OyOxkL2JiKvCHE/Orgkz0BM4t4l+Yid/jy3KvU+oW+8gBmTr
         nrWiTlfCMIQbaLY2uYth6LW85BpV6mkkijzdrpz78lI+3JmQR+SaiAz0FB+Ir6c9lZ1L
         /TD6sx4HznzDapuECfCdK3Odc9Re78aGQabJUnaqva3r0yF5J5Czhi34da0craRaVPVJ
         tPvkM3fGor1sgzFm9WOh6r/cCfRCtCoB60j52wnV2U0kLjwLnPztamgf65k7HpEwNrov
         4Teg==
X-Gm-Message-State: ANoB5pl6BfhpHjUtJUgfKxBQknW87uTiJ+x9CjfhNHeKE7KW1CEBg65O
        ReYVsypZb5IAIAJst+myBUVbqQ==
X-Google-Smtp-Source: AA0mqf46lNLHAVNwE5GbJ272Q83inWMEqFqLSYa4pDcNM0EpPB/YRth9LRxuNf6zHFVz4J8/8Pl5fQ==
X-Received: by 2002:a05:6000:886:b0:241:b933:34a1 with SMTP id ca6-20020a056000088600b00241b93334a1mr17565403wrb.550.1669486137356;
        Sat, 26 Nov 2022 10:08:57 -0800 (PST)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id l11-20020a5d668b000000b00241bc4880fesm6383609wru.111.2022.11.26.10.08.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Nov 2022 10:08:56 -0800 (PST)
Message-ID: <26f9ff51-b6ee-5d2b-fc8b-93f7778d99a4@linaro.org>
Date:   Sat, 26 Nov 2022 18:08:55 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 03/18] dt-bindings: msm: dsi-controller-main: Rename
 qcom,dsi-ctrl-6g-qcm2290 to qcom,qcm2290-dsi-ctrl
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
 <20221124004801.361232-4-bryan.odonoghue@linaro.org>
 <4fd1500d-e3ca-45fd-1cc8-81783697b809@linaro.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <4fd1500d-e3ca-45fd-1cc8-81783697b809@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 26/11/2022 14:36, Krzysztof Kozlowski wrote:
> That's a bit surprising. Did we discuss it? It breaks the ABI, so I
> doubt (driver/bindings were already upstreamed).
> 
> Best regards,
> Krzysztof

We did discuss it but, apparently didn't grep it.

I'll drop this
