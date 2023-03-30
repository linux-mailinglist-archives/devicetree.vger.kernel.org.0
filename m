Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A56BD6D0089
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 12:03:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229463AbjC3KDQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 06:03:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229728AbjC3KDQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 06:03:16 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F11683F2
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 03:02:46 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C622F61FC6
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 10:02:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A54ACC433EF;
        Thu, 30 Mar 2023 10:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1680170565;
        bh=zYPO4y3IYH/8LiC6/JYISKwDvS9kR6ID5FFAEReR6+4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=r38abtHtCFwIuCBFgu8Wu/qsdnj0hexCUlNqOHq6km1ks/h/XD2FLyUBl7+LKUBqw
         GP/deyrMD7lTRAxBvh5IMrhmgq9ITQf/U1zNoLX/QEaB/H/8Teb0HQU1K6PcFtCvLS
         /SKHHQoZlZVjXIkopQ2NNW3bi7h2NlsXbk1h3yC7QX1XjBVqSQ84l4O5KyuJCA0qYP
         Dt1lyaqGQmdvQg/Vv4QkO6ASXQH12edHhPjfVqAMii2BqVOJhbRCtDWqAkPJpVyitH
         FAiE2l3oLGZGA+VgERgeTm334FniNNm22xMX3ZbJlq8uS9KrZoCE5HWpEwIAZG6L/J
         ibzXiLVPJfxyA==
Message-ID: <bf8f3a1b-a4c0-d22a-8c73-11d59b595c4b@kernel.org>
Date:   Thu, 30 Mar 2023 12:02:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 2/3] dt-bindings: i3c: Add AST2600 i3c controller
To:     Jeremy Kerr <jk@codeconstruct.com.au>,
        linux-i3c@lists.infradead.org
Cc:     devicetree@vger.kernel.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Jack Chen <zenghuchen@google.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <cover.1680160851.git.jk@codeconstruct.com.au>
 <f567ce86cf9a57b50320c1b2f7c851adc03c094d.1680160851.git.jk@codeconstruct.com.au>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <f567ce86cf9a57b50320c1b2f7c851adc03c094d.1680160851.git.jk@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 09:22, Jeremy Kerr wrote:
> Add a devicetree binding for the ast2600 i3c controller hardware. This
> is heavily based on the designware i3c core, plus a reset facility
> and two platform-specific properties:
> 
>  - sda-pullup-ohms: to specify the value of the configurable pullup
>    resistors on the SDA line
> 
>  - aspeed,global-regs: to reference the (ast2600-specific) i3c global
>    register block, and the device index to use within it.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> (on v1)
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.


Best regards,
Krzysztof

