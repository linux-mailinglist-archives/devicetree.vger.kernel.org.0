Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E7A0577FB7
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 12:33:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234326AbiGRKdj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 06:33:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234315AbiGRKdi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 06:33:38 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C67F11E3D3
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 03:33:37 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id l3so6187408qkl.3
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 03:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9fCe9AacXKSKGVawkGu2UXZD3mKgfm5ZQJ8K9AgWpXc=;
        b=zuFPFlVQPcn3layONbxbMAD3I1QvoIuVuM/d43mpykcnsyNe0aeUldrmzCWtKvIFd+
         a/X7Sn5oZPmmuCnkFunxhr8GyoRR5icP1CrvvTQUo2kzSPD9U5CyobFNZxXeQsNbuPxK
         RIlZI7SmAo496DhG5+VOlvuyT8Ht+OREuI3YTbQHxsZiGMYlS5RfmwkTcVcoMvykcop6
         ONZxj3aZ0oUeTBzbzQzTbUQ06NdBeu26EqMyywR1fXqT7hUIG8hKU1dH5w/gAhNpP5yB
         3Eveo4jTdKNT2GE9+TYRB1EH8LJhNXtUdUP6viw0IKxZFR0/KEkiJu/CeF/jDa9WvdNH
         0iVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9fCe9AacXKSKGVawkGu2UXZD3mKgfm5ZQJ8K9AgWpXc=;
        b=0SavHuugQWnUMGbzqrQgsj0M5yMlS7c5ipkHaoDvWxTlOgunqfWbi+mRknsGyAi7Xu
         EMLYkBYp2Ksgwfu2zAsX455h9UsnRLTlcNZQkSENi9zEX5BSQZa3Bxz1j/RnoZjuhX+4
         E2twjPMZ9/tMFb57cHMYBxJTyG4OIyvrp0mGT2GTvUZEc/joJ0YGF7lhL/iJ+O1pXap/
         IuYDiCpCU+qCFkEsftHNe8bSYYdpiJbpTYFOoEja5cx0WSZHuNOnsJ1A8adJ8/8PBJnx
         fPtixxy0bFDhFZYvmSrfp6vuRai6To1OSV3EW/zuU7XiE98OvBpcL2GQMno8CqkkSP9q
         C1MA==
X-Gm-Message-State: AJIora8KIFA2YkV6K7mQCFU17i/XpTx+vAbIn4ogcfIP8JQST6c1fuWM
        Xm88APzQ2OhEwbEKdML22jcCwb2pmY53HpDqGKmIQg==
X-Google-Smtp-Source: AGRyM1vVHMIW3XBEONPBPubg6hvT9MlZNp5mZ/KimJiQynHiomqrhBhqPA9PiDk8CiPVx5wSq62jI52vzIkTD9rDYok=
X-Received: by 2002:a05:620a:2403:b0:6b5:e818:5f1a with SMTP id
 d3-20020a05620a240300b006b5e8185f1amr2608906qkn.203.1658140416959; Mon, 18
 Jul 2022 03:33:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220717213645.1147342-1-bryan.odonoghue@linaro.org> <20220717213645.1147342-3-bryan.odonoghue@linaro.org>
In-Reply-To: <20220717213645.1147342-3-bryan.odonoghue@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 18 Jul 2022 13:33:26 +0300
Message-ID: <CAA8EJppnnjphLJC2fFW9Lz06fUZTw8kxS6L+s0kP0+i+1Yh+_A@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: mailbox: qcom,apcs-kpss-global: Add clock-output-names
To:     "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org,
        konrad.dybcio@somainline.org, jassisinghbrar@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        shawn.guo@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 18 Jul 2022 at 00:37, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> Add clock-output-names as optional so that SoCs such as the msm8939 which
> have multiple a53 PLLs can latch the appropriate output name in
> drivers/clk/qcom/apcs-msm8916.c.
>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> index f504652fc0ea2..7497e4c930ae7 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
> @@ -63,6 +63,13 @@ properties:
>        - const: aux
>        - const: ref
>
> +  clock-output-names:
> +    maxItems: 1
> +    items:
> +      - const: a53mux_c0
> +      - const: a53mux_c1
> +      - const: a53mux_cci

You have probably meant to use enum here. However, is there any reason
why you would like to use fixed output names here? You are going to
use clocks DT properties (with clock-names or using indices) anyway,
so there is no dependency on system clock name.
Compare this with apcs-msm8916.c, which uses a53mux@unit_address.

-- 
With best wishes
Dmitry
