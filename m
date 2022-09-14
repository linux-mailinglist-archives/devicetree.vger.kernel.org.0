Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C17B5B8911
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 15:24:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229437AbiINNYu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 09:24:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbiINNYt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 09:24:49 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E6F91261A
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 06:24:48 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 056C961D34
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 13:24:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6814DC433D6
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 13:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1663161887;
        bh=Ap78JJd6ypcwMpcaSscsFKXGN0Fxo3Ue+b8/dCkm1PM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=D4K+kWGRtV9TbnqqENU6LT9pZYGoCiSg1RxRWMUGDrHxPsIo9L0RmOWnsFEktLcS2
         382ZeAp5GSf7wwI+WiTs6PXV06CHKFeOEpy6lquHg6pPKoYQGtmEN7IA/JofXpI0To
         wi/AV+T0MejncCJuH0rYBxwWDFglVGszWukTjsxMFSpfBLf1hwu2yPFeg153W8bPPc
         rdzaGXl3X5X9t5nKZjhci36lTo4v4zrnKnk+QnGzZcerBsVdB6tUiBk8Y7GytqB5Gq
         MfLkcFnZakNtpXzpUkACSZpTj2c4Do0AhGJpClZ0WOtTzcRAbyVv2ZRbUFJtXgECaO
         fsKXzVxe6NDtQ==
Received: by mail-vs1-f51.google.com with SMTP id q26so10371363vsr.7
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 06:24:47 -0700 (PDT)
X-Gm-Message-State: ACgBeo0pg53U8OagmktPn4ZkFYzByB5OsQ6XuUS1PaJYU9WW/qiEQ9pq
        HvfqfLcROJNqM7TFGdXR5yBVxc9Cu1KR78Iaig==
X-Google-Smtp-Source: AA6agR6aIpiKfjuTwhYuoW3Ym1QGOYtcJNyyRMfQfI+buVIsZgtH9VEh2hXuSf7FK9z6m5XAI0G2chq8t6GsVuFw6AM=
X-Received: by 2002:a67:c18a:0:b0:398:4c72:cafb with SMTP id
 h10-20020a67c18a000000b003984c72cafbmr8927154vsj.53.1663161886288; Wed, 14
 Sep 2022 06:24:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220914100443.24104-1-jiaxianhua@gmail.com>
In-Reply-To: <20220914100443.24104-1-jiaxianhua@gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 14 Sep 2022 08:24:34 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKM_und9B8LNSutyoWPfS-QCXojdn3Pb-Yg4xN7Oc1UFg@mail.gmail.com>
Message-ID: <CAL_JsqKM_und9B8LNSutyoWPfS-QCXojdn3Pb-Yg4xN7Oc1UFg@mail.gmail.com>
Subject: Re: [PATCH] dtc: remove duplicate judgments
To:     Jia Xianhua <jiaxianhua@gmail.com>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 14, 2022 at 5:05 AM Jia Xianhua <jiaxianhua@gmail.com> wrote:
>
> There is no need to check the VALID_DTB repeatedly, and can be combined
> into one if statement.
>
> Signed-off-by: Jia Xianhua <jiaxianhua@gmail.com>
> ---
>  scripts/dtc/libfdt/fdt.c | 3 ---
>  1 file changed, 3 deletions(-)

dtc in the kernel is copied as-is from upstream dtc. So we don't take
patches. They must be submitted to upstream dtc first and sync'ed
back.

Rob
