Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 552BD16CF5
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 23:15:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728537AbfEGVPW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 17:15:22 -0400
Received: from mail-vk1-f195.google.com ([209.85.221.195]:37626 "EHLO
        mail-vk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728551AbfEGVPU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 17:15:20 -0400
Received: by mail-vk1-f195.google.com with SMTP id o187so4426594vkg.4
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 14:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a2lxvLvuhn3MckTQU8tH5e1XuN1xhSiuOf8AgLmEt4U=;
        b=bA3OYws9T0LnjkEW1s1ii1+HmUoOWve4rct1YI1IU0n/DLHsr18ZOgpj65OtQJrwqa
         qqrXwNIQ5su/IYrYnghuX4P2yCXZFfPQjVP01AccMNAO5PMAXHkBfjao/De7S5wBRgkz
         xcI/fNoLt8kFQ12Fy13BO7XCbP0Yer7+Sl3EQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a2lxvLvuhn3MckTQU8tH5e1XuN1xhSiuOf8AgLmEt4U=;
        b=BKPepDa0Ux9jPEN+tqpJpEODwZESazqq1Xf6rgxJgAsNfgsRynbdBfjbNaU9oEdZNp
         zP2Dzt7DBNLV1oRcafpSlsex5Wo5gv9AUqsORtDa0+IwWWkcDHqvyj5C1RQr2LOURHkl
         LDKXiIcDSlCoPvuw8RZKrKdXuVwmrPBcyB13KBXdINKgAU57GGor+HQJ4E0ns375rf6h
         1U9GpBARaddL/RS1eLuWj4REen/pgqTxcN77VCAaTW/JLWew+bBA93uhvstAp6JZ+K8F
         gueNZA2a20xhvd5B4jQ+ZTg40pkffZ7u7sHNr5WmIO08nbH4INaqHg5AJOETM3pcI+PT
         PZVA==
X-Gm-Message-State: APjAAAV2/7fh7WEvMZ1nUVJwoOlkc0muzdlN0BtmUJbaSWt6YDP9q04c
        HiOeKjoE4jonHom1GuDxhvS8T052/8w=
X-Google-Smtp-Source: APXvYqzKRZ7vGdY2e/0Tfu/vyVFXCXeDE/q19uy5UQvh8wWmT1IGmSy6ERqj4RHXutPQUVtQ/hFnzw==
X-Received: by 2002:a1f:b45:: with SMTP id 66mr18646269vkl.38.1557263718042;
        Tue, 07 May 2019 14:15:18 -0700 (PDT)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id 15sm3338855vkg.16.2019.05.07.14.15.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 May 2019 14:15:17 -0700 (PDT)
Received: by mail-ua1-f42.google.com with SMTP id h4so6576800uaj.9
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 14:15:16 -0700 (PDT)
X-Received: by 2002:a9f:2e06:: with SMTP id t6mr17359140uaj.112.1557263716267;
 Tue, 07 May 2019 14:15:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190507044801.250396-1-dianders@chromium.org>
 <a3573253-e3de-0a82-8af3-6bacea20bd97@gmail.com> <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
In-Reply-To: <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
From:   Kees Cook <keescook@chromium.org>
Date:   Tue, 7 May 2019 14:15:05 -0700
X-Gmail-Original-Message-ID: <CAGXu5j++9LS-2aHR8CPoivT=5UUxkpUg=ZyEHfzXN8tGj8z7tg@mail.gmail.com>
Message-ID: <CAGXu5j++9LS-2aHR8CPoivT=5UUxkpUg=ZyEHfzXN8tGj8z7tg@mail.gmail.com>
Subject: Re: [PATCH] of: Add dummy for of_node_is_root if not CONFIG_OF
To:     Doug Anderson <dianders@chromium.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Julius Werner <jwerner@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Brian Norris <briannorris@chromium.org>,
        devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 7, 2019 at 10:59 AM Doug Anderson <dianders@chromium.org> wrote:
> On Tue, May 7, 2019 at 10:52 AM Frank Rowand <frowand.list@gmail.com> wrote:
> >
> > On 5/6/19 9:48 PM, Douglas Anderson wrote:
> > > We'll add a dummy to just return false.
> >
> > A more complete explanation of why this is needed please.
> >
> > My one guess would be compile testing of arch/sparc/kernel/prom_64.c
> > fails???
>
> Ah, sorry.  Needed for:
>
> https://lkml.kernel.org/r/CAD=FV=Vxp-U7mZUNmAAOja5pt-8rZqPryEvwTg_Dv3ChuH_TrA@mail.gmail.com

Should I take both patches via pstore, or should both go via DT tree?

-- 
Kees Cook
