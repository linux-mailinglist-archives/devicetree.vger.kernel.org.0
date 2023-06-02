Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1384171FC7C
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 10:49:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234852AbjFBItP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 04:49:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234497AbjFBIse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 04:48:34 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52B8D1A8
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 01:48:31 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b1a3fa2cd2so20886531fa.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 01:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685695709; x=1688287709;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IoQFQr/nPSNFex22doBQPMhVul05JZ1RLUaTofGh6rc=;
        b=oIOrjmJMTtBBGOq/2Ap4Pc5fVooiIfofixNKfmoziFbJDansAXfxM2Lzl5qgL6CuK/
         E0dmtS2SyWFo0da/54uB8NmmavclqDHnNVPpj9Rd31x71CHwZltsAxjHvrfytOFajcM8
         mMqnp0hJPEwDKHxbC2P221cVgnFIttyu2aJ+s16T75ctesZk8ltNNDyzXij8lwvOM71E
         Gkj8SAju7i2h7BdQsVxZfFMAwyhVEDQaQtECkoE/3LCSd0fzXTAWY0SXE+t0pKYnLtm9
         CuXFXPJiyomBtlI5sFvW7M5ZY+MTqqkjxJqN6Fyc1oKHcTAWO6mUcX/yZjLPTUCaOTxW
         QHbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685695709; x=1688287709;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IoQFQr/nPSNFex22doBQPMhVul05JZ1RLUaTofGh6rc=;
        b=R9s9c66LZljVVazOLmvzlU75kox9sEkW+U6CktvkWpUq1HvVNL6O2UEq4DA0TPGj/G
         mAysLbEB/cznAq+lzNBM2Dd5lwm7u+oyMaFsFzF7DqqvIKcxyIc5yowAHE/Z/MNn4hNE
         rq+p2rkdJ8CNq59ISDvq4PwqRnpWTaUsFNLv2rfZHTZAuJpVbQHyf8a6lp2st/uzaNB+
         fXj7CeblEgVUHjZ9ocXBALf6g8aY++kKOCoXHX+owkTzW0spiulH20UY+SGAZ2JJjQiR
         aviv+H7cBDRKNbsoV8lQY2RpbzvLPnbjeHW8CxJ5mNYEbgJoyawSl9zlQZuD9rWA5CfE
         JVEg==
X-Gm-Message-State: AC+VfDyevcmWPuE2Ego15nXnjnmEb0uOelK84ZBCLu9KKwAIP0u3EF99
        uK9Be4mdD7Op8Vq0wdZlBNq0Mg==
X-Google-Smtp-Source: ACHHUZ4CteD5aDWXschtOOQKsN+0Vs7jmkj6ydwf/dShOQgl0gKLTUFIt0A5KbHdVwxKiVNQPMfMYw==
X-Received: by 2002:a2e:801a:0:b0:2ac:7d3b:6312 with SMTP id j26-20020a2e801a000000b002ac7d3b6312mr1323052ljg.22.1685695709498;
        Fri, 02 Jun 2023 01:48:29 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id w22-20020a2e9996000000b002ab5421959fsm142943lji.90.2023.06.02.01.48.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jun 2023 01:48:28 -0700 (PDT)
Message-ID: <ff395fd4-1100-6276-f8c5-a3815b64ceb8@linaro.org>
Date:   Fri, 2 Jun 2023 10:48:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 4/4] clk: qcom: mmcc-msm8998: Fix the SMMU GDSC
To:     Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Imran Khan <kimran@codeaurora.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Joonwoo Park <joonwoop@codeaurora.org>,
        Jeffrey Hugo <jhugo@codeaurora.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20230531-topic-8998_mmssclk-v1-0-2b5a8fc90991@linaro.org>
 <20230531-topic-8998_mmssclk-v1-4-2b5a8fc90991@linaro.org>
 <CAOCk7Nogy3+5rvyzPEgsyJe7xE_17MXVs-=mniJJj=ELsCqzNQ@mail.gmail.com>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAOCk7Nogy3+5rvyzPEgsyJe7xE_17MXVs-=mniJJj=ELsCqzNQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1.06.2023 16:14, Jeffrey Hugo wrote:
> On Wed, May 31, 2023 at 3:01 AM Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>> The SMMU GDSC doesn't have to be ALWAYS-ON and shouldn't feature the
>> HW_CTRL flag (it's separate from hw_ctrl_addr).  In addition to that,
>> it should feature a cxc entry for bimc_smmu_axi_clk and be marked as
>> votable.
>>
>> Fix all of these issues.
>>
>> Fixes: d14b15b5931c ("clk: qcom: Add MSM8998 Multimedia Clock Controller (MMCC) driver")
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> 
> Was this tested on a system where the bootloader has enabled the
> display and it is active during Linux boot?
No, I only have a device whose bootloader doesn't initialize display.

> 
> I seem to recall that in that scenario, Linux would boot up, see that
> the GDSC is on, not see any clients for it (still initializing), turn
> it off, and kill the display which then results in either a mess of
> errors or a bus lockup.
I see 2 possible scenarios: either the display shuts off (because
somebody hasn't described the hardware properly and Linux isn't)
aware of all dependencies, or we get bus errors because we only
shut down / initialize some hardware partially, also possibly due
to bad dependency description.

Konrad
> 
> -Jeff
