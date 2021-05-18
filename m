Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9F2A387967
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 14:59:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235078AbhERNAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 09:00:54 -0400
Received: from mail-oo1-f46.google.com ([209.85.161.46]:35338 "EHLO
        mail-oo1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244850AbhERNAu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 09:00:50 -0400
Received: by mail-oo1-f46.google.com with SMTP id s20-20020a4ae9940000b02902072d5df239so2212339ood.2
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 05:59:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ql+9UOI+ynnNwT/MKTb6YYHrLFl/HmtKIOBbQYJJbdE=;
        b=NblCBQuVX34PCD2phih5wl1P4RNnJmI5qbZ/YQOErZaNsODh3YR2hCJypjqNrAUUXL
         Y/wlA3oP5XZu6cv1f4TOKvHn+SSnOjKYMYH6s4gvkn6hhkyr05mN+DaztiYk6f9nYx8R
         MdZrA647Zc38LSGqp/B/TmRtNPE1/Keauq/Ik2ecZoBrzauypU4T7NSdE7mKNwMPvFaZ
         CC0G2J/jH7HlXNlcjbEpJRh0bshmG0EZHvCDrbAi/g49zegk+zADKzQWhwVAOfBXfQFK
         uJaysKMait5kNDseMUuFlaOI83B5oPThgxhDGlL4b3HJF6vkwR84vNdOnfMohtuVoZv/
         6HhQ==
X-Gm-Message-State: AOAM5301GohLoa0fl1aye9NuFr8W18Mma/89XZ9qsQ7HFmAYU7h4T5Ag
        g7ZnLF0RnD7Ntn+h9P8PeA==
X-Google-Smtp-Source: ABdhPJy15udTxFSSU+fKRJjg3g6/siEwKnl4fNQ+78a+Mb7vXu3vmgtlxALvUy9RzGKheAO7vg50ug==
X-Received: by 2002:a4a:e697:: with SMTP id u23mr4243417oot.51.1621342771562;
        Tue, 18 May 2021 05:59:31 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id h11sm362697ote.72.2021.05.18.05.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 05:59:31 -0700 (PDT)
Received: (nullmailer pid 492742 invoked by uid 1000);
        Tue, 18 May 2021 12:59:30 -0000
Date:   Tue, 18 May 2021 07:59:30 -0500
From:   Rob Herring <robh@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org,
        ch@denx.de, Sam Ravnborg <sam@ravnborg.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: bridge: lvds-codec: Fix spacing
Message-ID: <20210518125930.GA485447@robh.at.kernel.org>
References: <20210515203932.366799-1-marex@denx.de>
 <YKBBlWXXK8LUc8ac@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YKBBlWXXK8LUc8ac@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 16, 2021 at 12:48:05AM +0300, Laurent Pinchart wrote:
> Hi Marek,
> 
> Thank you for the patch.
> 
> On Sat, May 15, 2021 at 10:39:32PM +0200, Marek Vasut wrote:
> > Add missing spaces to make the diagrams readable, no functional change.
> 
> Looks better indeed. The patch view looks bad though, because of the
> tabs. Maybe you could replace them with spaces, while at it ?

It's best to not have tabs in yaml. And if we ever generate any 
documentation out of the schema, the tabs would probably cause issues.

Rob
