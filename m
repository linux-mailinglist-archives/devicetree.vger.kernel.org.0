Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 599635538B1
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 19:16:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352934AbiFURQo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 13:16:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353010AbiFURQa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 13:16:30 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D9DB2B1BE
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 10:16:29 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id 89so21391319qvc.0
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 10:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/VXF4wZsajiLZ27XUCezGyggM3iqXR+nz/WtobXbYGw=;
        b=yUCgL5NNh5M/w5/KACbTNIRzgoFojv313dbaWlmPUxm/5wNIzvzoKUW/Hkh9d4itlz
         I6QOCZNTwd3EFPTNZSoq8K/mZOwEanuAzV7b+FhbSY9pkV2yfMowiViZ0P7v96k1yxuX
         t06rGa4bikZGGZTKJvInmFV+ufV5yZ2+pXLKS44UpmEDmecFMEnU/eP/StMz8+uwkabm
         FyY66vyuJFTKB4wents0lhn3hW5G5cmlwfWagq+VM/OK3W/KJrrn0uytiGPfQ1lIFdOz
         SUtwp6Wdu/Y5A1qciJsbfSIQfmy4YmTw9xAJe2gf4a7+hP+DTNZhfXD+WKVElSpym6Eh
         FFQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/VXF4wZsajiLZ27XUCezGyggM3iqXR+nz/WtobXbYGw=;
        b=gogHTE+uK7Tb3KLF4aTdvg1IWh0ZBauljAiTdbTSD34y3tpHtnQ+nn5iFoneG+ZOOM
         EWncKyNjcp09E0MguHSaNDKf6FpoRIyRNdD6sgdQkx5xuZUYc287r6ZhwMdLk9gbCxto
         drTJhX5ijo7HXiIgVw62PAQvKzctWE2bYmJVAn/CyidB0gz8In+RCKl4GLCxP9Q+gDvG
         Ltv2EAIwN/FBm9qghcOrP6r3Cwm/iJXlRRH1/3jIx/3YWpNyOkkowPFfAOsZ6l7CwkWq
         Fx8xHemtcsMo2Xok31Y3nwY0Zzk1+Yygzb7gLIfiY1vA2v5hn5jmG6pIh8H2AvOtp/by
         941w==
X-Gm-Message-State: AJIora/h8SSTq0QR8HUmyWd0M27tZChJdJJui/5+UaL0v7R1IiZd+mUS
        DqD33PJCquRQwbiFr+WAOCJDs3gY8WGo5b9fNlH/VA==
X-Google-Smtp-Source: AGRyM1stGSNYjI11WE3KDgYEAFNCPA+04rh0ka7mFyaXhv77wFBY0VQijwcZnC+nsOEZwtvWAJcodjISHbYNuzpY9m4=
X-Received: by 2002:ad4:5b81:0:b0:465:ded8:780 with SMTP id
 1-20020ad45b81000000b00465ded80780mr24148932qvp.119.1655831788201; Tue, 21
 Jun 2022 10:16:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220621163326.16858-1-ansuelsmth@gmail.com>
In-Reply-To: <20220621163326.16858-1-ansuelsmth@gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 21 Jun 2022 20:16:17 +0300
Message-ID: <CAA8EJpqew-v5PAsecjppCJ=EbaVejqJrWxpAMM8xpu6Cg_qo0w@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: add pcm reset for ipq806x lcc
To:     Christian Marangi <ansuelsmth@gmail.com>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 Jun 2022 at 19:33, Christian Marangi <ansuelsmth@gmail.com> wrote:
>
> Add pcm reset define for ipq806x lcc.
>
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> ---
> v2:
> - Fix Sob tag
>
>  include/dt-bindings/clock/qcom,lcc-ipq806x.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/include/dt-bindings/clock/qcom,lcc-ipq806x.h b/include/dt-bindings/clock/qcom,lcc-ipq806x.h
> index 25b92bbf0ab4..e0fb4acf4ba8 100644
> --- a/include/dt-bindings/clock/qcom,lcc-ipq806x.h
> +++ b/include/dt-bindings/clock/qcom,lcc-ipq806x.h
> @@ -19,4 +19,6 @@
>  #define SPDIF_CLK                      10
>  #define AHBIX_CLK                      11
>
> +#define LCC_PCM_RESET                  0
> +
>  #endif
> --
> 2.36.1
>


-- 
With best wishes
Dmitry
