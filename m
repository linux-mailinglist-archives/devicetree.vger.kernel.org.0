Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A13D7879DF
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 23:05:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237626AbjHXVFL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 17:05:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243645AbjHXVEv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 17:04:51 -0400
Received: from mail-vk1-xa35.google.com (mail-vk1-xa35.google.com [IPv6:2607:f8b0:4864:20::a35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D8E22108
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 14:04:26 -0700 (PDT)
Received: by mail-vk1-xa35.google.com with SMTP id 71dfb90a1353d-48d0eb04c8cso132642e0c.0
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 14:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692911065; x=1693515865;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WkoUCmzk6kpY7dtKJHiHxStqN+h+r9LgpuChyH7uCV8=;
        b=Hm2mieTK64nboBW6aRDOHQOMRRpXIfJjIGW3+Nv9NG8xf5mb8heB4vdn2340LFcpgR
         o1i49N8Tm7UgFcncyiLVWoSz+64AuBzDoMFOJFJNXpItMuCzYTts+L3F+xwNmqRoOaHr
         FBeRTvDfOQoGomZIXHrEwHdqQMowdho66xvGMvF2AdGC+dUnTag6Vr9FzD4clIJFDaIf
         4vr+e8Jhh97YA7U+Qe1mGtbqzd78RWaS1a/ao6aWz0HEZfOLQidTlF3Oxod6AWCmUTrN
         HC32zsfCq9IycW6DFH+P4edvqOCHamN1NYOJDf2QnMZBC1cAFobUuZ3wgvydSTzu99Et
         WDPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692911065; x=1693515865;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WkoUCmzk6kpY7dtKJHiHxStqN+h+r9LgpuChyH7uCV8=;
        b=a9rMuh9/7cxGDXe8/lFmLfOzfsMN2VQc9x0tXLUg1MWlbueLZsNFcelT7Nw+EQFWxP
         4InmKg68SWsNY07mzzmpm102vHmdqi8T8xGSBaJ68GKwI+FUpJwyUctXg1z9LQDbTzxu
         EqRvUOKYys20XNiS20O+aWIRm2IQGWXQ5mkt0QaaHw/3x0AXNY1ISiWuRS00ODitioxH
         UANaUv+0ryDkPuy0gR5lDO6Qyb48FcaqmW1TiuEhYbXlytedM5vv/KpnekJb3J1ny5AR
         mGN6LFsNpY0eBB0H7okmeyN6PDBHD+a0+UUD7brjCcgUSV8JkrBe1kvoOGeh+xYFhkAE
         ynBA==
X-Gm-Message-State: AOJu0YzoI1JFB5AjysXE+G0CXBPrTJgFnRqy4/SvQldjP1mwlXJmRLlw
        RHh/7Yvl3JWWDpJygpjnXNnJxSttRpv/HbuOcjoing==
X-Google-Smtp-Source: AGHT+IGeJ7/r6a9gBrmT0pw+udF19ySh/nVFMaDVPBWMqeCt+B+Sx87zxPTnpBNBUFQEk0Z3KZmLmA0nHnEvVUN9N88=
X-Received: by 2002:a1f:e643:0:b0:48d:1cf0:f3c3 with SMTP id
 d64-20020a1fe643000000b0048d1cf0f3c3mr10466825vkh.14.1692911065190; Thu, 24
 Aug 2023 14:04:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230824173410.550126-1-quic_ajipan@quicinc.com> <20230824173410.550126-5-quic_ajipan@quicinc.com>
In-Reply-To: <20230824173410.550126-5-quic_ajipan@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 25 Aug 2023 00:04:13 +0300
Message-ID: <CAA8EJpo=ZDmoMDyfHEZV9Ng6yM=Z2SdTyPSG246AmLKVR0-vwQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] clk: qcom: Add GCC driver support for SM4450
To:     Ajit Pandey <quic_ajipan@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 24 Aug 2023 at 20:36, Ajit Pandey <quic_ajipan@quicinc.com> wrote:
>
> Add Global Clock Controller (GCC) support for SM4450 platform.
>
> Signed-off-by: Ajit Pandey <quic_ajipan@quicinc.com>
> ---
>  drivers/clk/qcom/Kconfig      |    9 +
>  drivers/clk/qcom/Makefile     |    1 +
>  drivers/clk/qcom/gcc-sm4450.c | 2898 +++++++++++++++++++++++++++++++++
>  3 files changed, 2908 insertions(+)
>  create mode 100644 drivers/clk/qcom/gcc-sm4450.c

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


--
With best wishes
Dmitry
