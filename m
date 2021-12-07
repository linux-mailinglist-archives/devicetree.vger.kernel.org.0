Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51CD746BC54
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 14:20:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236714AbhLGNXr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 08:23:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230480AbhLGNXr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 08:23:47 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E914CC061574
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 05:20:16 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id y8so9429939plg.1
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 05:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3pjdVhWR1OgHYWV0sxlZyJWoI2cI2Oh0roG7GoSp3nI=;
        b=qzUf+lPLoy8N93P9Uyf+2TLGaK4mOsKziqdfzRnbb3odO/2MhkPJKvrcCynajDarOc
         0THGTjNfBsgmZmrLXhnlX2PHkhf+t+S8DGprz2XsJPI0ssW4mr5US2djCTQuAptTwsaW
         Yx42eLAgNm2Loo4Srw6kmC0UM4OIceQdylrdnqGf32IzzCC5FAuJCbqvTYP9QCLo5S/u
         BPk+pV0Spfd5XWgjtmPyjvi/iFgXuJEdBuRlMCv3M+PXkekKFgeWCtU6nTaJZEoMP4VE
         9wicT9Ei6SKFJS1Iyw6g9RL4QSJ8I03RFrR7JF+9/K1QQvJzur8zkcrkQ9PB4aTUIzrp
         lAfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3pjdVhWR1OgHYWV0sxlZyJWoI2cI2Oh0roG7GoSp3nI=;
        b=Y0GHJ4che9FHFyx3fZZ3YpdfnIhhgkryaWyBugR0Q+HVEEiw0oxIhFHntQ74JOEjbB
         fmUJLxMeFssotvnjatZ1j8ROjse5a/MdXC6RbHJUbRQegeyjRAHTqCa1k7M7Fup9P29C
         IYy08X5u4Z0f0przn4p/4+IJJ+3VFlzmJl6cGLaxL7ehUm3FKacwqj+ggdEaT84MTVYg
         llSLXuf+Md78Z+hGcaxHG9ZbyrLLTVS5dTmJCbVYc2DYHMLmyV0Wl1ofBUzdHtmwy1Lw
         9AAbiBNjlKF0d99QMdPr9oF8Dk0sZTGDqQMtqeedZ/QsL3i/uQh/sCc2HFTkIbDSbDD4
         D9Iw==
X-Gm-Message-State: AOAM532iloR+23bAjL3fhuYhr8+ncHlEOnTOZT9zhtUnXneM9WQBPPeZ
        eNbCinB60ERzOvSao0V/Lc0f9FfQ9elai7HHSqw=
X-Google-Smtp-Source: ABdhPJyT36O+3PzDMnfYqToz8aS2UUJaqSeMsISrkbXJtNAy82ZKfJX+kRLQwdMUPlxd55dKVcedTg==
X-Received: by 2002:a17:902:c7c4:b0:141:deb4:1b2f with SMTP id r4-20020a170902c7c400b00141deb41b2fmr50916851pla.44.1638883216337;
        Tue, 07 Dec 2021 05:20:16 -0800 (PST)
Received: from leoy-ThinkPad-X240s ([103.207.71.6])
        by smtp.gmail.com with ESMTPSA id j15sm15751386pfh.35.2021.12.07.05.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Dec 2021 05:20:15 -0800 (PST)
Date:   Tue, 7 Dec 2021 21:20:07 +0800
From:   Leo Yan <leo.yan@linaro.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     John Garry <john.garry@huawei.com>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        mark.rutland@arm.com, devicetree@vger.kernel.org,
        iommu@lists.linux-foundation.org, uchida.jun@socionext.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org
Subject: Re: [PATCH v2 3/3] perf/smmuv3: Synthesize IIDR from CoreSight ID
 registers
Message-ID: <20211207132007.GB255238@leoy-ThinkPad-X240s>
References: <20211117144844.241072-1-jean-philippe@linaro.org>
 <20211117144844.241072-4-jean-philippe@linaro.org>
 <e60b15db-4e52-b5a6-1b17-203d250f1e65@huawei.com>
 <766ac58a-ffb7-f673-709b-0f0f740f3cfd@arm.com>
 <53f868a8-c7ae-b69d-b061-bb0a7dc98f8a@huawei.com>
 <d60110c4-c179-45d6-512d-3d058caac974@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d60110c4-c179-45d6-512d-3d058caac974@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 07, 2021 at 12:48:13PM +0000, Robin Murphy wrote:
> On 2021-12-07 12:28, John Garry via iommu wrote:
> > On 07/12/2021 12:04, Robin Murphy wrote:
> > > > > 
> > > > So is there some userspace part to go with this now?
> > > 
> > > FWIW I've not looked into it - is it just a case of someone knocking
> > > out some JSON from the MMU-600/700 TRMs, or is there still mroe to
> > > do?
> > 
> > That should just be it.

Hope I didn't arrive too late :)

Yes, I think we just missed two things: the DT binding for SMMUv3 PMU
which is just addressed by this patchset; and the PMU event aliasing
for SMMUv3 PMU, before I inquired with John and John said he would
upstream the related patches after kernel can export a IIDR value via
sysfs node.

Seems to me, after this patchset for DT binding and PMU event alias
patches are landed to the mainline kernel, it would be perfect.

> > > I had the impression that *some* part of the process was stalled
> > > until implementations can start providing meaningful IIDRs, but I
> > > wasn't sure whether that was tooling or just data. I just work the
> > > low-level enablement angle :)
> > 
> > Tooling should be ok, but I would just like to see more of these JSONs
> > so any tooling issues can be ironed out.
> 
> Sounds good - Jean, Leo, is that something Linaro might like to pick up as
> part of the PMCG interest, or shall I make a note on my to-do list for the
> new year?

I took a look for current patch for using PIDR to synthesize IIDR, it
looks good to me.  But I tested it on Hisilicon D06 board and observed
the composed IIDR values are still zeros.

I added a printk sentence to dump iidr value at the end of the function
smmu_pmu_get_iidr():

  leoy@ubuntu:~$ dmesg | grep iidr
  [   28.674087] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.8.auto: iidr=0x0
  [   28.705239] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.9.auto: iidr=0x0
  [   28.729924] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.10.auto: iidr=0x0
  [   28.754855] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.11.auto: iidr=0x0
  [   28.779811] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.12.auto: iidr=0x0
  [   28.804755] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.13.auto: iidr=0x0
  [   28.829825] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.14.auto: iidr=0x0
  [   28.854767] arm-smmu-v3-pmcg arm-smmu-v3-pmcg.15.auto: iidr=0x0

Please confirm if this is expected or not?  I think this might
introduce difficulty for John for the PMU event alias patches, which
is dependent on a non-zero IIDR.

At last, very appreciate your (Jean-Philippe, Robin and John) help!

Thanks,
Leo
