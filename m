Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 691F05E8AD9
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 11:31:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233543AbiIXJbN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 05:31:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233509AbiIXJbM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 05:31:12 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E40D2E9CD9
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:31:10 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id z20so2462937ljq.3
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=IBvwqmIkee/mEk1eD5GIAynGE3bP9mLepq0/KSN1Z5Y=;
        b=HRrquF7xs7xgcw/8B/gql2k+TdXBkKOu9Qn7Hq2unV7hHHizaze7vZCxGcehxu/9j9
         LnDyfKy5MzZjkgKA+c6JAqGeVUoNW2yWXIhktKvs28rBTt5AQGSrkgP2ybauDYhjrIXU
         WvCwi9oqcGrynIcTmrMcnr567WLQcBWI2qJ3AllfyFGbFf+zNhBQfX54+Mk3ino0fRne
         dmeBcZB062RT8GiHu8nCgwVtNeYiFsbxnrtCd7EjJAykmK4U1OlbpoOJ7Rte03RtRWTW
         egfmKUh0Va2A9Bs2VdBXwlAH5UVoPUEeuVlR0Pe2Mgt7UTPIm25jsyNiUl5hPobJqMrm
         4Vsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=IBvwqmIkee/mEk1eD5GIAynGE3bP9mLepq0/KSN1Z5Y=;
        b=zs0ERDgxo8Cj4jDnQSS4l3TXb0xkQbqDD57nqlispjum0qp8zRTUDWPVp8x6bGyFWb
         /1uxfSTQwQofS/658hxiajiCIHlAjl9ARdF6EM3C2c1DAXi+yDXEO5p2Xoccy0OhRikM
         CpfdHzDSwXvPn/ybmLHcM7WEDTmjVUpEoNYIMz5+4QvgvpqiRWAP+sIkZXgIlfEEKOAp
         ylq6kL/fcuVvBj6TC8RTokPzjByx/KpDZZ/+l8riidUcIQA0ngL5eG0U+mFWJ4tqVmIQ
         z2UgsocRR8rw8zTRpi9D7Fm8HoW+WUeA4HU2isfV8pBCQjBeY5bA4ucqD9pyo56iimeu
         tR6w==
X-Gm-Message-State: ACrzQf08x5ABcphr+uNAcap5YQsslqcyBldjZRAVBFCmrOPhtcLV4qMH
        hPiJlreWOlTMHot0f947yNr+PA==
X-Google-Smtp-Source: AMsMyM6B98VKzqVLkza19fLx0QpQ9eR3cZuWrb/sLV56gFw9m3BEMjXoPphPzSZcEsmPcbECFasK8A==
X-Received: by 2002:a2e:9106:0:b0:26b:fd8f:49e3 with SMTP id m6-20020a2e9106000000b0026bfd8f49e3mr4487983ljg.531.1664011868948;
        Sat, 24 Sep 2022 02:31:08 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h2-20020ac250c2000000b00497aa190523sm1833117lfm.248.2022.09.24.02.31.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 02:31:08 -0700 (PDT)
Message-ID: <dc7605f5-17d6-f4d2-68c2-cf109c9dad9b@linaro.org>
Date:   Sat, 24 Sep 2022 11:31:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 4/9] arm64: dts: qcom: msm8996: change DSI PHY node name
 to generic one
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220924090108.166934-1-dmitry.baryshkov@linaro.org>
 <20220924090108.166934-5-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220924090108.166934-5-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/09/2022 11:01, Dmitry Baryshkov wrote:
> Change DSI PHY node names from custom 'dsi-phy' to the generic 'phy'.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

