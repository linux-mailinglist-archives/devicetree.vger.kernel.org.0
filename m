Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F36E66F7C76
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 07:39:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbjEEFjn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 01:39:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229577AbjEEFjn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 01:39:43 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 386FF11B78
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 22:39:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A9E7463B11
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 05:39:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53015C433D2;
        Fri,  5 May 2023 05:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683265181;
        bh=uh1kQHu5s5onnVsdGBIesWXuOxiVJVv/CmRHeYdQo8Q=;
        h=Date:From:To:CC:Subject:In-Reply-To:References:From;
        b=RupiNL2y8pX1VYRryak5pHxhsx3u29LuF8t6gv//p9AOhkrSjMHXD0FJ9znVoSF4k
         uaYxYOLsylComHfpiKP51lkkDar5d4yGarlK8r3O7Ai4B9UdFWPk8X1uakyp/8PGy0
         ejt2zeJtSAJ7hzMkHGmXLHGDZy1f7Xm9kA9U+bMC76R/v6IfWMY8CeyfwDn4KCieOU
         39HyLu219iT38VbcnpCn1WT6GA2tBG7yKMPHnWvcZYPpNYsE6ZURZd1accD7e24kC4
         3c7HHaGrC32sb7q9Glb5Bk2GnaWEXexydnAuNGQ/gCoHXXiwvYjFsT7qoamayTIcdB
         FVRTOnIyfOusg==
Date:   Fri, 05 May 2023 06:39:38 +0100
From:   Conor Dooley <conor@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>
CC:     Conor Dooley <conor.dooley@microchip.com>,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1] MAINTAINERS: add Conor as a dt-bindings maintainer
User-Agent: K-9 Mail for Android
In-Reply-To: <CAL_JsqLUj4b0fpV_6juoeQqBY83GezZNh-UTH9vmaFAyEVUzPw@mail.gmail.com>
References: <20230504-renderer-alive-1c01d431b2a7@spud> <CAL_JsqLUj4b0fpV_6juoeQqBY83GezZNh-UTH9vmaFAyEVUzPw@mail.gmail.com>
Message-ID: <DDDDD1F1-774A-483A-9962-FFD14D525725@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 5 May 2023 01:02:52 IST, Rob Herring <robh+dt@kernel=2Eorg> wrote:
>On Thu, May 4, 2023 at 4:59=E2=80=AFPM Conor Dooley <conor@kernel=2Eorg> =
wrote:
>>
>> From: Conor Dooley <conor=2Edooley@microchip=2Ecom>
>>
>> Rob asked if I would be interested in helping with the dt-bindings
>> maintenance, and since I am a glutton for punishment I accepted=2E
>>
>> Signed-off-by: Conor Dooley <conor=2Edooley@microchip=2Ecom>
>> ---
>>  MAINTAINERS | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 4e9370793300=2E=2E687d7a3d2e85 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -15697,6 +15697,7 @@ K:      of_overlay_remove
>>  OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
>>  M:     Rob Herring <robh+dt@kernel=2Eorg>
>>  M:     Krzysztof Kozlowski <krzysztof=2Ekozlowski+dt@linaro=2Eorg>
>> +M:     Conor Dooley <conor+dt@kernel=2Eorg>
>
>Do you really want '+dt'? I've never really used it, and I think it
>suffers from the same issue as MAINTAINERS=2E It won't get used
>consistently=2E

Yeah, I've seen you previously mention that, but
at least it gives my filters a chance to split stuff out=2E
