Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2229D5151C8
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 19:24:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349436AbiD2R2B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 13:28:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232726AbiD2R2B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 13:28:01 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3062E562C3
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 10:24:41 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 9843B80029;
        Fri, 29 Apr 2022 19:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1651253079;
        bh=5UvwHOuVa77SqdFjnAYHaHQ717VGvxoGwC0KODxVL4w=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=kl9g0IVeY1J2qNDbdNCZx3AUDEoYvghi0DVnaQUmVLMx40hLOLyOY+0/OaYlSVTTO
         Kei4F/PI4LdoLJ6sezDYBe2PDoa82e/ahWgUukD0iuQ8dqIVDT71tOFTRFt8oyTmPG
         BZ2Rzj8AGLiLPzN5SjkwzbHxQSY1Kqn8QWPvclvWy5Wa2oWlMYM+X0V/kcnydtbpGJ
         n/YR85xuO6kAYnOKr57GLzWDzQTAuAd5Y1ay42EQX7vzkrO33lobpJzJrN6GMccHRU
         fzVnLv653h4VQdrb6+oyHuDplLS2meViW/IJowj5bO8O7oNf8RFGxnQdPdh9KkfwoX
         rpAORa4yURmsw==
Message-ID: <b8222fcd-ec1e-c6c9-905e-da00321443ae@denx.de>
Date:   Fri, 29 Apr 2022 19:24:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 2/2] drm/panel: simple: Add Startek KD070WVFPA043-C069A
 panel support
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, sam@ravnborg.org
Cc:     robh+dt@kernel.org, hs@denx.de, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20220429172056.3499563-1-festevam@gmail.com>
 <20220429172056.3499563-2-festevam@gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20220429172056.3499563-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/29/22 19:20, Fabio Estevam wrote:
> From: Heiko Schocher <hs@denx.de>
> 
> Add Startek KD070WVFPA043-C069A 7" TFT LCD panel support.
> 
> Signed-off-by: Heiko Schocher <hs@denx.de>
> [fabio: passed .flags and .bus_flags]
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Acked-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Marek Vasut <marex@denx.de>
