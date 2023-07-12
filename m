Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78A36750781
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 14:05:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232110AbjGLMFV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 08:05:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231486AbjGLMFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 08:05:18 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D99D4DC
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:05:16 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3fbc0609cd6so69532715e9.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 05:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1689163515; x=1691755515;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=gmxZeEshRvqM/BRR9ZXtUjCKxif2agi1dlESa2lsMoU=;
        b=QzS2HCB0DYgtvqqOIbnCP2zRcRrP2JmzRZYa7Jqwvq2ugL+0C9wegPY9how926nslD
         bLemtZE9wSrUh5EvjA35wCl03UpS0+pS8Ld9fBiyqGK4hFqfvgwCwDocDFrpBzwCah2i
         S7nQL+n7S1Ho/Z/ozpT05ZPBlde7SWIdDqTZ3SVi5tRxiAqwJGdcqkxHTJNPGI/HVzW4
         HPM79C3A2u7aVi7iNlpRXcM9drr3kKTIozROuVmp4QgiP6O1lw18RyPCJpK0bPGFXd/i
         S+i/Jlf4UGzUWriqTlu/0/J5MwiN677MxXVP0PBiQuqelaqTY42psKsSo8GoxFxvxPka
         Q4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689163515; x=1691755515;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gmxZeEshRvqM/BRR9ZXtUjCKxif2agi1dlESa2lsMoU=;
        b=Lk8ExRMFUFEaWQyt1Zybzt+wYQFgkoBNL35YW7sUpbkw7efc6OCplaToZ0uchmk49y
         nvXyGOsuUK9FguBlw4pxk0psKGa3c8P8m3yXzDv95aVcigLZ+sQXlJ98Pd487KoYSQ04
         6jH3J4eH+zzNr0pBdChTZM0KHIT3FnrjWPtPuS2YnYaheQsg/yjYfUAiufR42NI7MVBI
         Yo+fsgnafJxg8s7MqL2Q3udBnOMUHvHrQZEyVKICMAJJRTpk9ZSSBDoEc9pkUMlrD3lw
         5dy7YtE52AF3hggM0u6az5cawL6sbp1jJoeQc+WBVMR+21OmMO4/ViZhi0NaWN/HWkUK
         4u5w==
X-Gm-Message-State: ABy/qLYYy1gF8G0mMBSkVaK5AT/usXt2FF+6GgCgdRZhq2OSCJRkPBEg
        98ybu8U4j3I/sFCoguHx0LMfYg==
X-Google-Smtp-Source: APBJJlEW07G2Z9vncF20Zns7VmBUWwFGEgahYbX5gKUkcou8mv0OBM7lDswlVa796IQGkz2649ACDQ==
X-Received: by 2002:a05:600c:2116:b0:3fc:71:fe50 with SMTP id u22-20020a05600c211600b003fc0071fe50mr12927500wml.24.1689163515243;
        Wed, 12 Jul 2023 05:05:15 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb0:33d7:37a9:5cb2:4942])
        by smtp.gmail.com with ESMTPSA id hn32-20020a05600ca3a000b003fbdd5d0758sm4933880wmb.22.2023.07.12.05.05.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jul 2023 05:05:14 -0700 (PDT)
References: <20230607-topic-amlogic-upstream-clkid-public-migration-v2-0-38172d17c27a@linaro.org>
 <20230607-topic-amlogic-upstream-clkid-public-migration-v2-1-38172d17c27a@linaro.org>
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
Subject: Re: [PATCH v2 01/19] clk: meson: introduce meson-clkc-utils
Date:   Wed, 12 Jul 2023 14:03:19 +0200
In-reply-to: <20230607-topic-amlogic-upstream-clkid-public-migration-v2-1-38172d17c27a@linaro.org>
Message-ID: <1ja5w1xrly.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon 12 Jun 2023 at 11:57, Neil Armstrong <neil.armstrong@linaro.org> wrote:

> Let's introduce a new module called meson-clkc-utils that
> will contain shared utility functions for all Amlogic clock
> controller drivers.
>
> The first utility function is a replacement of of_clk_hw_onecell_get
> in order to get rid of the NR_CLKS define in all Amlogic clock
> drivers.
>
> The goal is to move all duplicate probe and init code in this module.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Hi Neil,

checkpatch complains about the MODULE_LICENSE()

WARNING: Prefer "GPL" over "GPL v2" - see commit bf7fbeeae6db ("module: Cure the MODULE_LICENSE "GPL" vs. "GPL v2" bogosity")
#185: FILE: drivers/clk/meson/meson-clkc-utils.c:25:
+MODULE_LICENSE("GPL v2");

I don't mind fixing this up while applying if it is Ok with you.

> ---
>  drivers/clk/meson/Kconfig            |  3 +++
>  drivers/clk/meson/Makefile           |  1 +
>  drivers/clk/meson/meson-clkc-utils.c | 25 +++++++++++++++++++++++++
>  drivers/clk/meson/meson-clkc-utils.h | 19 +++++++++++++++++++
>  4 files changed, 48 insertions(+)
>
> diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
> index 8ce846fdbe43..d03adad31318 100644
> --- a/drivers/clk/meson/Kconfig
> +++ b/drivers/clk/meson/Kconfig
> @@ -30,6 +30,9 @@ config COMMON_CLK_MESON_VID_PLL_DIV
>  	tristate
>  	select COMMON_CLK_MESON_REGMAP
>  
> +config COMMON_CLK_MESON_CLKC_UTILS
> +	tristate
> +
>  config COMMON_CLK_MESON_AO_CLKC
>  	tristate
>  	select COMMON_CLK_MESON_REGMAP
> diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
> index d5288662881d..cd961cc4f4db 100644
> --- a/drivers/clk/meson/Makefile
> +++ b/drivers/clk/meson/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  # Amlogic clock drivers
>  
> +obj-$(CONFIG_COMMON_CLK_MESON_CLKC_UTILS) += meson-clkc-utils.o
>  obj-$(CONFIG_COMMON_CLK_MESON_AO_CLKC) += meson-aoclk.o
>  obj-$(CONFIG_COMMON_CLK_MESON_CPU_DYNDIV) += clk-cpu-dyndiv.o
>  obj-$(CONFIG_COMMON_CLK_MESON_DUALDIV) += clk-dualdiv.o
> diff --git a/drivers/clk/meson/meson-clkc-utils.c b/drivers/clk/meson/meson-clkc-utils.c
> new file mode 100644
> index 000000000000..9a0620bcc161
> --- /dev/null
> +++ b/drivers/clk/meson/meson-clkc-utils.c
> @@ -0,0 +1,25 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (c) 2023 Neil Armstrong <neil.armstrong@linaro.org>
> + */
> +
> +#include <linux/of_device.h>
> +#include <linux/clk-provider.h>
> +#include <linux/module.h>
> +#include "meson-clkc-utils.h"
> +
> +struct clk_hw *meson_clk_hw_get(struct of_phandle_args *clkspec, void *clk_hw_data)
> +{
> +	const struct meson_clk_hw_data *data = clk_hw_data;
> +	unsigned int idx = clkspec->args[0];
> +
> +	if (idx >= data->num) {
> +		pr_err("%s: invalid index %u\n", __func__, idx);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	return data->hws[idx];
> +}
> +EXPORT_SYMBOL_GPL(meson_clk_hw_get);
> +
> +MODULE_LICENSE("GPL v2");
> diff --git a/drivers/clk/meson/meson-clkc-utils.h b/drivers/clk/meson/meson-clkc-utils.h
> new file mode 100644
> index 000000000000..fe6f40728949
> --- /dev/null
> +++ b/drivers/clk/meson/meson-clkc-utils.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Copyright (c) 2023 Neil Armstrong <neil.armstrong@linaro.org>
> + */
> +
> +#ifndef __MESON_CLKC_UTILS_H__
> +#define __MESON_CLKC_UTILS_H__
> +
> +#include <linux/of_device.h>
> +#include <linux/clk-provider.h>
> +
> +struct meson_clk_hw_data {
> +	struct clk_hw	**hws;
> +	unsigned int	num;
> +};
> +
> +struct clk_hw *meson_clk_hw_get(struct of_phandle_args *clkspec, void *clk_hw_data);
> +
> +#endif

