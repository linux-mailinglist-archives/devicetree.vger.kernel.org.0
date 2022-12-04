Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BD20641DE3
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 17:26:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbiLDQ0X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 11:26:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbiLDQ0V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 11:26:21 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 712D113D1E
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 08:26:19 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id m14so15271068wrh.7
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 08:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LfrSJ+Hx2mSXkLXYYQ7pynRVDi4pq+DwkFGUE4rIUFk=;
        b=oiw8/4+KhmGgQqDiXEleJw9k6csJiTPiHDRDUK96t1A1aNLBZ5G6wK7f9uEwmYx486
         aASUS41Apspt7QnSiD9sx4IABR1XN7Lssee3AlNqm/J7+NIlrWOfhjHC0jS2V8Z66S+Q
         fTZ5gQz+gWrBpgcSQQvv4QUdVf1C/xYFf2xCAhRzGqtxUvrZA3xaFDMPxZY01iej+NPe
         drkyXrjLqzANLhEF4FPRUYYSmx3GsFs38LPF253SbcJ0U8cbXh2hhy8Wr7i5dA1OoaH5
         cyJC4EJC4uZpv4ExGcBkAnhqbr8oHuE/GoKtzDfbRXDvuOGvse+N6tjoV7w5t5YlMcys
         M3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LfrSJ+Hx2mSXkLXYYQ7pynRVDi4pq+DwkFGUE4rIUFk=;
        b=ez1In6Yqd2S7yE95Uq6B+LhxXg81xL9NR8n2LW5HiD0ofju5n7hBXaKQAKqKMFN5TN
         AaDNk6htD1bjacqiGnRYESliiIVyjIw/1GMkw5muXP3olPlKPMowfpG5bhZIydygaT/Q
         0M0+hR3xudIO56d4g0PbMmFGySBXfLG4ShVVd8JgLriYfi/5YfR0yxznJ8JrCu1lk3fw
         wC8QxOeVWAxfBrx6MJZ7qB2NFV2w9z2kCiyV4aOGBbLcfPOO072Nw8X9sTsYD6GylH3E
         HG8EDyjaVIqzDkpBwA7ORUQ9uZQyMmm87mJzhnqXNP42Ye+HrKpgCBkim8EUfMQID656
         wqSQ==
X-Gm-Message-State: ANoB5pmCXEhnCyFA6veokcYyuiDDrG2Vgl9EVRNp+1Stnkt0VoTMqkmw
        jBJPkaMF8tNRrl9bM/8V0ngdWQ==
X-Google-Smtp-Source: AA0mqf6oyj5M+PolOdXe22U2kMZ5ilLTNpktgvejN5XTgaZLNIA4bH/KYCmKiWHP3oPQQ5Oay62ODA==
X-Received: by 2002:adf:db10:0:b0:236:58c8:2ba2 with SMTP id s16-20020adfdb10000000b0023658c82ba2mr47837756wri.224.1670171178665;
        Sun, 04 Dec 2022 08:26:18 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id q14-20020adfdfce000000b00241cbb7f15csm12210032wrn.106.2022.12.04.08.26.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 08:26:18 -0800 (PST)
Message-ID: <9f30e38c-61ef-d245-56ce-fc9911f54814@linaro.org>
Date:   Sun, 4 Dec 2022 17:26:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 5/5] thermal/drivers/imx: Add support for loading
 calibration data from OCOTP
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-pm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Peng Fan <peng.fan@nxp.com>, Adam Ford <aford173@gmail.com>,
        Alice Guo <alice.guo@nxp.com>,
        Amit Kucheria <amitk@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Jun <jun.li@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, devicetree@vger.kernel.org
References: <20221202162353.274009-1-marex@denx.de>
 <20221202162353.274009-5-marex@denx.de>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20221202162353.274009-5-marex@denx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/12/2022 17:23, Marek Vasut wrote:
> The TMU TASR, TCALIVn, TRIM registers must be explicitly programmed with
> calibration values in OCOTP. Add support for reading the OCOTP calibration
> data and programming those into the TMU hardware.
> 
> The MX8MM/MX8MN TMUv1 uses only one OCOTP cell, while MX8MP TMUv2 uses 4,
> the programming differs in each case.
> 
> Based on U-Boot commits:
> 70487ff386c ("imx8mm: Load fuse for TMU TCALIV and TASR")
> ebb9aab318b ("imx: load calibration parameters from fuse for i.MX8MP")
> 
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> Signed-off-by: Marek Vasut <marex@denx.de>


Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

