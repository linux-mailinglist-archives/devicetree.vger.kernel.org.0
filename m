Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3790770D1DD
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 04:57:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231945AbjEWC5Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 22:57:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbjEWC5O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 22:57:14 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3DEACD
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 19:57:13 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 81D0C82790;
        Tue, 23 May 2023 04:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684810632;
        bh=/C/ztQHyV0UZQqVAq/cMFFXp9pHWuM+P4zLRva6viaQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=YYMrfXI9ql/DdOIDHHJEFrkx1/fI8koweKiFYqAgNRv+ADxZH0MtstdHmBielM70T
         fNPhuuGLLGK4EX4XMdszWOl5XPGZGD/z9cIbOVVt31u5f8l9KAKrLbOCiHvzVfFqw3
         tsZJ6rd4u82BSp76lBbPhGIXFyI9Pln50/WtHvtK1AqsDywRnsLC7NOoIbZvFp8PKo
         o4wPrV/2K+MffcpEQ0+3WVYXINrwBZpt4UhzINVluvIJjZGbTgFnB1vKeEQOgc6w2h
         B7g3DxI/t1MtpiJ+v7Ec3BZQcMFiUVG2rUS7RTBpdryyLUAmum2fM4SLNlupBn9uiU
         IbjgMZ2jfQXQg==
Message-ID: <19d4fd47-88bc-1951-a2eb-d85ef8b6bd42@denx.de>
Date:   Tue, 23 May 2023 04:27:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v6 2/5] dt-bindings: display: bridge: ldb: Adjust imx6sx
 entries
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org, bhelgaas@google.com,
        Fabio Estevam <festevam@denx.de>
References: <20230522201404.660242-1-festevam@gmail.com>
 <20230522201404.660242-2-festevam@gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230522201404.660242-2-festevam@gmail.com>
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
> On the i.MX6SX there is a single entry for 'reg', so add some logic to
> reflect that.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Marek Vasut <marex@denx.de>
