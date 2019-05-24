Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A16DD29035
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 06:54:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726308AbfEXEyx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 00:54:53 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:35174 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726401AbfEXEyu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 00:54:50 -0400
Received: by mail-lj1-f193.google.com with SMTP id h11so7488048ljb.2
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 21:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0p20JZOm8Q5zL+TRyVFEg8a2DDLhMZrB4Tuc8+bGlVs=;
        b=NdLlu5FyOM02giIhSKVTGqrQ9mhGuv6PA0VT3iSCPaW8gw95H7I7/ye4/yJQ/doBe+
         P3PKfm/STHksEBlqaXdsRxbVZhAUmKQlkVcOQJes9jBlOssmnfWcQo3sZTy1fXSXKC4x
         3HpUTQuwdDAe2NEQRIsIBBpcDgeU8kW7pY7gWOk++jtNIDdBxy1TsJcssLIa1CSReK1f
         OwjdlzjjuVrT0rWaZc/WAKIWBOzGBgefCexjSCfUNFpNr5AcTa4H4+o1Bh546B3Mbnxh
         51qENYczplF8E3vogRwa8U2fHQ7hK8WKdu+9/ETb86swbsAdzty14xuWE3J3kk5iF0Yf
         dl/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0p20JZOm8Q5zL+TRyVFEg8a2DDLhMZrB4Tuc8+bGlVs=;
        b=QQXkaxgM3+gKCr7JlpWagE4dmGDDObi3mNoXBL0gcSsLKcmMCh1eltXiFKf6mU82a/
         8v0rSNPt8aM9xP8zwnNt4Gq9lafs+sfV3KNm7/qKhXBecuNGVjqben3DHD9QcuxOnD9j
         gvKxGAXMGCRDh32nyK14cqG4W5IVjfpvSj4naQ81wBNEW8pt1/u+yoWTZiphNuAktODT
         /3l0rxF9Sv9FLJNDUtdeuG/cgLTd12kmMhknUU5GzUo+EyHQGHvN7F8gj7CSuV5CfBBI
         PsEoUZ32VohmIlvpkgDZXE5leeDaijdR8un9eT6d48qsoWqcfva437GB1fiY6csxZhIg
         /lEw==
X-Gm-Message-State: APjAAAXjQo0O1iyKkwaefiqfGBzz99+QOWYLUVkMxYCEdVImHzpndNg9
        O8JtieYaA1QNW84/S2pma+gSM2TT/j8AqlxQ3Cuw1w==
X-Google-Smtp-Source: APXvYqw+GBX6IR44aYeJSdzjL+ZaEIKJ61JkR+OOuDdlscXdQs1cdp/fSEKXTniJ9Nxq/1Q2fX0A2wBUzHx8TJZBgtM=
X-Received: by 2002:a2e:86c2:: with SMTP id n2mr18578922ljj.23.1558673687971;
 Thu, 23 May 2019 21:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com> <20190523.092825.2184612182055559835.davem@davemloft.net>
In-Reply-To: <20190523.092825.2184612182055559835.davem@davemloft.net>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Fri, 24 May 2019 10:24:11 +0530
Message-ID: <CAJ2_jOHPbFYtLYoCD0jtpLEyDM9is9gr7sbF+yZCHyfERZc48A@mail.gmail.com>
Subject: Re: [PATCH 0/2] net: macb: Add support for SiFive FU540-C000
To:     David Miller <davem@davemloft.net>
Cc:     netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, mark.rutland@arm.com,
        nicolas.ferre@microchip.com, Palmer Dabbelt <palmer@sifive.com>,
        aou@eecs.berkeley.edu, ynezz@true.cz,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 23, 2019 at 9:58 PM David Miller <davem@davemloft.net> wrote:
>
>
> Please be consistent in your subsystem prefixes used in your Subject lines.
> You use "net: macb:" then "net/macb:"  Really, plain "macb: " is sufficient.

Sure, Will take care of this in the next revision of this patch.
Thanks for your comment.

- Yash
