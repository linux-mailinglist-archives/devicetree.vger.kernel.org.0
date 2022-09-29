Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B57105EF3D1
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 13:00:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233495AbiI2LAo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 07:00:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234990AbiI2LAl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 07:00:41 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E73A4F1B2
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 04:00:40 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id n10so1562011wrw.12
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 04:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=fHFFCshn3v7oJCGQlT5d3EjHBX8rxPGp/Q6mPgcTP00=;
        b=SIYr3OEGy5OZHX7kCmcm87PzQyJiBBqn1UT/Ex0Wm3SE63y2ci+Xw9jWf4caPxqHha
         RXI9XF2V2NqfgPKtm8om1auJBB+wFWkiX/+qN+ZUb72dMFbPGjLuuyKQhzqDvsQtENh/
         dwZKQIlfW6nyxmbfaIbR87NCq+LaNPy3XQsk1s5Qi01JA9TrQUt4X89ZnIAATD4dkjx5
         tJqwCwVVixSc0o5b0D8c0mR0Vob45g9JWSxB47+Y6L1ZhN/dgAAj4AY47/oWzde0oyC2
         hs9gT8ipx73xAIo0Cnu7tV2IdvvhvTIR0WArQENoP/dQSPB1Eqvze7xp9QQoFicMYbo+
         ubxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=fHFFCshn3v7oJCGQlT5d3EjHBX8rxPGp/Q6mPgcTP00=;
        b=sBql54cDIg5QIJMXEv8nY5j/79hAK+q1yKjxTO6sDlL9AgA8WsEr9OihFNsRzHlBO8
         koFlUyNZCovUpiNiy2aD0Sr4eNXLgvwfPa696N5FTdrGITXlgIcdiaF5j8chS0YnkSwk
         rqbGfvLkr9dO0796TlelDOGgse4yNL+yL6uHGBYe8HeOMtY1jbMh61uf2hduxWaaYmuZ
         6fpvtZvIHGlPoV/TdYvVePPAWCWMQLkNoWqpcgtVZ+OKd4pebGL3kJAT5OuNAE8VSpJ+
         p9FngNocLccNQPPUchipPVajylKPj3QTIUoA76yBNo/ArV6sSwUfeQgyvh/zgIE9aoM7
         vsjA==
X-Gm-Message-State: ACrzQf3HbLkNcM239TMaRcM1l2O4begaya6fcvRQK2DJw5A4RVIn/AjC
        YYoahG79U1FqCO9LUdlDWXwlGA==
X-Google-Smtp-Source: AMsMyM6HIg9IpN1mNWpdqZtj2j93/Iyw3M9sUvGGof79PVoq1smwD/7LKmoTc2DFE+th4tUJuOMIwg==
X-Received: by 2002:a05:6000:1846:b0:22b:66d:12bd with SMTP id c6-20020a056000184600b0022b066d12bdmr1825326wri.572.1664449238884;
        Thu, 29 Sep 2022 04:00:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:1f17:3ea3:4e46:dff? ([2a01:e0a:982:cbb0:1f17:3ea3:4e46:dff])
        by smtp.gmail.com with ESMTPSA id t5-20020a0560001a4500b002286670bafasm6518619wry.48.2022.09.29.04.00.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 04:00:38 -0700 (PDT)
Message-ID: <f9a51b99-7bd2-0b92-9afc-7cac84a5b65d@linaro.org>
Date:   Thu, 29 Sep 2022 13:00:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 04/11] clk: qcom: gcc-msm8974: move clock parent tables
 down
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220929092145.473009-1-dmitry.baryshkov@linaro.org>
 <20220929092145.473009-5-dmitry.baryshkov@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220929092145.473009-5-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2022 11:21, Dmitry Baryshkov wrote:
> Rearrage clock parent tables and PLL declarataions (pull parents down
Typo remains:                        s/declarataions/declarations/
> and gpll4 up), so that we can use pll hw clock fields in the next
> commit.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/clk/qcom/gcc-msm8974.c | 98 +++++++++++++++++-----------------
>   1 file changed, 49 insertions(+), 49 deletions(-)
> 

<snip>
With typo fixed:
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
