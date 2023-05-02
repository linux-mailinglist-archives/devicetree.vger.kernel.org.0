Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E71DD6F4380
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 14:16:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234176AbjEBMQ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 08:16:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234173AbjEBMQ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 08:16:28 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78220F7
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 05:16:27 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-b9d8b2e1576so5487075276.2
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 05:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683029786; x=1685621786;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=h9ardPWYosUAO+3QKtmsKLmvu8qo+YDZ1OFVvflCLdU=;
        b=JSSUtIpFUmmQC1t2blYcBA8h1ekJDGVQFJ9WBHxN6hVxKB5iYgENAQArMQKzl4VOM5
         QZ+p+CGq+dkk8er+1SXAde1CTpVmic2GwQaMCmkLz3ywJ78BbaxZmn2jJ7yHecOlGPnr
         yBBo7VlMbpTQLKTRCokTaXPo24GIb3P5kDhNDbTYHoviQ8npZ6CS9T7HqTuAgc+KLGBV
         m/9EaFV03EaoxqkSs8ayzquoQJ3HrymICjSGNEwePLRI1lMbaKCiggAWuVGqYQ60aplW
         JpY4S1O8kq6cPLBSnFOlk9cCsVYy7OCufwJ1ixsclabW0S4Wp1bBPLsi+mw3hhpDUiBG
         yO2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683029786; x=1685621786;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h9ardPWYosUAO+3QKtmsKLmvu8qo+YDZ1OFVvflCLdU=;
        b=I8EA32auIWVsvW7AhKZfIY0jKDvGt6FhNF4fyb0fMy+p69AKV8Xp04fnmsxK/Ohwhg
         ozOptxYAbJr5K2RAJLKaPdxVACqTqmuBC1dWJrI06G83Dy5miLEDgNpYKapmj4QSTnqt
         zR1fYrHBuafCr/wgxLv74/eC5UlI+OZTX90HplXg2CsGt6pYdyozAUjeQyvYpBsW+kqI
         L2YIkCY2NxEYS/nNbpOHyG7uAo0ZCHBvCZOV4SxpuiIDZTWA/hx+g7ZGAtkJyUP5Vwrc
         2VB8eM3DPLX2FpnajvdAFTXwCLHtGPeCx9RE9fM2Kg9MxESkZtoNZTowUKXg90Nf+BBQ
         Tw8Q==
X-Gm-Message-State: AC+VfDxRZh7ixYNDb8fv7dPfF/XSD9Owp6357KcER0AljFERmMXeRSO7
        YGOqgpcAJWXa+D3bNC9/2Zbjqt1eiQwG/Sml+MbB4w==
X-Google-Smtp-Source: ACHHUZ6hzSiLDwegEeRiqDAbVdwIWCIpf8rlCKny2lSh22T8sFJachUE6vPV6cDQARuaEUD8A0ap2ZmWE7vMgw3tVME=
X-Received: by 2002:a0d:e68b:0:b0:55a:95df:7175 with SMTP id
 p133-20020a0de68b000000b0055a95df7175mr2167346ywe.9.1683029786689; Tue, 02
 May 2023 05:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <20230501203401.41393-1-dmitry.baryshkov@linaro.org>
 <20230501203401.41393-7-dmitry.baryshkov@linaro.org> <8684a7c7-5af3-c773-4330-200e4b897937@linaro.org>
In-Reply-To: <8684a7c7-5af3-c773-4330-200e4b897937@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 2 May 2023 15:16:15 +0300
Message-ID: <CAA8EJpqkEA7RZBOc4xeKXBGhRuPM8W2BN8=o59b_TW6h7VOAVQ@mail.gmail.com>
Subject: Re: [PATCH 06/10] clk: qcom: gcc-mdm9615: use proper parent for
 pll0_vote clock
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
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

On Tue, 2 May 2023 at 14:15, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 1.05.2023 22:33, Dmitry Baryshkov wrote:
> > The pll0_vote clock definitely should have pll0 as a parent (instead of
> > pll8).
> >
> > Fixes: 7792a8d6713c ("clk: mdm9615: Add support for MDM9615 Clock Controllers")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> Cc: <stable@vger.kernel.org>

Not sure if it warrants that, but let's include it into v2 if there is one.

>
> ?
>
> Konrad
> >  drivers/clk/qcom/gcc-mdm9615.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/clk/qcom/gcc-mdm9615.c b/drivers/clk/qcom/gcc-mdm9615.c
> > index fb5c1244fb97..2f921891008d 100644
> > --- a/drivers/clk/qcom/gcc-mdm9615.c
> > +++ b/drivers/clk/qcom/gcc-mdm9615.c
> > @@ -58,7 +58,7 @@ static struct clk_regmap pll0_vote = {
> >       .enable_mask = BIT(0),
> >       .hw.init = &(struct clk_init_data){
> >               .name = "pll0_vote",
> > -             .parent_names = (const char *[]){ "pll8" },
> > +             .parent_names = (const char *[]){ "pll0" },
> >               .num_parents = 1,
> >               .ops = &clk_pll_vote_ops,
> >       },



-- 
With best wishes
Dmitry
