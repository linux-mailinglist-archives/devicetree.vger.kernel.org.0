Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B08152A31A2
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 18:33:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727905AbgKBRdk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 12:33:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727172AbgKBRdk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 12:33:40 -0500
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F28BBC0617A6
        for <devicetree@vger.kernel.org>; Mon,  2 Nov 2020 09:33:39 -0800 (PST)
Received: by mail-lj1-x243.google.com with SMTP id o13so7612940ljj.11
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 09:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Zxi+DkPWMjinOcCeCZ9Cx94L36yTcmFlHJe6N5+L51M=;
        b=ZXhsqY6MCotjClhgvD+HFZ9GP8YgAa521KQd4bwv84NsEZUD2wdTaA1BfC04Wwl5nv
         v1o3y4j14Fear3HXXTYaJ6iGZ12dNiyJnHFekvcAWqN4QkgxAsVS8dzrEpp0du/7P0cu
         s4nSmydGx+B8pzds2DbdUbMC+3GLIoiPfe+YE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Zxi+DkPWMjinOcCeCZ9Cx94L36yTcmFlHJe6N5+L51M=;
        b=jrDnIS4TuJFY0V3kN47bM3id97wg16/NPVVTlGx0EfNC7Og/lqGv0nxpajNOdDIhkb
         Umz9OJrU5i4xSsa3jCmFBh7kMhOvb0rKaRKjsIeUnh+ci6GLIWgBAovNXcjvEszVj+a5
         rw6rJzeVDub6xQnvxQpijJt/6VacDCYaV1mjJKbxluKD9MCwnEueLEAPavJvMDtWFUw5
         xyxOyQqGJ9yS6O2QA7a2R3MNkndYbbK9f8miNzPEQGzSRl5Mw9e7cLcgpJ5UrTnVkN15
         YAKZJ6vMVF1kKG6qyka6eSe3rk1BUwV7YU5WaOHH1wKhqK5mvyheGCvf2aeVC3WnBaga
         OJgw==
X-Gm-Message-State: AOAM533CcIjZxStnU9n6OPAeroro9eUoszxTC8K2p9sVRREIlkgViWK8
        bGH/XySbiUCRpL+j2l7jBpB/odF4gt4p6g==
X-Google-Smtp-Source: ABdhPJwuHtPoCiEyf2bA4aamh8wxpzmtTYlFWzevup0qjLYfxMiVUovi3S4NrbMcHZ85JPHEMgtkSw==
X-Received: by 2002:a2e:3a08:: with SMTP id h8mr7452737lja.125.1604338418093;
        Mon, 02 Nov 2020 09:33:38 -0800 (PST)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com. [209.85.208.178])
        by smtp.gmail.com with ESMTPSA id a6sm2495597lfm.207.2020.11.02.09.33.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 09:33:34 -0800 (PST)
Received: by mail-lj1-f178.google.com with SMTP id 23so15894059ljv.7
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 09:33:34 -0800 (PST)
X-Received: by 2002:a2e:868b:: with SMTP id l11mr6795547lji.102.1604338413799;
 Mon, 02 Nov 2020 09:33:33 -0800 (PST)
MIME-Version: 1.0
References: <20201102105422.752202-1-geert+renesas@glider.be>
In-Reply-To: <20201102105422.752202-1-geert+renesas@glider.be>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Mon, 2 Nov 2020 09:33:17 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgFZRAVB_LUM+A24u2iubynmkbMDXb3rxy8GmRmKM7gfw@mail.gmail.com>
Message-ID: <CAHk-=wgFZRAVB_LUM+A24u2iubynmkbMDXb3rxy8GmRmKM7gfw@mail.gmail.com>
Subject: Re: [PATCH] of: Drop superfluous ULL suffix for ~0
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Christoph Hellwig <hch@lst.de>, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 2, 2020 at 2:54 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> There is no need to specify a "ULL" suffix for "all bits set": "~0" is
> sufficient, and works regardless of type.  In fact adding the suffix
> makes the code more fragile.

I took this directly, since it was triggered by my code pattern rant.

Thanks,
                Linus
