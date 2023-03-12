Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6136B6598
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 12:42:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbjCLLmK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 07:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjCLLmK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 07:42:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4025339CFA
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 04:42:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id CC09860E8C
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1E8CC433D2;
        Sun, 12 Mar 2023 11:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1678621328;
        bh=QkE9yoCqeaQWiNtMjsJTfuvD8REpunsr9YKxO9tm13w=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=eCa5OP1aPQP7th8+Hq6qsBbnLlB8y/PI0BLMtxBN6XbpryJe5w1FSIYqBrxH/qEvF
         ey/fXMJjD+2v3h2FseGQUvdXbhU5CoQwet7NfU4xzlhu/p2XXisdk9NnPbP5CyCGGF
         ShIRvSuQiH/bc4dyoUtgFBi9Kc3jBWSFr1HAU85X8zpyf1WB02foH87tp9Cz2M7SRA
         Y6TAG6GfSlhDgSCX8MJs+VMkJg9QLFQSmqFC2FHSLW/D5dazjYvU5v+VlrHxuRUsZU
         QdIAD6qVH21qCt3zHe75spbD/W/XAFu56jhkwXq0Qw0m4szvJ3PYvyUUbGA4qbBEOd
         rLJyr6D+QSrZg==
Message-ID: <68e84c30-4109-7167-94f2-66179e1c6b01@kernel.org>
Date:   Sun, 12 Mar 2023 12:42:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] feat: Add 'hold-in-reset-in-suspend' property to goodix
 touchscreen binding
To:     Jan Jasper de Kroon <jajadekroon@gmail.com>,
        devicetree@vger.kernel.org
References: <20230311134655.486973-1-jajadekroon@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230311134655.486973-1-jajadekroon@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/03/2023 14:46, Jan Jasper de Kroon wrote:

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.


> This patch adds a new property, 'hold-in-reset-in-suspend', to the Goodix touchscreen
> device tree binding. When set to true, the touchscreen controller will be held in
> reset mode during system suspend, reducing power consumption. The property is optional
> and defaults to false if not present.
> 
> I am submitting this patch to the Device Tree mailing list to add a new property to
> the Goodix touchscreen device tree binding. This patch supplements a related patch
> sent to the linux-input mailing list, which updates the Goodix touchscreen driver to

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

> use this new property.
> The linux-input patch can be found at:
> https://lore.kernel.org/all/20230311131534.484700-1-jajadekroon@gmail.com/
> 
> Signed-off-by: Jan Jasper de Kroon <jajadekroon@gmail.com>
> ---
>  .../devicetree/bindings/input/touchscreen/goodix.yaml    | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
> index 3d016b87c8df..a7c3d6b5156a 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
> @@ -56,6 +56,14 @@ properties:
>    touchscreen-size-y: true
>    touchscreen-swapped-x-y: true
>  
> +  hold-in-reset-in-suspend:
> +    type: boolean
> +    description: |
> +      When set to true, the touchscreen controller will be held in reset mode
> +      during system suspend. This can help reduce power consumption, but may
> +      cause the touchscreen to take longer to resume when the system is woken
> +      up from suspend. Defaults to false if not present.
> +
>  additionalProperties: false
>  
>  required:
> @@ -75,6 +83,7 @@ examples:
>          interrupts = <0 0>;
>          irq-gpios = <&gpio1 0 0>;
>          reset-gpios = <&gpio1 1 0>;
> +        hold-in-reset-in-suspend = <true>;

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Best regards,
Krzysztof

