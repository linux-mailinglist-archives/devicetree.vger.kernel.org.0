Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 81BB2476A9
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2019 22:04:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727211AbfFPUEz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jun 2019 16:04:55 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:42971 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727357AbfFPUEz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jun 2019 16:04:55 -0400
Received: by mail-qk1-f193.google.com with SMTP id b18so4968922qkc.9
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2019 13:04:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MSqaCoMGco6P2zrSK37/hWJH9CXgQkBw2hzb1U1jzNw=;
        b=jKWn1SoVS2H+EiKb8xBIgyXavnKX4FiP6DjL3gl71PaZEPDz8L+VmNj4r03Q3JWoyE
         yrLsqjA3mkOa2mJetp5diqqM1xL77lhmuALqTXw6Z9ez010TH5aF5MGTF7D3TUT3++Yo
         H7kURWoTBCsP8zy5t7oMpYSXmjQkbLMc3vO234wiKlivW1ubP9jHY4Dwv55VuR53pUDA
         j5nKRkt2A2nkpc243Nf7oMRaHMP/YCPW+kHUkiTnpFkTo1aow9KK81+65EUO64OGQIK2
         H3P5MjUcgwPhrvadn7S1Q09zjkSYTOSINyeO8k/4+vJ/hR8S500zm1+3Pbr6+Qu5cW3r
         oU/A==
X-Gm-Message-State: APjAAAWVyn1dtx8SFYt+ZW1rqDuOWeNoSfzZjUraMmx/DIrrmlydwS/2
        mK2YQ+hjJ7tDtq5KaW3iEmo6mw==
X-Google-Smtp-Source: APXvYqzk8vjSAyBVM9AEC2sCcZJe/bhI9soeo5hRV28lwc5eEPs3dYN+S5Bd7YkUw5B0eEUJ+IVZrA==
X-Received: by 2002:ae9:c21a:: with SMTP id j26mr65498831qkg.310.1560715494165;
        Sun, 16 Jun 2019 13:04:54 -0700 (PDT)
Received: from redhat.com (pool-100-0-197-103.bstnma.fios.verizon.net. [100.0.197.103])
        by smtp.gmail.com with ESMTPSA id w51sm4943466qth.18.2019.06.16.13.04.51
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 16 Jun 2019 13:04:53 -0700 (PDT)
Date:   Sun, 16 Jun 2019 16:04:49 -0400
From:   "Michael S. Tsirkin" <mst@redhat.com>
To:     Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Cc:     "joro@8bytes.org" <joro@8bytes.org>,
        "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "virtualization@lists.linux-foundation.org" 
        <virtualization@lists.linux-foundation.org>,
        "virtio-dev@lists.oasis-open.org" <virtio-dev@lists.oasis-open.org>,
        "jasowang@redhat.com" <jasowang@redhat.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Mark Rutland <Mark.Rutland@arm.com>,
        Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
        Robin Murphy <Robin.Murphy@arm.com>,
        "bhelgaas@google.com" <bhelgaas@google.com>,
        "frowand.list@gmail.com" <frowand.list@gmail.com>,
        "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
        "eric.auger@redhat.com" <eric.auger@redhat.com>,
        "tnowicki@caviumnetworks.com" <tnowicki@caviumnetworks.com>,
        "kevin.tian@intel.com" <kevin.tian@intel.com>,
        "bauerman@linux.ibm.com" <bauerman@linux.ibm.com>
Subject: Re: [virtio-dev] Re: [PATCH v8 2/7] dt-bindings: virtio: Add
 virtio-pci-iommu node
Message-ID: <20190616154841-mutt-send-email-mst@kernel.org>
References: <20190530170929.19366-1-jean-philippe.brucker@arm.com>
 <20190530170929.19366-3-jean-philippe.brucker@arm.com>
 <20190530133523-mutt-send-email-mst@kernel.org>
 <c3cd5dba-123d-e808-98b1-731ac2d4b950@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c3cd5dba-123d-e808-98b1-731ac2d4b950@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 31, 2019 at 12:13:47PM +0100, Jean-Philippe Brucker wrote:
> On 30/05/2019 18:45, Michael S. Tsirkin wrote:
> > On Thu, May 30, 2019 at 06:09:24PM +0100, Jean-Philippe Brucker wrote:
> >> Some systems implement virtio-iommu as a PCI endpoint. The operating
> >> system needs to discover the relationship between IOMMU and masters long
> >> before the PCI endpoint gets probed. Add a PCI child node to describe the
> >> virtio-iommu device.
> >>
> >> The virtio-pci-iommu is conceptually split between a PCI programming
> >> interface and a translation component on the parent bus. The latter
> >> doesn't have a node in the device tree. The virtio-pci-iommu node
> >> describes both, by linking the PCI endpoint to "iommus" property of DMA
> >> master nodes and to "iommu-map" properties of bus nodes.
> >>
> >> Reviewed-by: Rob Herring <robh@kernel.org>
> >> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> >> Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> > 
> > So this is just an example right?
> > We are not defining any new properties or anything like that.
> 
> Yes it's just an example. The properties already exist but it's good to
> describe how to put them together for this particular case, because
> there isn't a precedent describing the topology for an IOMMU that
> appears on the PCI bus.
> 
> > I think down the road for non dt platforms we want to put this
> > info in the config space of the device. I do not think ACPI
> > is the best option for this since not all systems have it.
> > But that can wait.
> 
> There is the probe order problem - PCI needs this info before starting
> to probe devices on the bus.


This isn't all that special - it's pretty common for
IOMMUs to be pci devices. The solution is to have the device on
bus 0. For example, add it with

DECLARE_PCI_FIXUP_EARLY
or
DECLARE_PCI_FIXUP_CLASS_EARLY

in e.g.
arch/x86/kernel/quirks.c
or
drivers/pci/quirks.c

You can also use the configuration access capability
if there's need to access the device before its memory is
enabled.

> Maybe we could store the info in a separate
> memory region, that is referenced on the command-line and that the guest
> can read early.
> 
> Thanks,
> Jean

The point is to avoid command line hacks. Devices should be
self describing.

-- 
MST
