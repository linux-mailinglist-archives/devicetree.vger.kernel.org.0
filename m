Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C06BD65462E
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 19:53:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235558AbiLVSxs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 13:53:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235514AbiLVSx2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 13:53:28 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A340C2CC97
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 10:52:33 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id u19so6976748ejm.8
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 10:52:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Wv5r7o6DzTqSnIpCAKgG7SesTpoF9G2sHu8yiB5cAqQ=;
        b=mSfrS/J8VO5tRvI4ypr7qpNfnF83I4UW4EOsuJRte7oJb3nlCbheVYTcvXQaLYQY/D
         mZ3a1yMbIuPZpRRD+rZIyshMQj/e5SwoAOSeLTBjeW0K/mmPSjCm78S6ZU4DiydPBtUa
         f5cuFbWVbca71QSlKUVjm57bFQnNbBgicqmHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wv5r7o6DzTqSnIpCAKgG7SesTpoF9G2sHu8yiB5cAqQ=;
        b=Y19BoZAM6MLAYS+c1HWGohk4Q0DJAxoj+xAvjylhk2Y9Tmf4tPFKwgblcOH5FoZCBh
         aZ5qOl8E8YHQTcelUwsna2CuCqtKQnnfWJM+BQaCcrRDCCG18UQzrDlLVlZvU00AnjkW
         kkO2zA1rxZIykZJLTkWQe8Q8z1tD8IB5YaAziTKRPsJO4k/hHhPsrNQ2HwvIf0tA5ZTi
         PQ6XoTgr4EHidTaBSGGISOsXyR02m9HzAY5C/BMTyvYfyTunBnORdcm+Byfo5QccjoQM
         pgpbcO5ebXtWBNIn9aT0o9i9DwqWuJRy0OfYV4hLmK184VuyL6v279m2MoOqQvsHw3mk
         k43w==
X-Gm-Message-State: AFqh2kquvCcr55QZGS6jaJnfi1vO/qfmaWdcAa7vSBuy9pWrEBG1W6YD
        qYQAaAJz4Z0//2ZnnQ1gzfut7u3T/OZxcEh94xg=
X-Google-Smtp-Source: AMrXdXt8RhhywCWPngxJ3xZC45aErgdOVDPzbEwXiPYKrw4ZRAT6CMtRU7Qae/6VlJZ+FXy1EzDmGg==
X-Received: by 2002:a17:907:d410:b0:7a7:9a38:d284 with SMTP id vi16-20020a170907d41000b007a79a38d284mr5493798ejc.19.1671735151315;
        Thu, 22 Dec 2022 10:52:31 -0800 (PST)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id gf3-20020a170906e20300b007bff9fb211fsm529626ejb.57.2022.12.22.10.52.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 10:52:30 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id z10so2534500wrh.10
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 10:52:29 -0800 (PST)
X-Received: by 2002:a5d:6449:0:b0:242:1f80:6cd9 with SMTP id
 d9-20020a5d6449000000b002421f806cd9mr273405wrw.405.1671735148968; Thu, 22 Dec
 2022 10:52:28 -0800 (PST)
MIME-Version: 1.0
References: <20221222151319.122398-1-krzysztof.kozlowski@linaro.org> <20221222151319.122398-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221222151319.122398-2-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 22 Dec 2022 10:52:16 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XsDznyCcrv=DKt6DyPHRg7uJUa6GF-A8h3hRa6cAwa-A@mail.gmail.com>
Message-ID: <CAD=FV=XsDznyCcrv=DKt6DyPHRg7uJUa6GF-A8h3hRa6cAwa-A@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: sdm845-xiaomi-beryllium: fix
 audio codec interrupt pin name
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Joel Selvaraj <joelselvaraj.oss@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Caleb Connolly <caleb@connolly.tech>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Dec 22, 2022 at 7:13 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The pin config entry should have a string, not number, for the GPIO used
> as WCD9340 audio codec interrupt.
>
> Fixes: dd6459a0890a ("arm64: dts: qcom: split beryllium dts into common dtsi and tianma dts")
> Reported-by: Doug Anderson <dianders@chromium.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Cc: Doug Anderson <dianders@chromium.org>
>
> Changes since v3:
> 1. New patch.
> ---
>  arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
