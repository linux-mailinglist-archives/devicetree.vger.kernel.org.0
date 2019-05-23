Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 24D7627E65
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 15:43:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730797AbfEWNnN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 09:43:13 -0400
Received: from mail-ua1-f65.google.com ([209.85.222.65]:39404 "EHLO
        mail-ua1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730796AbfEWNnN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 May 2019 09:43:13 -0400
Received: by mail-ua1-f65.google.com with SMTP id 79so2185819uav.6
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 06:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kDtnRElNuUyMt12FB8Rk0MvDHzUU1QwxTxxj3HBh2vw=;
        b=F5HMpVG3EWCJPzMlJKs927sGGct8xw/xB0Y89Vgc09MmTe9qCI0EWFwkd3F7L+ZqFU
         kWHqmexwtAqAJgSeoLTmFnZylC+rm5Br2x4lzGtcs02ZZCavNG2Gf5f+gE/JWhQ/Ivs/
         8x2rRNG3Gb6qPEUUT/ibkLnE5XHfMOxE1oKgDBsbVXYeq/geXD2fm0t7ZMlNcI6Ag/XQ
         tbJ0nagR/yajVw57nuQCPVX18YlRvtDzNv8eAC23gjHJgwzVXV5xko9O2KehbFq5yR5X
         JXt7dQUscteyeiumbcstLMRjk9pfvtsuAbcAyqhHrkbkUqxZO4aGLoi3vYUAgFsAwP9e
         VWDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kDtnRElNuUyMt12FB8Rk0MvDHzUU1QwxTxxj3HBh2vw=;
        b=j4PctE8N/FCs0IoK/rHYuvs2VeuvEWDaGJ4pVRt6CyWbbdRMPvnNtMvCUXlvaMlfJK
         3FTizJLeQGB+jcVy8/3IssWMQ/G3ybAapMkrZqqbJJlZD82DmxJUZP9nKgCnMjiXSZJm
         CWlXSTrPrZ0UD+pjpXwBwFPXvP5CSVeyALdy8K5dq2gzoOTxnwkeQ5LifdlX49XUOHjP
         hWZMuAyhYDDq3vi/mWb8hzJeUWxoEc9a0Fyk1O67ICnNQ/OWUj/QM//GrWK+eaVtG3Z9
         uBVXrcEzTT1PmZtVbqWn1+tFLWTnxiwLBUQzgvZUdxOt+gG3LAwGs/pTfGHY6a2ndPeK
         uKJw==
X-Gm-Message-State: APjAAAWc0p+yyS8MMRNTsTh83PWBsWX0lw+LV43W2lFBAte6p+88Y08q
        uFER7v6zNgfzOuFROh7/qsVDC+exl7ZKJtEtqoKSoB4exExdkA==
X-Google-Smtp-Source: APXvYqwGxws4eO22FIKVa1UIaqOVwcqNo2ovHYADpIBiJJe9TRlN+UMwHQoxWg/gax3t035v1obA5yqmm0zqE+T3KI8=
X-Received: by 2002:a9f:366b:: with SMTP id s40mr22365743uad.121.1558618992582;
 Thu, 23 May 2019 06:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <1558515574-11155-1-git-send-email-sagar.kadam@sifive.com>
 <1558515574-11155-4-git-send-email-sagar.kadam@sifive.com>
 <20190522194529.GJ7281@lunn.ch> <CAARK3HmMVibudG2CFLBoMSAqnraXyirTL6CXYo1T_XJEuGJy7Q@mail.gmail.com>
 <20190523123435.GA15531@lunn.ch>
In-Reply-To: <20190523123435.GA15531@lunn.ch>
From:   Sagar Kadam <sagar.kadam@sifive.com>
Date:   Thu, 23 May 2019 19:13:01 +0530
Message-ID: <CAARK3H=BPT3aGUGiQvov5aqFRNVTSeyqJ-bNGw6uEoU7c8iiJg@mail.gmail.com>
Subject: Re: [PATCH v7 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, peter@korsgaard.com,
        Palmer Dabbelt <palmer@sifive.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Linux I2C <linux-i2c@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrew,


On Thu, May 23, 2019 at 6:04 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > Thank you Andrew for reviewing the patch set.
> > Can you please let me know weather you or Peter will be pick up the patch
> > for v5.3 or they  should go in via some other tree?
>
> Hi Sagar
>
> Wolfram Sang should pick the patchset up.
>

Ok, Great. Do we need to write to him about this patchset?

>         Andrew

Regards,
Sagar Kadam
