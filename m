Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19DE47975B8
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:54:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235664AbjIGPy0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:54:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236974AbjIGPsX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:48:23 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 177104695
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:39:37 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-573e67cc6eeso831534a12.2
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694101135; x=1694705935; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yMRlMwN20QLTSRPs/jI5d8COnV1IkaL0AH6Bo1uSv5s=;
        b=mnwFyF7ondvseapOmJgJkKwXv7DiZ7T+1n6Ecg74CEpo6xFYWOE1/+iZbM9ucy7o8t
         GhrgYgerUt27hGBBKHiLESIo09rlQCtNe2eOb6ZwcvsluCCzsUUQq56pKEMnq7xQFVlg
         tM9wlrD83hxjPmGyqwMeiIqaP8X0WloFKqICUrNdjOJOl3ClXR7ZM9Fovxys1Q7YRWkM
         NRIGuyJMzOsuyF9nzqRlbLuqyJ5ovHL69Bj5KGqoKEXgxRIwkg+MyYxyduiYT8HzZlCE
         HlvJWP8znrcNOqFpkLZld641Sub0ugDz2t+ytX/4pJbiBCxaMb5rthaN9PwwI+VFyvwi
         FYjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694101135; x=1694705935;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yMRlMwN20QLTSRPs/jI5d8COnV1IkaL0AH6Bo1uSv5s=;
        b=gG2oFNuBWhm8i+aef31I7/Vc2fPjtwQOphL8iPGtQ1xxyZAZ/GuesMNlxE+WW/rBlZ
         59tfAYhU9T6EUctZvQGidUikHv7iHl7TZgZEYmz1XTiHKp6A48i2kz80BiMw3N4Hzlja
         6lBPeEQMlIKt328Tx7oDlg/gyBVkntdHXaDJglx1FwXq+Lsaw4/AW/8RXBJxpTBR8v1w
         VCCmcgw+ZN18wjKo4ir3AmczOjgU6ePTaAcC+/CgLV6k+HacKGnJxv5HRZ8YIOUJjbW3
         YNlCYzUJpDhZh3nI4EkAqoCY/EUT7BKZhYWCnCjr65envIO2IC1+sAn/6wU/FfVRiaBO
         0P3w==
X-Gm-Message-State: AOJu0YwMHO/Pc9vHGhek8E9gmtzmJg7fFlEeCxQXJsk3aBCjVobOGKZb
        Ihvqo38e/sErQoaDAAbG6U0eCJdEqSy9/lFcodSrMTFr+fHP1Auk
X-Google-Smtp-Source: AGHT+IFUuNXZQLnUGxYZ4nwOIc/1ZCmT/RBxdiDK6aXiF/foDyogFPcREcWU6P3R5YT2nx0jFgg2XzMsNGlNNM2BlgA=
X-Received: by 2002:a25:a1e9:0:b0:d78:35cd:7f5c with SMTP id
 a96-20020a25a1e9000000b00d7835cd7f5cmr19661493ybi.46.1694093927719; Thu, 07
 Sep 2023 06:38:47 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1693996662.git.quic_varada@quicinc.com> <00a5ca23101df1f8f20bdec03be20af9d39c64d1.1693996662.git.quic_varada@quicinc.com>
In-Reply-To: <00a5ca23101df1f8f20bdec03be20af9d39c64d1.1693996662.git.quic_varada@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 7 Sep 2023 16:38:36 +0300
Message-ID: <CAA8EJpqtXw1ukDZ1hXAc3G7LNDwjcduUdNaPHadfSqCuV3fxbg@mail.gmail.com>
Subject: Re: [PATCH v1 02/10] clk: qcom: apss-ipq-pll: Use stromer plus ops
 for stromer plus pll
To:     Varadarajan Narayanan <quic_varada@quicinc.com>
Cc:     ilia.lin@kernel.org, agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@linaro.org, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        quic_kathirav@quicinc.com, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 7 Sept 2023 at 08:22, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> The set rate and determine rate operations are different between
> Stromer and Stromer Plus PLLs. Hence, use stromer plus ops for
> ipq_pll_stromer_plus.
>
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>

Fixes tag?

> ---
>  drivers/clk/qcom/apss-ipq-pll.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clk/qcom/apss-ipq-pll.c b/drivers/clk/qcom/apss-ipq-pll.c
> index e170331..18c4ffe 100644
> --- a/drivers/clk/qcom/apss-ipq-pll.c
> +++ b/drivers/clk/qcom/apss-ipq-pll.c
> @@ -68,7 +68,7 @@ static struct clk_alpha_pll ipq_pll_stromer_plus = {
>                                 .fw_name = "xo",
>                         },
>                         .num_parents = 1,
> -                       .ops = &clk_alpha_pll_stromer_ops,
> +                       .ops = &clk_alpha_pll_stromer_plus_ops,
>                 },
>         },
>  };
> --
> 2.7.4
>


-- 
With best wishes
Dmitry
