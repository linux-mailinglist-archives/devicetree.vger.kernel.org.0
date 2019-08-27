Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0F1769F3E2
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 22:19:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731097AbfH0UTV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 16:19:21 -0400
Received: from mail-oi1-f182.google.com ([209.85.167.182]:37023 "EHLO
        mail-oi1-f182.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728233AbfH0UTU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 16:19:20 -0400
Received: by mail-oi1-f182.google.com with SMTP id b25so287638oib.4
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2019 13:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S0QVObWyqubIgCNHHeovJxzsC8bOJ6hi6PsIpD8GL58=;
        b=PD+/urjoly23/M85O4oRULl+rT2maWdWKkH75Cd9qMhKEn6vpbBqmCXOGsUtp/Ju7R
         46obcXnQKCfF5pnv1ObMDRUOJR7UQJ+0FklmLQwoiBAi9c/z0NEFMeewYGPjQVrxRxGL
         g0z7U9sNHA2F+oQ3c040dfBBgR1DO1iYwa7kvwbJKNmQtx2A1BMj9X41wE+EfQgnKMBy
         ajP4/udBecjkaN75STOR++ubAGCUICwDH6cctwkeBfntRCk9tBBh8PqXzEsJlfl2VEi6
         EpyymAcG0cTL7zf1aygXsfMjN6++kSN2kpKEfkcAemPyiz7u+UEPXzuJ2tOscm0st0+c
         hzOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S0QVObWyqubIgCNHHeovJxzsC8bOJ6hi6PsIpD8GL58=;
        b=SN/vpbw63mGWI7IBRibsWx1VWKXpSGHwkiogefHhxCEeWw1aZCHINtHPKcwlQwgyHO
         5v5bbypTzJdHeocxWprDGY9k0OOsSDr2FkIrelcCubNL+Ir7T6462nN8hZeBKzxlayyQ
         cZg5c5wQMhn49IxTz9E+pHUgNe6lta8/OYmYkuhhWrOy5uEGBxpsm7yfBgbCAreWZD3W
         GPFVuLabkEx+i1u5iiltcuuMlRXzeFq6tyNrfzeKzFVu2pbd/O8kiVrUZEelB+WKA6Ru
         OkUOLSSC50CQ9ScV3/chI09F2SigssUpdQaK0oN0ptFFznrlkKTLvbv23GHVwSrTEMhb
         6YiA==
X-Gm-Message-State: APjAAAVttb3sJY3MR3qmc15i5NotGXHjNTJBJy4B4CjdL0XensxMut7z
        MDhEBrbuGpxrb0mTWXOX6PJIZCtBHJKH0woBDVWwIg==
X-Google-Smtp-Source: APXvYqwQNRqg8VPLcEJrrvM/X6ZI9JXSUTBAQamFt6xA1d37ER/OCQv7mkhUUei5jwbdqMIU5cZrD6iKX/bRoaPpu+M=
X-Received: by 2002:aca:dc88:: with SMTP id t130mr358235oig.43.1566937159614;
 Tue, 27 Aug 2019 13:19:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAGETcx_pSnC_2D7ufLRyfE3b8uRc814XEf8zu+SpNtT7_Z8NLg@mail.gmail.com>
In-Reply-To: <CAGETcx_pSnC_2D7ufLRyfE3b8uRc814XEf8zu+SpNtT7_Z8NLg@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Tue, 27 Aug 2019 13:18:43 -0700
Message-ID: <CAGETcx8FRVN9L3hDag8woYdJ3RszVBTvtAYrG5o-e_w24wYTUg@mail.gmail.com>
Subject: Re: Adding depends-on DT binding to break cyclic dependencies
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 21, 2019 at 11:54 PM Saravana Kannan <saravanak@google.com> wrote:
>
> Hi Rob,
>
> Frank, Greg and I got together during ELC and had an extensive and
> very productive discussion about my "postboot supplier state cleanup"
> patch series [1]. The three of us are on the same page now -- the
> series as it stands is the direction we want to go in, with some minor
> refactoring, documentation and naming changes.
>
> However, one of the things Frank is concerned about (and Greg and I
> agree) in the current patch series is that the "cyclic dependency
> breaking" logic has been pushed off to individual drivers using the
> edit_links() callback.
>
> The concern being, there are going to be multiple device specific ad
> hoc implementations to break a cyclic dependency. Also, if a device
> can be part of a cyclic dependency, the driver for that device has to
> check for specific system/products in which the device is part of a
> cyclic dependency (because it might not always be part of a cycle),
> and then potentially have cycle/product specific code to break the
> cycle (since the cycle can be different on each system/product).
>
> One way to avoid all of the device/driver specific code and simplify
> my patch series by a non-trivial amount would be by adding a
> "depends-on" DT binding that can ONLY be used to break cycles. We can
> document it as such and reject any attempts to use it for other
> purposes. When a depends-on property is present in a device node, that
> specific device's supplier list will be parsed ONLY from the
> depends-on property and the other properties won't be parsed for
> deriving dependency information for that device.
>
> Frank, Greg and I like this usage model for a new depends-on DT
> binding. Is this something you'd be willing to accept?
>
> Thanks,
> Saravana
>
> [1] - https://lore.kernel.org/lkml/20190731221721.187713-1-saravanak@google.com/

Friendly reminder.

-Saravana
