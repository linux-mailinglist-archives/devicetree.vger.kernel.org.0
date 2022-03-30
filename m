Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23C344EBB95
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 09:17:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243642AbiC3HSn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 03:18:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242822AbiC3HSm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 03:18:42 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E398E18EE87
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 00:16:57 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 8FD35B81B6D
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 07:16:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B902CC340F0;
        Wed, 30 Mar 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648624615;
        bh=ztfSgyjlFw/ho0FfXN0FVdU92G7GdXlQfNj5fr0jS50=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=J3Lvxnh6gVEgNTbtGU50+wlt7GwCpqTVqWLeyvndZn6irNFW+qwJ7BEynX/SXZT29
         /VfA1LqLElPHcyuyceEtMnxZ0AX7Z4rVH4oTR6uDWANdJpp7cBkLJTBTmS1uhzsHM5
         /dvpryroBah9N/saW0YkopSDtv/eYBDDh7wOn/rX3TVUUSSJDUN5rBzRpWJ+1fG7+w
         5PO4buPLRKzC0Q5xgbhJnr9pugZ7MDdKAz/qf5djEgm9kYsBbWq+Pg5kY9tIPC66bx
         RiVzljeZ7rYwdF8D3gvceWbM7O0eWtC++8JhjNRQLGOC+TmTuPiOe7l9WZquU0fMjS
         7sOZ8Dxm046kA==
Message-ID: <97582126-1469-ce14-d552-5e2999472c5c@kernel.org>
Date:   Wed, 30 Mar 2022 09:16:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: arm/rockchip.yaml - many separate entries instead of enums
Content-Language: en-US
To:     =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-rockchip@lists.infradead.org
References: <ce367384-3d44-b7a9-06cd-1ca1f2ddf7e9@kernel.org>
 <1681233.QkHrqEjB74@diego>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <1681233.QkHrqEjB74@diego>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2022 22:54, Heiko Stübner wrote:
> Hey :-) ,
> 
> Am Dienstag, 29. März 2022, 19:05:24 CEST schrieb Krzysztof Kozlowski:
>> Hi Heiko,
>>
>> I found that Documentation/devicetree/bindings/arm/rockchip.yaml uses
>> pattern of one board per item in oneOf.
>>
>> This leads to quite big file, with many entries, although gives nice
>> description for each board.
> 
> that was the original intention in doing it this way, preserving the
> normal readability while adding machine readability to it :-)
> 
>> I find enum-based pattern, like FSL [1], much more readable and compact.
>> What do you think? I could re-organize the arm/rockchip.yaml, but I
>> don't want to mess with your preference.
> 
> I do like the current way as it does only contains one way of doing it.
> 
> As far as I can see, the fsl one has multiple types, like the one you
> pointed at, for a list of boards + one soc that works for the simple
> plethora of regular boards.
> 
> But also additional types that do it similarly to Rockchip like the 
> 	"i.MX6Q Advantech DMS-BA16 boards"
> directly below it.
> 
> 
> As we have both cases here as well, I really don't like this mix
> but instead really like to have only one approach, hence the
> one-entry-per-board-family we do in rockchip.yaml [2]
> 
> For human readability I really do consider having _one_ way
> of describing boards superior to mixing approaches and the
> automated parsing doesn't care, as long as the syntax is correct ;-)

OK, thanks for clarifying. I won't touch the order then. :)


Best regards,
Krzysztof
