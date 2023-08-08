Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6DFD773C70
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 18:05:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231450AbjHHQFk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 12:05:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231683AbjHHQEV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 12:04:21 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E457D2697
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 08:45:12 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b9aa1d3029so93381571fa.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 08:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691509511; x=1692114311;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FFQCxsSM2uVo6fho+aJ/OGP5I8Vv4VqgpwCByYL+BHc=;
        b=TEp8iOEXhB97iE0JLbKAqK1Z9WfJ/NB2UbOmc38zgX1E2vf0F7mz/HEKj5+5ZSzNlx
         F6Xruo3MfnoJJQEBcML/gEzO5QGNxqVhHvO8/URfMatKCpa4h9VSzk8yrzCUftEZPnkn
         L3RKL5mLYJn0YZrWIoi/RdRSlU+Q8xRx1B2j4QzXvXhTjgbVBKN3eMdBeTmIfPQ37t8G
         SvVVb7O7B/p+q/AEHgrA29DrZziHgKbvPAoIBuwQb2zq6jLUpAgpP8w0ux9+NEbUvdg7
         iZ0D9FKk5+RiGmOAvM5A4REq2q7X0iiMyLc4HtOMtwgnpdFsuzRmmOIY9Arkfv+6VQyz
         NaeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691509511; x=1692114311;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FFQCxsSM2uVo6fho+aJ/OGP5I8Vv4VqgpwCByYL+BHc=;
        b=ha7XLkLEloCVsgp15yEUKiT5qvxjYU5bc6kflgOV7oYcKTBsP/14U4vifbpVTN9xJl
         CXW/Vr6V3a5A3rp2p/xoCFD/0E9ogs7QyPGra8Y6mUBiHlSWYtvDjSanllh5b5Q8QhKz
         0vUBXp5/bt5IoYrb3dBtyDkX8gQJyPFDE/BhWE46Sq/d07tYev59nTB39uYuTDiLuhAP
         1FEyTx3R8DsEAOqDAsy3q9YBRuE8cBllI49IzQwCfDuKrAl1Or7kKjINOsU3AweWGPh/
         mOM82KDPJpQdDKXj5RseuVUoby85mdncGst/Oyzg7D7vglVJwHwOGJBlg9kqZGgyeIdZ
         A56g==
X-Gm-Message-State: AOJu0YzpfhezGw9r9aa32iUGYYN5JB+G7g+JUObaSAj7ACLGcxN46tNU
        1nfQTv5Y/MH2XFHc3DOdowwlnzsuSoSPGdxp44g=
X-Google-Smtp-Source: AGHT+IGHV9+UYzYvn5Ls/Ez67OotAAo6suz5ZNdonadR1VetzpLzmLYFNFXgqtoLI29IJKXXrA9EdA==
X-Received: by 2002:a17:906:220e:b0:99c:7333:199d with SMTP id s14-20020a170906220e00b0099c7333199dmr11376507ejs.30.1691507449835;
        Tue, 08 Aug 2023 08:10:49 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id y25-20020a1709063a9900b0099bc80d5575sm6773608ejd.200.2023.08.08.08.10.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 08:10:49 -0700 (PDT)
Message-ID: <f7f9b3a6-7ba3-3ac1-eb8f-4973d31690f4@linaro.org>
Date:   Tue, 8 Aug 2023 17:10:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 6/6] dt-bindings: arm-smmu: Fix MSM8998 clocks
 description
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
        Imran Khan <kimran@codeaurora.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Joonwoo Park <joonwoop@codeaurora.org>,
        Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev
References: <20230531-topic-8998_mmssclk-v2-0-34273e275c51@linaro.org>
 <20230531-topic-8998_mmssclk-v2-6-34273e275c51@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230531-topic-8998_mmssclk-v2-6-34273e275c51@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 11:44, Konrad Dybcio wrote:
> MSM8998 was abusingly referencing one of the internal bus clocks, that
> were recently dropped from Linux (because the original implementation
> did not make much sense), circumventing the interconnect framework.

Please mention here that effectively you are dropping bus-mm clock and
the rest is the same as before. It's not possible to figure this out
from the diff alone.

With updated commit msg.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

