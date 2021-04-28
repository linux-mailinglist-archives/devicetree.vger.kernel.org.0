Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9E7236E1E4
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 01:02:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237050AbhD1WyL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Apr 2021 18:54:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235120AbhD1WyK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Apr 2021 18:54:10 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32B28C06138C
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 15:53:25 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id o16so74133515ljp.3
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 15:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uKANjrQcc8T28iTmna0zzay301FHOU9c/uarbcg93cg=;
        b=DV+i93IRz26ZXsSUri4sDaWIUZD/zohqw7ibjTEw8xAHO6EiAXX5xVDyJuVY72bhUv
         UK0BotFUbLjDDKyxvjnARri4HCfdqgJIXxenvmtg54g0CkHWLD2COvTyhbxojD+Ydqjt
         plT7kaup7kZ/UgpgFlN6idxwKl+I/Eu1NHGNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uKANjrQcc8T28iTmna0zzay301FHOU9c/uarbcg93cg=;
        b=ok4F7MOlhsnqI7Pr47fIMlJ5zQPVoZ//+ReyhwI1EHQtDikD9kgJF5JOP64SPkzf80
         ur7HCf5/1etOixlUn8j2ux7LghSQKTSkWyedQb84qAi8/47Tw8MjaWPw/fGMmz3P8R4w
         97rOWMqur6X8X2UViIw+za9AX+dCRkXyrnIyfn0rfnRK8TJaJDkmh2fsspZJ2hPbWSyn
         12gXenyWwUCTCWBhoI/vsU0V5q24gWaF5TQtP4ctKbnr/IkmnJexaf4wgYfea4IjwJnF
         65l6DApaTb8SD2UKkYnw0G5PMAwM2txOAGSUknjMtrfmhUKMpQW4HjMynm5kOxoEXHIz
         yLww==
X-Gm-Message-State: AOAM5320hVLY6FEzk3WWrR+A1O6ZkAgZg9Fbd66QEB50bkF67bKHaP++
        Bdmz2eHzp4ONDwj0cF9XPfgM6ZqsObRVGxhV
X-Google-Smtp-Source: ABdhPJye6IYt/nRIvD3I4agIbRprTfIUllfmqxwLOczKP4ZL/kB4hsk6vNj2D+RY92tBbWKeNrVIRg==
X-Received: by 2002:a2e:2a44:: with SMTP id q65mr22401563ljq.115.1619650402606;
        Wed, 28 Apr 2021 15:53:22 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com. [209.85.167.44])
        by smtp.gmail.com with ESMTPSA id p18sm266749ljo.75.2021.04.28.15.53.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 15:53:22 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id 12so101490225lfq.13
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 15:53:22 -0700 (PDT)
X-Received: by 2002:a05:6512:a90:: with SMTP id m16mr21975685lfu.201.1619650401841;
 Wed, 28 Apr 2021 15:53:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210427214944.GA2052002@robh.at.kernel.org>
In-Reply-To: <20210427214944.GA2052002@robh.at.kernel.org>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Wed, 28 Apr 2021 15:53:05 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgd4Ku0e4M8eBQuqKHAgBp81WWimFiw-hhBV1wZNdoR-A@mail.gmail.com>
Message-ID: <CAHk-=wgd4Ku0e4M8eBQuqKHAgBp81WWimFiw-hhBV1wZNdoR-A@mail.gmail.com>
Subject: Re: [GIT PULL] Devicetree updates for v5.13
To:     Rob Herring <robh@kernel.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 27, 2021 at 2:49 PM Rob Herring <robh@kernel.org> wrote:
>
> There's one conflict with your tree in drivers/of/property.c kerneldoc
> comments. Looking at it closer, I think the linux-next resolution is the
> wrong one. Take what's in your tree instead. It makes more sense to
> take the code author's comment than what's part of treewide fixes.

I picked the one I personally found more readable, whichever that was...

            Linus
