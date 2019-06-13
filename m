Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B352C44F06
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 00:22:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726092AbfFMWW2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 18:22:28 -0400
Received: from mail.kernel.org ([198.145.29.99]:59954 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725793AbfFMWW2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 13 Jun 2019 18:22:28 -0400
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 7B10C20B7C
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 22:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560464547;
        bh=aUOh1WB/1LP+BNnlP5BfMMXx909geouPRraXVggAoTU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=sEmaxWaY64co9BX/Lfa7iQLbz/YwUgh+Mdysy2PHe2CwXbHGY9WIJ+ON6p94ghbrz
         bC7eFAAWq6rhaVhmhnuwxqeL8W/2ficUvjsmzPsCfFQe93XVeET97OAo3A+ZQce1WT
         CPliSnZCmSFjpjvzlKNRjKCQ32I5A0HXPckizvrE=
Received: by mail-qt1-f172.google.com with SMTP id x47so256853qtk.11
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 15:22:27 -0700 (PDT)
X-Gm-Message-State: APjAAAWYd2ysqJg52L6DM3jTbYNslCvOyUqrQOFvu63ooLWIFepUxZAb
        zCg40qpsDTB3M2qHJdRKi+fRgwzih/LZ+3rl/Q==
X-Google-Smtp-Source: APXvYqxMOtxDSnOaW6bOT/GwjEHw6PAvL0NJEyVCovSXbWc8PH0iLLexi7o+wnJj8fQHMlCDpnrPowRdj9mje1Flre4=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr24461318qth.136.1560464546761;
 Thu, 13 Jun 2019 15:22:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190410053728.17374-1-lokeshvutla@ti.com> <20190410053728.17374-3-lokeshvutla@ti.com>
 <9fe962b7-0500-6916-1dc3-04db0e11cd4d@ti.com> <31dfd9ed-159f-95e7-f5a8-bcf6afec4eaa@ti.com>
In-Reply-To: <31dfd9ed-159f-95e7-f5a8-bcf6afec4eaa@ti.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 13 Jun 2019 16:22:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK9c=1YyJ9Gg0BpzD=fzwoZsVToFMyqJEhk6kHPdcprdw@mail.gmail.com>
Message-ID: <CAL_JsqK9c=1YyJ9Gg0BpzD=fzwoZsVToFMyqJEhk6kHPdcprdw@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: ti_sci_pm_domains: Add support for
 exclusive and shared access
To:     Tero Kristo <t-kristo@ti.com>
Cc:     Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Sekhar Nori <nsekhar@ti.com>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 11, 2019 at 6:35 AM Tero Kristo <t-kristo@ti.com> wrote:
>
> On 02/05/2019 12:24, Tero Kristo wrote:
> > On 10/04/2019 08:37, Lokesh Vutla wrote:
> >> TISCI protocol supports for enabling the device either with exclusive
> >> permissions for the requesting host or with sharing across the hosts.
> >> There are certain devices which are exclusive to Linux context and
> >> there are certain devices that are shared across different host contexts.
> >> So add support for getting this information from DT by increasing
> >> the power-domain cells to 2.
> >>
> >> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> >
> > Based on some offline discussions with Rob, I am withdrawing my concerns
> > on this patch, thus:
> >
> > Acked-by: Tero Kristo <t-kristo@ti.com>
> >
> > We would still need ack from Rob though.
>
> Rob? Any chance to get ack on this?

Acked-by: Rob Herring <robh@kernel.org>
