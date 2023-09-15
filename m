Return-Path: <devicetree+bounces-638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAF67A24D1
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 19:30:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9304E282105
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 17:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19A7F15EA2;
	Fri, 15 Sep 2023 17:30:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D64A125A1
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 17:30:41 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0058A2D5A;
	Fri, 15 Sep 2023 10:30:11 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 701BC60007;
	Fri, 15 Sep 2023 17:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1694799010;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/JtjgsgOyPbwm6BWL60L1iUo+eWhjWgnDribpTAUHbw=;
	b=GCM8fr7nhBiojP+OOcmNg4lRKP/Bc6b9HshzoiPy41bAJdfe58QnbVWRol0erQlfEeYyrN
	MEPHy0Z9KRr6MlHTIFTzO04Lw3MR1kgdmXlHhAPGkzhHWh7fGvstnv8vN+0sIbb7Yr8klM
	LgdH4FaFskd8ZT66hYqhhCCKU4ZsIUFZNHxTuaXDSOwXpSNXXXXL8lnTzZsuyia1ote48D
	WV4rUKKg0gKZ4oqQXjeMVQpg8lyGX5d4SzfWm5NHuZ2v9/RGvcZsVCTwC/6EjhC2w6k091
	nVLDn4OxQI6u4oztghtrG23WeBsq+Wc8F1KG1/ECv6XONwRcq5bekBG6NTKKVA==
Date: Fri, 15 Sep 2023 19:30:08 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Rob Herring <robh@kernel.org>, Lizhi Hou <lizhi.hou@amd.com>, Andrew
 Lunn <andrew@lunn.ch>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, max.zhen@amd.com,
 sonal.santan@amd.com, stefano.stabellini@xilinx.com
Subject: Re: [PATCH V13 0/5] Generate device tree node for pci devices
Message-ID: <20230915193008.6d87b8a0@bootlin.com>
In-Reply-To: <ZQGaSr+G5qu/8nJZ@smile.fi.intel.com>
References: <1692120000-46900-1-git-send-email-lizhi.hou@amd.com>
	<ZP96feVs2ev7098Y@smile.fi.intel.com>
	<CAL_JsqKfQJFrd8MOdjW55cYdEb8yyPyR+P3ran9+X3dCwUgdyA@mail.gmail.com>
	<ZQGaSr+G5qu/8nJZ@smile.fi.intel.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Andy,

On Wed, 13 Sep 2023 14:17:30 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Tue, Sep 12, 2023 at 02:12:04PM -0500, Rob Herring wrote:
> > On Mon, Sep 11, 2023 at 3:37 PM Andy Shevchenko
> > <andriy.shevchenko@intel.com> wrote:  
> > > On Tue, Aug 15, 2023 at 10:19:55AM -0700, Lizhi Hou wrote:  
> 
> ...
> 
> > > Can you point out to the ACPI excerpt(s) of the description of anything related
> > > to the device(s) in question?  
> > 
> > I don't understand what you are asking for.  
> 
> Through the email thread it was mentioned that this series was tested on the
> ACPI enabled platform, Jonathan (IIRC) asked why do we need to have a shadow
> DT for the something that ACPI already describes. That's why I'm trying to
> understand if it's the case. and if so, how can we improve the approach.
> 

Patches from Frank Rowand series [1] are needed to create an of_root_node if a DT
was not provided by the firmware, bootloader, etc that run the kernel.

[1]: https://lore.kernel.org/lkml/20220624034327.2542112-1-frowand.list@gmail.com/

Current Lizhi's series creates nodes from the PCI host node during the PCI
enumeration. It creates PCI-PCI bridge and PCI device nodes.

I use these series on an ACPI system.

I need one more missing component: the node related to the PCI host bridge
This was the purpose of Clement's work. This work was not sent upstream yet and I
am working on it in order to have a full tree from the of_root to the PCI device
ie:
 of_root                  <-- Frank Rowand series 
   + of_host_pci_bridge   <-- Clement's work
       + pci_bridge       <-- Current Lizhi series
           + pci_bridge   <-- Current Lizhi series
            ...
             + pci_dev    <-- Current Lizhi series

Hope that this status helped.

Regards,
Hervé

-- 
Hervé Codina, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

