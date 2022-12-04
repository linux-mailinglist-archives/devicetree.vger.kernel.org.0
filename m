Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93779641DE1
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 17:26:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbiLDQ0J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 11:26:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbiLDQ0I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 11:26:08 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 756E012D22
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 08:26:03 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id w15so15278003wrl.9
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 08:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/PsLs1V23QqZ0F0hwhUCdb9h1roLzlVCUnpji7JLi84=;
        b=ndJ3ItQJIjfboMxjcoj7SmLOBh/qHq1YAhY0TkaQ9ePzzp4h9mVsDA5e5U3NliL6m4
         TemuZUPecwKYqPx850SIfl4D4U5obVpwDCI9LDAUeRSE3MqKVVrf5XvmopeNzTS3exht
         m16i0i0nkBzfw7bOYprpVvQV6QEARpgkmFmkcyrf9CReNfvEfoC6mXG14wGcWNEKyBUe
         LX5ol5Prs+iTtTUW5eSI4HdKTLax2PjxIwKHhCa2tLK+uBm/M1S+4qGQtAXKoYwOqhlo
         rQkPS0BVJ7dZTpEpRW06E6Upckk75NgOx1aK9h5cn/wl61CiV9n31FbSoaoRv3jvQa8f
         1gMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/PsLs1V23QqZ0F0hwhUCdb9h1roLzlVCUnpji7JLi84=;
        b=OYWXbi3TnZAjtYB3CdYfwoTMqxxQJqrNJdciV1xwwjJGJRmYHvu2Tpva1pX0kB7Rix
         wmgNHH0RX3ggG/hjuHsvgLrkJSHjugqR7S8+bmnQI/IusOKatTjwRYf8WX7J9c4sRRqK
         8/6kHgViJ6ILdHChiTO6H5s25X1+bWTQaYFb3gx4kiLU9lSDlkiz8KL7I3/Y5eQEIaxS
         TLORWjhxiUNIkOX4XDgxZjIYJmmuqoWFbHQdJIenGMSFnqJU2tLi9fPHLIlm/JjB9+F0
         1LaKgjQUk6l57fuF7Z00WEboPuQbsu3rTZeKxZJRj8QYCctBosBvEPkaDVKNKiKQseWC
         AN+g==
X-Gm-Message-State: ANoB5pmUARlN6X7ql8H215NMkp+ltNgOZzbajQfGrKWbw2ZslyUjsBjs
        EpAETmikUWRLIOI9CBv1k/63sQ==
X-Google-Smtp-Source: AA0mqf4Yz7fujEVaDuRE7IkKoJWi9BBsRKBEEsDtbHF/lFIf8yBZe2eTG3nXVIZDWUUM4fb6bPAUDA==
X-Received: by 2002:a05:6000:114e:b0:242:257f:3006 with SMTP id d14-20020a056000114e00b00242257f3006mr14347782wrx.147.1670171161916;
        Sun, 04 Dec 2022 08:26:01 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id t17-20020a05600c41d100b003cf71b1f66csm14179079wmh.0.2022.12.04.08.26.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 08:26:01 -0800 (PST)
Message-ID: <3c7c7b09-6415-d91b-f035-7ff444c74510@linaro.org>
Date:   Sun, 4 Dec 2022 17:25:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 1/5] dt-bindings: thermal: imx8mm-thermal: Document
 optional nvmem-cells
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-pm@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Adam Ford <aford173@gmail.com>, Alice Guo <alice.guo@nxp.com>,
        Amit Kucheria <amitk@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Jun <jun.li@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, devicetree@vger.kernel.org
References: <20221202162353.274009-1-marex@denx.de>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20221202162353.274009-1-marex@denx.de>
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
> calibration values from OCOTP. Document optional phandle to OCOTP nvmem
> provider.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Marek Vasut <marex@denx.de>
>

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

