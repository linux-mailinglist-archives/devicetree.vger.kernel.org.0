Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3C2A6D5ED1
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 13:18:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234431AbjDDLSR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 07:18:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231344AbjDDLSQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 07:18:16 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2136DC
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 04:18:15 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B834285D7C;
        Tue,  4 Apr 2023 13:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680607094;
        bh=FO3eXq7EHGct7qFcxDmpSM91UHp2BwEThzhWxjdK2nQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=zWq9rcA32YG0vQMF0JYp83YpuZ7F+fHK+xdGSRodYLa2t9Sr89sS6Kn3afEsUNnNi
         SmhwpVOC9IhapFX/EYcFRb3ceWJ8OYW+NMhIUikIiHUK2ZdJrYMocALtts7gw/E0du
         EMo79GGUb8Hg9Wz1s8wOgt6Kx5rMKdaR7OP3aVkBpc1S2QQu97ARpdqlFD7Ozd7sKY
         wo12teOSVEMxIiZCGFeu/tvEJkRNjppbIv1Mxejqs7nvJ110VO476EiBC54LbaH5Je
         D8VZZtqNUZ1IRGkozXSZQ1KnzPbu4iK2/mQJXgpZBosWQaHgmc5cEj33sSIWPn8oNZ
         xKGw5PtsZJYkw==
Message-ID: <6b2399cb-38d7-2244-2022-5bf4fd428c86@denx.de>
Date:   Tue, 4 Apr 2023 13:18:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3] dt-bindings: bridge: Convert Samsung MIPI DSIM bridge
 to yaml
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Fabio Estevam <festevam@denx.de>
References: <20230404023057.510329-1-festevam@gmail.com>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230404023057.510329-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/4/23 04:30, Fabio Estevam wrote:
> From: Jagan Teki <jagan@amarulasolutions.com>
> 
> Samsung MIPI DSIM bridge can be found on Exynos and NXP's
> i.MX8M Mini/Nano/Plus SoCs.
> 
> Convert exynos_dsim.txt to yaml.
> 
> Used the example node from exynos5433.dtsi instead of the one used in
> the legacy exynos_dsim.txt.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Marek Vasut <marex@denx.de>
