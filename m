Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BF03259E1F
	for <lists+devicetree@lfdr.de>; Tue,  1 Sep 2020 20:34:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729756AbgIASeG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 14:34:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728550AbgIASeE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Sep 2020 14:34:04 -0400
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com [IPv6:2607:f8b0:4864:20::744])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2806C061246
        for <devicetree@vger.kernel.org>; Tue,  1 Sep 2020 11:34:03 -0700 (PDT)
Received: by mail-qk1-x744.google.com with SMTP id g72so1934866qke.8
        for <devicetree@vger.kernel.org>; Tue, 01 Sep 2020 11:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dionne-riel-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Vrppyab2olasAywlo6wu3iOysj7veJ+V4x6aIzZJaoQ=;
        b=aVVByRb/7WjQOlgCxF0aMNR98y3Hrl8WHAbdDIGDFbjxRd26Hfmt0qEkd6oFmYESH0
         1w/XqtKC7O7TR4AXW+FirDQuYD1zi3wRaukk1fr/2oYQRmAYtRkUajaNVwQtX53fmgvI
         st2HqWtdMiR2iwKgbgapJebcgCUfKBjWkj5BG5y/A2AlCsybOFqB7gLlelO0PGSEQ63u
         myMCaawAw+jl1yH8lwHMimO++VIfOykKZOXze/wqasjRNIK0zITMQ34Ol5fua45N8+ys
         czFK4CYpEQ3fFZaFq3V+pOKfy7mAlLC5bFynX2lFRLE+DBRi+anSn1NC76ZIs6R6FiLn
         ox3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vrppyab2olasAywlo6wu3iOysj7veJ+V4x6aIzZJaoQ=;
        b=ltvxvhTWULg/KaseJyYBDRp45Qgy1rFiHj5DzXshekEXB2/k3IzLXniypOy5+WYv7J
         vl0gB3DwcND4ZH4VYh7IGrmOZopOhjjcmk9USMgZ1OBzVlu2bhIHSfPS36MMHlzkTXVl
         uqifri2AqZIAnP4VkbdFYbBQZ7qXQAtYg1bi9vfoAFD5DIuZd9gAvM4mojPssEsUvVNV
         +FEbFT1GUP3uknjolhyTXy76x5zZk4QvnconUJdReReJqjA1KH9YI5MBxbLMCe5F5QLL
         mr+HLCzEf+si7wJYg0uZSLLNtBIAZNFk5HzQcOznBJvpD9W8MiztbOlcWE/8iuSYEX9R
         a1hQ==
X-Gm-Message-State: AOAM531RGBEMtNzB6PsYkdhp23wURhbjsSxYdbUGCXctsX1NosXtM/o7
        0KZQAw00etBboEFN5YsMoPocEw==
X-Google-Smtp-Source: ABdhPJyYH1T5pgiG4AR76w+EZMtRoTiuhiSxFngIn3PaYKBozNhaCgVFsteKT64mB6A7ku5hzY+Sww==
X-Received: by 2002:a37:48c6:: with SMTP id v189mr3368902qka.378.1598985242965;
        Tue, 01 Sep 2020 11:34:02 -0700 (PDT)
Received: from DUFFMAN (135-23-195-85.cpe.pppoe.ca. [135.23.195.85])
        by smtp.gmail.com with ESMTPSA id x124sm2289514qkd.72.2020.09.01.11.34.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 11:34:02 -0700 (PDT)
Date:   Tue, 1 Sep 2020 14:33:56 -0400
From:   Samuel Dionne-Riel <samuel@dionne-riel.com>
To:     Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     Marc Zyngier <maz@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        linux-kernel@vger.kernel.org
Subject: Re: Boot failure on gru-scarlet-inx with 5.9-rc2
Message-ID: <20200901143356.0425d9ba@DUFFMAN>
In-Reply-To: <20200901164249.GA15045@e121166-lin.cambridge.arm.com>
References: <20200829164920.7d28e01a@DUFFMAN>
        <65d88bdd0888a69849327501a2aad186@kernel.org>
        <20200831031838.2d6d76d9@DUFFMAN>
        <90731ebb54fe03003dce03bc7ec4872e@kernel.org>
        <20200831234542.295b1275@DUFFMAN>
        <5db50a8e5b251714cebe0a719ee9dc73@kernel.org>
        <20200901164249.GA15045@e121166-lin.cambridge.arm.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 1 Sep 2020 17:42:49 +0100
Lorenzo Pieralisi <lorenzo.pieralisi@arm.com> wrote:

> On Tue, Sep 01, 2020 at 04:37:42PM +0100, Marc Zyngier wrote:
> > On 2020-09-01 04:45, Samuel Dionne-Riel wrote:  
> > > -	if (pci_is_root_bus(bus->parent) && dev > 0)
> > > +	if (bus->primary == rockchip->root_bus_nr && dev > 0)  
> 
> Can you dump bus->primary when this condition is hit please ?

With the following diff

---
@@ -79,6 +79,8 @@ static int rockchip_pcie_valid_device(struct rockchip_pcie *rockchip,
         * do not read more than one device on the bus directly attached
         * to RC's downstream side.
         */
+       printk("[!!] // bus->parent (%d)\n", bus->parent);
+       printk("[!!] bus->primary (%d) == rockchip->root_bus_nr (%d) && dev (%d) > 0\n", bus->primary, rockchip->root_bus_nr, dev);
        if (bus->primary == rockchip->root_bus_nr && dev > 0)
                return 0;

--

I get two kind of results

[    1.692913] [!!] // bus->parent (0)
[    1.692917] [!!] bus->primary (0) == rockchip->root_bus_nr (0) && dev (0) > 0

and

[    1.693055] [!!] // bus->parent (-256794624)
[    1.693058] [!!] bus->primary (0) == rockchip->root_bus_nr (0) && dev (0) > 0

What I understand from my logging here is that in some situations the
new check from d84c572d checks against two different values, while
before d84c572d all checks at this location were equivalent.

Note that I have no idea what bus->parent's semantics are compared to
the other condition. I only thought about logging all the information
relevant to this condition.


> Also on a working system (ie prior to regression) please drop the
> output of:
> 
> lspci -t
> 

 $ lspci -t
-[0000:00]---00.0-[01]----00.0


> > > 
> > > +	/* HACK; ~equiv to last param of
> > > pci_parse_request_of_pci_ranges */
> > > +	bus_res = (resource_list_first_type(&bridge->windows,
> > > IORESOURCE_MEM))->res;  
> 
> IORESOURCE_MEM ? I am a bit puzzled by this hack, what is it supposed
> to do ?

It's not really supposed to do anything. I only needed access to
bus_res for bus_res->start to keep as root_bus_nr. My complete lack of
familiarity with all of this meant that I simply borrowed something
that was in use in another function to give me the bus_res.

Note that, while this hack is ugly, this was at first tested directly
against d84c572d, no hack needed. Against d84c572d, reverting the
change for the second call to pci_is_root_bus only made it work fine.
This is the equivalent (possibly bad) change.


> > Hmmm. It seems that the original commit (d84c572d) considered that
> > root_bus_nr was always zero, while it may not have been.
> > 
> > Rob, Lorenzo: do you guys have any idea what is going on here?  
> 
> That's a possibility - it would also be useful to have a look at
> the DTS to check the bus-range property.

The DTS is arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-inx.dts,
systematically synced-up with the kernel source used to build the
running kernel.

Which, AFAICT, only has a bus-range set in
arch/arm64/boot/dts/rockchip/rk3399.dtsi.

pcie0: pcie@f8000000 {
    [...]
    bus-range = <0x0 0x1f>;
    [...]
}


Thanks again!

-- 
Samuel Dionne-Riel
