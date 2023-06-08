Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8543772805C
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 14:46:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236445AbjFHMqo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 08:46:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233180AbjFHMqn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 08:46:43 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43D9026B9
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 05:46:41 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f739ec88b2so3603405e9.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 05:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686228399; x=1688820399;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=CMFHwMliziKYarDXsCrUtrbOwmn9xCAiYAb+3zNmljo=;
        b=hKJREq3JfLY/XsiQipzbIVCN0ANM2uldq8v1iswOfxOQ1UOLdudpFOoIBEqPbzDw/7
         3kB6B26Pyeq06ScIC7tYlmxaoZgp7yKpI/PhZ7OkjdIyZHFK/Rt3P7lwzH6ai3LIyjE4
         /OyLMfxI4ChC54k7vZRCfhiAh+5AsASPT2VYBxbzYWycgyGsvi5w6zYMxaN7Nxtnaj+M
         73BNJXbKYDFzoAAa7rERJinbBJcV08YGYQQ/ATjpGfVFguMprhGS5fYNT49n/4IU/rhw
         vbhAaMr4MsQgaiEZPZ5sB8av1WOF3jyqsele+sagaiZ+vdWvj+AvxeeniI1r4Q2ya0ZY
         Ee2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686228399; x=1688820399;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CMFHwMliziKYarDXsCrUtrbOwmn9xCAiYAb+3zNmljo=;
        b=TIGEAKgsLdIPya0eJ11CrAq76XFrbpwh6aqQbI1G8uk3l+WHVxoR+HL8caF6RNWC51
         SLeT/RTltY1IGg/fTEELUONa2X75JnLxhB0gi5/yOPK66C8yVpd0dNj9p0x5E5kz+DVk
         bqbFBpERnoDUmv4+pAdI376+drlIOXEMgx0MFnFjTa0hkxjGW5wkSQSeF3t3winEVKBr
         MDxZKlyFUFkyptTXPwyV9ugQAZSSx9NOE55BDJ3RWm6SqTnF6pGsUcTTFEjEyKb2TQmw
         bSkKsftGAcSZTvOLLp6zu7FVdXqhcYRSAOYvrWEQcLvSWNqKsrgMsfe5xwByBxKXc5uF
         c/mQ==
X-Gm-Message-State: AC+VfDyrw0iTWabdoATeTDA4VWVDPE12wNeEZnyETkKR1U/SzRZ8A8+9
        VSzbWdXyWV60zRXUXYHdGsBXpA==
X-Google-Smtp-Source: ACHHUZ6AxtMgFWx0rJFjvyzpW9XHh6kXg9e96BPd9QX3Ps59AQ49MJSZFz7Us9+NWRGidb5mpAB3Gg==
X-Received: by 2002:a1c:750a:0:b0:3f7:35a9:dfde with SMTP id o10-20020a1c750a000000b003f735a9dfdemr1352995wmc.30.1686228399673;
        Thu, 08 Jun 2023 05:46:39 -0700 (PDT)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id o7-20020adfeac7000000b002fed865c55esm1521722wrn.56.2023.06.08.05.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 05:46:39 -0700 (PDT)
References: <20230607-topic-amlogic-upstream-clkid-public-migration-v1-0-9676afa6b22c@linaro.org>
 <20230607-topic-amlogic-upstream-clkid-public-migration-v1-3-9676afa6b22c@linaro.org>
User-agent: mu4e 1.8.13; emacs 28.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 03/18] clk: meson: migrate a1 clock drivers out of
 hw_onecell_data to drop NR_CLKS
Date:   Thu, 08 Jun 2023 14:45:29 +0200
In-reply-to: <20230607-topic-amlogic-upstream-clkid-public-migration-v1-3-9676afa6b22c@linaro.org>
Message-ID: <1jlegu9l5d.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

>  
> +struct meson_a1_pll_clks {
> +	struct clk_hw **hw_clks;
> +	unsigned int hw_clk_num;
> +};
> +
> +static struct meson_a1_pll_clks a1_pll_clks = {
> +	.hw_clks = a1_pll_hw_clks,
> +	.hw_clk_num = ARRAY_SIZE(a1_pll_hw_clks),
> +};
> +
> +static struct clk_hw *meson_a1_pll_hw_get(struct of_phandle_args *clkspec, void *clk_data)
> +{
> +	const struct meson_a1_pll_clks *data = clk_data;
> +	unsigned int idx = clkspec->args[0];
> +
> +	if (idx >= data->hw_clk_num) {
> +		pr_err("%s: invalid index %u\n", __func__, idx);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	return data->hw_clks[idx];
> +}

I'd prefer to have a single struct type and and single custom
callback for the different SoC please.
