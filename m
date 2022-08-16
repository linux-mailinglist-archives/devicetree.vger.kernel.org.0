Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61C815958B6
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 12:44:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234907AbiHPKnd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 06:43:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234915AbiHPKnA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 06:43:00 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB6E7CE44A
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 03:01:24 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id o2so14257703lfb.1
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 03:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=CNCRgWb3pKggt17+aZXpum1u8S3P+8WTUXBySzZQI58=;
        b=u8tTO6zfQ0qFZw3+/8gsWraUU5j0AIjWN3x1bqyf9laYvSyQd8Itvzf1kOeWEqwBKB
         xUag+Gf5BJ3rGN146NfaO1a9XnNUCdxlyHbtGnBr+vxqGjAjm/pWC3qFkGjiyKGUovyB
         OZ1Fw0ahjmz7wdBBFqqV0lUmrmaC2O9bouLWCp8+ca/qTnmQ0CYhx9o45SDbRffY9ePL
         o62yihQQ1ZJRmvT/aAM9Zr9ybrLKdrllefTqpXF2azRLRdbCBkUe2z2/MAImVsR2N4YY
         khI6i4qbCzktf88KqfHralU+C+TaWi2roO9MAqAAiNXMtkl6DCIBvHJn0xNoCy1D3RB6
         B01g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=CNCRgWb3pKggt17+aZXpum1u8S3P+8WTUXBySzZQI58=;
        b=ZFr12Y/HMbZy3FmYEsaCjrx4w+engzjeYtxmu3alhfyDxsUsu/Uk/nICKwlK+BAtA4
         JT76M/tF6FbK3TLTnX98A8GcRm9cKG0egdmvFNFBhM/bOEh+i8PP01fdkploOuuA3yUj
         IFrG3xUTGahyueKtbBJImPtLRj/lhq0LcksZB/92RYVOr4DS0sBc71IIIJJR3wfUoym5
         h6UI+KdYgu+Ej4R6zjMNq/C2be3+DCaMpL27LLdoui1n2gzomOXi3JOnSeuAAHLvicwo
         8AEN94cCy9zBJOmZpCadGB1vW19Zqjeiq1t5EtoYi61tTfioaGCxN6zhre48pR3XYAiG
         dMmQ==
X-Gm-Message-State: ACgBeo3wKtD1xtdjNk37Xv5U5exJ0/olsWwSQL1kO4YnKZ76OLipzr7l
        +3xM9lU1lR2/v0NPF5Rhkv3Nig==
X-Google-Smtp-Source: AA6agR6lmsJwUYBKcY0okFYg8s4OfF3eRvQDWTjCiS+uHlaWGQrsC96OPA5p3aT8yTvYH2UFjTAU1A==
X-Received: by 2002:ac2:4db6:0:b0:48a:f9b6:bac1 with SMTP id h22-20020ac24db6000000b0048af9b6bac1mr6550327lfe.669.1660644083188;
        Tue, 16 Aug 2022 03:01:23 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id u9-20020a05651c130900b0025fdcdad0e4sm1024424lja.35.2022.08.16.03.01.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 03:01:22 -0700 (PDT)
Message-ID: <e5969030-0a17-d10e-7eef-8d906e8a4dc4@linaro.org>
Date:   Tue, 16 Aug 2022 13:01:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 4/4] soc: sunxi: sram: Only iterate over SRAM children
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
References: <20220815043436.20170-1-samuel@sholland.org>
 <20220815043436.20170-5-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220815043436.20170-5-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2022 07:34, Samuel Holland wrote:
> Now that a "regulators" child is accepted by the controller binding, the
> debugfs show routine must be explicitly limited to "sram" children.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
> (no changes since v2)
> 
> Changes in v2:
>  - New patch for v2
> 
>  drivers/soc/sunxi/sunxi_sram.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/soc/sunxi/sunxi_sram.c b/drivers/soc/sunxi/sunxi_sram.c
> index 92f9186c1c42..6acaaeb65652 100644
> --- a/drivers/soc/sunxi/sunxi_sram.c
> +++ b/drivers/soc/sunxi/sunxi_sram.c
> @@ -120,6 +120,9 @@ static int sunxi_sram_show(struct seq_file *s, void *data)
>  	seq_puts(s, "--------------------\n\n");
>  
>  	for_each_child_of_node(sram_dev->of_node, sram_node) {
> +		if (!of_node_name_eq(sram_node, "sram"))

You should not rely on node names. They can change in DTS. Why do you
need to test for the name?

Best regards,
Krzysztof
