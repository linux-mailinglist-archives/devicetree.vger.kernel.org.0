Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F27642B833
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 17:15:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726338AbfE0PPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 11:15:37 -0400
Received: from mail-vk1-f194.google.com ([209.85.221.194]:39224 "EHLO
        mail-vk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726724AbfE0PPh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 11:15:37 -0400
Received: by mail-vk1-f194.google.com with SMTP id t18so3921793vkb.6
        for <devicetree@vger.kernel.org>; Mon, 27 May 2019 08:15:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=S3tITZHYfrewmW5oJlisGGiL7wfHqP1R9OVY9cCC4GU=;
        b=UxoQ7lFZV07AIH4faqA9HyjeA01q/S381V+Cf65EoG/Mor2Lu9Yc6g9jF4IpVquFo9
         D9IZPo00YXDmEKFEKC8A0fXWFwx7/cjw1FOoMc/lLU4wqFxljp+kRD0Y26C6z7RFFFOT
         xERWrNz0rc90s+nAG62V2qtTj5EjsQ35LSUnDkA+BwdaxY2hpsf/tx1O8cnglTJJtTM/
         0QFMxNBbKTP9LZlL4F6j0FE0s4JNVBD63ofKeUZsqxttF57wXIVaCHkJ9K45FCFbV8tZ
         kqwgeJCO6SEwUE8A6HS58mUccSL/uJoiEji8Kgu6NWonpyZB5+8z43dfYVvWUNerp5eB
         Y42Q==
X-Gm-Message-State: APjAAAXsrQWmsFJ8YVJAgE4brdg1MXUnvrUzpNO/6/wDknwUMEnjmeGN
        bKE6l5SYSXeKPsBq1LxNq6NMSQ==
X-Google-Smtp-Source: APXvYqxJCHIEBYM/VufOiGYY7G560g6K/dg4+SJBDDD3dVA0O70dd9ZnwStYxTkM8qVIYrC3jk8P+g==
X-Received: by 2002:a1f:7cc7:: with SMTP id x190mr19173038vkc.92.1558970136480;
        Mon, 27 May 2019 08:15:36 -0700 (PDT)
Received: from redhat.com (pool-100-0-197-103.bstnma.fios.verizon.net. [100.0.197.103])
        by smtp.gmail.com with ESMTPSA id w131sm6373477vsw.7.2019.05.27.08.15.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 27 May 2019 08:15:35 -0700 (PDT)
Date:   Mon, 27 May 2019 11:15:32 -0400
From:   "Michael S. Tsirkin" <mst@redhat.com>
To:     Joerg Roedel <joro@8bytes.org>
Cc:     Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
        iommu@lists.linux-foundation.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org,
        virtualization@lists.linux-foundation.org,
        virtio-dev@lists.oasis-open.org, jasowang@redhat.com,
        robh+dt@kernel.org, mark.rutland@arm.com, bhelgaas@google.com,
        frowand.list@gmail.com, kvmarm@lists.cs.columbia.edu,
        eric.auger@redhat.com, tnowicki@caviumnetworks.com,
        kevin.tian@intel.com, marc.zyngier@arm.com, robin.murphy@arm.com,
        will.deacon@arm.com, lorenzo.pieralisi@arm.com,
        bharat.bhushan@nxp.com
Subject: Re: [PATCH v7 0/7] Add virtio-iommu driver
Message-ID: <20190527111345-mutt-send-email-mst@kernel.org>
References: <20190115121959.23763-1-jean-philippe.brucker@arm.com>
 <20190512123022-mutt-send-email-mst@kernel.org>
 <20190527092604.GB21613@8bytes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190527092604.GB21613@8bytes.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 27, 2019 at 11:26:04AM +0200, Joerg Roedel wrote:
> On Sun, May 12, 2019 at 12:31:59PM -0400, Michael S. Tsirkin wrote:
> > OK this has been in next for a while.
> > 
> > Last time IOMMU maintainers objected. Are objections
> > still in force?
> > 
> > If not could we get acks please?
> 
> No objections against the code, I only hesitated because the Spec was
> not yet official.
> 
> So for the code:
> 
> 	Acked-by: Joerg Roedel <jroedel@suse.de>

Last spec patch had a bunch of comments not yet addressed.
But I do not remember whether comments are just about wording
or about the host/guest interface as well.
Jean-Philippe could you remind me please?

-- 
MST
