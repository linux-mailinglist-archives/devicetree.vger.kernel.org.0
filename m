Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF76258DCF5
	for <lists+devicetree@lfdr.de>; Tue,  9 Aug 2022 19:19:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244903AbiHIRTK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 13:19:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244856AbiHIRTJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 13:19:09 -0400
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 578281EC64
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 10:19:08 -0700 (PDT)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-f2a4c51c45so14712167fac.9
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 10:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc;
        bh=F3mQ/S2sqzZ4+KCihi4IINlKul8TP/JpqnlGqe/JBSI=;
        b=dr8AkFIsrOarfhsiqQCVJ2rkVJD9uSzRm4fRn5TABjqY3A1bX9xdxSLbe+2J7gXd3e
         OHIOVSv4BNs636N16RoXXA4zYBybDXNqXvV/y0PKF4GgKON0ZxvLM1wPLX8ZeqbC7nSk
         nvr86ucZfOqIOBeqD6DIl46zifJF1jjrnpqOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc;
        bh=F3mQ/S2sqzZ4+KCihi4IINlKul8TP/JpqnlGqe/JBSI=;
        b=elO9iYpj3qOpV9nYAZ3H9pFCof1W+i8b8D3Kkc9bW/8wEm9ylbeLLCQB/Sy9/u6Hu0
         meiUFJQtExDW2jt1efdRMY9DQkAwyxx67Djtzbn+WEgbVBSSnY8EZC9lEC5vYWP58q+Y
         YFqj9OYaab9azgx3CbMzdSxbfnZYbf0i95IZyHO5cmYhdwNiQmIcIMuwfFE/8skcV928
         /YfqcBCB29xnMwTIlI3VVrIjvPE7KcjtRGnAkqW8ny3W4XmNGXtrQQZ1Vp9rg3vVfIPK
         pxtPMGGvpit0//RDgT9TMa1Zf49LJ9wJhExdvxKERts4eWyTNm50sgwju2G0f9Se48yV
         mGOw==
X-Gm-Message-State: ACgBeo0XSgBAXFGmRJV4jv/8BBJnytkXBubwDpEPeXe933TIAb98ZwMd
        89W1SlD6hO6loG1M4lydlalzl9TjFz724nJEZEapRw==
X-Google-Smtp-Source: AA6agR6t7xII3eA5jSw3anFzFQR5Hj1055h7MGtwPPp/qxxEWwlt3cmh7elzmmt5eXXzP0Jq6J5t0shhZqzhsk1AgE4=
X-Received: by 2002:a05:6870:9a17:b0:e9:3d1:f91a with SMTP id
 fo23-20020a0568709a1700b000e903d1f91amr10961672oab.44.1660065547740; Tue, 09
 Aug 2022 10:19:07 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 9 Aug 2022 12:19:07 -0500
MIME-Version: 1.0
In-Reply-To: <1658910477-6494-6-git-send-email-quic_c_skakit@quicinc.com>
References: <1658910477-6494-1-git-send-email-quic_c_skakit@quicinc.com> <1658910477-6494-6-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 9 Aug 2022 12:19:07 -0500
Message-ID: <CAE-0n52rTakbo3=GUpJ7VPvDSi1jNiqJjXoHJ5w0HRYGvTHjNw@mail.gmail.com>
Subject: Re: [PATCH V7 5/5] clk: qcom: lpass: Add support for resets &
 external mclk for SC7280
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <quic_tdas@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Why is linux-clk@vger.kernel.org left off this clk patch series?

Quoting Satya Priya (2022-07-27 01:27:57)
> From: Taniya Das <quic_tdas@quicinc.com>
>
> The clock gating control for TX/RX/WSA core bus clocks would be required
> to be reset(moved from hardware control) from audio core driver. Thus
> add the support for the reset clocks.
>
> Update the lpass_aon_cc_main_rcg_clk_src ops to park the RCG at XO after
> disable as this clock signal is used by hardware to turn ON memories in
> LPASS. Also add the external mclk to interface external MI2S.
>
> Fixes: a9dd26639d05 ("clk: qcom: lpass: Add support for LPASS clock controller for SC7280")
> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
