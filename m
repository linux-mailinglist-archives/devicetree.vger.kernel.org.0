Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C894C666458
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 21:04:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239157AbjAKUEd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 15:04:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239852AbjAKUEB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 15:04:01 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 316BB37272
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 12:00:11 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id f20so17162382lja.4
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 12:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PgjiUi0TUAUJRfkizlR0b6h6Yp7MhGT/T9BkT7pMEhU=;
        b=WF1PELfAzebmh6o14xiYE3Jlv0Kbpb8FD7pgaGCjvAr609t0vB+mUjvIPuP6Jq7qp8
         MBe0G7ZXskUfWPLUUvg1C5VRwxYlkcP8SAofqhcqoF2v7zf1ceJGh97Cv0wdJ9MSyI6O
         YR05jrssJ+FbG/rv+cUbp1lleTAtLvP3spXpDyZtmVISeU9qJyI9gBDQ4tkiBGXj7LvH
         7HmsHzJUcv3J28DBBNhGcTUrH7gpVQu7eOdW2xwMRGV9yPyTQU9T++WWWFs3O1IHSCWC
         ePGR4p8Hs1DZ1XW8dai3QC93YmbOAmfmADwq1td2AAlMhWnlF4kAkoq1a36nRJVfUOWk
         noWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PgjiUi0TUAUJRfkizlR0b6h6Yp7MhGT/T9BkT7pMEhU=;
        b=es+IvWthUvMHxTclth7Lz68Rg2fWZpkKV3fV8Aa+DOtlD5j6BH+4r3OmRGiUP5N2AE
         fkH9nkcZ/l37PiEJYTrKbq4ualDPDky3+iVoToboQ6Wfumdc13eOBYfDwb6Cekz5U1IP
         RBDeh19kass2iU+An0YkJ4ID9HSNttN8I86PVdwBegzXzg1J9as9lfSxyhkrjmIcZjPA
         em/vHp326utxvmFOnFL67Gm1Cb8EH7bx4oBdl7XsyN1HS7tCmwtHdv93UlwaXoZ6EVpy
         +m/D2w5JDLGQsPsx8rQYGcbTatNxoba64mp/91pOKVlW7glA6DiFvzx+UXGu9QuDeKu7
         ePZw==
X-Gm-Message-State: AFqh2krXD4OdsdcyUDk6Xz2etlLVLR4Y55GqTeYRlR6b8It/49PdAEgv
        O+pq8izLQfNCSO3VbEYOagQvrA==
X-Google-Smtp-Source: AMrXdXv4VMCDKbWwphQVXznvGhR0HI0cXf/qLXb66U2Z3jVD0372JIN96JcCOodhUXpKfajrR6Dw9g==
X-Received: by 2002:a2e:2a41:0:b0:282:55b0:d8e1 with SMTP id q62-20020a2e2a41000000b0028255b0d8e1mr4879750ljq.6.1673467209526;
        Wed, 11 Jan 2023 12:00:09 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id v6-20020a2ea606000000b0028062ed2eb3sm1883253ljp.29.2023.01.11.12.00.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 12:00:09 -0800 (PST)
Message-ID: <d526a2e0-b66b-4276-842e-172b685a4be3@linaro.org>
Date:   Wed, 11 Jan 2023 22:00:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 04/13] clk: qcom: cpu-8996: support using GPLL0 as SMUX
 input
Content-Language: en-GB
To:     Stephen Boyd <sboyd@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230111192004.2509750-1-dmitry.baryshkov@linaro.org>
 <20230111192004.2509750-5-dmitry.baryshkov@linaro.org>
 <2ff36d115e8d29af631e60d1861ae2a7.sboyd@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <2ff36d115e8d29af631e60d1861ae2a7.sboyd@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/01/2023 21:26, Stephen Boyd wrote:
> Quoting Dmitry Baryshkov (2023-01-11 11:19:55)
>> In some cases the driver might need using GPLL0 to drive CPU clocks.
>> Bring it in through the sys_apcs_aux clock.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   drivers/clk/qcom/clk-cpu-8996.c | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/drivers/clk/qcom/clk-cpu-8996.c b/drivers/clk/qcom/clk-cpu-8996.c
>> index d51965fda56d..0e0c00d44c6f 100644
>> --- a/drivers/clk/qcom/clk-cpu-8996.c
>> +++ b/drivers/clk/qcom/clk-cpu-8996.c
>> @@ -12,6 +12,8 @@
>>    *                              +-------+
>>    *               XO             |       |
>>    *           +------------------>0      |
>> + *               SYS_APCS_AUX   |       |
>> + *           +------------------>3      |
>>    *                              |       |
>>    *                    PLL/2     | SMUX  +----+
>>    *                      +------->1      |    |
>> @@ -310,20 +312,29 @@ static const struct clk_ops clk_cpu_8996_pmux_ops = {
>>          .determine_rate = clk_cpu_8996_pmux_determine_rate,
>>   };
>>   
>> +static const struct parent_map smux_parent_map[] = {
>> +       { .cfg = 0, }, /* xo */
>> +       { .cfg = 1, }, /* pll */
>> +       { .cfg = 3, }, /* sys_apcs_aux */
>> +};
>> +
>>   static const struct clk_parent_data pwrcl_smux_parents[] = {
>>          { .fw_name = "xo" },
>>          { .hw = &pwrcl_pll_postdiv.hw },
>> +       { .fw_name = "sys_apcs_aux" },
> 
> Is there a binding update?

Argh, missed the patch. I knew that 13 is not a right number for the 
patch count!

-- 
With best wishes
Dmitry

