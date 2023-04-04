Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 933706D5623
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 03:31:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232997AbjDDBbN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 21:31:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233020AbjDDBa7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 21:30:59 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A57B4218
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 18:30:18 -0700 (PDT)
Received: from [127.0.0.1] (unknown [62.91.23.180])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C8D8C85845;
        Tue,  4 Apr 2023 03:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680571786;
        bh=gbq6LxJ70yRlWoo78r5KhyXKlWtf2AH4nfGXqfQ8mis=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=QGMmZbtaS2vA6EsyDym/lkxVot4TIYwdANm1yDBK3bEuhSlj0Wsp3stFtuU0aJ4EK
         OdfMJ+9tf9pZoL0xzzb4TMCPw3mnfa9El3WDRdEEid85Co6IcRxo+dcRmfDCpYbt3H
         4cjukaejL6ZK4i/1HyQH5IpgkLOImw6sG9jJUgUssI3YGvsv9ieobNlGEEjGHvYig1
         DOjqyrxhNVF4zdUh25jQ7eJs7EVRuqRAzF8yaoYKCggUhuJV/45E1Zgx53eZYhp18Z
         jRdRpX8fFF5mkKRrh0RMGEVJJ5urXaltK0zkUfXyrhGAo0bUlcwG5rLRbO+9tUwrEe
         JV775G/l6X6ag==
Message-ID: <ca11e032-841e-c892-9ce9-0074b17ff88e@denx.de>
Date:   Tue, 4 Apr 2023 03:29:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: ldb: Add i.MX6SX
 support
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
References: <20230330104233.785097-1-festevam@gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230330104233.785097-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-3.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/30/23 12:42, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX6SX has a single LVDS port and share a similar LDB_CTRL register
> layout with i.MX8MP and i.MX93.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Nit: you are not adding 'support' for the IP here, you are documenting 
bindings in this patch. The support is added in 2/2 .

Reviewed-by: Marek Vasut <marex@denx.de>
