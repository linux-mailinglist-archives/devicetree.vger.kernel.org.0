Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A9E775AB07
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 11:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbjGTJim (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 05:38:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231204AbjGTJiA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 05:38:00 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F2A646B0
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 02:33:07 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fba8e2aa52so4871985e9.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jul 2023 02:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1689845584; x=1692437584;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=Y0I/iaPEzUEhsk7qMRr53QBuJ7Bxl0Kbw3PT2/wYCuU=;
        b=yfiEsLDKa0VSPC4s0EWV7twFHdTaaHNRlTmVba/7DzsbJhvOMji4oV+VYgkMnj+T3w
         SW5MOazab9N53p02XRoyNoLU3sYdkc9y4SS/rzLbl3C9aLS3JxZD/G3AeCIpi4Df357G
         F6iBT0vRX/0jBnrEn4slSpzUwQSf3BKLT0G20vobiunaUD9IZLghW3/w3ztwkhRKmST1
         rIRushSFQiM0aRAAeR6CEVJpkutRo9Zn0HVdJ7iaENqowsejLSJjLh3/byRtkglwN9LS
         /w/69Z9w+mYma3IwamBzcFze31D+v/TXICOcfr4G2g9yo1TGwlkpb6a92iZI1vUsagwn
         uiQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689845584; x=1692437584;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y0I/iaPEzUEhsk7qMRr53QBuJ7Bxl0Kbw3PT2/wYCuU=;
        b=IRBSnwVu2j0ht8EPHSMTopOGpcAxafwjZwhmjZpI3ugjig4EKCJZjGLiSKsWO4Aen8
         qHxhUZJN7NprIo1734Adn+7XMIBQns4mveQlp6zj/KJHoscJw0FfCeJwQ8I0KbihZ5PB
         nnMOTVeiOqLZNVGLB1taDeRifBCOlFWdRTwSBf1wrgGn4U/5YgD/QUTw65qo78yKhRAz
         O5XU5uXE3EOWo4Dh1WI/v2ibKGlgulshEfLM45Z1NPgqwheD1mr/APOXOx8Bi/nYGwq4
         wyikq04Z7XX8WOb9kM7ZSUXlc8IopeZmOJVWviFyVrSp9UR2sx1PjyxzS38JR0gy/MxO
         3utQ==
X-Gm-Message-State: ABy/qLY5FG/2likbpQPCFN/xOOWVRDhmRBkxYsY5B+MHs/GrhRUccab0
        RpfnBzII2sCyeOfAeIDgu7f3RQ==
X-Google-Smtp-Source: APBJJlGhEUTy8yPCE0oYTy5atycBVh9x5P2zg+Y+2dW9AT3Q1LxA7UePnVPV5JA6RXZ+MkhAmTBd8w==
X-Received: by 2002:a7b:c850:0:b0:3fb:c990:3b2 with SMTP id c16-20020a7bc850000000b003fbc99003b2mr1349366wml.34.1689845583604;
        Thu, 20 Jul 2023 02:33:03 -0700 (PDT)
Received: from localhost ([82.67.6.57])
        by smtp.gmail.com with ESMTPSA id m10-20020a7bca4a000000b003fc00702f65sm3428984wml.46.2023.07.20.02.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 02:33:03 -0700 (PDT)
References: <20230704215404.11533-1-ddrokosov@sberdevices.ru>
User-agent: mu4e 1.8.13; emacs 28.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Dmitry Rokosov <ddrokosov@sberdevices.ru>,
        neil.armstrong@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, khilman@baylibre.com,
        martin.blumenstingl@googlemail.com
Cc:     jian.hu@amlogic.com, kernel@sberdevices.ru, rockosov@gmail.com,
        linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Jan Dakinevich <yvdakinevich@sberdevices.ru>
Subject: Re: [PATCH v2] clk: meson: change usleep_range() to udelay() for
 atomic context
Date:   Thu, 20 Jul 2023 11:32:44 +0200
In-reply-to: <20230704215404.11533-1-ddrokosov@sberdevices.ru>
Message-ID: <1jsf9jnd0x.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed 05 Jul 2023 at 00:54, Dmitry Rokosov <ddrokosov@sberdevices.ru> wrote:

> The function meson_clk_pll_enable() can be invoked under the enable_lock
> spinlock from the clk core logic, which risks a kernel panic during the
> usleep_range() call:
>
>    BUG: scheduling while atomic: kworker/u4:2/36/0x00000002
>    Modules linked in: g_ffs usb_f_fs libcomposite
>    CPU: 1 PID: 36 Comm: kworker/u4:2 Not tainted 6.4.0-rc5 #273
>    Workqueue: events_unbound async_run_entry_fn
>    Call trace:
>     dump_backtrace+0x9c/0x128
>     show_stack+0x20/0x38
>     dump_stack_lvl+0x48/0x60
>     dump_stack+0x18/0x28
>     __schedule_bug+0x58/0x78
>     __schedule+0x828/0xa88
>     schedule+0x64/0xd8
>     schedule_hrtimeout_range_clock+0xd0/0x208
>     schedule_hrtimeout_range+0x1c/0x30
>     usleep_range_state+0x6c/0xa8
>     meson_clk_pll_enable+0x1f4/0x310
>     clk_core_enable+0x78/0x200
>     clk_core_enable+0x58/0x200
>     clk_core_enable+0x58/0x200
>     clk_core_enable+0x58/0x200
>     clk_enable+0x34/0x60
>
> So it is required to use the udelay() function instead of usleep_range()
> for the atomic context safety.
>
> Fixes: b6ec400aa153 ("clk: meson: introduce new pll power-on sequence for A1 SoC family")
> Reported-by: Jan Dakinevich <yvdakinevich@sberdevices.ru>
> Signed-off-by: Dmitry Rokosov <ddrokosov@sberdevices.ru>

Applied, Thx

> ---
> Changes v2 since v1 at [1]:
>     - remove redundant SoB from commit msg
>     - drop unuseful reference to clk_core_enable() from commit msg 
>
> Links:
>     [1] https://lore.kernel.org/all/20230703200404.20361-1-ddrokosov@sberdevices.ru/
> ---
>  drivers/clk/meson/clk-pll.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
> index 56ec2210f1ad..eef6f37c8d8d 100644
> --- a/drivers/clk/meson/clk-pll.c
> +++ b/drivers/clk/meson/clk-pll.c
> @@ -367,9 +367,9 @@ static int meson_clk_pll_enable(struct clk_hw *hw)
>  	 * 3. enable the lock detect module
>  	 */
>  	if (MESON_PARM_APPLICABLE(&pll->current_en)) {
> -		usleep_range(10, 20);
> +		udelay(10);
>  		meson_parm_write(clk->map, &pll->current_en, 1);
> -		usleep_range(40, 50);
> +		udelay(40);
>  	};
>  
>  	if (MESON_PARM_APPLICABLE(&pll->l_detect)) {

