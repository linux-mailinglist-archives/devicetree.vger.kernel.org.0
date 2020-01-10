Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 61A5413680E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2020 08:15:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725977AbgAJHP5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jan 2020 02:15:57 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:42146 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725853AbgAJHP5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jan 2020 02:15:57 -0500
Received: by mail-wr1-f65.google.com with SMTP id q6so720866wro.9
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2020 23:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9OKjM0NiA29A1YJnbOkfMLLtP+OMdLBmVsUr4YFKYmI=;
        b=w/heI5CiX5CG06QP7Sv0cxrLLmnMMNh5cvAR7T4TCmnIz8Eg3fbiQMZwB2YUCUpzbx
         mmUosVo3fH6aOf6Aw9xKPmPZaT8+jdHft0aUNvd2tlXM5ANa9UjfFpFSb57+ymTYjG/2
         pmxgcgaIyHPJWXiJr293yDtYme/mtd7L/Ak/YuEKAWw/I7xuaRqZVe1bFAEd9cpRytTN
         8ysCaE+HPdU//NOzq5Yzx8gqKE6Qa7hl0Pjp7FgaKVgfeZQOTmnyBEh7OOHhgjv7kBn9
         PyVyqewx7EOuO4LrYCozQosfklyZ3gAuvuPuSG21SND9Z7ck4iaNLeZ0n3+gj/x48gi1
         MOxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9OKjM0NiA29A1YJnbOkfMLLtP+OMdLBmVsUr4YFKYmI=;
        b=J6NmhzRapJtFlyBFghg/UmE8Y2bvchDZY9i57VDPfFe+uF14BiFx/rHLSx9ijQ4xED
         F417SHqHEnIer0uNYOj7Nb8oeyMku0wdRd8fHwuSNZFsFDRwClvF/dyAbKZqLemIWaLC
         bMPKSp8cpgsW3oO9oF9iC6R5aT6tb1SHbB0KJKEgL0HnZcmKzEZIMcxyjikhHXJz0wWW
         McsY+3IYIN5mQjC1t0qcIkYO3T8JfBvgDOKYjsA5UKSyYwzcTrR85L7Tin+VADAdxk0P
         UHl+x8aj0xmRkIud0smygQCYDyEEPAM4L1L3gKESi8FTQU0rmSIhDrwRwZ82DcQAzP14
         FU5Q==
X-Gm-Message-State: APjAAAUMJesokJQRJ3ssIR17Qt9easJzbMu9PGntou0Vrn3+JohjSvm3
        b6jF1q+lg2pJcqx1krUILLI8GQ==
X-Google-Smtp-Source: APXvYqyrMC4qUZGMDa4vTDXPc+WMRe1Cedi+NXO2t/JRWGPthrCa8hHpKeJ8ml5/0kP4fhuDUvDeMQ==
X-Received: by 2002:a5d:65cf:: with SMTP id e15mr1802033wrw.126.1578640555220;
        Thu, 09 Jan 2020 23:15:55 -0800 (PST)
Received: from myrica (adsl-84-227-176-239.adslplus.ch. [84.227.176.239])
        by smtp.gmail.com with ESMTPSA id x17sm1129827wrt.74.2020.01.09.23.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2020 23:15:54 -0800 (PST)
Date:   Fri, 10 Jan 2020 08:15:47 +0100
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Will Deacon <will@kernel.org>
Cc:     mark.rutland@arm.com, devicetree@vger.kernel.org,
        linux-pci@vger.kernel.org, sudeep.holla@arm.com, rjw@rjwysocki.net,
        linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
        robh+dt@kernel.org, guohanjun@huawei.com, bhelgaas@google.com,
        zhangfei.gao@linaro.org, robin.murphy@arm.com,
        linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Subject: Re: [PATCH v4 00/13] iommu: Add PASID support to Arm SMMUv3
Message-ID: <20200110071547.GA959441@myrica>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
 <20200109143618.GA942461@myrica>
 <20200109144100.GD12236@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200109144100.GD12236@willie-the-truck>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 09, 2020 at 02:41:01PM +0000, Will Deacon wrote:
> On Thu, Jan 09, 2020 at 03:36:18PM +0100, Jean-Philippe Brucker wrote:
> > On Thu, Dec 19, 2019 at 05:30:20PM +0100, Jean-Philippe Brucker wrote:
> > > Add support for Substream ID and PASIDs to the SMMUv3 driver. Since v3
> > > [1], I added review and tested tags where appropriate and applied the
> > > suggested changes, shown in the diff below. Thanks all!
> > > 
> > > I'm testing using the zip accelerator on the Hisilicon KunPeng920 and
> > > Zhangfei's uacce module [2]. The full SVA support, which I'll send out
> > > early next year, is available on my branch sva/zip-devel at
> > > https://jpbrucker.net/git/linux/
> > 
> > Is there anything more I should do for the PASID support? Ideally I'd like
> > to get this in v5.6 so I can focus on the rest of the SVA work and on
> > performance improvements.
> 
> Apologies, I'm just behind with review what with the timing of the new
> year. You're on the list, but I was hoping to get Robin's TCR stuff dusted
> off so that Jordan doesn't have to depend on patches languishing on the
> mailing list and there's also the nvidia stuff to review as well.
> 
> Going as fast as I can!

No worries, I just wanted to check that it didn't slip through the cracks.

Thanks,
Jean
