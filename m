Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E82570D1DE
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 04:57:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229803AbjEWC5Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 22:57:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232622AbjEWC5P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 22:57:15 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10EEEE0
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 19:57:15 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id A61A884680;
        Tue, 23 May 2023 04:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684810633;
        bh=wAQ4EDQ+Ta2fJrhy2METik7AhqQ6FIc0PJEtDoUPPhY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=tU3lvswpV6u9Nt8Pn6zOxA+MJ24JUj5xrUASqAHVnM34frN31Bh1c4L35pxV6aokX
         kguXeXrkeR5+nFunPcG79v/OJsANmgf6oX9JAqrk7lCVC4ICkWZ6KgQ3AjpiAW3y4f
         3/K5aHsJDgHgXFn+6hvPkDe7MDxjKKnf+YrDQQYJDpz52iuHGxZM8BXRXs08wIygDZ
         F/IqvTmlcgenhPqh1gG3H0TANJQJUEcALwJk07cU9Wl/BZbjhY8eiAT6ps4ds+RC+e
         6VJVryIiVb+6Jpoy3dhgnx6SrhRjACzRpzSaYi3AY0Sx+it4LAO9Ga8Oebp/8Y3cjx
         wZbebp1VJShGQ==
Message-ID: <d37c30bf-dc1b-78fa-b747-bd6559b3479f@denx.de>
Date:   Tue, 23 May 2023 04:28:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 3/5] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org, bhelgaas@google.com,
        Fabio Estevam <festevam@denx.de>
References: <20230522201404.660242-1-festevam@gmail.com>
 <20230522201404.660242-3-festevam@gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230522201404.660242-3-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/22/23 22:14, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The i.MX6SX General Purpose Registers is a set of register that serves
> various different purposes and in particular, IOMUXC_GPR_GPR6, at
> offset 0x18, can be used to configure the LDB block.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Marek Vasut <marex@denx.de>
