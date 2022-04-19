Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A1025070F6
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 16:49:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240474AbiDSOvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 10:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352550AbiDSOvL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 10:51:11 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 076B53A1B1
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:48:28 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8E58661452
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 14:48:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5487C385BA
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 14:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1650379707;
        bh=KDCTBYE3GpLsbvgFsf63J5JVso/LIaGikzXjcNNxD9E=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=mSLWf7ZB7olbxmZpJguy9ivJSirE8BNPTz0bbb6yH/6ZzQe6UiPrGfAIvmNfBmNcR
         4cWNMUGg+HlRFyIECgDKrWl3VEOdUpzRNvIjFDhVR/Lz6f0bOiMEC3PytDx9m9QCnX
         a3y4kUj+wHP+sMugJH8tJ17/Tmo6LTU621WN8IuFsomX1dIdeHeJgwCsHtAXz8BNfj
         GQlU3kSbYyRKI3fMnNpGo9TbddqmJxLkF1nOwyJjTmWelLit+P6P0aE7qnKm6VobGh
         C+Tv5+UdQ3o7iwjxF2NeJDfxOkiLV21i4H65zIIj2+p5YN/XHBGgS/tnks8Qbs1vbV
         reJ4JBROeC/MA==
Received: by mail-pg1-f178.google.com with SMTP id j70so3369063pgd.4
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:48:27 -0700 (PDT)
X-Gm-Message-State: AOAM5329sPkGCg+D8i4ZZ2SQe8flez4Hu4SHEY/tyPlP3C1p7SbcnRBU
        ThCW/hcEXakwFBBjQ2w4nABTK7sGUoMta1L8Ew==
X-Google-Smtp-Source: ABdhPJzdwPZyTSeLA1ObHNOnrO6G4VM7GW8Ecp80kf5Noy0dURTFeanjyCdXd2adA5QaVXpr8/O5ynG1U6wC6ZwaPM4=
X-Received: by 2002:a63:5a63:0:b0:39d:a9c5:3ec3 with SMTP id
 k35-20020a635a63000000b0039da9c53ec3mr15124965pgm.515.1650379707405; Tue, 19
 Apr 2022 07:48:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220404074055.95618-1-nuno.sa@analog.com> <01e77fbd-5c26-6b15-be1f-f962aa4190c6@gmail.com>
 <9bde64d0c05a37e72fabbeb39d8d2fe099526917.camel@gmail.com> <654db7b8-1254-88e9-f668-b1b14abc3e3e@gmail.com>
In-Reply-To: <654db7b8-1254-88e9-f668-b1b14abc3e3e@gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 19 Apr 2022 09:48:15 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKjuOEdzB4SH6MB0bH58D5ys3RLhi=T8DhWQRuwMhbJOA@mail.gmail.com>
Message-ID: <CAL_JsqKjuOEdzB4SH6MB0bH58D5ys3RLhi=T8DhWQRuwMhbJOA@mail.gmail.com>
Subject: Re: [PATCH] of: overlay: do not break notify on NOTIFY_OK
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>,
        =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>,
        devicetree@vger.kernel.org,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Alan Tull <atull@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 19, 2022 at 9:32 AM Frank Rowand <frowand.list@gmail.com> wrote:
>
> Hi Rob, Nuno,
>
> (adding cc: Alan)

Alan is not active and Altera doesn't exist.

> You just applied the patch at the root of this email thread.

Well, no one had commented further after 2 weeks and the patch looked
like a move in the right direction as-is.

> Please either revert it and accept the alternate that Nuno
> suggests below, or if you do not want to follow that path,
> then Nuno please add a follow on patch that does what you suggest
> below.

Okay, Dropped as it's not pushed out.

Rob
