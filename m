Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E4B2553863
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 19:02:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344117AbiFURBm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 13:01:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351385AbiFURBl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 13:01:41 -0400
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D513728989
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 10:01:39 -0700 (PDT)
Received: by mail-qk1-x731.google.com with SMTP id g15so10571458qke.4
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 10:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ndYFg9yJFFsm+MchCSau+vce/mgo6x0ybmLOESsjBAU=;
        b=FGvOHsGGUGmDXbxdMzvu/CDu6NuiY5QvnTnk1/HR+gu1fNI5L26/9Wo9ifp221Wh3p
         wfKeopgo8ivR4mjQrM6YDmsy1kMjzCfUFIwYUgKPQjrdrOPWt9bn7KPMvrD2eyl5s8hJ
         CpVAFnNGoovLlcunn8PvM7fh49U2rQjSWLgpBzQGubxFdDFwUxuXzHM7R3eWIDrFAXte
         gliH8epLnJYwan5t2e4UUIuk68H9+WuoTE/X2nkFAS37sKR2kismFsaFDQ8rhVkXJpwe
         SHd0pNYbEBN3++NazBy5etqW1jy9y427VaLEReT1YH4C1QcTwkolxF4z00aJV2EVQfkr
         au+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ndYFg9yJFFsm+MchCSau+vce/mgo6x0ybmLOESsjBAU=;
        b=CQeZn8Zs3UPUXAjeJ1vEu/IKXJOmYnZXmttU2XVVROInRV/By0WV1FCLUg3V3pnvVt
         S2f9snjpzdVUDxmRCTbjos48WG5FHRZW0TKt6SWZFZSgr+Z2s6xwzbeGBFqqjHMkSmeV
         4ETcFkwEg5p/f8a1xIoXBCJP4SWCQxuOg/tiBLty8/mdQBIugQ2J28fSGoSV1sUV2RtO
         n2QcLRZ8nGv5e+1Eh+Zvdatvd+mLXlMrSnC8EFGwyYO4fQySmNhY0QxR/Pp6Uut3GRg+
         aOuZWobi3GmYlm0aaG/xlFjJ1bGwJXX0UL3MMj8+1uKxiFL2AIC3NGLXJYAlqKWTD0ZR
         88IA==
X-Gm-Message-State: AJIora/Lk2YMA3yFRIFyOxurjM2mRdnyXdufAhW/sexeUmeASQqW5nEy
        +7rAGfF0ivngHcBoyWYh4eB2sCog0dpVUsoGzAuJyw==
X-Google-Smtp-Source: AGRyM1uXAP09+bwhOkQRsesIc4uC3aUOpDDew+bAcVuvJA0BtGFIEUAl8yeVqSD68KuR3Bs6PmzCsdahWfCGU4Cb8tM=
X-Received: by 2002:a37:a83:0:b0:6a6:7e4d:41dc with SMTP id
 125-20020a370a83000000b006a67e4d41dcmr20646327qkk.59.1655830897913; Tue, 21
 Jun 2022 10:01:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220621160621.24415-1-y.oudjana@protonmail.com> <20220621160621.24415-2-y.oudjana@protonmail.com>
In-Reply-To: <20220621160621.24415-2-y.oudjana@protonmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 21 Jun 2022 20:01:27 +0300
Message-ID: <CAA8EJpqHBRHw4+0-P-KAT4JnAHkXUwTdXM9j2d-n66B3Yr+A+w@mail.gmail.com>
Subject: Re: [PATCH 1/6] clk: qcom: msm8996-cpu: Rename DIV_2_INDEX to SMUX_INDEX
To:     Yassine Oudjana <yassine.oudjana@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 Jun 2022 at 19:07, Yassine Oudjana <yassine.oudjana@gmail.com> wrote:
>
> From: Yassine Oudjana <y.oudjana@protonmail.com>
>
> The parent at this index is the secondary mux, which can connect
> not only to primary PLL/2 but also to XO. Rename the index to SMUX_INDEX
> to better reflect the parent.
>
> Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/clk/qcom/clk-cpu-8996.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)


-- 
With best wishes
Dmitry
