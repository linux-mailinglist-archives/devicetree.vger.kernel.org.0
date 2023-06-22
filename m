Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1A777399DD
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 10:34:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229472AbjFVId6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 04:33:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230456AbjFVId4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 04:33:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DC891BE1
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 01:33:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0117D617A3
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 08:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AD03C433C8;
        Thu, 22 Jun 2023 08:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687422834;
        bh=XgtNm+HD/SrGa3ByxHL3PTBnMHBtElsxgSR6rt60Ne4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Eb3IyCXmyj2S6adM6ACKO6YNPC4nqaAT+wPQxg9yTc5/WJ37OuWcQKNi5uofKL++Z
         U01/zMz7j0x49zWR1xw52ZzwyYnmeIUqHYN6CBjfr4ZyNmDsBTktoUEfu0vg5ccuk8
         QQ7jPFn4bOT1ckGitDj82+vvOwkqjVLqR2W/VjXnUMjnzYAgkhyctN52Kw0R9SPb+H
         zEELxvfbTDsD7ytoxHzZjbZlU9sxqvteocJjFdWSceTDLwFgTo0jHvL1me2IF5hJoA
         iPOwzVFzEx7/ULCQir4NKymwzEHpwwsUG7L6AL4K/WuaLAHdPZJtajPqPcorKms5V2
         Ql65HdpouX9eQ==
Message-ID: <956657b8-bae1-2096-e932-3a1ae6852431@kernel.org>
Date:   Thu, 22 Jun 2023 10:33:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] ASoC: dt-bindings: nau8821: Convert to dtschema
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>, Seven Lee <wtli@nuvoton.com>
Cc:     lgirdwood@gmail.com, alsa-devel@alsa-project.org,
        YHCHuang@nuvoton.com, KCHSU0@nuvoton.com, CTLIN0@nuvoton.com,
        SJLIN0@nuvoton.com, scott6986@gmail.com, supercraig0719@gmail.com,
        dardar923@gmail.com, devicetree@vger.kernel.org
References: <20230621093903.1077050-1-wtli@nuvoton.com>
 <99102ee0-ed59-4e60-89d2-60964cec012c@sirena.org.uk>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <99102ee0-ed59-4e60-89d2-60964cec012c@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/06/2023 20:13, Mark Brown wrote:
> On Wed, Jun 21, 2023 at 05:39:03PM +0800, Seven Lee wrote:
>> Convert the NAU8821 audio CODEC bindings to DT schema.
> 
> This wasn't sent to the DT list or maintainers, it should be in order to
> ensure they can review it.  Copying in the list and leaving the whole
> message for context.

Thanks.

DT list is being used for testing the patches, so this has to be resend
following get_maintainers.pl output.


Seven,

You already got such feedback before, so it's a repeat of same mistake
in the process. Use tools to automate such tasks, so the process is
being followed without need for additional steps.

Best regards,
Krzysztof

