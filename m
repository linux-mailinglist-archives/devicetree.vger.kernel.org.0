Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFEE6588772
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 08:37:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235857AbiHCGhe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 02:37:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234600AbiHCGhc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 02:37:32 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C41C31939
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 23:37:30 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id d14so13159287lfl.13
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 23:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3C/lNt77+qlJDztrS8WVjy6lbQy6qfEyINiYOOYnU18=;
        b=OkTTeDdgE1wq3JFHiRmbjgpyqJF9kC+95jnwwzwrKilHNWflwBySJidfMTBFuX1US3
         JLlom3TZgEzsdoeqoGjWDbLUUs/wzgFAasq1I/3bubb/U3cA+rKmxQqyjFFm6Goml4Kd
         yL4A1YBkBsHnJ5jm/nuf9kXHpK+/Wh/bXGqfyfPkqHdEjzw69+Co4UoPHz1VMgo2gXTQ
         n0GGainzh8Hw+TW+JVZ9ockkmlKNfPaTYHI2oNT/mHU4J9H03QGZhyxvdaY0z6pejV3B
         UVlfzuHuwgOOoVEZDOtR0K6eVjW6IEUuWpk30GlQNTScVwvI6zi1tmQlxysqusRscnZk
         PhYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3C/lNt77+qlJDztrS8WVjy6lbQy6qfEyINiYOOYnU18=;
        b=XOeiNkuDhUprpsUYGLwb+52JOT3sNFp/jkXP1zHESaOd2tC2HPPxo63TRxVo0cWa4F
         pmWcOA2AF9F383TBry91+Xxm76bsPPZ+qNtHuP0MScKCszrbNcloCYaxpdcGrY8P9cIe
         YgehLjyWs2qbLURQogDN4Zozqd6l1uZ9F1u13HwbA+xGtoXkBalzp9i/z11X1W+3KVYw
         TeJv1VHsePH9FXWcFfuq/HyAgdMhBmsfeuuVkuCXmQUxuQUd99adQVb3hxFr8gH5riJz
         VtFw9D8lvhi3HyvoiOQSWbxSlRkOF3rarXi27Gul8J2sG3nbCRkTqI4MJj4LxLgHkkjo
         FmGQ==
X-Gm-Message-State: AJIora93fM52D5uOIpdXOhYdApuPhdQGcA/q7M0tVjDeM9mHH2UhZ4b8
        x+9z4mfzSwLiEhYDJEpWbgLq2g==
X-Google-Smtp-Source: AGRyM1s5ZskGPA3x2RfGUG+ZddgaBOYCr+PGg5vqJBsdELbLJDGDQFIGpzGmtTAa7OvrGnkfkkU8OQ==
X-Received: by 2002:a05:6512:3f0c:b0:48a:433:6d3b with SMTP id y12-20020a0565123f0c00b0048a04336d3bmr8447107lfa.570.1659508649004;
        Tue, 02 Aug 2022 23:37:29 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id a11-20020a19f80b000000b0048af437ce87sm1246604lff.183.2022.08.02.23.37.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 23:37:27 -0700 (PDT)
Message-ID: <f2453080-d71b-3c33-ba8e-d2ed15e06927@linaro.org>
Date:   Wed, 3 Aug 2022 08:37:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/5] dt-bindings: clk: qcom: Support gpu cx gdsc reset
Content-Language: en-US
To:     Akhil P Oommen <quic_akhilpo@quicinc.com>,
        freedreno <freedreno@lists.freedesktop.org>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1659172664-10345-1-git-send-email-quic_akhilpo@quicinc.com>
 <20220730144713.1.I68b749219741db01356a42d782f74265d29a2ac3@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220730144713.1.I68b749219741db01356a42d782f74265d29a2ac3@changeid>
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

On 30/07/2022 11:17, Akhil P Oommen wrote:
> Add necessary definitions in gpucc bindings to ensure gpu cx gdsc collapse
> through 'reset' framework for SC7280.
> 
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---

Assuming discussion in cover letter sorts out:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
