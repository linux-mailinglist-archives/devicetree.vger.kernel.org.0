Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6DBC7129FF
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 17:55:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237160AbjEZPzD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 11:55:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244018AbjEZPyx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 11:54:53 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D2E8119
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 08:54:51 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f6d7abe9a4so6854695e9.2
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 08:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685116489; x=1687708489;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UxJRX95nR7lgawLbY9ei/X7hSzGOF/KUvLucc8yijNM=;
        b=g7PSHot2l7VS8EXyTj17hqAOLoSsCnLRDW6gY0Spb1atRcCo3AyvjDAQdFQmYEhL3g
         DIvb/y/nRRwgZNWt65p58Iz/nQWLCJ1XMLBqQ3jxrvcC1K1eiRzqeF66lxDnBUNnf01U
         q+MtowiYszrvL5JxgMgiD6m0/h5HDxVgGjD29lE9rGSYgElFnPnaNFCkIYGRHsJvfLLb
         yRHcbrZUVkKmbIQnigv6vgukxaCmLcL5R+XltVbbnHB+ZlxD5L9pmLW5Jho3Nxxl/td+
         l1TKWDQZnEj0c5RYy4V52YhvZ53SAU8tMwoSJzqY04pcFUQARJMwSyL4rK2etQ4S4E4i
         oruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685116489; x=1687708489;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UxJRX95nR7lgawLbY9ei/X7hSzGOF/KUvLucc8yijNM=;
        b=mIM19h2//s1SFPQWaQ5UnxUPgT49l6wVEWW1xY3xR+8HWtSJpXDEL3nMiAlmkhH1+G
         DJ7jJRhEeqas02s4a+/UkucoWYpavpj3OmkD943jD67wKVh65qYDmqF0pZNon953Nqe2
         p+ftCl8Bet12A7p37NMiYg7RBy5FuQEmqvICf/YGzjoRYlEDW6Im6Kc3wFwPsqB01gMt
         mEWEigFwLr5/gD4TdLeJHeFD4oKDxQz/VPJCyxO12f3yTmGgABilErAVpCCQqedF5AnH
         BBaxiLlxU/WuTodWqVU44ARicam7jSC+0TYZl29TgHe7CoME1w3AiYNVu7fpj5Nxsaid
         bvqg==
X-Gm-Message-State: AC+VfDzL6o1gPxsWSMMXbXhRhW4vpBBk3zh95bqBTwpNJ6THvC2L1BXA
        ZcwADg2bMeyGpM9AYEcrRbtDKg==
X-Google-Smtp-Source: ACHHUZ7VBICs66Xv1eWHGLAdsaUs4Rm1TwIh0QnGVY2XmsmEvwuQiqIHqwluaA2IgFSdB/I1iexJNw==
X-Received: by 2002:a05:6000:505:b0:309:42f3:4c3a with SMTP id a5-20020a056000050500b0030942f34c3amr2040157wrf.32.1685116489672;
        Fri, 26 May 2023 08:54:49 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id e18-20020adfef12000000b00304b5b2f5ffsm5419516wro.53.2023.05.26.08.54.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 08:54:49 -0700 (PDT)
Message-ID: <240fa683-afb1-eb60-c24f-2b3f1d7f1339@linaro.org>
Date:   Fri, 26 May 2023 16:54:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH V2 3/6] clk: qcom: clk-alpha-pll: Remove explicit CAL_L
 configuration for EVO PLL
Content-Language: en-US
To:     Jagadeesh Kona <quic_jkona@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Ajit Pandey <quic_ajipan@quicinc.com>
References: <20230525172142.9039-1-quic_jkona@quicinc.com>
 <20230525172142.9039-4-quic_jkona@quicinc.com>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230525172142.9039-4-quic_jkona@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/05/2023 18:21, Jagadeesh Kona wrote:
> Fixes: 260e36606a03 ("clk: qcom: clk-alpha-pll: add Lucid EVO PLL configuration interfaces")

Is this a "Fixes" without the previous patch to stuff the CAL_L_VAL and 
VAL_L fields ?

[PATCH V2 3/6] clk: qcom: clk-alpha-pll: Remove explicit CAL_L 
configuration for EVO PLL

Surely you need _both_ with this patch depending on the previous, per 
your comment ?

-	.l = 0x3e,
+	/* .l includes CAL_L_VAL, L_VAL fields */
+	.l = 0x0044003e,

---
bod
