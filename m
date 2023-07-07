Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58BE174AC32
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 09:46:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232745AbjGGHqh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 03:46:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232712AbjGGHp5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 03:45:57 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 528982139
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 00:45:53 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-668711086f4so1107855b3a.1
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 00:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688715953; x=1691307953;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9U/hMi95N5fkiwr620DDtEfMoSr8JDHbnYYBP9mrwgI=;
        b=raknXlX4xCyJQEQycvplKaHRvg2E3hBifY1bvEfGZ1f0SRkZHDWhhM2bQ8y6WeI3Ho
         LYRyC+v9UA9GsxQ2uZjhUAqXlhpBz+TL0ZBKaL6OM446Xo79OhGZz5qjiR1y2XhexC4g
         htGmI4dj5x/vWiP30NPt7J39oq2hOfNXK+Cu3WCCZXrpKJ0nQLxEmQVY96FJzLaQJWrd
         igY0ZD4CAbcCe8749z8V+UTmMoAzWYGKoSPIlrX8Z8Hi2MYYKHBa3fsNfipzOOD3sGb/
         bME44w0MUH+iGM3D5lPbUreM0wvrYmBeR7yhf04kF7PTYIf1X0twJ3BgwPI463eTIoYg
         YujQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688715953; x=1691307953;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9U/hMi95N5fkiwr620DDtEfMoSr8JDHbnYYBP9mrwgI=;
        b=HkRP62eWifLQc5yeaZwu500RBpsMNeK55sLZX38+gyhkacbvENeQ97dIWpwz8paATp
         0eVNNMIMknWhCte3sHriJojAgnnTsra7rZiuyQl2hwwYOkrfCEMgS5YL9/BXgSVfdM6G
         rRXNWjILCv37C3NXn/NAPutTPcYNO5tN3vAASxp6h6Jy+qhX5pbhlUUvkNC9qq+SUl5o
         igWwYvNymCMyZNqNYltAoh0/hmET+Mz3ubPm8mHG229BQCLnXU8N3q8Y1bg+ljOF7BZp
         D6dTwQhQxNqYobb+Pc7Tt/XllO/w7NBXJeh8d5pW8wsnmHjqL53ES4bL1xWEHtFxZKaU
         I21w==
X-Gm-Message-State: ABy/qLaDdPOCCMAlnpaWPqvOVZ1dYquTJMif67wBLTJhq5UtabuLTOfg
        fZG0TBNLsQQvhpZfQqJbyTzE
X-Google-Smtp-Source: APBJJlHYfJp7D5lZri6l+H48rADLpXEgA5NOtBycBZ8IGwynqyyVB3D4igWI6Y2QUAiayq/HYL6XMw==
X-Received: by 2002:a05:6a00:bde:b0:666:c1ae:3b87 with SMTP id x30-20020a056a000bde00b00666c1ae3b87mr8540575pfu.12.1688715952783;
        Fri, 07 Jul 2023 00:45:52 -0700 (PDT)
Received: from thinkpad ([117.216.120.82])
        by smtp.gmail.com with ESMTPSA id d2-20020aa78142000000b00662c4ca18ebsm2333404pfn.128.2023.07.07.00.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 00:45:52 -0700 (PDT)
Date:   Fri, 7 Jul 2023 13:15:43 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: clock: qcom,gcc-sc8280xp: Add
 missing GDSCs
Message-ID: <20230707074543.GK6001@thinkpad>
References: <20230620-topic-sc8280_gccgdsc-v2-0-562c1428c10d@linaro.org>
 <20230620-topic-sc8280_gccgdsc-v2-2-562c1428c10d@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230620-topic-sc8280_gccgdsc-v2-2-562c1428c10d@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 26, 2023 at 07:48:07PM +0200, Konrad Dybcio wrote:
> There are 10 more GDSCs that we've not been caring about, and by extension
> (and perhaps even more importantly), not putting to sleep. Add them.
> 
> Fixes: a66a82f2a55e ("dt-bindings: clock: Add Qualcomm SC8280XP GCC bindings")
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  include/dt-bindings/clock/qcom,gcc-sc8280xp.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/include/dt-bindings/clock/qcom,gcc-sc8280xp.h b/include/dt-bindings/clock/qcom,gcc-sc8280xp.h
> index 721105ea4fad..845491591784 100644
> --- a/include/dt-bindings/clock/qcom,gcc-sc8280xp.h
> +++ b/include/dt-bindings/clock/qcom,gcc-sc8280xp.h
> @@ -494,5 +494,15 @@
>  #define USB30_SEC_GDSC					11
>  #define EMAC_0_GDSC					12
>  #define EMAC_1_GDSC					13
> +#define USB4_1_GDSC					14
> +#define USB4_GDSC					15
> +#define HLOS1_VOTE_MMNOC_MMU_TBU_HF0_GDSC		16
> +#define HLOS1_VOTE_MMNOC_MMU_TBU_HF1_GDSC		17
> +#define HLOS1_VOTE_MMNOC_MMU_TBU_SF0_GDSC		18
> +#define HLOS1_VOTE_MMNOC_MMU_TBU_SF1_GDSC		19
> +#define HLOS1_VOTE_TURING_MMU_TBU0_GDSC			20
> +#define HLOS1_VOTE_TURING_MMU_TBU1_GDSC			21
> +#define HLOS1_VOTE_TURING_MMU_TBU2_GDSC			22
> +#define HLOS1_VOTE_TURING_MMU_TBU3_GDSC			23
>  
>  #endif
> 
> -- 
> 2.41.0
> 

-- 
மணிவண்ணன் சதாசிவம்
